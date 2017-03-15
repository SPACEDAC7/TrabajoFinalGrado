/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.content.Context
 *  android.content.res.Resources
 *  android.content.res.TypedArray
 *  android.graphics.Canvas
 *  android.graphics.Paint
 *  android.graphics.Rect
 *  android.graphics.Region
 *  android.graphics.Region$Op
 *  android.graphics.drawable.ColorDrawable
 *  android.graphics.drawable.Drawable
 *  android.graphics.drawable.Drawable$Callback
 *  android.os.Build
 *  android.os.Build$VERSION
 *  android.os.Parcel
 *  android.os.Parcelable
 *  android.os.Parcelable$Creator
 *  android.os.SystemClock
 *  android.text.TextUtils
 *  android.util.AttributeSet
 *  android.util.DisplayMetrics
 *  android.util.Log
 *  android.util.SparseArray
 *  android.view.AbsSavedState
 *  android.view.MotionEvent
 *  android.view.View
 *  android.view.View$BaseSavedState
 *  android.view.View$MeasureSpec
 *  android.view.ViewGroup
 *  android.view.ViewGroup$LayoutParams
 *  android.view.ViewGroup$MarginLayoutParams
 *  android.view.ViewGroup$OnHierarchyChangeListener
 *  android.view.ViewParent
 *  android.view.ViewTreeObserver
 *  android.view.ViewTreeObserver$OnPreDrawListener
 */
