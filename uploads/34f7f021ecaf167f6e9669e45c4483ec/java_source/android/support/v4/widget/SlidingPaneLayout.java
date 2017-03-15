/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.content.Context
 *  android.content.res.Resources
 *  android.content.res.TypedArray
 *  android.graphics.Bitmap
 *  android.graphics.Canvas
 *  android.graphics.ColorFilter
 *  android.graphics.Paint
 *  android.graphics.PorterDuff
 *  android.graphics.PorterDuff$Mode
 *  android.graphics.PorterDuffColorFilter
 *  android.graphics.Rect
 *  android.graphics.drawable.Drawable
 *  android.os.Build
 *  android.os.Build$VERSION
 *  android.os.Parcel
 *  android.os.Parcelable
 *  android.os.Parcelable$Creator
 *  android.util.AttributeSet
 *  android.util.DisplayMetrics
 *  android.util.Log
 *  android.view.MotionEvent
 *  android.view.View
 *  android.view.ViewConfiguration
 *  android.view.ViewGroup
 *  android.view.ViewGroup$LayoutParams
 *  android.view.ViewGroup$MarginLayoutParams
 *  android.view.ViewParent
 *  android.view.accessibility.AccessibilityEvent
 */
package android.support.v4.widget;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Parcel;
import android.os.Parcelable;
import android.support.annotation.ColorInt;
import android.support.annotation.DrawableRes;
import android.support.v4.content.ContextCompat;
import android.support.v4.os.ParcelableCompat;
import android.support.v4.os.ParcelableCompatCreatorCallbacks;
import android.support.v4.view.AbsSavedState;
import android.support.v4.view.AccessibilityDelegateCompat;
import android.support.v4.view.MotionEventCompat;
import android.support.v4.view.ViewCompat;
import android.support.v4.view.accessibility.AccessibilityNodeInfoCompat;
import android.support.v4.widget.ViewDragHelper;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.util.Log;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityEvent;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.util.ArrayList;