package android.support.design.widget;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.Region;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.SystemClock;
import android.support.annotation.ColorInt;
import android.support.annotation.DrawableRes;
import android.support.annotation.FloatRange;
import android.support.annotation.IdRes;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.annotation.RestrictTo;
import android.support.annotation.VisibleForTesting;
import android.support.design.R;
import android.support.design.widget.DirectedAcyclicGraph;
import android.support.design.widget.MathUtils;
import android.support.design.widget.ThemeUtils;
import android.support.design.widget.ViewGroupUtils;
import android.support.design.widget.ViewUtils;
import android.support.v4.content.ContextCompat;
import android.support.v4.graphics.drawable.DrawableCompat;
import android.support.v4.os.ParcelableCompat;
import android.support.v4.os.ParcelableCompatCreatorCallbacks;
import android.support.v4.view.GravityCompat;
import android.support.v4.view.MotionEventCompat;
import android.support.v4.view.NestedScrollingParent;
import android.support.v4.view.NestedScrollingParentHelper;
import android.support.v4.view.OnApplyWindowInsetsListener;
import android.support.v4.view.ViewCompat;
import android.support.v4.view.WindowInsetsCompat;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.util.Log;
import android.util.SparseArray;
import android.view.AbsSavedState;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.ViewTreeObserver;
import java.lang.annotation.Annotation;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.reflect.Constructor;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class CoordinatorLayout
extends ViewGroup
implements NestedScrollingParent {
    static final Class<?>[] CONSTRUCTOR_PARAMS;
    static final int EVENT_NESTED_SCROLL = 1;
    static final int EVENT_PRE_DRAW = 0;
    static final int EVENT_VIEW_REMOVED = 2;
    static final String TAG = "CoordinatorLayout";
    static final Comparator<View> TOP_SORTED_CHILDREN_COMPARATOR;
    private static final int TYPE_ON_INTERCEPT = 0;
    private static final int TYPE_ON_TOUCH = 1;
    static final String WIDGET_PACKAGE_NAME;
    static final ThreadLocal<Map<String, Constructor<Behavior>>> sConstructors;
    private OnApplyWindowInsetsListener mApplyWindowInsetsListener;
    private View mBehaviorTouchView;
    private final DirectedAcyclicGraph<View> mChildDag = new DirectedAcyclicGraph();
    private final List<View> mDependencySortedChildren = new ArrayList<View>();
    private boolean mDisallowInterceptReset;
    private boolean mDrawStatusBarBackground;
    private boolean mIsAttachedToWindow;
    private int[] mKeylines;
    private WindowInsetsCompat mLastInsets;
    private boolean mNeedsPreDrawListener;
    private View mNestedScrollingDirectChild;
    private final NestedScrollingParentHelper mNestedScrollingParentHelper;
    private View mNestedScrollingTarget;
    ViewGroup.OnHierarchyChangeListener mOnHierarchyChangeListener;
    private OnPreDrawListener mOnPreDrawListener;
    private Paint mScrimPaint;
    private Drawable mStatusBarBackground;
    private final List<View> mTempDependenciesList = new ArrayList<View>();
    private final int[] mTempIntPair = new int[2];
    private final List<View> mTempList1 = new ArrayList<View>();
    private final Rect mTempRect1 = new Rect();
    private final Rect mTempRect2 = new Rect();
    private final Rect mTempRect3 = new Rect();
    private final Rect mTempRect4 = new Rect();

    /*
     * Enabled aggressive block sorting
     */
    static {
        Object object = CoordinatorLayout.class.getPackage();
        object = object != null ? object.getName() : null;
        WIDGET_PACKAGE_NAME = object;
        TOP_SORTED_CHILDREN_COMPARATOR = Build.VERSION.SDK_INT >= 21 ? new ViewElevationComparator() : null;
        CONSTRUCTOR_PARAMS = new Class[]{Context.class, AttributeSet.class};
        sConstructors = new ThreadLocal();
    }

    public CoordinatorLayout(Context context) {
        this(context, null);
    }

    public CoordinatorLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public CoordinatorLayout(Context arrn, AttributeSet attributeSet, int n2) {
        super((Context)arrn, attributeSet, n2);
        this.mNestedScrollingParentHelper = new NestedScrollingParentHelper(this);
        ThemeUtils.checkAppCompatTheme((Context)arrn);
        attributeSet = arrn.obtainStyledAttributes(attributeSet, R.styleable.CoordinatorLayout, n2, R.style.Widget_Design_CoordinatorLayout);
        n2 = attributeSet.getResourceId(R.styleable.CoordinatorLayout_keylines, 0);
        if (n2 != 0) {
            arrn = arrn.getResources();
            this.mKeylines = arrn.getIntArray(n2);
            float f2 = arrn.getDisplayMetrics().density;
            int n3 = this.mKeylines.length;
            for (n2 = 0; n2 < n3; ++n2) {
                arrn = this.mKeylines;
                arrn[n2] = (int)((float)arrn[n2] * f2);
            }
        }
        this.mStatusBarBackground = attributeSet.getDrawable(R.styleable.CoordinatorLayout_statusBarBackground);
        attributeSet.recycle();
        this.setupForInsets();
        super.setOnHierarchyChangeListener((ViewGroup.OnHierarchyChangeListener)new HierarchyChangeListener());
    }

    private void constrainChildRect(LayoutParams layoutParams, Rect rect, int n2, int n3) {
        int n4 = this.getWidth();
        int n5 = this.getHeight();
        n4 = Math.max(this.getPaddingLeft() + layoutParams.leftMargin, Math.min(rect.left, n4 - this.getPaddingRight() - n2 - layoutParams.rightMargin));
        n5 = Math.max(this.getPaddingTop() + layoutParams.topMargin, Math.min(rect.top, n5 - this.getPaddingBottom() - n3 - layoutParams.bottomMargin));
        rect.set(n4, n5, n4 + n2, n5 + n3);
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    private WindowInsetsCompat dispatchApplyWindowInsetsToBehaviors(WindowInsetsCompat windowInsetsCompat) {
        if (windowInsetsCompat.isConsumed()) {
            return windowInsetsCompat;
        }
        int n2 = 0;
        int n3 = this.getChildCount();
        do {
            WindowInsetsCompat windowInsetsCompat2 = windowInsetsCompat;
            if (n2 >= n3) return windowInsetsCompat2;
            View view = this.getChildAt(n2);
            windowInsetsCompat2 = windowInsetsCompat;
            if (ViewCompat.getFitsSystemWindows(view)) {
                Behavior behavior = ((LayoutParams)view.getLayoutParams()).getBehavior();
                windowInsetsCompat2 = windowInsetsCompat;
                if (behavior != null) {
                    windowInsetsCompat2 = windowInsetsCompat = behavior.onApplyWindowInsets(this, view, windowInsetsCompat);
                    if (windowInsetsCompat.isConsumed()) {
                        return windowInsetsCompat;
                    }
                }
            }
            ++n2;
            windowInsetsCompat = windowInsetsCompat2;
        } while (true);
    }

    /*
     * Exception decompiling
     */
    private void getDesiredAnchoredChildRectWithoutConstraints(View var1_1, int var2_2, Rect var3_3, Rect var4_4, LayoutParams var5_5, int var6_6, int var7_7) {
        // This method has failed to decompile.  When submitting a bug report, please provide this stack trace, and (if you hold appropriate legal rights) the relevant class file.
        // org.benf.cfr.reader.util.ConfusedCFRException: Extractable last case doesn't follow previous
        // org.benf.cfr.reader.bytecode.analysis.opgraph.op3rewriters.SwitchReplacer.examineSwitchContiguity(SwitchReplacer.java:486)
        // org.benf.cfr.reader.bytecode.analysis.opgraph.op3rewriters.SwitchReplacer.replaceRawSwitches(SwitchReplacer.java:65)
        // org.benf.cfr.reader.bytecode.CodeAnalyser.getAnalysisInner(CodeAnalyser.java:425)
        // org.benf.cfr.reader.bytecode.CodeAnalyser.getAnalysisOrWrapFail(CodeAnalyser.java:220)
        // org.benf.cfr.reader.bytecode.CodeAnalyser.getAnalysis(CodeAnalyser.java:165)
        // org.benf.cfr.reader.entities.attributes.AttributeCode.analyse(AttributeCode.java:91)
        // org.benf.cfr.reader.entities.Method.analyse(Method.java:354)
        // org.benf.cfr.reader.entities.ClassFile.analyseMid(ClassFile.java:751)
        // org.benf.cfr.reader.entities.ClassFile.analyseTop(ClassFile.java:683)
        // org.benf.cfr.reader.Main.doJar(Main.java:129)
        // org.benf.cfr.reader.Main.main(Main.java:181)
        throw new IllegalStateException("Decompilation failed");
    }

    private int getKeyline(int n2) {
        if (this.mKeylines == null) {
            Log.e((String)"CoordinatorLayout", (String)("No keylines defined for " + this + " - attempted index lookup " + n2));
            return 0;
        }
        if (n2 < 0 || n2 >= this.mKeylines.length) {
            Log.e((String)"CoordinatorLayout", (String)("Keyline index " + n2 + " out of range for " + this));
            return 0;
        }
        return this.mKeylines[n2];
    }

    /*
     * Enabled aggressive block sorting
     */
    private void getTopSortedChildren(List<View> list) {
        list.clear();
        boolean bl = this.isChildrenDrawingOrderEnabled();
        int n2 = this.getChildCount();
        for (int i2 = n2 - 1; i2 >= 0; --i2) {
            int n3 = bl ? this.getChildDrawingOrder(n2, i2) : i2;
            list.add(this.getChildAt(n3));
        }
        if (TOP_SORTED_CHILDREN_COMPARATOR != null) {
            Collections.sort(list, TOP_SORTED_CHILDREN_COMPARATOR);
        }
    }

    private boolean hasDependencies(View view) {
        return this.mChildDag.hasOutgoingEdges(view);
    }

    private void layoutChild(View view, int n2) {
        LayoutParams layoutParams = (LayoutParams)view.getLayoutParams();
        Rect rect = this.mTempRect1;
        rect.set(this.getPaddingLeft() + layoutParams.leftMargin, this.getPaddingTop() + layoutParams.topMargin, this.getWidth() - this.getPaddingRight() - layoutParams.rightMargin, this.getHeight() - this.getPaddingBottom() - layoutParams.bottomMargin);
        if (this.mLastInsets != null && ViewCompat.getFitsSystemWindows((View)this) && !ViewCompat.getFitsSystemWindows(view)) {
            rect.left += this.mLastInsets.getSystemWindowInsetLeft();
            rect.top += this.mLastInsets.getSystemWindowInsetTop();
            rect.right -= this.mLastInsets.getSystemWindowInsetRight();
            rect.bottom -= this.mLastInsets.getSystemWindowInsetBottom();
        }
        Rect rect2 = this.mTempRect2;
        GravityCompat.apply(CoordinatorLayout.resolveGravity(layoutParams.gravity), view.getMeasuredWidth(), view.getMeasuredHeight(), rect, rect2, n2);
        view.layout(rect2.left, rect2.top, rect2.right, rect2.bottom);
    }

    private void layoutChildWithAnchor(View view, View view2, int n2) {
        LayoutParams layoutParams = (LayoutParams)view.getLayoutParams();
        layoutParams = this.mTempRect1;
        Rect rect = this.mTempRect2;
        this.getDescendantRect(view2, (Rect)layoutParams);
        this.getDesiredAnchoredChildRect(view, n2, (Rect)layoutParams, rect);
        view.layout(rect.left, rect.top, rect.right, rect.bottom);
    }

    /*
     * Enabled aggressive block sorting
     */
    private void layoutChildWithKeyline(View view, int n2, int n3) {
        LayoutParams layoutParams = (LayoutParams)view.getLayoutParams();
        int n4 = GravityCompat.getAbsoluteGravity(CoordinatorLayout.resolveKeylineGravity(layoutParams.gravity), n3);
        int n5 = this.getWidth();
        int n6 = this.getHeight();
        int n7 = view.getMeasuredWidth();
        int n8 = view.getMeasuredHeight();
        int n9 = n2;
        if (n3 == 1) {
            n9 = n5 - n2;
        }
        n2 = this.getKeyline(n9) - n7;
        n3 = 0;
        switch (n4 & 7) {
            case 5: {
                n2 += n7;
            }
            default: {
                break;
            }
            case 1: {
                n2 += n7 / 2;
            }
        }
        switch (n4 & 112) {
            case 80: {
                n3 = 0 + n8;
            }
            default: {
                break;
            }
            case 16: {
                n3 = 0 + n8 / 2;
            }
        }
        n2 = Math.max(this.getPaddingLeft() + layoutParams.leftMargin, Math.min(n2, n5 - this.getPaddingRight() - n7 - layoutParams.rightMargin));
        n3 = Math.max(this.getPaddingTop() + layoutParams.topMargin, Math.min(n3, n6 - this.getPaddingBottom() - n8 - layoutParams.bottomMargin));
        view.layout(n2, n3, n2 + n7, n3 + n8);
    }

    /*
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    private void offsetChildByInset(View view, Rect rect, int n2) {
        int n3;
        int n4;
        if (!ViewCompat.isLaidOut(view)) {
            return;
        }
        LayoutParams layoutParams = (LayoutParams)view.getLayoutParams();
        int n5 = GravityCompat.getAbsoluteGravity(layoutParams.dodgeInsetEdges, n2);
        Behavior behavior = layoutParams.getBehavior();
        Rect rect2 = this.mTempRect3;
        if (behavior != null && behavior.getInsetDodgeRect(this, view, rect2)) {
            if (!rect2.intersect(view.getLeft(), view.getTop(), view.getRight(), view.getBottom())) {
                throw new IllegalArgumentException("Rect should intersect with child's bounds.");
            }
        } else {
            rect2.set(view.getLeft(), view.getTop(), view.getRight(), view.getBottom());
        }
        if (rect2.isEmpty()) return;
        n2 = n3 = 0;
        if ((n5 & 48) == 48) {
            n4 = rect2.top - layoutParams.topMargin - layoutParams.mInsetOffsetY;
            n2 = n3;
            if (n4 < rect.top) {
                this.setInsetOffsetY(view, rect.top - n4);
                n2 = 1;
            }
        }
        n3 = n2;
        if ((n5 & 80) == 80) {
            n4 = this.getHeight() - rect2.bottom - layoutParams.bottomMargin + layoutParams.mInsetOffsetY;
            n3 = n2;
            if (n4 < rect.bottom) {
                this.setInsetOffsetY(view, n4 - rect.bottom);
                n3 = 1;
            }
        }
        if (n3 == 0) {
            this.setInsetOffsetY(view, 0);
        }
        n2 = n3 = 0;
        if ((n5 & 3) == 3) {
            n4 = rect2.left - layoutParams.leftMargin - layoutParams.mInsetOffsetX;
            n2 = n3;
            if (n4 < rect.left) {
                this.setInsetOffsetX(view, rect.left - n4);
                n2 = 1;
            }
        }
        n3 = n2;
        if ((n5 & 5) != 5) return;
        n5 = this.getWidth() - rect2.right - layoutParams.rightMargin + layoutParams.mInsetOffsetX;
        n3 = n2;
        if (n5 < rect.right) {
            this.setInsetOffsetX(view, n5 - rect.right);
            return;
        }
        if (n3 != 0) return;
        this.setInsetOffsetX(view, 0);
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    static Behavior parseBehavior(Context object, AttributeSet attributeSet, String string2) {
        if (TextUtils.isEmpty((CharSequence)string2)) {
            return null;
        }
        if (string2.startsWith(".")) {
            string2 = object.getPackageName() + string2;
        } else if (string2.indexOf(46) < 0 && !TextUtils.isEmpty((CharSequence)WIDGET_PACKAGE_NAME)) {
            string2 = WIDGET_PACKAGE_NAME + '.' + string2;
        }
        try {
            Map<String, Constructor<Behavior>> map;
            void var4_7;
            Constructor<Behavior> constructor;
            Map<String, Constructor<Behavior>> map2 = map = sConstructors.get();
            if (map == null) {
                map2 = new HashMap<String, Constructor<Behavior>>();
                sConstructors.set(map2);
            }
            Constructor<Behavior> constructor2 = constructor = map2.get(string2);
            if (constructor == null) {
                Constructor constructor3 = Class.forName(string2, true, object.getClassLoader()).getConstructor(CONSTRUCTOR_PARAMS);
                constructor3.setAccessible(true);
                map2.put(string2, constructor3);
            }
            return (Behavior)var4_7.newInstance(new Object[]{object, attributeSet});
        }
        catch (Exception var0_1) {
            throw new RuntimeException("Could not inflate Behavior subclass " + string2, var0_1);
        }
    }

    /*
     * Unable to fully structure code
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    private boolean performIntercept(MotionEvent var1_1, int var2_2) {
        var15_3 = false;
        var8_4 = false;
        var3_5 = null;
        var11_6 = MotionEventCompat.getActionMasked(var1_1);
        var5_7 = this.mTempList1;
        this.getTopSortedChildren(var5_7);
        var12_8 = var5_7.size();
        var9_9 = 0;
        do {
            var16_11 = var15_3;
            if (var9_9 >= var12_8) break;
            var6_13 = var5_7.get(var9_9);
            var4_12 = (LayoutParams)var6_13.getLayoutParams();
            var7_14 = var4_12.getBehavior();
            if (!var15_3 && !var8_4 || var11_6 == 0) ** GOTO lbl40
            var4_12 = var3_5;
            var17_10 = var15_3;
            var10_15 = var8_4;
            if (var7_14 == null) ** GOTO lbl65
            var4_12 = var3_5;
            if (var3_5 == null) {
                var13_16 = SystemClock.uptimeMillis();
                var4_12 = MotionEvent.obtain((long)var13_16, (long)var13_16, (int)3, (float)0.0f, (float)0.0f, (int)0);
            }
            switch (var2_2) {
                default: {
                    var10_15 = var8_4;
                    var17_10 = var15_3;
                    ** GOTO lbl65
                }
                case 0: {
                    var7_14.onInterceptTouchEvent(this, var6_13, (MotionEvent)var4_12);
                    var17_10 = var15_3;
                    var10_15 = var8_4;
                    ** GOTO lbl65
                }
                case 1: 
            }
            var7_14.onTouchEvent(this, var6_13, (MotionEvent)var4_12);
            var17_10 = var15_3;
            var10_15 = var8_4;
            ** GOTO lbl65
lbl40: // 1 sources:
            var16_11 = var15_3;
            if (!var15_3) {
                var16_11 = var15_3;
                if (var7_14 != null) {
                    switch (var2_2) {
                        case 0: {
                            var15_3 = var7_14.onInterceptTouchEvent(this, var6_13, var1_1);
                            break;
                        }
                        case 1: {
                            var15_3 = var7_14.onTouchEvent(this, var6_13, var1_1);
                        }
                    }
                    var16_11 = var15_3;
                    if (var15_3) {
                        this.mBehaviorTouchView = var6_13;
                        var16_11 = var15_3;
                    }
                }
            }
            var17_10 = var4_12.didBlockInteraction();
            var15_3 = var4_12.isBlockingInteractionBelow(this, var6_13);
            var8_4 = var15_3 != false && var17_10 == false;
            var4_12 = var3_5;
            var17_10 = var16_11;
            var10_15 = var8_4;
            if (var15_3) {
                var4_12 = var3_5;
                var17_10 = var16_11;
                var10_15 = var8_4;
                if (!var8_4) break;
            }
lbl65: // 7 sources:
            ++var9_9;
            var3_5 = var4_12;
            var15_3 = var17_10;
            var8_4 = var10_15;
        } while (true);
        var5_7.clear();
        return var16_11;
    }

    /*
     * Enabled aggressive block sorting
     */
    private void prepareChildren() {
        this.mDependencySortedChildren.clear();
        this.mChildDag.clear();
        int n2 = 0;
        int n3 = this.getChildCount();
        do {
            if (n2 >= n3) {
                this.mDependencySortedChildren.addAll(this.mChildDag.getSortedList());
                Collections.reverse(this.mDependencySortedChildren);
                return;
            }
            View view = this.getChildAt(n2);
            this.getResolvedLayoutParams(view).findAnchorView(this, view);
            this.mChildDag.addNode(view);
            for (int i2 = 0; i2 < n3; ++i2) {
                View view2;
                if (i2 == n2 || !this.getResolvedLayoutParams(view2 = this.getChildAt(i2)).dependsOn(this, view2, view)) continue;
                if (!this.mChildDag.contains(view2)) {
                    this.mChildDag.addNode(view2);
                }
                this.mChildDag.addEdge(view, view2);
            }
            ++n2;
        } while (true);
    }

    private void resetTouchBehaviors() {
        if (this.mBehaviorTouchView != null) {
            Behavior behavior = ((LayoutParams)this.mBehaviorTouchView.getLayoutParams()).getBehavior();
            if (behavior != null) {
                long l2 = SystemClock.uptimeMillis();
                MotionEvent motionEvent = MotionEvent.obtain((long)l2, (long)l2, (int)3, (float)0.0f, (float)0.0f, (int)0);
                behavior.onTouchEvent(this, this.mBehaviorTouchView, motionEvent);
                motionEvent.recycle();
            }
            this.mBehaviorTouchView = null;
        }
        int n2 = this.getChildCount();
        for (int i2 = 0; i2 < n2; ++i2) {
            ((LayoutParams)this.getChildAt(i2).getLayoutParams()).resetTouchBehaviorTracking();
        }
        this.mDisallowInterceptReset = false;
    }

    private static int resolveAnchoredChildGravity(int n2) {
        int n3 = n2;
        if (n2 == 0) {
            n3 = 17;
        }
        return n3;
    }

    private static int resolveGravity(int n2) {
        int n3 = n2;
        if (n2 == 0) {
            n3 = 8388659;
        }
        return n3;
    }

    private static int resolveKeylineGravity(int n2) {
        int n3 = n2;
        if (n2 == 0) {
            n3 = 8388661;
        }
        return n3;
    }

    private void setInsetOffsetX(View view, int n2) {
        LayoutParams layoutParams = (LayoutParams)view.getLayoutParams();
        if (layoutParams.mInsetOffsetX != n2) {
            ViewCompat.offsetLeftAndRight(view, n2 - layoutParams.mInsetOffsetX);
            layoutParams.mInsetOffsetX = n2;
        }
    }

    private void setInsetOffsetY(View view, int n2) {
        LayoutParams layoutParams = (LayoutParams)view.getLayoutParams();
        if (layoutParams.mInsetOffsetY != n2) {
            ViewCompat.offsetTopAndBottom(view, n2 - layoutParams.mInsetOffsetY);
            layoutParams.mInsetOffsetY = n2;
        }
    }

    private void setupForInsets() {
        if (Build.VERSION.SDK_INT < 21) {
            return;
        }
        if (ViewCompat.getFitsSystemWindows((View)this)) {
            if (this.mApplyWindowInsetsListener == null) {
                this.mApplyWindowInsetsListener = new OnApplyWindowInsetsListener(){

                    @Override
                    public WindowInsetsCompat onApplyWindowInsets(View view, WindowInsetsCompat windowInsetsCompat) {
                        return CoordinatorLayout.this.setWindowInsets(windowInsetsCompat);
                    }
                };
            }
            ViewCompat.setOnApplyWindowInsetsListener((View)this, this.mApplyWindowInsetsListener);
            this.setSystemUiVisibility(1280);
            return;
        }
        ViewCompat.setOnApplyWindowInsetsListener((View)this, null);
    }

    void addPreDrawListener() {
        if (this.mIsAttachedToWindow) {
            if (this.mOnPreDrawListener == null) {
                this.mOnPreDrawListener = new OnPreDrawListener();
            }
            this.getViewTreeObserver().addOnPreDrawListener((ViewTreeObserver.OnPreDrawListener)this.mOnPreDrawListener);
        }
        this.mNeedsPreDrawListener = true;
    }

    protected boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        if (layoutParams instanceof LayoutParams && super.checkLayoutParams(layoutParams)) {
            return true;
        }
        return false;
    }

    public void dispatchDependentViewsChanged(View view) {
        List list = this.mChildDag.getIncomingEdges(view);
        if (list != null && !list.isEmpty()) {
            for (int i2 = 0; i2 < list.size(); ++i2) {
                View view2 = (View)list.get(i2);
                Behavior behavior = ((LayoutParams)view2.getLayoutParams()).getBehavior();
                if (behavior == null) continue;
                behavior.onDependentViewChanged(this, view2, view);
            }
        }
    }

    /*
     * Enabled aggressive block sorting
     */
    public boolean doViewsOverlap(View view, View view2) {
        if (view.getVisibility() == 0 && view2.getVisibility() == 0) {
            Rect rect = this.mTempRect1;
            boolean bl = view.getParent() != this;
            this.getChildRect(view, bl, rect);
            view = this.mTempRect2;
            bl = view2.getParent() != this;
            this.getChildRect(view2, bl, (Rect)view);
            if (rect.left <= view.right && rect.top <= view.bottom && rect.right >= view.left && rect.bottom >= view.top) {
                return true;
            }
            return false;
        }
        return false;
    }

    protected boolean drawChild(Canvas canvas, View view, long l2) {
        float f2;
        LayoutParams layoutParams = (LayoutParams)view.getLayoutParams();
        if (layoutParams.mBehavior != null && (f2 = layoutParams.mBehavior.getScrimOpacity(this, view)) > 0.0f) {
            if (this.mScrimPaint == null) {
                this.mScrimPaint = new Paint();
            }
            this.mScrimPaint.setColor(layoutParams.mBehavior.getScrimColor(this, view));
            this.mScrimPaint.setAlpha(MathUtils.constrain(Math.round(255.0f * f2), 0, 255));
            int n2 = canvas.save();
            if (view.isOpaque()) {
                canvas.clipRect((float)view.getLeft(), (float)view.getTop(), (float)view.getRight(), (float)view.getBottom(), Region.Op.DIFFERENCE);
            }
            canvas.drawRect((float)this.getPaddingLeft(), (float)this.getPaddingTop(), (float)(this.getWidth() - this.getPaddingRight()), (float)(this.getHeight() - this.getPaddingBottom()), this.mScrimPaint);
            canvas.restoreToCount(n2);
        }
        return super.drawChild(canvas, view, l2);
    }

    protected void drawableStateChanged() {
        super.drawableStateChanged();
        int[] arrn = this.getDrawableState();
        boolean bl = false;
        Drawable drawable2 = this.mStatusBarBackground;
        boolean bl2 = bl;
        if (drawable2 != null) {
            bl2 = bl;
            if (drawable2.isStateful()) {
                bl2 = false | drawable2.setState(arrn);
            }
        }
        if (bl2) {
            this.invalidate();
        }
    }

    /*
     * Unable to fully structure code
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    void ensurePreDrawListener() {
        var4_1 = false;
        var2_2 = this.getChildCount();
        var1_3 = 0;
        do {
            var3_4 = var4_1;
            if (var1_3 >= var2_2) ** GOTO lbl9
            if (this.hasDependencies(this.getChildAt(var1_3))) {
                var3_4 = true;
lbl9: // 2 sources:
                if (var3_4 == this.mNeedsPreDrawListener) return;
                if (!var3_4) break;
                this.addPreDrawListener();
                return;
            }
            ++var1_3;
        } while (true);
        this.removePreDrawListener();
    }

    protected LayoutParams generateDefaultLayoutParams() {
        return new LayoutParams(-2, -2);
    }

    public LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new LayoutParams(this.getContext(), attributeSet);
    }

    protected LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        if (layoutParams instanceof LayoutParams) {
            return new LayoutParams((LayoutParams)layoutParams);
        }
        if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
            return new LayoutParams((ViewGroup.MarginLayoutParams)layoutParams);
        }
        return new LayoutParams(layoutParams);
    }

    void getChildRect(View view, boolean bl, Rect rect) {
        if (view.isLayoutRequested() || view.getVisibility() == 8) {
            rect.setEmpty();
            return;
        }
        if (bl) {
            this.getDescendantRect(view, rect);
            return;
        }
        rect.set(view.getLeft(), view.getTop(), view.getRight(), view.getBottom());
    }

    @NonNull
    public List<View> getDependencies(@NonNull View object) {
        object = this.mChildDag.getOutgoingEdges((View)object);
        this.mTempDependenciesList.clear();
        if (object != null) {
            this.mTempDependenciesList.addAll((Collection<View>)object);
        }
        return this.mTempDependenciesList;
    }

    @VisibleForTesting
    final List<View> getDependencySortedChildren() {
        this.prepareChildren();
        return Collections.unmodifiableList(this.mDependencySortedChildren);
    }

    @NonNull
    public List<View> getDependents(@NonNull View object) {
        object = this.mChildDag.getIncomingEdges((View)object);
        this.mTempDependenciesList.clear();
        if (object != null) {
            this.mTempDependenciesList.addAll((Collection<View>)object);
        }
        return this.mTempDependenciesList;
    }

    void getDescendantRect(View view, Rect rect) {
        ViewGroupUtils.getDescendantRect(this, view, rect);
    }

    void getDesiredAnchoredChildRect(View view, int n2, Rect rect, Rect rect2) {
        LayoutParams layoutParams = (LayoutParams)view.getLayoutParams();
        int n3 = view.getMeasuredWidth();
        int n4 = view.getMeasuredHeight();
        this.getDesiredAnchoredChildRectWithoutConstraints(view, n2, rect, rect2, layoutParams, n3, n4);
        this.constrainChildRect(layoutParams, rect2, n3, n4);
    }

    void getLastChildRect(View view, Rect rect) {
        rect.set(((LayoutParams)view.getLayoutParams()).getLastChildRect());
    }

    final WindowInsetsCompat getLastWindowInsets() {
        return this.mLastInsets;
    }

    @Override
    public int getNestedScrollAxes() {
        return this.mNestedScrollingParentHelper.getNestedScrollAxes();
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    LayoutParams getResolvedLayoutParams(View object) {
        LayoutParams layoutParams = (LayoutParams)object.getLayoutParams();
        if (!layoutParams.mBehaviorResolved) {
            block5 : {
                Object object2;
                Class class_ = object.getClass();
                object = null;
                do {
                    object2 = object;
                    if (class_ == null) break block5;
                    object2 = object = (DefaultBehavior)class_.getAnnotation(DefaultBehavior.class);
                    if (object != null) break;
                    class_ = class_.getSuperclass();
                } while (true);
                if (object2 != null) {
                    try {
                        layoutParams.setBehavior(object2.value().newInstance());
                    }
                    catch (Exception var1_2) {
                        Log.e((String)"CoordinatorLayout", (String)("Default behavior class " + object2.value().getName() + " could not be instantiated. Did you forget a default constructor?"), (Throwable)var1_2);
                    }
                }
            }
            layoutParams.mBehaviorResolved = true;
        }
        return layoutParams;
    }

    @Nullable
    public Drawable getStatusBarBackground() {
        return this.mStatusBarBackground;
    }

    protected int getSuggestedMinimumHeight() {
        return Math.max(super.getSuggestedMinimumHeight(), this.getPaddingTop() + this.getPaddingBottom());
    }

    protected int getSuggestedMinimumWidth() {
        return Math.max(super.getSuggestedMinimumWidth(), this.getPaddingLeft() + this.getPaddingRight());
    }

    public boolean isPointInChildBounds(View view, int n2, int n3) {
        Rect rect = this.mTempRect1;
        this.getDescendantRect(view, rect);
        return rect.contains(n2, n3);
    }

    void offsetChildToAnchor(View view, int n2) {
        int n3 = 0;
        LayoutParams layoutParams = (LayoutParams)view.getLayoutParams();
        if (layoutParams.mAnchorView != null) {
            Object object;
            Rect rect;
            int n4;
            int n5;
            block6 : {
                object = this.mTempRect1;
                Rect rect2 = this.mTempRect2;
                rect = this.mTempRect3;
                this.getDescendantRect(layoutParams.mAnchorView, (Rect)object);
                this.getChildRect(view, false, rect2);
                n4 = view.getMeasuredWidth();
                n5 = view.getMeasuredHeight();
                this.getDesiredAnchoredChildRectWithoutConstraints(view, n2, (Rect)object, rect, layoutParams, n4, n5);
                if (rect.left == rect2.left) {
                    n2 = n3;
                    if (rect.top == rect2.top) break block6;
                }
                n2 = 1;
            }
            this.constrainChildRect(layoutParams, rect, n4, n5);
            n3 = rect.left - rect2.left;
            n4 = rect.top - rect2.top;
            if (n3 != 0) {
                ViewCompat.offsetLeftAndRight(view, n3);
            }
            if (n4 != 0) {
                ViewCompat.offsetTopAndBottom(view, n4);
            }
            if (n2 != 0 && (object = layoutParams.getBehavior()) != null) {
                object.onDependentViewChanged(this, view, layoutParams.mAnchorView);
            }
        }
    }

    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.resetTouchBehaviors();
        if (this.mNeedsPreDrawListener) {
            if (this.mOnPreDrawListener == null) {
                this.mOnPreDrawListener = new OnPreDrawListener();
            }
            this.getViewTreeObserver().addOnPreDrawListener((ViewTreeObserver.OnPreDrawListener)this.mOnPreDrawListener);
        }
        if (this.mLastInsets == null && ViewCompat.getFitsSystemWindows((View)this)) {
            ViewCompat.requestApplyInsets((View)this);
        }
        this.mIsAttachedToWindow = true;
    }

    /*
     * Unable to fully structure code
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    final void onChildViewsChanged(int var1_1) {
        var9_2 = ViewCompat.getLayoutDirection((View)this);
        var10_3 = this.mDependencySortedChildren.size();
        var2_4 = this.mTempRect4;
        var2_4.setEmpty();
        var7_5 = 0;
        block11 : do {
            if (var7_5 >= var10_3) return;
            var3_6 = this.mDependencySortedChildren.get(var7_5);
            var4_7 = (LayoutParams)var3_6.getLayoutParams();
            for (var8_10 = 0; var8_10 < var7_5; ++var8_10) {
                var5_8 = this.mDependencySortedChildren.get(var8_10);
                if (var4_7.mAnchorDirectChild != var5_8) continue;
                this.offsetChildToAnchor(var3_6, var9_2);
            }
            var5_8 = this.mTempRect1;
            this.getChildRect(var3_6, true, (Rect)var5_8);
            if (var4_7.insetEdge != 0 && !var5_8.isEmpty()) {
                var8_10 = GravityCompat.getAbsoluteGravity(var4_7.insetEdge, var9_2);
                switch (var8_10 & 112) {
                    case 48: {
                        var2_4.top = Math.max(var2_4.top, var5_8.bottom);
                        break;
                    }
                    case 80: {
                        var2_4.bottom = Math.max(var2_4.bottom, this.getHeight() - var5_8.top);
                        break;
                    }
                }
                switch (var8_10 & 7) {
                    case 3: {
                        var2_4.left = Math.max(var2_4.left, var5_8.right);
                        break;
                    }
                    case 5: {
                        var2_4.right = Math.max(var2_4.right, this.getWidth() - var5_8.left);
                    }
                }
            }
            if (var4_7.dodgeInsetEdges != 0 && var3_6.getVisibility() == 0) {
                this.offsetChildByInset(var3_6, var2_4, var9_2);
            }
            if (var1_1 != 0) ** GOTO lbl39
            var4_7 = this.mTempRect2;
            this.getLastChildRect(var3_6, (Rect)var4_7);
            if (var4_7.equals(var5_8)) ** GOTO lbl-1000
            this.recordLastChildRect(var3_6, (Rect)var5_8);
lbl39: // 2 sources:
            var8_10 = var7_5 + 1;
            do {
                if (var8_10 >= var10_3) lbl-1000: // 2 sources:
                {
                    ++var7_5;
                    continue block11;
                }
                var4_7 = this.mDependencySortedChildren.get(var8_10);
                var5_8 = (LayoutParams)var4_7.getLayoutParams();
                var6_9 = var5_8.getBehavior();
                if (var6_9 != null && var6_9.layoutDependsOn(this, var4_7, var3_6)) {
                    if (var1_1 == 0 && var5_8.getChangedAfterNestedScroll()) {
                        var5_8.resetChangedAfterNestedScroll();
                    } else {
                        switch (var1_1) {
                            default: {
                                var11_11 = var6_9.onDependentViewChanged(this, var4_7, var3_6);
                                break;
                            }
                            case 2: {
                                var6_9.onDependentViewRemoved(this, var4_7, var3_6);
                                var11_11 = true;
                            }
                        }
                        if (var1_1 == 1) {
                            var5_8.setChangedAfterNestedScroll(var11_11);
                        }
                    }
                }
                ++var8_10;
            } while (true);
            break;
        } while (true);
    }

    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.resetTouchBehaviors();
        if (this.mNeedsPreDrawListener && this.mOnPreDrawListener != null) {
            this.getViewTreeObserver().removeOnPreDrawListener((ViewTreeObserver.OnPreDrawListener)this.mOnPreDrawListener);
        }
        if (this.mNestedScrollingTarget != null) {
            this.onStopNestedScroll(this.mNestedScrollingTarget);
        }
        this.mIsAttachedToWindow = false;
    }

    /*
     * Enabled aggressive block sorting
     */
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        if (this.mDrawStatusBarBackground && this.mStatusBarBackground != null) {
            int n2 = this.mLastInsets != null ? this.mLastInsets.getSystemWindowInsetTop() : 0;
            if (n2 <= 0) return;
            this.mStatusBarBackground.setBounds(0, 0, this.getWidth(), n2);
            this.mStatusBarBackground.draw(canvas);
        }
    }

    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        int n2 = MotionEventCompat.getActionMasked(motionEvent);
        if (n2 == 0) {
            this.resetTouchBehaviors();
        }
        boolean bl = this.performIntercept(motionEvent, 0);
        if (false) {
            throw new NullPointerException();
        }
        if (n2 == 1 || n2 == 3) {
            this.resetTouchBehaviors();
        }
        return bl;
    }

    protected void onLayout(boolean bl, int n2, int n3, int n4, int n5) {
        n3 = ViewCompat.getLayoutDirection((View)this);
        n4 = this.mDependencySortedChildren.size();
        for (n2 = 0; n2 < n4; ++n2) {
            View view = this.mDependencySortedChildren.get(n2);
            Behavior behavior = ((LayoutParams)view.getLayoutParams()).getBehavior();
            if (behavior != null && behavior.onLayoutChild(this, view, n3)) continue;
            this.onLayoutChild(view, n3);
        }
    }

    public void onLayoutChild(View view, int n2) {
        LayoutParams layoutParams = (LayoutParams)view.getLayoutParams();
        if (layoutParams.checkAnchorChanged()) {
            throw new IllegalStateException("An anchor may not be changed after CoordinatorLayout measurement begins before layout is complete.");
        }
        if (layoutParams.mAnchorView != null) {
            this.layoutChildWithAnchor(view, layoutParams.mAnchorView, n2);
            return;
        }
        if (layoutParams.keyline >= 0) {
            this.layoutChildWithKeyline(view, layoutParams.keyline, n2);
            return;
        }
        this.layoutChild(view, n2);
    }

    /*
     * Unable to fully structure code
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    protected void onMeasure(int var1_1, int var2_2) {
        block10 : {
            block11 : {
                block9 : {
                    this.prepareChildren();
                    this.ensurePreDrawListener();
                    var17_3 = this.getPaddingLeft();
                    var18_4 = this.getPaddingTop();
                    var19_5 = this.getPaddingRight();
                    var20_6 = this.getPaddingBottom();
                    var21_7 = ViewCompat.getLayoutDirection((View)this);
                    if (var21_7 != 1) ** GOTO lbl58
                    var7_8 = true;
lbl10: // 2 sources:
                    do {
                        var22_9 = View.MeasureSpec.getMode((int)var1_1);
                        var23_10 = View.MeasureSpec.getSize((int)var1_1);
                        var24_11 = View.MeasureSpec.getMode((int)var2_2);
                        var25_12 = View.MeasureSpec.getSize((int)var2_2);
                        var12_13 = this.getSuggestedMinimumWidth();
                        var11_14 = this.getSuggestedMinimumHeight();
                        var10_15 = 0;
                        if (this.mLastInsets == null || !ViewCompat.getFitsSystemWindows((View)this)) break block9;
                        var8_16 = true;
lbl20: // 2 sources:
                        do {
                            var26_17 = this.mDependencySortedChildren.size();
                            var9_18 = 0;
                            block3 : do {
                                if (var9_18 >= var26_17) break block10;
                                var3_19 = this.mDependencySortedChildren.get(var9_18);
                                var4_20 = (LayoutParams)var3_19.getLayoutParams();
                                var6_22 = var13_23 = 0;
                                if (var4_20.keyline < 0) ** GOTO lbl35
                                var6_22 = var13_23;
                                if (var22_9 == 0) ** GOTO lbl35
                                var14_24 = this.getKeyline(var4_20.keyline);
                                var15_25 = GravityCompat.getAbsoluteGravity(CoordinatorLayout.resolveKeylineGravity(var4_20.gravity), var21_7) & 7;
                                if (var15_25 == 3 && !var7_8 || var15_25 == 5 && var7_8) {
                                    var6_22 = Math.max(0, var23_10 - var19_5 - var14_24);
lbl35: // 6 sources:
                                    do {
                                        var14_24 = var1_1;
                                        var15_25 = var2_2;
                                        var16_26 = var14_24;
                                        var13_23 = var15_25;
                                        if (var8_16) {
                                            var16_26 = var14_24;
                                            var13_23 = var15_25;
                                            if (!ViewCompat.getFitsSystemWindows(var3_19)) {
                                                var15_25 = this.mLastInsets.getSystemWindowInsetLeft();
                                                var16_26 = this.mLastInsets.getSystemWindowInsetRight();
                                                var13_23 = this.mLastInsets.getSystemWindowInsetTop();
                                                var14_24 = this.mLastInsets.getSystemWindowInsetBottom();
                                                var16_26 = View.MeasureSpec.makeMeasureSpec((int)(var23_10 - (var15_25 + var16_26)), (int)var22_9);
                                                var13_23 = View.MeasureSpec.makeMeasureSpec((int)(var25_12 - (var13_23 + var14_24)), (int)var24_11);
                                            }
                                        }
                                        if ((var5_21 = var4_20.getBehavior()) == null || !var5_21.onMeasureChild(this, var3_19, var16_26, var6_22, var13_23, 0)) {
                                            this.onMeasureChild(var3_19, var16_26, var6_22, var13_23, 0);
                                        }
                                        var12_13 = Math.max(var12_13, var3_19.getMeasuredWidth() + (var17_3 + var19_5) + var4_20.leftMargin + var4_20.rightMargin);
                                        var11_14 = Math.max(var11_14, var3_19.getMeasuredHeight() + (var18_4 + var20_6) + var4_20.topMargin + var4_20.bottomMargin);
                                        var10_15 = ViewCompat.combineMeasuredStates(var10_15, ViewCompat.getMeasuredState(var3_19));
                                        ++var9_18;
                                        continue block3;
                                        break;
                                    } while (true);
                                }
                                break block11;
                                break;
                            } while (true);
                            break;
                        } while (true);
                        break;
                    } while (true);
lbl58: // 1 sources:
                    var7_8 = false;
                    ** while (true)
                }
                var8_16 = false;
                ** while (true)
            }
            if (var15_25 == 5 && !var7_8) ** GOTO lbl69
            var6_22 = var13_23;
            if (var15_25 != 3) ** GOTO lbl35
            var6_22 = var13_23;
            if (!var7_8) ** GOTO lbl35
lbl69: // 2 sources:
            var6_22 = Math.max(0, var14_24 - var17_3);
            ** while (true)
        }
        this.setMeasuredDimension(ViewCompat.resolveSizeAndState(var12_13, var1_1, -16777216 & var10_15), ViewCompat.resolveSizeAndState(var11_14, var2_2, var10_15 << 16));
    }

    public void onMeasureChild(View view, int n2, int n3, int n4, int n5) {
        this.measureChildWithMargins(view, n2, n3, n4, n5);
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    public boolean onNestedFling(View view, float f2, float f3, boolean bl) {
        boolean bl2 = false;
        int n2 = this.getChildCount();
        for (int i2 = 0; i2 < n2; ++i2) {
            boolean bl3;
            View view2 = this.getChildAt(i2);
            Object object = (LayoutParams)view2.getLayoutParams();
            if (!object.isNestedScrollAccepted()) {
                bl3 = bl2;
            } else {
                object = object.getBehavior();
                bl3 = bl2;
                if (object != null) {
                    bl3 = bl2 | object.onNestedFling(this, view2, view, f2, f3, bl);
                }
            }
            bl2 = bl3;
        }
        if (bl2) {
            this.onChildViewsChanged(1);
        }
        return bl2;
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    public boolean onNestedPreFling(View view, float f2, float f3) {
        boolean bl = false;
        int n2 = this.getChildCount();
        int n3 = 0;
        while (n3 < n2) {
            boolean bl2;
            View view2 = this.getChildAt(n3);
            Object object = (LayoutParams)view2.getLayoutParams();
            if (!object.isNestedScrollAccepted()) {
                bl2 = bl;
            } else {
                object = object.getBehavior();
                bl2 = bl;
                if (object != null) {
                    bl2 = bl | object.onNestedPreFling(this, view2, view, f2, f3);
                }
            }
            ++n3;
            bl = bl2;
        }
        return bl;
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    public void onNestedPreScroll(View view, int n2, int n3, int[] arrn) {
        int n4 = 0;
        int n5 = 0;
        boolean bl = false;
        int n6 = this.getChildCount();
        for (int i2 = 0; i2 < n6; ++i2) {
            int n7;
            int n8;
            View view2 = this.getChildAt(i2);
            Object object = (LayoutParams)view2.getLayoutParams();
            if (!object.isNestedScrollAccepted()) {
                n7 = n5;
                n8 = n4;
            } else {
                object = object.getBehavior();
                n8 = n4;
                n7 = n5;
                if (object != null) {
                    int[] arrn2 = this.mTempIntPair;
                    this.mTempIntPair[1] = 0;
                    arrn2[0] = 0;
                    object.onNestedPreScroll(this, view2, view, n2, n3, this.mTempIntPair);
                    n4 = n2 > 0 ? Math.max(n4, this.mTempIntPair[0]) : Math.min(n4, this.mTempIntPair[0]);
                    n5 = n3 > 0 ? Math.max(n5, this.mTempIntPair[1]) : Math.min(n5, this.mTempIntPair[1]);
                    bl = true;
                    n8 = n4;
                    n7 = n5;
                }
            }
            n4 = n8;
            n5 = n7;
        }
        arrn[0] = n4;
        arrn[1] = n5;
        if (bl) {
            this.onChildViewsChanged(1);
        }
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    public void onNestedScroll(View view, int n2, int n3, int n4, int n5) {
        int n6 = this.getChildCount();
        boolean bl = false;
        int n7 = 0;
        while (n7 < n6) {
            View view2 = this.getChildAt(n7);
            Object object = (LayoutParams)view2.getLayoutParams();
            if (object.isNestedScrollAccepted() && (object = object.getBehavior()) != null) {
                object.onNestedScroll(this, view2, view, n2, n3, n4, n5);
                bl = true;
            }
            ++n7;
        }
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    public void onNestedScrollAccepted(View view, View view2, int n2) {
        this.mNestedScrollingParentHelper.onNestedScrollAccepted(view, view2, n2);
        this.mNestedScrollingDirectChild = view;
        this.mNestedScrollingTarget = view2;
        int n3 = this.getChildCount();
        int n4 = 0;
        while (n4 < n3) {
            View view3 = this.getChildAt(n4);
            Object object = (LayoutParams)view3.getLayoutParams();
            if (object.isNestedScrollAccepted() && (object = object.getBehavior()) != null) {
                object.onNestedScrollAccepted(this, view3, view, view2, n2);
            }
            ++n4;
        }
    }

    /*
     * Enabled aggressive block sorting
     */
    protected void onRestoreInstanceState(Parcelable sparseArray) {
        if (!(sparseArray instanceof SavedState)) {
            super.onRestoreInstanceState(sparseArray);
            return;
        } else {
            sparseArray = (SavedState)sparseArray;
            super.onRestoreInstanceState(sparseArray.getSuperState());
            sparseArray = sparseArray.behaviorStates;
            int n2 = this.getChildCount();
            for (int i2 = 0; i2 < n2; ++i2) {
                Parcelable parcelable;
                View view = this.getChildAt(i2);
                int n3 = view.getId();
                Behavior behavior = this.getResolvedLayoutParams(view).getBehavior();
                if (n3 == -1 || behavior == null || (parcelable = (Parcelable)sparseArray.get(n3)) == null) continue;
                behavior.onRestoreInstanceState(this, view, parcelable);
            }
        }
    }

    protected Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        SparseArray sparseArray = new SparseArray();
        int n2 = this.getChildCount();
        for (int i2 = 0; i2 < n2; ++i2) {
            View view = this.getChildAt(i2);
            int n3 = view.getId();
            Behavior behavior = ((LayoutParams)view.getLayoutParams()).getBehavior();
            if (n3 == -1 || behavior == null || (view = behavior.onSaveInstanceState(this, view)) == null) continue;
            sparseArray.append(n3, (Object)view);
        }
        savedState.behaviorStates = sparseArray;
        return savedState;
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    public boolean onStartNestedScroll(View view, View view2, int n2) {
        boolean bl = false;
        int n3 = this.getChildCount();
        int n4 = 0;
        while (n4 < n3) {
            View view3 = this.getChildAt(n4);
            LayoutParams layoutParams = (LayoutParams)view3.getLayoutParams();
            Behavior behavior = layoutParams.getBehavior();
            if (behavior != null) {
                boolean bl2 = behavior.onStartNestedScroll(this, view3, view, view2, n2);
                bl |= bl2;
                layoutParams.acceptNestedScroll(bl2);
            } else {
                layoutParams.acceptNestedScroll(false);
            }
            ++n4;
        }
        return bl;
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    public void onStopNestedScroll(View view) {
        this.mNestedScrollingParentHelper.onStopNestedScroll(view);
        int n2 = this.getChildCount();
        int n3 = 0;
        do {
            if (n3 >= n2) {
                this.mNestedScrollingDirectChild = null;
                this.mNestedScrollingTarget = null;
                return;
            }
            View view2 = this.getChildAt(n3);
            LayoutParams layoutParams = (LayoutParams)view2.getLayoutParams();
            if (layoutParams.isNestedScrollAccepted()) {
                Behavior behavior = layoutParams.getBehavior();
                if (behavior != null) {
                    behavior.onStopNestedScroll(this, view2, view);
                }
                layoutParams.resetNestedScroll();
                layoutParams.resetChangedAfterNestedScroll();
            }
            ++n3;
        } while (true);
    }

    /*
     * Unable to fully structure code
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    public boolean onTouchEvent(MotionEvent var1_1) {
        var11_2 = false;
        var9_3 = false;
        var2_4 = null;
        var3_5 = null;
        var5_6 = MotionEventCompat.getActionMasked(var1_1);
        if (this.mBehaviorTouchView != null) ** GOTO lbl-1000
        var10_7 = var9_3 = this.performIntercept(var1_1, 1);
        var8_8 = var11_2;
        if (var9_3) lbl-1000: // 2 sources:
        {
            var4_9 = ((LayoutParams)this.mBehaviorTouchView.getLayoutParams()).getBehavior();
            var10_7 = var9_3;
            var8_8 = var11_2;
            if (var4_9 != null) {
                var8_8 = var4_9.onTouchEvent(this, this.mBehaviorTouchView, var1_1);
                var10_7 = var9_3;
            }
        }
        if (this.mBehaviorTouchView == null) {
            var9_3 = var8_8 | super.onTouchEvent(var1_1);
            var1_1 = var3_5;
        } else {
            var1_1 = var3_5;
            var9_3 = var8_8;
            if (var10_7) {
                var1_1 = var2_4;
                if (!false) {
                    var6_10 = SystemClock.uptimeMillis();
                    var1_1 = MotionEvent.obtain((long)var6_10, (long)var6_10, (int)3, (float)0.0f, (float)0.0f, (int)0);
                }
                super.onTouchEvent(var1_1);
                var9_3 = var8_8;
            }
        }
        if (var9_3 || var5_6 == 0) {
            // empty if block
        }
        if (var1_1 != null) {
            var1_1.recycle();
        }
        if (var5_6 != 1) {
            if (var5_6 != 3) return var9_3;
        }
        this.resetTouchBehaviors();
        return var9_3;
    }

    void recordLastChildRect(View view, Rect rect) {
        ((LayoutParams)view.getLayoutParams()).setLastChildRect(rect);
    }

    void removePreDrawListener() {
        if (this.mIsAttachedToWindow && this.mOnPreDrawListener != null) {
            this.getViewTreeObserver().removeOnPreDrawListener((ViewTreeObserver.OnPreDrawListener)this.mOnPreDrawListener);
        }
        this.mNeedsPreDrawListener = false;
    }

    public boolean requestChildRectangleOnScreen(View view, Rect rect, boolean bl) {
        Behavior behavior = ((LayoutParams)view.getLayoutParams()).getBehavior();
        if (behavior != null && behavior.onRequestChildRectangleOnScreen(this, view, rect, bl)) {
            return true;
        }
        return super.requestChildRectangleOnScreen(view, rect, bl);
    }

    public void requestDisallowInterceptTouchEvent(boolean bl) {
        super.requestDisallowInterceptTouchEvent(bl);
        if (bl && !this.mDisallowInterceptReset) {
            this.resetTouchBehaviors();
            this.mDisallowInterceptReset = true;
        }
    }

    public void setFitsSystemWindows(boolean bl) {
        super.setFitsSystemWindows(bl);
        this.setupForInsets();
    }

    public void setOnHierarchyChangeListener(ViewGroup.OnHierarchyChangeListener onHierarchyChangeListener) {
        this.mOnHierarchyChangeListener = onHierarchyChangeListener;
    }

    /*
     * Enabled aggressive block sorting
     */
    public void setStatusBarBackground(@Nullable Drawable drawable2) {
        Drawable drawable3 = null;
        if (this.mStatusBarBackground == drawable2) return;
        if (this.mStatusBarBackground != null) {
            this.mStatusBarBackground.setCallback(null);
        }
        if (drawable2 != null) {
            drawable3 = drawable2.mutate();
        }
        this.mStatusBarBackground = drawable3;
        if (this.mStatusBarBackground != null) {
            if (this.mStatusBarBackground.isStateful()) {
                this.mStatusBarBackground.setState(this.getDrawableState());
            }
            DrawableCompat.setLayoutDirection(this.mStatusBarBackground, ViewCompat.getLayoutDirection((View)this));
            drawable2 = this.mStatusBarBackground;
            boolean bl = this.getVisibility() == 0;
            drawable2.setVisible(bl, false);
            this.mStatusBarBackground.setCallback((Drawable.Callback)this);
        }
        ViewCompat.postInvalidateOnAnimation((View)this);
    }

    public void setStatusBarBackgroundColor(@ColorInt int n2) {
        this.setStatusBarBackground((Drawable)new ColorDrawable(n2));
    }

    /*
     * Enabled aggressive block sorting
     */
    public void setStatusBarBackgroundResource(@DrawableRes int n2) {
        Drawable drawable2 = n2 != 0 ? ContextCompat.getDrawable(this.getContext(), n2) : null;
        this.setStatusBarBackground(drawable2);
    }

    /*
     * Enabled aggressive block sorting
     */
    public void setVisibility(int n2) {
        super.setVisibility(n2);
        boolean bl = n2 == 0;
        if (this.mStatusBarBackground == null) return;
        if (this.mStatusBarBackground.isVisible() != bl) {
            this.mStatusBarBackground.setVisible(bl, false);
        }
    }

    /*
     * Enabled aggressive block sorting
     */
    final WindowInsetsCompat setWindowInsets(WindowInsetsCompat windowInsetsCompat) {
        boolean bl = true;
        WindowInsetsCompat windowInsetsCompat2 = windowInsetsCompat;
        if (!ViewUtils.objectEquals(this.mLastInsets, windowInsetsCompat)) {
            this.mLastInsets = windowInsetsCompat;
            boolean bl2 = windowInsetsCompat != null && windowInsetsCompat.getSystemWindowInsetTop() > 0;
            this.mDrawStatusBarBackground = bl2;
            bl2 = !this.mDrawStatusBarBackground && this.getBackground() == null ? bl : false;
            this.setWillNotDraw(bl2);
            windowInsetsCompat2 = this.dispatchApplyWindowInsetsToBehaviors(windowInsetsCompat);
            this.requestLayout();
        }
        return windowInsetsCompat2;
    }

    protected boolean verifyDrawable(Drawable drawable2) {
        if (super.verifyDrawable(drawable2) || drawable2 == this.mStatusBarBackground) {
            return true;
        }
        return false;
    }

    public static abstract class Behavior<V extends View> {
        public Behavior() {
        }

        public Behavior(Context context, AttributeSet attributeSet) {
        }

        public static Object getTag(View view) {
            return ((LayoutParams)view.getLayoutParams()).mBehaviorTag;
        }

        public static void setTag(View view, Object object) {
            ((LayoutParams)view.getLayoutParams()).mBehaviorTag = object;
        }

        public boolean blocksInteractionBelow(CoordinatorLayout coordinatorLayout, V v2) {
            if (this.getScrimOpacity(coordinatorLayout, v2) > 0.0f) {
                return true;
            }
            return false;
        }

        public boolean getInsetDodgeRect(@NonNull CoordinatorLayout coordinatorLayout, @NonNull V v2, @NonNull Rect rect) {
            return false;
        }

        @ColorInt
        public int getScrimColor(CoordinatorLayout coordinatorLayout, V v2) {
            return -16777216;
        }

        @FloatRange(from=0.0, to=1.0)
        public float getScrimOpacity(CoordinatorLayout coordinatorLayout, V v2) {
            return 0.0f;
        }

        @Deprecated
        public boolean isDirty(CoordinatorLayout coordinatorLayout, V v2) {
            return false;
        }

        public boolean layoutDependsOn(CoordinatorLayout coordinatorLayout, V v2, View view) {
            return false;
        }

        @NonNull
        public WindowInsetsCompat onApplyWindowInsets(CoordinatorLayout coordinatorLayout, V v2, WindowInsetsCompat windowInsetsCompat) {
            return windowInsetsCompat;
        }

        public void onAttachedToLayoutParams(@NonNull LayoutParams layoutParams) {
        }

        public boolean onDependentViewChanged(CoordinatorLayout coordinatorLayout, V v2, View view) {
            return false;
        }

        public void onDependentViewRemoved(CoordinatorLayout coordinatorLayout, V v2, View view) {
        }

        public void onDetachedFromLayoutParams() {
        }

        public boolean onInterceptTouchEvent(CoordinatorLayout coordinatorLayout, V v2, MotionEvent motionEvent) {
            return false;
        }

        public boolean onLayoutChild(CoordinatorLayout coordinatorLayout, V v2, int n2) {
            return false;
        }

        public boolean onMeasureChild(CoordinatorLayout coordinatorLayout, V v2, int n2, int n3, int n4, int n5) {
            return false;
        }

        public boolean onNestedFling(CoordinatorLayout coordinatorLayout, V v2, View view, float f2, float f3, boolean bl) {
            return false;
        }

        public boolean onNestedPreFling(CoordinatorLayout coordinatorLayout, V v2, View view, float f2, float f3) {
            return false;
        }

        public void onNestedPreScroll(CoordinatorLayout coordinatorLayout, V v2, View view, int n2, int n3, int[] arrn) {
        }

        public void onNestedScroll(CoordinatorLayout coordinatorLayout, V v2, View view, int n2, int n3, int n4, int n5) {
        }

        public void onNestedScrollAccepted(CoordinatorLayout coordinatorLayout, V v2, View view, View view2, int n2) {
        }

        public boolean onRequestChildRectangleOnScreen(CoordinatorLayout coordinatorLayout, V v2, Rect rect, boolean bl) {
            return false;
        }

        public void onRestoreInstanceState(CoordinatorLayout coordinatorLayout, V v2, Parcelable parcelable) {
        }

        public Parcelable onSaveInstanceState(CoordinatorLayout coordinatorLayout, V v2) {
            return View.BaseSavedState.EMPTY_STATE;
        }

        public boolean onStartNestedScroll(CoordinatorLayout coordinatorLayout, V v2, View view, View view2, int n2) {
            return false;
        }

        public void onStopNestedScroll(CoordinatorLayout coordinatorLayout, V v2, View view) {
        }

        public boolean onTouchEvent(CoordinatorLayout coordinatorLayout, V v2, MotionEvent motionEvent) {
            return false;
        }
    }

    @Retention(value=RetentionPolicy.RUNTIME)
    public static @interface DefaultBehavior {
        public Class<? extends Behavior> value();
    }

    @Retention(value=RetentionPolicy.SOURCE)
    @RestrictTo(value={RestrictTo.Scope.GROUP_ID})
    public static @interface DispatchChangeEvent {
    }

    private class HierarchyChangeListener
    implements ViewGroup.OnHierarchyChangeListener {
        HierarchyChangeListener() {
        }

        public void onChildViewAdded(View view, View view2) {
            if (CoordinatorLayout.this.mOnHierarchyChangeListener != null) {
                CoordinatorLayout.this.mOnHierarchyChangeListener.onChildViewAdded(view, view2);
            }
        }

        public void onChildViewRemoved(View view, View view2) {
            CoordinatorLayout.this.onChildViewsChanged(2);
            if (CoordinatorLayout.this.mOnHierarchyChangeListener != null) {
                CoordinatorLayout.this.mOnHierarchyChangeListener.onChildViewRemoved(view, view2);
            }
        }
    }

    public static class LayoutParams
    extends ViewGroup.MarginLayoutParams {
        public int anchorGravity = 0;
        public int dodgeInsetEdges = 0;
        public int gravity = 0;
        public int insetEdge = 0;
        public int keyline = -1;
        View mAnchorDirectChild;
        int mAnchorId = -1;
        View mAnchorView;
        Behavior mBehavior;
        boolean mBehaviorResolved = false;
        Object mBehaviorTag;
        private boolean mDidAcceptNestedScroll;
        private boolean mDidBlockInteraction;
        private boolean mDidChangeAfterNestedScroll;
        int mInsetOffsetX;
        int mInsetOffsetY;
        final Rect mLastChildRect = new Rect();

        public LayoutParams(int n2, int n3) {
            super(n2, n3);
        }

        LayoutParams(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            TypedArray typedArray = context.obtainStyledAttributes(attributeSet, R.styleable.CoordinatorLayout_Layout);
            this.gravity = typedArray.getInteger(R.styleable.CoordinatorLayout_Layout_android_layout_gravity, 0);
            this.mAnchorId = typedArray.getResourceId(R.styleable.CoordinatorLayout_Layout_layout_anchor, -1);
            this.anchorGravity = typedArray.getInteger(R.styleable.CoordinatorLayout_Layout_layout_anchorGravity, 0);
            this.keyline = typedArray.getInteger(R.styleable.CoordinatorLayout_Layout_layout_keyline, -1);
            this.insetEdge = typedArray.getInt(R.styleable.CoordinatorLayout_Layout_layout_insetEdge, 0);
            this.dodgeInsetEdges = typedArray.getInt(R.styleable.CoordinatorLayout_Layout_layout_dodgeInsetEdges, 0);
            this.mBehaviorResolved = typedArray.hasValue(R.styleable.CoordinatorLayout_Layout_layout_behavior);
            if (this.mBehaviorResolved) {
                this.mBehavior = CoordinatorLayout.parseBehavior(context, attributeSet, typedArray.getString(R.styleable.CoordinatorLayout_Layout_layout_behavior));
            }
            typedArray.recycle();
            if (this.mBehavior != null) {
                this.mBehavior.onAttachedToLayoutParams(this);
            }
        }

        public LayoutParams(LayoutParams layoutParams) {
            super((ViewGroup.MarginLayoutParams)layoutParams);
        }

        public LayoutParams(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
        }

        public LayoutParams(ViewGroup.MarginLayoutParams marginLayoutParams) {
            super(marginLayoutParams);
        }

        private void resolveAnchorView(View view, CoordinatorLayout coordinatorLayout) {
            this.mAnchorView = coordinatorLayout.findViewById(this.mAnchorId);
            if (this.mAnchorView != null) {
                if (this.mAnchorView == coordinatorLayout) {
                    if (coordinatorLayout.isInEditMode()) {
                        this.mAnchorDirectChild = null;
                        this.mAnchorView = null;
                        return;
                    }
                    throw new IllegalStateException("View can not be anchored to the the parent CoordinatorLayout");
                }
                View view2 = this.mAnchorView;
                for (ViewParent viewParent = this.mAnchorView.getParent(); viewParent != coordinatorLayout && viewParent != null; viewParent = viewParent.getParent()) {
                    if (viewParent == view) {
                        if (coordinatorLayout.isInEditMode()) {
                            this.mAnchorDirectChild = null;
                            this.mAnchorView = null;
                            return;
                        }
                        throw new IllegalStateException("Anchor must not be a descendant of the anchored view");
                    }
                    if (!(viewParent instanceof View)) continue;
                    view2 = (View)viewParent;
                }
                this.mAnchorDirectChild = view2;
                return;
            }
            if (coordinatorLayout.isInEditMode()) {
                this.mAnchorDirectChild = null;
                this.mAnchorView = null;
                return;
            }
            throw new IllegalStateException("Could not find CoordinatorLayout descendant view with id " + coordinatorLayout.getResources().getResourceName(this.mAnchorId) + " to anchor view " + (Object)view);
        }

        private boolean shouldDodge(View view, int n2) {
            int n3 = GravityCompat.getAbsoluteGravity(((LayoutParams)view.getLayoutParams()).insetEdge, n2);
            if (n3 != 0 && (GravityCompat.getAbsoluteGravity(this.dodgeInsetEdges, n2) & n3) == n3) {
                return true;
            }
            return false;
        }

        private boolean verifyAnchorView(View view, CoordinatorLayout coordinatorLayout) {
            if (this.mAnchorView.getId() != this.mAnchorId) {
                return false;
            }
            View view2 = this.mAnchorView;
            for (ViewParent viewParent = this.mAnchorView.getParent(); viewParent != coordinatorLayout; viewParent = viewParent.getParent()) {
                if (viewParent == null || viewParent == view) {
                    this.mAnchorDirectChild = null;
                    this.mAnchorView = null;
                    return false;
                }
                if (!(viewParent instanceof View)) continue;
                view2 = (View)viewParent;
            }
            this.mAnchorDirectChild = view2;
            return true;
        }

        void acceptNestedScroll(boolean bl) {
            this.mDidAcceptNestedScroll = bl;
        }

        boolean checkAnchorChanged() {
            if (this.mAnchorView == null && this.mAnchorId != -1) {
                return true;
            }
            return false;
        }

        boolean dependsOn(CoordinatorLayout coordinatorLayout, View view, View view2) {
            if (view2 == this.mAnchorDirectChild || this.shouldDodge(view2, ViewCompat.getLayoutDirection((View)coordinatorLayout)) || this.mBehavior != null && this.mBehavior.layoutDependsOn(coordinatorLayout, view, view2)) {
                return true;
            }
            return false;
        }

        boolean didBlockInteraction() {
            if (this.mBehavior == null) {
                this.mDidBlockInteraction = false;
            }
            return this.mDidBlockInteraction;
        }

        View findAnchorView(CoordinatorLayout coordinatorLayout, View view) {
            if (this.mAnchorId == -1) {
                this.mAnchorDirectChild = null;
                this.mAnchorView = null;
                return null;
            }
            if (this.mAnchorView == null || !this.verifyAnchorView(view, coordinatorLayout)) {
                this.resolveAnchorView(view, coordinatorLayout);
            }
            return this.mAnchorView;
        }

        @IdRes
        public int getAnchorId() {
            return this.mAnchorId;
        }

        @Nullable
        public Behavior getBehavior() {
            return this.mBehavior;
        }

        boolean getChangedAfterNestedScroll() {
            return this.mDidChangeAfterNestedScroll;
        }

        Rect getLastChildRect() {
            return this.mLastChildRect;
        }

        void invalidateAnchor() {
            this.mAnchorDirectChild = null;
            this.mAnchorView = null;
        }

        /*
         * Enabled aggressive block sorting
         */
        boolean isBlockingInteractionBelow(CoordinatorLayout coordinatorLayout, View view) {
            if (this.mDidBlockInteraction) {
                return true;
            }
            boolean bl = this.mDidBlockInteraction;
            boolean bl2 = this.mBehavior != null ? this.mBehavior.blocksInteractionBelow(coordinatorLayout, view) : false;
            this.mDidBlockInteraction = bl2 |= bl;
            return bl2;
        }

        boolean isNestedScrollAccepted() {
            return this.mDidAcceptNestedScroll;
        }

        void resetChangedAfterNestedScroll() {
            this.mDidChangeAfterNestedScroll = false;
        }

        void resetNestedScroll() {
            this.mDidAcceptNestedScroll = false;
        }

        void resetTouchBehaviorTracking() {
            this.mDidBlockInteraction = false;
        }

        public void setAnchorId(@IdRes int n2) {
            this.invalidateAnchor();
            this.mAnchorId = n2;
        }

        public void setBehavior(@Nullable Behavior behavior) {
            if (this.mBehavior != behavior) {
                if (this.mBehavior != null) {
                    this.mBehavior.onDetachedFromLayoutParams();
                }
                this.mBehavior = behavior;
                this.mBehaviorTag = null;
                this.mBehaviorResolved = true;
                if (behavior != null) {
                    behavior.onAttachedToLayoutParams(this);
                }
            }
        }

        void setChangedAfterNestedScroll(boolean bl) {
            this.mDidChangeAfterNestedScroll = bl;
        }

        void setLastChildRect(Rect rect) {
            this.mLastChildRect.set(rect);
        }
    }

    class OnPreDrawListener
    implements ViewTreeObserver.OnPreDrawListener {
        OnPreDrawListener() {
        }

        public boolean onPreDraw() {
            CoordinatorLayout.this.onChildViewsChanged(0);
            return true;
        }
    }

    protected static class SavedState
    extends android.support.v4.view.AbsSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = ParcelableCompat.newCreator(new ParcelableCompatCreatorCallbacks<SavedState>(){

            @Override
            public SavedState createFromParcel(Parcel parcel, ClassLoader classLoader) {
                return new SavedState(parcel, classLoader);
            }

            public SavedState[] newArray(int n2) {
                return new SavedState[n2];
            }
        });
        SparseArray<Parcelable> behaviorStates;

        public SavedState(Parcel arrparcelable, ClassLoader classLoader) {
            super((Parcel)arrparcelable, classLoader);
            int n2 = arrparcelable.readInt();
            int[] arrn = new int[n2];
            arrparcelable.readIntArray(arrn);
            arrparcelable = arrparcelable.readParcelableArray(classLoader);
            this.behaviorStates = new SparseArray(n2);
            for (int i2 = 0; i2 < n2; ++i2) {
                this.behaviorStates.append(arrn[i2], (Object)arrparcelable[i2]);
            }
        }

        public SavedState(Parcelable parcelable) {
            super(parcelable);
        }

        /*
         * Enabled aggressive block sorting
         */
        @Override
        public void writeToParcel(Parcel parcel, int n2) {
            super.writeToParcel(parcel, n2);
            int n3 = this.behaviorStates != null ? this.behaviorStates.size() : 0;
            parcel.writeInt(n3);
            int[] arrn = new int[n3];
            Parcelable[] arrparcelable = new Parcelable[n3];
            int n4 = 0;
            do {
                if (n4 >= n3) {
                    parcel.writeIntArray(arrn);
                    parcel.writeParcelableArray(arrparcelable, n2);
                    return;
                }
                arrn[n4] = this.behaviorStates.keyAt(n4);
                arrparcelable[n4] = (Parcelable)this.behaviorStates.valueAt(n4);
                ++n4;
            } while (true);
        }

    }

    static class ViewElevationComparator
    implements Comparator<View> {
        ViewElevationComparator() {
        }

        @Override
        public int compare(View view, View view2) {
            float f2;
            float f3 = ViewCompat.getZ(view);
            if (f3 > (f2 = ViewCompat.getZ(view2))) {
                return -1;
            }
            if (f3 < f2) {
                return 1;
            }
            return 0;
        }
    }

}