public class SlidingPaneLayout
extends ViewGroup {
    private static final int DEFAULT_FADE_COLOR = -858993460;
    private static final int DEFAULT_OVERHANG_SIZE = 32;
    static final SlidingPanelLayoutImpl IMPL;
    private static final int MIN_FLING_VELOCITY = 400;
    private static final String TAG = "SlidingPaneLayout";
    private boolean mCanSlide;
    private int mCoveredFadeColor;
    final ViewDragHelper mDragHelper;
    private boolean mFirstLayout = true;
    private float mInitialMotionX;
    private float mInitialMotionY;
    boolean mIsUnableToDrag;
    private final int mOverhangSize;
    private PanelSlideListener mPanelSlideListener;
    private int mParallaxBy;
    private float mParallaxOffset;
    final ArrayList<DisableLayerRunnable> mPostedRunnables = new ArrayList();
    boolean mPreservedOpenState;
    private Drawable mShadowDrawableLeft;
    private Drawable mShadowDrawableRight;
    float mSlideOffset;
    int mSlideRange;
    View mSlideableView;
    private int mSliderFadeColor = -858993460;
    private final Rect mTmpRect = new Rect();

    static {
        int n2 = Build.VERSION.SDK_INT;
        IMPL = n2 >= 17 ? new SlidingPanelLayoutImplJBMR1() : (n2 >= 16 ? new SlidingPanelLayoutImplJB() : new SlidingPanelLayoutImplBase());
    }

    public SlidingPaneLayout(Context context) {
        this(context, null);
    }

    public SlidingPaneLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public SlidingPaneLayout(Context context, AttributeSet attributeSet, int n2) {
        super(context, attributeSet, n2);
        float f2 = context.getResources().getDisplayMetrics().density;
        this.mOverhangSize = (int)(32.0f * f2 + 0.5f);
        ViewConfiguration.get((Context)context);
        this.setWillNotDraw(false);
        ViewCompat.setAccessibilityDelegate((View)this, new AccessibilityDelegate());
        ViewCompat.setImportantForAccessibility((View)this, 1);
        this.mDragHelper = ViewDragHelper.create(this, 0.5f, new DragHelperCallback());
        this.mDragHelper.setMinVelocity(400.0f * f2);
    }

    private boolean closePane(View view, int n2) {
        boolean bl = false;
        if (this.mFirstLayout || this.smoothSlideTo(0.0f, n2)) {
            this.mPreservedOpenState = false;
            bl = true;
        }
        return bl;
    }

    /*
     * Enabled aggressive block sorting
     */
    private void dimChildView(View object, float f2, int n2) {
        LayoutParams layoutParams = (LayoutParams)object.getLayoutParams();
        if (f2 > 0.0f && n2 != 0) {
            int n3 = (int)((float)((-16777216 & n2) >>> 24) * f2);
            if (layoutParams.dimPaint == null) {
                layoutParams.dimPaint = new Paint();
            }
            layoutParams.dimPaint.setColorFilter((ColorFilter)new PorterDuffColorFilter(n3 << 24 | 16777215 & n2, PorterDuff.Mode.SRC_OVER));
            if (ViewCompat.getLayerType((View)object) != 2) {
                ViewCompat.setLayerType((View)object, 2, layoutParams.dimPaint);
            }
            this.invalidateChildRegion((View)object);
            return;
        } else {
            if (ViewCompat.getLayerType((View)object) == 0) return;
            {
                if (layoutParams.dimPaint != null) {
                    layoutParams.dimPaint.setColorFilter(null);
                }
                object = new DisableLayerRunnable((View)object);
                this.mPostedRunnables.add((DisableLayerRunnable)object);
                ViewCompat.postOnAnimation((View)this, (Runnable)object);
                return;
            }
        }
    }

    private boolean openPane(View view, int n2) {
        if (this.mFirstLayout || this.smoothSlideTo(1.0f, n2)) {
            this.mPreservedOpenState = true;
            return true;
        }
        return false;
    }

    /*
     * Unable to fully structure code
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    private void parallaxOtherViews(float var1_1) {
        var9_2 = this.isLayoutRtlSupport();
        var3_3 = (LayoutParams)this.mSlideableView.getLayoutParams();
        if (!var3_3.dimWhenOffset) ** GOTO lbl-1000
        var4_4 = var9_2 != false ? var3_3.rightMargin : var3_3.leftMargin;
        if (var4_4 <= 0) {
            var4_4 = 1;
        } else lbl-1000: // 2 sources:
        {
            var4_4 = 0;
        }
        var8_5 = this.getChildCount();
        var5_6 = 0;
        while (var5_6 < var8_5) {
            var3_3 = this.getChildAt(var5_6);
            if (var3_3 != this.mSlideableView) {
                var6_8 = (int)((1.0f - this.mParallaxOffset) * (float)this.mParallaxBy);
                this.mParallaxOffset = var1_1;
                var6_8 = var7_9 = var6_8 - (int)((1.0f - var1_1) * (float)this.mParallaxBy);
                if (var9_2) {
                    var6_8 = - var7_9;
                }
                var3_3.offsetLeftAndRight(var6_8);
                if (var4_4 != 0) {
                    var2_7 = var9_2 != false ? this.mParallaxOffset - 1.0f : 1.0f - this.mParallaxOffset;
                    this.dimChildView((View)var3_3, var2_7, this.mCoveredFadeColor);
                }
            }
            ++var5_6;
        }
    }

    /*
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    private static boolean viewIsOpaque(View view) {
        if (view.isOpaque()) {
            return true;
        }
        if (Build.VERSION.SDK_INT >= 18) {
            return false;
        }
        if ((view = view.getBackground()) == null) return false;
        if (view.getOpacity() == -1) return true;
        return false;
    }

    /*
     * Enabled aggressive block sorting
     */
    protected boolean canScroll(View view, boolean bl, int n2, int n3, int n4) {
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup)view;
            int n5 = view.getScrollX();
            int n6 = view.getScrollY();
            for (int i2 = viewGroup.getChildCount() - 1; i2 >= 0; --i2) {
                View view2 = viewGroup.getChildAt(i2);
                if (n3 + n5 < view2.getLeft() || n3 + n5 >= view2.getRight() || n4 + n6 < view2.getTop() || n4 + n6 >= view2.getBottom() || !this.canScroll(view2, true, n2, n3 + n5 - view2.getLeft(), n4 + n6 - view2.getTop())) continue;
                return true;
            }
        }
        if (bl) {
            if (!this.isLayoutRtlSupport()) {
                n2 = - n2;
            }
            if (ViewCompat.canScrollHorizontally(view, n2)) {
                return true;
            }
        }
        return false;
    }

    @Deprecated
    public boolean canSlide() {
        return this.mCanSlide;
    }

    protected boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        if (layoutParams instanceof LayoutParams && super.checkLayoutParams(layoutParams)) {
            return true;
        }
        return false;
    }

    public boolean closePane() {
        return this.closePane(this.mSlideableView, 0);
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    public void computeScroll() {
        if (!this.mDragHelper.continueSettling(true)) return;
        if (!this.mCanSlide) {
            this.mDragHelper.abort();
            return;
        }
        ViewCompat.postInvalidateOnAnimation((View)this);
    }

    void dispatchOnPanelClosed(View view) {
        if (this.mPanelSlideListener != null) {
            this.mPanelSlideListener.onPanelClosed(view);
        }
        this.sendAccessibilityEvent(32);
    }

    void dispatchOnPanelOpened(View view) {
        if (this.mPanelSlideListener != null) {
            this.mPanelSlideListener.onPanelOpened(view);
        }
        this.sendAccessibilityEvent(32);
    }

    void dispatchOnPanelSlide(View view) {
        if (this.mPanelSlideListener != null) {
            this.mPanelSlideListener.onPanelSlide(view, this.mSlideOffset);
        }
    }

    /*
     * Enabled aggressive block sorting
     */
    public void draw(Canvas canvas) {
        int n2;
        int n3;
        super.draw(canvas);
        Drawable drawable2 = this.isLayoutRtlSupport() ? this.mShadowDrawableRight : this.mShadowDrawableLeft;
        if (this.getChildCount() <= 1) {
            return;
        }
        View view = this.getChildAt(1);
        if (view == null || drawable2 == null) {
            return;
        }
        int n4 = view.getTop();
        int n5 = view.getBottom();
        int n6 = drawable2.getIntrinsicWidth();
        if (this.isLayoutRtlSupport()) {
            n3 = view.getRight();
            n2 = n3 + n6;
        } else {
            n2 = view.getLeft();
            n3 = n2 - n6;
        }
        drawable2.setBounds(n3, n4, n2, n5);
        drawable2.draw(canvas);
    }

    /*
     * Enabled aggressive block sorting
     */
    protected boolean drawChild(Canvas canvas, View view, long l2) {
        boolean bl;
        LayoutParams layoutParams = (LayoutParams)view.getLayoutParams();
        int n2 = canvas.save(2);
        if (this.mCanSlide && !layoutParams.slideable && this.mSlideableView != null) {
            canvas.getClipBounds(this.mTmpRect);
            if (this.isLayoutRtlSupport()) {
                this.mTmpRect.left = Math.max(this.mTmpRect.left, this.mSlideableView.getRight());
            } else {
                this.mTmpRect.right = Math.min(this.mTmpRect.right, this.mSlideableView.getLeft());
            }
            canvas.clipRect(this.mTmpRect);
        }
        if (Build.VERSION.SDK_INT >= 11) {
            bl = super.drawChild(canvas, view, l2);
        } else if (layoutParams.dimWhenOffset && this.mSlideOffset > 0.0f) {
            Bitmap bitmap;
            if (!view.isDrawingCacheEnabled()) {
                view.setDrawingCacheEnabled(true);
            }
            if ((bitmap = view.getDrawingCache()) != null) {
                canvas.drawBitmap(bitmap, (float)view.getLeft(), (float)view.getTop(), layoutParams.dimPaint);
                bl = false;
            } else {
                Log.e((String)"SlidingPaneLayout", (String)("drawChild: child view " + (Object)view + " returned null drawing cache"));
                bl = super.drawChild(canvas, view, l2);
            }
        } else {
            if (view.isDrawingCacheEnabled()) {
                view.setDrawingCacheEnabled(false);
            }
            bl = super.drawChild(canvas, view, l2);
        }
        canvas.restoreToCount(n2);
        return bl;
    }

    protected ViewGroup.LayoutParams generateDefaultLayoutParams() {
        return new LayoutParams();
    }

    public ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new LayoutParams(this.getContext(), attributeSet);
    }

    protected ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
            return new LayoutParams((ViewGroup.MarginLayoutParams)layoutParams);
        }
        return new LayoutParams(layoutParams);
    }

    @ColorInt
    public int getCoveredFadeColor() {
        return this.mCoveredFadeColor;
    }

    public int getParallaxDistance() {
        return this.mParallaxBy;
    }

    @ColorInt
    public int getSliderFadeColor() {
        return this.mSliderFadeColor;
    }

    void invalidateChildRegion(View view) {
        IMPL.invalidateChildRegion(this, view);
    }

    /*
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    boolean isDimmed(View object) {
        if (object == null) {
            return false;
        }
        object = (LayoutParams)object.getLayoutParams();
        if (!this.mCanSlide) return false;
        if (!object.dimWhenOffset) return false;
        if (this.mSlideOffset <= 0.0f) return false;
        return true;
    }

    boolean isLayoutRtlSupport() {
        if (ViewCompat.getLayoutDirection((View)this) == 1) {
            return true;
        }
        return false;
    }

    public boolean isOpen() {
        if (!this.mCanSlide || this.mSlideOffset == 1.0f) {
            return true;
        }
        return false;
    }

    public boolean isSlideable() {
        return this.mCanSlide;
    }

    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.mFirstLayout = true;
    }

    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.mFirstLayout = true;
        int n2 = this.mPostedRunnables.size();
        for (int i2 = 0; i2 < n2; ++i2) {
            this.mPostedRunnables.get(i2).run();
        }
        this.mPostedRunnables.clear();
    }

    /*
     * Unable to fully structure code
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    public boolean onInterceptTouchEvent(MotionEvent var1_1) {
        var7_2 = MotionEventCompat.getActionMasked(var1_1);
        if (!this.mCanSlide && var7_2 == 0 && this.getChildCount() > 1 && (var4_3 = this.getChildAt(1)) != null) {
            var8_4 = this.mDragHelper.isViewUnder(var4_3, (int)var1_1.getX(), (int)var1_1.getY()) == false;
            this.mPreservedOpenState = var8_4;
        }
        if (!this.mCanSlide || this.mIsUnableToDrag && var7_2 != 0) {
            this.mDragHelper.cancel();
            return super.onInterceptTouchEvent(var1_1);
        }
        if (var7_2 == 3 || var7_2 == 1) {
            this.mDragHelper.cancel();
            return false;
        }
        var5_6 = var6_5 = false;
        switch (var7_2) {
            default: {
                var5_6 = var6_5;
                break;
            }
            case 0: {
                this.mIsUnableToDrag = false;
                var2_7 = var1_1.getX();
                var3_9 = var1_1.getY();
                this.mInitialMotionX = var2_7;
                this.mInitialMotionY = var3_9;
                var5_6 = var6_5;
                if (this.mDragHelper.isViewUnder(this.mSlideableView, (int)var2_7, (int)var3_9)) {
                    var5_6 = var6_5;
                    if (this.isDimmed(this.mSlideableView)) {
                        var5_6 = true;
                        break;
                    }
                }
                ** GOTO lbl41
            }
            case 2: {
                var3_10 = var1_1.getX();
                var2_8 = var1_1.getY();
                var3_10 = Math.abs(var3_10 - this.mInitialMotionX);
                var2_8 = Math.abs(var2_8 - this.mInitialMotionY);
                var5_6 = var6_5;
                if (var3_10 > (float)this.mDragHelper.getTouchSlop()) {
                    var5_6 = var6_5;
                    if (var2_8 > var3_10) {
                        this.mDragHelper.cancel();
                        this.mIsUnableToDrag = true;
                        return false;
                    }
                }
            }
lbl41: // 6 sources:
            case 1: 
        }
        if (this.mDragHelper.shouldInterceptTouchEvent(var1_1) != false) return true;
        if (var5_6 == false) return false;
        return true;
    }

    /*
     * Enabled aggressive block sorting
     */
    protected void onLayout(boolean bl, int n2, int n3, int n4, int n5) {
        boolean bl2 = this.isLayoutRtlSupport();
        if (bl2) {
            this.mDragHelper.setEdgeTrackingEnabled(2);
        } else {
            this.mDragHelper.setEdgeTrackingEnabled(1);
        }
        int n6 = n4 - n2;
        n2 = bl2 ? this.getPaddingRight() : this.getPaddingLeft();
        n4 = bl2 ? this.getPaddingLeft() : this.getPaddingRight();
        int n7 = this.getPaddingTop();
        int n8 = this.getChildCount();
        n5 = n2;
        if (this.mFirstLayout) {
            float f2 = this.mCanSlide && this.mPreservedOpenState ? 1.0f : 0.0f;
            this.mSlideOffset = f2;
        }
        int n9 = 0;
        n3 = n2;
        n2 = n5;
        for (n5 = n9; n5 < n8; ++n5) {
            View view = this.getChildAt(n5);
            if (view.getVisibility() == 8) continue;
            LayoutParams layoutParams = (LayoutParams)view.getLayoutParams();
            int n10 = view.getMeasuredWidth();
            int n11 = 0;
            if (layoutParams.slideable) {
                n9 = layoutParams.leftMargin;
                int n12 = layoutParams.rightMargin;
                this.mSlideRange = n12 = Math.min(n2, n6 - n4 - this.mOverhangSize) - n3 - (n9 + n12);
                n9 = bl2 ? layoutParams.rightMargin : layoutParams.leftMargin;
                bl = n3 + n9 + n12 + n10 / 2 > n6 - n4;
                layoutParams.dimWhenOffset = bl;
                n12 = (int)((float)n12 * this.mSlideOffset);
                n3 += n12 + n9;
                this.mSlideOffset = (float)n12 / (float)this.mSlideRange;
                n9 = n11;
            } else if (this.mCanSlide && this.mParallaxBy != 0) {
                n9 = (int)((1.0f - this.mSlideOffset) * (float)this.mParallaxBy);
                n3 = n2;
            } else {
                n3 = n2;
                n9 = n11;
            }
            if (bl2) {
                n11 = n6 - n3 + n9;
                n9 = n11 - n10;
            } else {
                n9 = n3 - n9;
                n11 = n9 + n10;
            }
            view.layout(n9, n7, n11, n7 + view.getMeasuredHeight());
            n2 += view.getWidth();
        }
        if (this.mFirstLayout) {
            if (this.mCanSlide) {
                if (this.mParallaxBy != 0) {
                    this.parallaxOtherViews(this.mSlideOffset);
                }
                if (((LayoutParams)this.mSlideableView.getLayoutParams()).dimWhenOffset) {
                    this.dimChildView(this.mSlideableView, this.mSlideOffset, this.mSliderFadeColor);
                }
            } else {
                for (n2 = 0; n2 < n8; ++n2) {
                    this.dimChildView(this.getChildAt(n2), 0.0f, this.mSliderFadeColor);
                }
            }
            this.updateObscuredViewsVisibility(this.mSlideableView);
        }
        this.mFirstLayout = false;
    }

    /*
     * Exception decompiling
     */
    protected void onMeasure(int var1_1, int var2_2) {
        // This method has failed to decompile.  When submitting a bug report, please provide this stack trace, and (if you hold appropriate legal rights) the relevant class file.
        // org.benf.cfr.reader.util.CannotPerformDecode: reachable test BLOCK was exited and re-entered.
        // org.benf.cfr.reader.bytecode.analysis.opgraph.op3rewriters.Misc.getFarthestReachableInRange(Misc.java:143)
        // org.benf.cfr.reader.bytecode.analysis.opgraph.op3rewriters.SwitchReplacer.examineSwitchContiguity(SwitchReplacer.java:385)
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

    /*
     * Enabled aggressive block sorting
     */
    void onPanelDragged(int n2) {
        if (this.mSlideableView == null) {
            this.mSlideOffset = 0.0f;
            return;
        }
        boolean bl = this.isLayoutRtlSupport();
        LayoutParams layoutParams = (LayoutParams)this.mSlideableView.getLayoutParams();
        int n3 = this.mSlideableView.getWidth();
        if (bl) {
            n2 = this.getWidth() - n2 - n3;
        }
        n3 = bl ? this.getPaddingRight() : this.getPaddingLeft();
        int n4 = bl ? layoutParams.rightMargin : layoutParams.leftMargin;
        this.mSlideOffset = (float)(n2 - (n3 + n4)) / (float)this.mSlideRange;
        if (this.mParallaxBy != 0) {
            this.parallaxOtherViews(this.mSlideOffset);
        }
        if (layoutParams.dimWhenOffset) {
            this.dimChildView(this.mSlideableView, this.mSlideOffset, this.mSliderFadeColor);
        }
        this.dispatchOnPanelSlide(this.mSlideableView);
    }

    /*
     * Enabled aggressive block sorting
     */
    protected void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof SavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        parcelable = (SavedState)parcelable;
        super.onRestoreInstanceState(parcelable.getSuperState());
        if (parcelable.isOpen) {
            this.openPane();
        } else {
            this.closePane();
        }
        this.mPreservedOpenState = parcelable.isOpen;
    }

    /*
     * Enabled aggressive block sorting
     */
    protected Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        boolean bl = this.isSlideable() ? this.isOpen() : this.mPreservedOpenState;
        savedState.isOpen = bl;
        return savedState;
    }

    protected void onSizeChanged(int n2, int n3, int n4, int n5) {
        super.onSizeChanged(n2, n3, n4, n5);
        if (n2 != n4) {
            this.mFirstLayout = true;
        }
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (!this.mCanSlide) {
            return super.onTouchEvent(motionEvent);
        }
        this.mDragHelper.processTouchEvent(motionEvent);
        int n2 = motionEvent.getAction();
        boolean bl = true;
        switch (n2 & 255) {
            default: {
                return true;
            }
            case 0: {
                float f2 = motionEvent.getX();
                float f3 = motionEvent.getY();
                this.mInitialMotionX = f2;
                this.mInitialMotionY = f3;
                return true;
            }
            case 1: 
        }
        boolean bl2 = bl;
        if (!this.isDimmed(this.mSlideableView)) return bl2;
        float f4 = motionEvent.getX();
        float f5 = motionEvent.getY();
        float f6 = f4 - this.mInitialMotionX;
        float f7 = f5 - this.mInitialMotionY;
        n2 = this.mDragHelper.getTouchSlop();
        bl2 = bl;
        if (f6 * f6 + f7 * f7 >= (float)(n2 * n2)) return bl2;
        bl2 = bl;
        if (!this.mDragHelper.isViewUnder(this.mSlideableView, (int)f4, (int)f5)) return bl2;
        this.closePane(this.mSlideableView, 0);
        return true;
    }

    public boolean openPane() {
        return this.openPane(this.mSlideableView, 0);
    }

    /*
     * Enabled aggressive block sorting
     */
    public void requestChildFocus(View view, View view2) {
        super.requestChildFocus(view, view2);
        if (!this.isInTouchMode() && !this.mCanSlide) {
            boolean bl = view == this.mSlideableView;
            this.mPreservedOpenState = bl;
        }
    }

    void setAllChildrenVisible() {
        int n2 = this.getChildCount();
        for (int i2 = 0; i2 < n2; ++i2) {
            View view = this.getChildAt(i2);
            if (view.getVisibility() != 4) continue;
            view.setVisibility(0);
        }
    }

    public void setCoveredFadeColor(@ColorInt int n2) {
        this.mCoveredFadeColor = n2;
    }

    public void setPanelSlideListener(PanelSlideListener panelSlideListener) {
        this.mPanelSlideListener = panelSlideListener;
    }

    public void setParallaxDistance(int n2) {
        this.mParallaxBy = n2;
        this.requestLayout();
    }

    @Deprecated
    public void setShadowDrawable(Drawable drawable2) {
        this.setShadowDrawableLeft(drawable2);
    }

    public void setShadowDrawableLeft(Drawable drawable2) {
        this.mShadowDrawableLeft = drawable2;
    }

    public void setShadowDrawableRight(Drawable drawable2) {
        this.mShadowDrawableRight = drawable2;
    }

    @Deprecated
    public void setShadowResource(@DrawableRes int n2) {
        this.setShadowDrawable(this.getResources().getDrawable(n2));
    }

    public void setShadowResourceLeft(int n2) {
        this.setShadowDrawableLeft(ContextCompat.getDrawable(this.getContext(), n2));
    }

    public void setShadowResourceRight(int n2) {
        this.setShadowDrawableRight(ContextCompat.getDrawable(this.getContext(), n2));
    }

    public void setSliderFadeColor(@ColorInt int n2) {
        this.mSliderFadeColor = n2;
    }

    @Deprecated
    public void smoothSlideClosed() {
        this.closePane();
    }

    @Deprecated
    public void smoothSlideOpen() {
        this.openPane();
    }

    /*
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    boolean smoothSlideTo(float f2, int n2) {
        if (!this.mCanSlide) {
            return false;
        }
        boolean bl = this.isLayoutRtlSupport();
        LayoutParams layoutParams = (LayoutParams)this.mSlideableView.getLayoutParams();
        if (bl) {
            n2 = this.getPaddingRight();
            int n3 = layoutParams.rightMargin;
            int n4 = this.mSlideableView.getWidth();
            n2 = (int)((float)this.getWidth() - ((float)(n2 + n3) + (float)this.mSlideRange * f2 + (float)n4));
        } else {
            n2 = (int)((float)(this.getPaddingLeft() + layoutParams.leftMargin) + (float)this.mSlideRange * f2);
        }
        if (!this.mDragHelper.smoothSlideViewTo(this.mSlideableView, n2, this.mSlideableView.getTop())) return false;
        this.setAllChildrenVisible();
        ViewCompat.postInvalidateOnAnimation((View)this);
        return true;
    }

    /*
     * Enabled aggressive block sorting
     */
    void updateObscuredViewsVisibility(View view) {
        int n2;
        int n3;
        int n4;
        int n5;
        boolean bl = this.isLayoutRtlSupport();
        int n6 = bl ? this.getWidth() - this.getPaddingRight() : this.getPaddingLeft();
        int n7 = bl ? this.getPaddingLeft() : this.getWidth() - this.getPaddingRight();
        int n8 = this.getPaddingTop();
        int n9 = this.getHeight();
        int n10 = this.getPaddingBottom();
        if (view != null && SlidingPaneLayout.viewIsOpaque(view)) {
            n2 = view.getLeft();
            n3 = view.getRight();
            n5 = view.getTop();
            n4 = view.getBottom();
        } else {
            n4 = 0;
            n5 = 0;
            n3 = 0;
            n2 = 0;
        }
        int n11 = 0;
        int n12 = this.getChildCount();
        View view2;
        while (n11 < n12 && (view2 = this.getChildAt(n11)) != view) {
            if (view2.getVisibility() != 8) {
                int n13 = bl ? n7 : n6;
                int n14 = Math.max(n13, view2.getLeft());
                int n15 = Math.max(n8, view2.getTop());
                n13 = bl ? n6 : n7;
                n13 = Math.min(n13, view2.getRight());
                int n16 = Math.min(n9 - n10, view2.getBottom());
                n13 = n14 >= n2 && n15 >= n5 && n13 <= n3 && n16 <= n4 ? 4 : 0;
                view2.setVisibility(n13);
            }
            ++n11;
        }
        return;
    }

    class AccessibilityDelegate
    extends AccessibilityDelegateCompat {
        private final Rect mTmpRect;

        AccessibilityDelegate() {
            this.mTmpRect = new Rect();
        }

        private void copyNodeInfoNoChildren(AccessibilityNodeInfoCompat accessibilityNodeInfoCompat, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat2) {
            Rect rect = this.mTmpRect;
            accessibilityNodeInfoCompat2.getBoundsInParent(rect);
            accessibilityNodeInfoCompat.setBoundsInParent(rect);
            accessibilityNodeInfoCompat2.getBoundsInScreen(rect);
            accessibilityNodeInfoCompat.setBoundsInScreen(rect);
            accessibilityNodeInfoCompat.setVisibleToUser(accessibilityNodeInfoCompat2.isVisibleToUser());
            accessibilityNodeInfoCompat.setPackageName(accessibilityNodeInfoCompat2.getPackageName());
            accessibilityNodeInfoCompat.setClassName(accessibilityNodeInfoCompat2.getClassName());
            accessibilityNodeInfoCompat.setContentDescription(accessibilityNodeInfoCompat2.getContentDescription());
            accessibilityNodeInfoCompat.setEnabled(accessibilityNodeInfoCompat2.isEnabled());
            accessibilityNodeInfoCompat.setClickable(accessibilityNodeInfoCompat2.isClickable());
            accessibilityNodeInfoCompat.setFocusable(accessibilityNodeInfoCompat2.isFocusable());
            accessibilityNodeInfoCompat.setFocused(accessibilityNodeInfoCompat2.isFocused());
            accessibilityNodeInfoCompat.setAccessibilityFocused(accessibilityNodeInfoCompat2.isAccessibilityFocused());
            accessibilityNodeInfoCompat.setSelected(accessibilityNodeInfoCompat2.isSelected());
            accessibilityNodeInfoCompat.setLongClickable(accessibilityNodeInfoCompat2.isLongClickable());
            accessibilityNodeInfoCompat.addAction(accessibilityNodeInfoCompat2.getActions());
            accessibilityNodeInfoCompat.setMovementGranularities(accessibilityNodeInfoCompat2.getMovementGranularities());
        }

        public boolean filter(View view) {
            return SlidingPaneLayout.this.isDimmed(view);
        }

        @Override
        public void onInitializeAccessibilityEvent(View view, AccessibilityEvent accessibilityEvent) {
            super.onInitializeAccessibilityEvent(view, accessibilityEvent);
            accessibilityEvent.setClassName((CharSequence)SlidingPaneLayout.class.getName());
        }

        @Override
        public void onInitializeAccessibilityNodeInfo(View view, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
            AccessibilityNodeInfoCompat accessibilityNodeInfoCompat2 = AccessibilityNodeInfoCompat.obtain(accessibilityNodeInfoCompat);
            super.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfoCompat2);
            this.copyNodeInfoNoChildren(accessibilityNodeInfoCompat, accessibilityNodeInfoCompat2);
            accessibilityNodeInfoCompat2.recycle();
            accessibilityNodeInfoCompat.setClassName(SlidingPaneLayout.class.getName());
            accessibilityNodeInfoCompat.setSource(view);
            view = ViewCompat.getParentForAccessibility(view);
            if (view instanceof View) {
                accessibilityNodeInfoCompat.setParent(view);
            }
            int n2 = SlidingPaneLayout.this.getChildCount();
            for (int i2 = 0; i2 < n2; ++i2) {
                view = SlidingPaneLayout.this.getChildAt(i2);
                if (this.filter(view) || view.getVisibility() != 0) continue;
                ViewCompat.setImportantForAccessibility(view, 1);
                accessibilityNodeInfoCompat.addChild(view);
            }
        }

        @Override
        public boolean onRequestSendAccessibilityEvent(ViewGroup viewGroup, View view, AccessibilityEvent accessibilityEvent) {
            if (!this.filter(view)) {
                return super.onRequestSendAccessibilityEvent(viewGroup, view, accessibilityEvent);
            }
            return false;
        }
    }

    private class DisableLayerRunnable
    implements Runnable {
        final View mChildView;

        DisableLayerRunnable(View view) {
            this.mChildView = view;
        }

        @Override
        public void run() {
            if (this.mChildView.getParent() == SlidingPaneLayout.this) {
                ViewCompat.setLayerType(this.mChildView, 0, null);
                SlidingPaneLayout.this.invalidateChildRegion(this.mChildView);
            }
            SlidingPaneLayout.this.mPostedRunnables.remove(this);
        }
    }

    private class DragHelperCallback
    extends ViewDragHelper.Callback {
        DragHelperCallback() {
        }

        @Override
        public int clampViewPositionHorizontal(View object, int n2, int n3) {
            object = (LayoutParams)SlidingPaneLayout.this.mSlideableView.getLayoutParams();
            if (SlidingPaneLayout.this.isLayoutRtlSupport()) {
                n3 = SlidingPaneLayout.this.getWidth() - (SlidingPaneLayout.this.getPaddingRight() + object.rightMargin + SlidingPaneLayout.this.mSlideableView.getWidth());
                int n4 = SlidingPaneLayout.this.mSlideRange;
                return Math.max(Math.min(n2, n3), n3 - n4);
            }
            n3 = SlidingPaneLayout.this.getPaddingLeft() + object.leftMargin;
            int n5 = SlidingPaneLayout.this.mSlideRange;
            return Math.min(Math.max(n2, n3), n3 + n5);
        }

        @Override
        public int clampViewPositionVertical(View view, int n2, int n3) {
            return view.getTop();
        }

        @Override
        public int getViewHorizontalDragRange(View view) {
            return SlidingPaneLayout.this.mSlideRange;
        }

        @Override
        public void onEdgeDragStarted(int n2, int n3) {
            SlidingPaneLayout.this.mDragHelper.captureChildView(SlidingPaneLayout.this.mSlideableView, n3);
        }

        @Override
        public void onViewCaptured(View view, int n2) {
            SlidingPaneLayout.this.setAllChildrenVisible();
        }

        /*
         * Enabled force condition propagation
         * Lifted jumps to return sites
         */
        @Override
        public void onViewDragStateChanged(int n2) {
            if (SlidingPaneLayout.this.mDragHelper.getViewDragState() != 0) return;
            if (SlidingPaneLayout.this.mSlideOffset == 0.0f) {
                SlidingPaneLayout.this.updateObscuredViewsVisibility(SlidingPaneLayout.this.mSlideableView);
                SlidingPaneLayout.this.dispatchOnPanelClosed(SlidingPaneLayout.this.mSlideableView);
                SlidingPaneLayout.this.mPreservedOpenState = false;
                return;
            }
            SlidingPaneLayout.this.dispatchOnPanelOpened(SlidingPaneLayout.this.mSlideableView);
            SlidingPaneLayout.this.mPreservedOpenState = true;
        }

        @Override
        public void onViewPositionChanged(View view, int n2, int n3, int n4, int n5) {
            SlidingPaneLayout.this.onPanelDragged(n2);
            SlidingPaneLayout.this.invalidate();
        }

        /*
         * Exception decompiling
         */
        @Override
        public void onViewReleased(View var1_1, float var2_2, float var3_3) {
            // This method has failed to decompile.  When submitting a bug report, please provide this stack trace, and (if you hold appropriate legal rights) the relevant class file.
            // org.benf.cfr.reader.util.ConfusedCFRException: Statement already marked as first in another block
            // org.benf.cfr.reader.bytecode.analysis.opgraph.Op03SimpleStatement.markFirstStatementInBlock(Op03SimpleStatement.java:420)
            // org.benf.cfr.reader.bytecode.analysis.opgraph.op3rewriters.Misc.markWholeBlock(Misc.java:219)
            // org.benf.cfr.reader.bytecode.analysis.opgraph.op3rewriters.ConditionalRewriter.considerAsSimpleIf(ConditionalRewriter.java:619)
            // org.benf.cfr.reader.bytecode.analysis.opgraph.op3rewriters.ConditionalRewriter.identifyNonjumpingConditionals(ConditionalRewriter.java:45)
            // org.benf.cfr.reader.bytecode.CodeAnalyser.getAnalysisInner(CodeAnalyser.java:681)
            // org.benf.cfr.reader.bytecode.CodeAnalyser.getAnalysisOrWrapFail(CodeAnalyser.java:220)
            // org.benf.cfr.reader.bytecode.CodeAnalyser.getAnalysis(CodeAnalyser.java:165)
            // org.benf.cfr.reader.entities.attributes.AttributeCode.analyse(AttributeCode.java:91)
            // org.benf.cfr.reader.entities.Method.analyse(Method.java:354)
            // org.benf.cfr.reader.entities.ClassFile.analyseMid(ClassFile.java:751)
            // org.benf.cfr.reader.entities.ClassFile.analyseInnerClassesPass1(ClassFile.java:664)
            // org.benf.cfr.reader.entities.ClassFile.analyseMid(ClassFile.java:747)
            // org.benf.cfr.reader.entities.ClassFile.analyseTop(ClassFile.java:683)
            // org.benf.cfr.reader.Main.doJar(Main.java:129)
            // org.benf.cfr.reader.Main.main(Main.java:181)
            throw new IllegalStateException("Decompilation failed");
        }

        @Override
        public boolean tryCaptureView(View view, int n2) {
            if (SlidingPaneLayout.this.mIsUnableToDrag) {
                return false;
            }
            return ((LayoutParams)view.getLayoutParams()).slideable;
        }
    }

    public static class LayoutParams
    extends ViewGroup.MarginLayoutParams {
        private static final int[] ATTRS = new int[]{16843137};
        Paint dimPaint;
        boolean dimWhenOffset;
        boolean slideable;
        public float weight = 0.0f;

        public LayoutParams() {
            super(-1, -1);
        }

        public LayoutParams(int n2, int n3) {
            super(n2, n3);
        }

        public LayoutParams(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            context = context.obtainStyledAttributes(attributeSet, ATTRS);
            this.weight = context.getFloat(0, 0.0f);
            context.recycle();
        }

        public LayoutParams(LayoutParams layoutParams) {
            super((ViewGroup.MarginLayoutParams)layoutParams);
            this.weight = layoutParams.weight;
        }

        public LayoutParams(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
        }

        public LayoutParams(ViewGroup.MarginLayoutParams marginLayoutParams) {
            super(marginLayoutParams);
        }
    }

    public static interface PanelSlideListener {
        public void onPanelClosed(View var1);

        public void onPanelOpened(View var1);

        public void onPanelSlide(View var1, float var2);
    }

    static class SavedState
    extends AbsSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = ParcelableCompat.newCreator(new ParcelableCompatCreatorCallbacks<SavedState>(){

            @Override
            public SavedState createFromParcel(Parcel parcel, ClassLoader classLoader) {
                return new SavedState(parcel, classLoader);
            }

            public SavedState[] newArray(int n2) {
                return new SavedState[n2];
            }
        });
        boolean isOpen;

        /*
         * Enabled aggressive block sorting
         */
        SavedState(Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            boolean bl = parcel.readInt() != 0;
            this.isOpen = bl;
        }

        SavedState(Parcelable parcelable) {
            super(parcelable);
        }

        /*
         * Enabled aggressive block sorting
         */
        @Override
        public void writeToParcel(Parcel parcel, int n2) {
            super.writeToParcel(parcel, n2);
            n2 = this.isOpen ? 1 : 0;
            parcel.writeInt(n2);
        }

    }

    public static class SimplePanelSlideListener
    implements PanelSlideListener {
        @Override
        public void onPanelClosed(View view) {
        }

        @Override
        public void onPanelOpened(View view) {
        }

        @Override
        public void onPanelSlide(View view, float f2) {
        }
    }

    static interface SlidingPanelLayoutImpl {
        public void invalidateChildRegion(SlidingPaneLayout var1, View var2);
    }

    static class SlidingPanelLayoutImplBase
    implements SlidingPanelLayoutImpl {
        SlidingPanelLayoutImplBase() {
        }

        @Override
        public void invalidateChildRegion(SlidingPaneLayout slidingPaneLayout, View view) {
            ViewCompat.postInvalidateOnAnimation((View)slidingPaneLayout, view.getLeft(), view.getTop(), view.getRight(), view.getBottom());
        }
    }

    static class SlidingPanelLayoutImplJB
    extends SlidingPanelLayoutImplBase {
        private Method mGetDisplayList;
        private Field mRecreateDisplayList;

        /*
         * Enabled aggressive block sorting
         * Enabled unnecessary exception pruning
         * Enabled aggressive exception aggregation
         */
        SlidingPanelLayoutImplJB() {
            try {
                this.mGetDisplayList = View.class.getDeclaredMethod("getDisplayList", null);
            }
            catch (NoSuchMethodException var1_1) {
                Log.e((String)"SlidingPaneLayout", (String)"Couldn't fetch getDisplayList method; dimming won't work right.", (Throwable)var1_1);
            }
            try {
                this.mRecreateDisplayList = View.class.getDeclaredField("mRecreateDisplayList");
                this.mRecreateDisplayList.setAccessible(true);
                return;
            }
            catch (NoSuchFieldException var1_2) {
                Log.e((String)"SlidingPaneLayout", (String)"Couldn't fetch mRecreateDisplayList field; dimming will be slow.", (Throwable)var1_2);
                return;
            }
        }

        /*
         * Enabled aggressive block sorting
         * Enabled unnecessary exception pruning
         * Enabled aggressive exception aggregation
         */
        @Override
        public void invalidateChildRegion(SlidingPaneLayout slidingPaneLayout, View view) {
            if (this.mGetDisplayList != null && this.mRecreateDisplayList != null) {
                try {
                    this.mRecreateDisplayList.setBoolean((Object)view, true);
                    this.mGetDisplayList.invoke((Object)view, null);
                }
                catch (Exception var3_3) {
                    Log.e((String)"SlidingPaneLayout", (String)"Error refreshing display list state", (Throwable)var3_3);
                }
                super.invalidateChildRegion(slidingPaneLayout, view);
                return;
            }
            view.invalidate();
        }
    }

    static class SlidingPanelLayoutImplJBMR1
    extends SlidingPanelLayoutImplBase {
        SlidingPanelLayoutImplJBMR1() {
        }

        @Override
        public void invalidateChildRegion(SlidingPaneLayout slidingPaneLayout, View view) {
            ViewCompat.setLayerPaint(view, ((LayoutParams)view.getLayoutParams()).dimPaint);
        }
    }

}

