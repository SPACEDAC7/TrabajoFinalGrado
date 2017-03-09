/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.content.res.ColorStateList
 *  android.graphics.Matrix
 *  android.graphics.Paint
 *  android.graphics.PorterDuff
 *  android.graphics.PorterDuff$Mode
 *  android.graphics.Rect
 *  android.graphics.drawable.Drawable
 *  android.os.Build
 *  android.os.Build$VERSION
 *  android.os.Bundle
 *  android.util.Log
 *  android.view.Display
 *  android.view.View
 *  android.view.ViewGroup
 *  android.view.ViewParent
 *  android.view.accessibility.AccessibilityEvent
 */
package android.support.v4.view;

import android.content.res.ColorStateList;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Bundle;
import android.support.annotation.FloatRange;
import android.support.annotation.IdRes;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.annotation.RestrictTo;
import android.support.v4.os.BuildCompat;
import android.support.v4.view.AccessibilityDelegateCompat;
import android.support.v4.view.NestedScrollingChild;
import android.support.v4.view.OnApplyWindowInsetsListener;
import android.support.v4.view.PointerIconCompat;
import android.support.v4.view.ScrollingView;
import android.support.v4.view.ViewCompatApi24;
import android.support.v4.view.ViewCompatBase;
import android.support.v4.view.ViewCompatHC;
import android.support.v4.view.ViewCompatICS;
import android.support.v4.view.ViewCompatICSMr1;
import android.support.v4.view.ViewCompatJB;
import android.support.v4.view.ViewCompatJellybeanMr1;
import android.support.v4.view.ViewCompatJellybeanMr2;
import android.support.v4.view.ViewCompatKitKat;
import android.support.v4.view.ViewCompatLollipop;
import android.support.v4.view.ViewCompatMarshmallow;
import android.support.v4.view.ViewPropertyAnimatorCompat;
import android.support.v4.view.WindowInsetsCompat;
import android.support.v4.view.accessibility.AccessibilityNodeInfoCompat;
import android.support.v4.view.accessibility.AccessibilityNodeProviderCompat;
import android.util.Log;
import android.view.Display;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityEvent;
import java.lang.annotation.Annotation;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.WeakHashMap;

public class ViewCompat {
    public static final int ACCESSIBILITY_LIVE_REGION_ASSERTIVE = 2;
    public static final int ACCESSIBILITY_LIVE_REGION_NONE = 0;
    public static final int ACCESSIBILITY_LIVE_REGION_POLITE = 1;
    private static final long FAKE_FRAME_TIME = 10;
    static final ViewCompatImpl IMPL;
    public static final int IMPORTANT_FOR_ACCESSIBILITY_AUTO = 0;
    public static final int IMPORTANT_FOR_ACCESSIBILITY_NO = 2;
    public static final int IMPORTANT_FOR_ACCESSIBILITY_NO_HIDE_DESCENDANTS = 4;
    public static final int IMPORTANT_FOR_ACCESSIBILITY_YES = 1;
    public static final int LAYER_TYPE_HARDWARE = 2;
    public static final int LAYER_TYPE_NONE = 0;
    public static final int LAYER_TYPE_SOFTWARE = 1;
    public static final int LAYOUT_DIRECTION_INHERIT = 2;
    public static final int LAYOUT_DIRECTION_LOCALE = 3;
    public static final int LAYOUT_DIRECTION_LTR = 0;
    public static final int LAYOUT_DIRECTION_RTL = 1;
    public static final int MEASURED_HEIGHT_STATE_SHIFT = 16;
    public static final int MEASURED_SIZE_MASK = 16777215;
    public static final int MEASURED_STATE_MASK = -16777216;
    public static final int MEASURED_STATE_TOO_SMALL = 16777216;
    @Deprecated
    public static final int OVER_SCROLL_ALWAYS = 0;
    @Deprecated
    public static final int OVER_SCROLL_IF_CONTENT_SCROLLS = 1;
    @Deprecated
    public static final int OVER_SCROLL_NEVER = 2;
    public static final int SCROLL_AXIS_HORIZONTAL = 1;
    public static final int SCROLL_AXIS_NONE = 0;
    public static final int SCROLL_AXIS_VERTICAL = 2;
    public static final int SCROLL_INDICATOR_BOTTOM = 2;
    public static final int SCROLL_INDICATOR_END = 32;
    public static final int SCROLL_INDICATOR_LEFT = 4;
    public static final int SCROLL_INDICATOR_RIGHT = 8;
    public static final int SCROLL_INDICATOR_START = 16;
    public static final int SCROLL_INDICATOR_TOP = 1;
    private static final String TAG = "ViewCompat";

    static {
        int n2 = Build.VERSION.SDK_INT;
        IMPL = BuildCompat.isAtLeastN() ? new Api24ViewCompatImpl() : (n2 >= 23 ? new MarshmallowViewCompatImpl() : (n2 >= 21 ? new LollipopViewCompatImpl() : (n2 >= 19 ? new KitKatViewCompatImpl() : (n2 >= 18 ? new JbMr2ViewCompatImpl() : (n2 >= 17 ? new JbMr1ViewCompatImpl() : (n2 >= 16 ? new JBViewCompatImpl() : (n2 >= 15 ? new ICSMr1ViewCompatImpl() : (n2 >= 14 ? new ICSViewCompatImpl() : (n2 >= 11 ? new HCViewCompatImpl() : new BaseViewCompatImpl())))))))));
    }

    protected ViewCompat() {
    }

    public static ViewPropertyAnimatorCompat animate(View view) {
        return IMPL.animate(view);
    }

    public static boolean canScrollHorizontally(View view, int n2) {
        return IMPL.canScrollHorizontally(view, n2);
    }

    public static boolean canScrollVertically(View view, int n2) {
        return IMPL.canScrollVertically(view, n2);
    }

    public static int combineMeasuredStates(int n2, int n3) {
        return IMPL.combineMeasuredStates(n2, n3);
    }

    public static WindowInsetsCompat dispatchApplyWindowInsets(View view, WindowInsetsCompat windowInsetsCompat) {
        return IMPL.dispatchApplyWindowInsets(view, windowInsetsCompat);
    }

    public static void dispatchFinishTemporaryDetach(View view) {
        IMPL.dispatchFinishTemporaryDetach(view);
    }

    public static boolean dispatchNestedFling(View view, float f2, float f3, boolean bl) {
        return IMPL.dispatchNestedFling(view, f2, f3, bl);
    }

    public static boolean dispatchNestedPreFling(View view, float f2, float f3) {
        return IMPL.dispatchNestedPreFling(view, f2, f3);
    }

    public static boolean dispatchNestedPreScroll(View view, int n2, int n3, int[] arrn, int[] arrn2) {
        return IMPL.dispatchNestedPreScroll(view, n2, n3, arrn, arrn2);
    }

    public static boolean dispatchNestedScroll(View view, int n2, int n3, int n4, int n5, int[] arrn) {
        return IMPL.dispatchNestedScroll(view, n2, n3, n4, n5, arrn);
    }

    public static void dispatchStartTemporaryDetach(View view) {
        IMPL.dispatchStartTemporaryDetach(view);
    }

    public static int getAccessibilityLiveRegion(View view) {
        return IMPL.getAccessibilityLiveRegion(view);
    }

    public static AccessibilityNodeProviderCompat getAccessibilityNodeProvider(View view) {
        return IMPL.getAccessibilityNodeProvider(view);
    }

    public static float getAlpha(View view) {
        return IMPL.getAlpha(view);
    }

    public static ColorStateList getBackgroundTintList(View view) {
        return IMPL.getBackgroundTintList(view);
    }

    public static PorterDuff.Mode getBackgroundTintMode(View view) {
        return IMPL.getBackgroundTintMode(view);
    }

    public static Rect getClipBounds(View view) {
        return IMPL.getClipBounds(view);
    }

    public static Display getDisplay(@NonNull View view) {
        return IMPL.getDisplay(view);
    }

    public static float getElevation(View view) {
        return IMPL.getElevation(view);
    }

    public static boolean getFitsSystemWindows(View view) {
        return IMPL.getFitsSystemWindows(view);
    }

    public static int getImportantForAccessibility(View view) {
        return IMPL.getImportantForAccessibility(view);
    }

    public static int getLabelFor(View view) {
        return IMPL.getLabelFor(view);
    }

    public static int getLayerType(View view) {
        return IMPL.getLayerType(view);
    }

    public static int getLayoutDirection(View view) {
        return IMPL.getLayoutDirection(view);
    }

    @Nullable
    public static Matrix getMatrix(View view) {
        return IMPL.getMatrix(view);
    }

    public static int getMeasuredHeightAndState(View view) {
        return IMPL.getMeasuredHeightAndState(view);
    }

    public static int getMeasuredState(View view) {
        return IMPL.getMeasuredState(view);
    }

    public static int getMeasuredWidthAndState(View view) {
        return IMPL.getMeasuredWidthAndState(view);
    }

    public static int getMinimumHeight(View view) {
        return IMPL.getMinimumHeight(view);
    }

    public static int getMinimumWidth(View view) {
        return IMPL.getMinimumWidth(view);
    }

    @Deprecated
    public static int getOverScrollMode(View view) {
        return view.getOverScrollMode();
    }

    public static int getPaddingEnd(View view) {
        return IMPL.getPaddingEnd(view);
    }

    public static int getPaddingStart(View view) {
        return IMPL.getPaddingStart(view);
    }

    public static ViewParent getParentForAccessibility(View view) {
        return IMPL.getParentForAccessibility(view);
    }

    public static float getPivotX(View view) {
        return IMPL.getPivotX(view);
    }

    public static float getPivotY(View view) {
        return IMPL.getPivotY(view);
    }

    public static float getRotation(View view) {
        return IMPL.getRotation(view);
    }

    public static float getRotationX(View view) {
        return IMPL.getRotationX(view);
    }

    public static float getRotationY(View view) {
        return IMPL.getRotationY(view);
    }

    public static float getScaleX(View view) {
        return IMPL.getScaleX(view);
    }

    public static float getScaleY(View view) {
        return IMPL.getScaleY(view);
    }

    public static int getScrollIndicators(@NonNull View view) {
        return IMPL.getScrollIndicators(view);
    }

    public static String getTransitionName(View view) {
        return IMPL.getTransitionName(view);
    }

    public static float getTranslationX(View view) {
        return IMPL.getTranslationX(view);
    }

    public static float getTranslationY(View view) {
        return IMPL.getTranslationY(view);
    }

    public static float getTranslationZ(View view) {
        return IMPL.getTranslationZ(view);
    }

    public static int getWindowSystemUiVisibility(View view) {
        return IMPL.getWindowSystemUiVisibility(view);
    }

    public static float getX(View view) {
        return IMPL.getX(view);
    }

    public static float getY(View view) {
        return IMPL.getY(view);
    }

    public static float getZ(View view) {
        return IMPL.getZ(view);
    }

    public static boolean hasAccessibilityDelegate(View view) {
        return IMPL.hasAccessibilityDelegate(view);
    }

    public static boolean hasNestedScrollingParent(View view) {
        return IMPL.hasNestedScrollingParent(view);
    }

    public static boolean hasOnClickListeners(View view) {
        return IMPL.hasOnClickListeners(view);
    }

    public static boolean hasOverlappingRendering(View view) {
        return IMPL.hasOverlappingRendering(view);
    }

    public static boolean hasTransientState(View view) {
        return IMPL.hasTransientState(view);
    }

    public static boolean isAttachedToWindow(View view) {
        return IMPL.isAttachedToWindow(view);
    }

    public static boolean isImportantForAccessibility(View view) {
        return IMPL.isImportantForAccessibility(view);
    }

    public static boolean isInLayout(View view) {
        return IMPL.isInLayout(view);
    }

    public static boolean isLaidOut(View view) {
        return IMPL.isLaidOut(view);
    }

    public static boolean isLayoutDirectionResolved(View view) {
        return IMPL.isLayoutDirectionResolved(view);
    }

    public static boolean isNestedScrollingEnabled(View view) {
        return IMPL.isNestedScrollingEnabled(view);
    }

    @Deprecated
    public static boolean isOpaque(View view) {
        return view.isOpaque();
    }

    public static boolean isPaddingRelative(View view) {
        return IMPL.isPaddingRelative(view);
    }

    public static void jumpDrawablesToCurrentState(View view) {
        IMPL.jumpDrawablesToCurrentState(view);
    }

    public static void offsetLeftAndRight(View view, int n2) {
        IMPL.offsetLeftAndRight(view, n2);
    }

    public static void offsetTopAndBottom(View view, int n2) {
        IMPL.offsetTopAndBottom(view, n2);
    }

    public static WindowInsetsCompat onApplyWindowInsets(View view, WindowInsetsCompat windowInsetsCompat) {
        return IMPL.onApplyWindowInsets(view, windowInsetsCompat);
    }

    public static void onInitializeAccessibilityEvent(View view, AccessibilityEvent accessibilityEvent) {
        IMPL.onInitializeAccessibilityEvent(view, accessibilityEvent);
    }

    public static void onInitializeAccessibilityNodeInfo(View view, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
        IMPL.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfoCompat);
    }

    public static void onPopulateAccessibilityEvent(View view, AccessibilityEvent accessibilityEvent) {
        IMPL.onPopulateAccessibilityEvent(view, accessibilityEvent);
    }

    public static boolean performAccessibilityAction(View view, int n2, Bundle bundle) {
        return IMPL.performAccessibilityAction(view, n2, bundle);
    }

    public static void postInvalidateOnAnimation(View view) {
        IMPL.postInvalidateOnAnimation(view);
    }

    public static void postInvalidateOnAnimation(View view, int n2, int n3, int n4, int n5) {
        IMPL.postInvalidateOnAnimation(view, n2, n3, n4, n5);
    }

    public static void postOnAnimation(View view, Runnable runnable) {
        IMPL.postOnAnimation(view, runnable);
    }

    public static void postOnAnimationDelayed(View view, Runnable runnable, long l2) {
        IMPL.postOnAnimationDelayed(view, runnable, l2);
    }

    public static void requestApplyInsets(View view) {
        IMPL.requestApplyInsets(view);
    }

    public static int resolveSizeAndState(int n2, int n3, int n4) {
        return IMPL.resolveSizeAndState(n2, n3, n4);
    }

    public static void setAccessibilityDelegate(View view, AccessibilityDelegateCompat accessibilityDelegateCompat) {
        IMPL.setAccessibilityDelegate(view, accessibilityDelegateCompat);
    }

    public static void setAccessibilityLiveRegion(View view, int n2) {
        IMPL.setAccessibilityLiveRegion(view, n2);
    }

    public static void setActivated(View view, boolean bl) {
        IMPL.setActivated(view, bl);
    }

    public static void setAlpha(View view, @FloatRange(from=0.0, to=1.0) float f2) {
        IMPL.setAlpha(view, f2);
    }

    public static void setBackground(View view, Drawable drawable2) {
        IMPL.setBackground(view, drawable2);
    }

    public static void setBackgroundTintList(View view, ColorStateList colorStateList) {
        IMPL.setBackgroundTintList(view, colorStateList);
    }

    public static void setBackgroundTintMode(View view, PorterDuff.Mode mode) {
        IMPL.setBackgroundTintMode(view, mode);
    }

    public static void setChildrenDrawingOrderEnabled(ViewGroup viewGroup, boolean bl) {
        IMPL.setChildrenDrawingOrderEnabled(viewGroup, bl);
    }

    public static void setClipBounds(View view, Rect rect) {
        IMPL.setClipBounds(view, rect);
    }

    public static void setElevation(View view, float f2) {
        IMPL.setElevation(view, f2);
    }

    public static void setFitsSystemWindows(View view, boolean bl) {
        IMPL.setFitsSystemWindows(view, bl);
    }

    public static void setHasTransientState(View view, boolean bl) {
        IMPL.setHasTransientState(view, bl);
    }

    public static void setImportantForAccessibility(View view, int n2) {
        IMPL.setImportantForAccessibility(view, n2);
    }

    public static void setLabelFor(View view, @IdRes int n2) {
        IMPL.setLabelFor(view, n2);
    }

    public static void setLayerPaint(View view, Paint paint) {
        IMPL.setLayerPaint(view, paint);
    }

    public static void setLayerType(View view, int n2, Paint paint) {
        IMPL.setLayerType(view, n2, paint);
    }

    public static void setLayoutDirection(View view, int n2) {
        IMPL.setLayoutDirection(view, n2);
    }

    public static void setNestedScrollingEnabled(View view, boolean bl) {
        IMPL.setNestedScrollingEnabled(view, bl);
    }

    public static void setOnApplyWindowInsetsListener(View view, OnApplyWindowInsetsListener onApplyWindowInsetsListener) {
        IMPL.setOnApplyWindowInsetsListener(view, onApplyWindowInsetsListener);
    }

    @Deprecated
    public static void setOverScrollMode(View view, int n2) {
        view.setOverScrollMode(n2);
    }

    public static void setPaddingRelative(View view, int n2, int n3, int n4, int n5) {
        IMPL.setPaddingRelative(view, n2, n3, n4, n5);
    }

    public static void setPivotX(View view, float f2) {
        IMPL.setPivotX(view, f2);
    }

    public static void setPivotY(View view, float f2) {
        IMPL.setPivotY(view, f2);
    }

    public static void setPointerIcon(@NonNull View view, PointerIconCompat pointerIconCompat) {
        IMPL.setPointerIcon(view, pointerIconCompat);
    }

    public static void setRotation(View view, float f2) {
        IMPL.setRotation(view, f2);
    }

    public static void setRotationX(View view, float f2) {
        IMPL.setRotationX(view, f2);
    }

    public static void setRotationY(View view, float f2) {
        IMPL.setRotationY(view, f2);
    }

    public static void setSaveFromParentEnabled(View view, boolean bl) {
        IMPL.setSaveFromParentEnabled(view, bl);
    }

    public static void setScaleX(View view, float f2) {
        IMPL.setScaleX(view, f2);
    }

    public static void setScaleY(View view, float f2) {
        IMPL.setScaleY(view, f2);
    }

    public static void setScrollIndicators(@NonNull View view, int n2) {
        IMPL.setScrollIndicators(view, n2);
    }

    public static void setScrollIndicators(@NonNull View view, int n2, int n3) {
        IMPL.setScrollIndicators(view, n2, n3);
    }

    public static void setTransitionName(View view, String string2) {
        IMPL.setTransitionName(view, string2);
    }

    public static void setTranslationX(View view, float f2) {
        IMPL.setTranslationX(view, f2);
    }

    public static void setTranslationY(View view, float f2) {
        IMPL.setTranslationY(view, f2);
    }

    public static void setTranslationZ(View view, float f2) {
        IMPL.setTranslationZ(view, f2);
    }

    public static void setX(View view, float f2) {
        IMPL.setX(view, f2);
    }

    public static void setY(View view, float f2) {
        IMPL.setY(view, f2);
    }

    public static void setZ(View view, float f2) {
        IMPL.setZ(view, f2);
    }

    public static boolean startNestedScroll(View view, int n2) {
        return IMPL.startNestedScroll(view, n2);
    }

    public static void stopNestedScroll(View view) {
        IMPL.stopNestedScroll(view);
    }

    static class Api24ViewCompatImpl
    extends MarshmallowViewCompatImpl {
        Api24ViewCompatImpl() {
        }

        @Override
        public void setPointerIcon(View view, PointerIconCompat pointerIconCompat) {
            ViewCompatApi24.setPointerIcon(view, pointerIconCompat.getPointerIcon());
        }
    }

    static class BaseViewCompatImpl
    implements ViewCompatImpl {
        private static Method sChildrenDrawingOrderMethod;
        private Method mDispatchFinishTemporaryDetach;
        private Method mDispatchStartTemporaryDetach;
        private boolean mTempDetachBound;
        WeakHashMap<View, ViewPropertyAnimatorCompat> mViewPropertyAnimatorCompatMap = null;

        BaseViewCompatImpl() {
        }

        /*
         * Enabled aggressive block sorting
         * Enabled unnecessary exception pruning
         * Enabled aggressive exception aggregation
         */
        private void bindTempDetach() {
            try {
                this.mDispatchStartTemporaryDetach = View.class.getDeclaredMethod("dispatchStartTemporaryDetach", new Class[0]);
                this.mDispatchFinishTemporaryDetach = View.class.getDeclaredMethod("dispatchFinishTemporaryDetach", new Class[0]);
            }
            catch (NoSuchMethodException var1_1) {
                Log.e((String)"ViewCompat", (String)"Couldn't find method", (Throwable)var1_1);
            }
            this.mTempDetachBound = true;
        }

        /*
         * Enabled force condition propagation
         * Lifted jumps to return sites
         */
        private boolean canScrollingViewScrollHorizontally(ScrollingView scrollingView, int n2) {
            boolean bl = true;
            int n3 = scrollingView.computeHorizontalScrollOffset();
            int n4 = scrollingView.computeHorizontalScrollRange() - scrollingView.computeHorizontalScrollExtent();
            if (n4 == 0) {
                return false;
            }
            if (n2 < 0) {
                if (n3 > 0) return bl;
                return false;
            }
            if (n3 < n4 - 1) return bl;
            return false;
        }

        /*
         * Enabled force condition propagation
         * Lifted jumps to return sites
         */
        private boolean canScrollingViewScrollVertically(ScrollingView scrollingView, int n2) {
            boolean bl = true;
            int n3 = scrollingView.computeVerticalScrollOffset();
            int n4 = scrollingView.computeVerticalScrollRange() - scrollingView.computeVerticalScrollExtent();
            if (n4 == 0) {
                return false;
            }
            if (n2 < 0) {
                if (n3 > 0) return bl;
                return false;
            }
            if (n3 < n4 - 1) return bl;
            return false;
        }

        @Override
        public ViewPropertyAnimatorCompat animate(View view) {
            return new ViewPropertyAnimatorCompat(view);
        }

        @Override
        public boolean canScrollHorizontally(View view, int n2) {
            if (view instanceof ScrollingView && this.canScrollingViewScrollHorizontally((ScrollingView)view, n2)) {
                return true;
            }
            return false;
        }

        @Override
        public boolean canScrollVertically(View view, int n2) {
            if (view instanceof ScrollingView && this.canScrollingViewScrollVertically((ScrollingView)view, n2)) {
                return true;
            }
            return false;
        }

        @Override
        public int combineMeasuredStates(int n2, int n3) {
            return n2 | n3;
        }

        @Override
        public WindowInsetsCompat dispatchApplyWindowInsets(View view, WindowInsetsCompat windowInsetsCompat) {
            return windowInsetsCompat;
        }

        @Override
        public void dispatchFinishTemporaryDetach(View view) {
            if (!this.mTempDetachBound) {
                this.bindTempDetach();
            }
            if (this.mDispatchFinishTemporaryDetach != null) {
                try {
                    this.mDispatchFinishTemporaryDetach.invoke((Object)view, new Object[0]);
                    return;
                }
                catch (Exception var1_2) {
                    Log.d((String)"ViewCompat", (String)"Error calling dispatchFinishTemporaryDetach", (Throwable)var1_2);
                    return;
                }
            }
            view.onFinishTemporaryDetach();
        }

        @Override
        public boolean dispatchNestedFling(View view, float f2, float f3, boolean bl) {
            if (view instanceof NestedScrollingChild) {
                return ((NestedScrollingChild)view).dispatchNestedFling(f2, f3, bl);
            }
            return false;
        }

        @Override
        public boolean dispatchNestedPreFling(View view, float f2, float f3) {
            if (view instanceof NestedScrollingChild) {
                return ((NestedScrollingChild)view).dispatchNestedPreFling(f2, f3);
            }
            return false;
        }

        @Override
        public boolean dispatchNestedPreScroll(View view, int n2, int n3, int[] arrn, int[] arrn2) {
            if (view instanceof NestedScrollingChild) {
                return ((NestedScrollingChild)view).dispatchNestedPreScroll(n2, n3, arrn, arrn2);
            }
            return false;
        }

        @Override
        public boolean dispatchNestedScroll(View view, int n2, int n3, int n4, int n5, int[] arrn) {
            if (view instanceof NestedScrollingChild) {
                return ((NestedScrollingChild)view).dispatchNestedScroll(n2, n3, n4, n5, arrn);
            }
            return false;
        }

        @Override
        public void dispatchStartTemporaryDetach(View view) {
            if (!this.mTempDetachBound) {
                this.bindTempDetach();
            }
            if (this.mDispatchStartTemporaryDetach != null) {
                try {
                    this.mDispatchStartTemporaryDetach.invoke((Object)view, new Object[0]);
                    return;
                }
                catch (Exception var1_2) {
                    Log.d((String)"ViewCompat", (String)"Error calling dispatchStartTemporaryDetach", (Throwable)var1_2);
                    return;
                }
            }
            view.onStartTemporaryDetach();
        }

        @Override
        public int getAccessibilityLiveRegion(View view) {
            return 0;
        }

        @Override
        public AccessibilityNodeProviderCompat getAccessibilityNodeProvider(View view) {
            return null;
        }

        @Override
        public float getAlpha(View view) {
            return 1.0f;
        }

        @Override
        public ColorStateList getBackgroundTintList(View view) {
            return ViewCompatBase.getBackgroundTintList(view);
        }

        @Override
        public PorterDuff.Mode getBackgroundTintMode(View view) {
            return ViewCompatBase.getBackgroundTintMode(view);
        }

        @Override
        public Rect getClipBounds(View view) {
            return null;
        }

        @Override
        public Display getDisplay(View view) {
            return ViewCompatBase.getDisplay(view);
        }

        @Override
        public float getElevation(View view) {
            return 0.0f;
        }

        @Override
        public boolean getFitsSystemWindows(View view) {
            return false;
        }

        long getFrameTime() {
            return 10;
        }

        @Override
        public int getImportantForAccessibility(View view) {
            return 0;
        }

        @Override
        public int getLabelFor(View view) {
            return 0;
        }

        @Override
        public int getLayerType(View view) {
            return 0;
        }

        @Override
        public int getLayoutDirection(View view) {
            return 0;
        }

        @Override
        public Matrix getMatrix(View view) {
            return null;
        }

        @Override
        public int getMeasuredHeightAndState(View view) {
            return view.getMeasuredHeight();
        }

        @Override
        public int getMeasuredState(View view) {
            return 0;
        }

        @Override
        public int getMeasuredWidthAndState(View view) {
            return view.getMeasuredWidth();
        }

        @Override
        public int getMinimumHeight(View view) {
            return ViewCompatBase.getMinimumHeight(view);
        }

        @Override
        public int getMinimumWidth(View view) {
            return ViewCompatBase.getMinimumWidth(view);
        }

        @Override
        public int getPaddingEnd(View view) {
            return view.getPaddingRight();
        }

        @Override
        public int getPaddingStart(View view) {
            return view.getPaddingLeft();
        }

        @Override
        public ViewParent getParentForAccessibility(View view) {
            return view.getParent();
        }

        @Override
        public float getPivotX(View view) {
            return 0.0f;
        }

        @Override
        public float getPivotY(View view) {
            return 0.0f;
        }

        @Override
        public float getRotation(View view) {
            return 0.0f;
        }

        @Override
        public float getRotationX(View view) {
            return 0.0f;
        }

        @Override
        public float getRotationY(View view) {
            return 0.0f;
        }

        @Override
        public float getScaleX(View view) {
            return 0.0f;
        }

        @Override
        public float getScaleY(View view) {
            return 0.0f;
        }

        @Override
        public int getScrollIndicators(View view) {
            return 0;
        }

        @Override
        public String getTransitionName(View view) {
            return null;
        }

        @Override
        public float getTranslationX(View view) {
            return 0.0f;
        }

        @Override
        public float getTranslationY(View view) {
            return 0.0f;
        }

        @Override
        public float getTranslationZ(View view) {
            return 0.0f;
        }

        @Override
        public int getWindowSystemUiVisibility(View view) {
            return 0;
        }

        @Override
        public float getX(View view) {
            return view.getLeft();
        }

        @Override
        public float getY(View view) {
            return view.getTop();
        }

        @Override
        public float getZ(View view) {
            return this.getTranslationZ(view) + this.getElevation(view);
        }

        @Override
        public boolean hasAccessibilityDelegate(View view) {
            return false;
        }

        @Override
        public boolean hasNestedScrollingParent(View view) {
            if (view instanceof NestedScrollingChild) {
                return ((NestedScrollingChild)view).hasNestedScrollingParent();
            }
            return false;
        }

        @Override
        public boolean hasOnClickListeners(View view) {
            return false;
        }

        @Override
        public boolean hasOverlappingRendering(View view) {
            return true;
        }

        @Override
        public boolean hasTransientState(View view) {
            return false;
        }

        @Override
        public boolean isAttachedToWindow(View view) {
            return ViewCompatBase.isAttachedToWindow(view);
        }

        @Override
        public boolean isImportantForAccessibility(View view) {
            return true;
        }

        @Override
        public boolean isInLayout(View view) {
            return false;
        }

        @Override
        public boolean isLaidOut(View view) {
            return ViewCompatBase.isLaidOut(view);
        }

        @Override
        public boolean isLayoutDirectionResolved(View view) {
            return false;
        }

        @Override
        public boolean isNestedScrollingEnabled(View view) {
            if (view instanceof NestedScrollingChild) {
                return ((NestedScrollingChild)view).isNestedScrollingEnabled();
            }
            return false;
        }

        @Override
        public boolean isPaddingRelative(View view) {
            return false;
        }

        @Override
        public void jumpDrawablesToCurrentState(View view) {
        }

        @Override
        public void offsetLeftAndRight(View view, int n2) {
            ViewCompatBase.offsetLeftAndRight(view, n2);
        }

        @Override
        public void offsetTopAndBottom(View view, int n2) {
            ViewCompatBase.offsetTopAndBottom(view, n2);
        }

        @Override
        public WindowInsetsCompat onApplyWindowInsets(View view, WindowInsetsCompat windowInsetsCompat) {
            return windowInsetsCompat;
        }

        @Override
        public void onInitializeAccessibilityEvent(View view, AccessibilityEvent accessibilityEvent) {
        }

        @Override
        public void onInitializeAccessibilityNodeInfo(View view, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
        }

        @Override
        public void onPopulateAccessibilityEvent(View view, AccessibilityEvent accessibilityEvent) {
        }

        @Override
        public boolean performAccessibilityAction(View view, int n2, Bundle bundle) {
            return false;
        }

        @Override
        public void postInvalidateOnAnimation(View view) {
            view.invalidate();
        }

        @Override
        public void postInvalidateOnAnimation(View view, int n2, int n3, int n4, int n5) {
            view.invalidate(n2, n3, n4, n5);
        }

        @Override
        public void postOnAnimation(View view, Runnable runnable) {
            view.postDelayed(runnable, this.getFrameTime());
        }

        @Override
        public void postOnAnimationDelayed(View view, Runnable runnable, long l2) {
            view.postDelayed(runnable, this.getFrameTime() + l2);
        }

        @Override
        public void requestApplyInsets(View view) {
        }

        @Override
        public int resolveSizeAndState(int n2, int n3, int n4) {
            return View.resolveSize((int)n2, (int)n3);
        }

        @Override
        public void setAccessibilityDelegate(View view, AccessibilityDelegateCompat accessibilityDelegateCompat) {
        }

        @Override
        public void setAccessibilityLiveRegion(View view, int n2) {
        }

        @Override
        public void setActivated(View view, boolean bl) {
        }

        @Override
        public void setAlpha(View view, float f2) {
        }

        @Override
        public void setBackground(View view, Drawable drawable2) {
            view.setBackgroundDrawable(drawable2);
        }

        @Override
        public void setBackgroundTintList(View view, ColorStateList colorStateList) {
            ViewCompatBase.setBackgroundTintList(view, colorStateList);
        }

        @Override
        public void setBackgroundTintMode(View view, PorterDuff.Mode mode) {
            ViewCompatBase.setBackgroundTintMode(view, mode);
        }

        /*
         * Enabled aggressive block sorting
         * Enabled unnecessary exception pruning
         * Enabled aggressive exception aggregation
         */
        @Override
        public void setChildrenDrawingOrderEnabled(ViewGroup viewGroup, boolean bl) {
            if (sChildrenDrawingOrderMethod == null) {
                try {
                    sChildrenDrawingOrderMethod = ViewGroup.class.getDeclaredMethod("setChildrenDrawingOrderEnabled", Boolean.TYPE);
                }
                catch (NoSuchMethodException var3_6) {
                    Log.e((String)"ViewCompat", (String)"Unable to find childrenDrawingOrderEnabled", (Throwable)var3_6);
                }
                sChildrenDrawingOrderMethod.setAccessible(true);
            }
            try {
                sChildrenDrawingOrderMethod.invoke((Object)viewGroup, bl);
                return;
            }
            catch (IllegalAccessException var1_2) {
                Log.e((String)"ViewCompat", (String)"Unable to invoke childrenDrawingOrderEnabled", (Throwable)var1_2);
                return;
            }
            catch (IllegalArgumentException var1_3) {
                Log.e((String)"ViewCompat", (String)"Unable to invoke childrenDrawingOrderEnabled", (Throwable)var1_3);
                return;
            }
            catch (InvocationTargetException var1_4) {
                Log.e((String)"ViewCompat", (String)"Unable to invoke childrenDrawingOrderEnabled", (Throwable)var1_4);
                return;
            }
        }

        @Override
        public void setClipBounds(View view, Rect rect) {
        }

        @Override
        public void setElevation(View view, float f2) {
        }

        @Override
        public void setFitsSystemWindows(View view, boolean bl) {
        }

        @Override
        public void setHasTransientState(View view, boolean bl) {
        }

        @Override
        public void setImportantForAccessibility(View view, int n2) {
        }

        @Override
        public void setLabelFor(View view, int n2) {
        }

        @Override
        public void setLayerPaint(View view, Paint paint) {
        }

        @Override
        public void setLayerType(View view, int n2, Paint paint) {
        }

        @Override
        public void setLayoutDirection(View view, int n2) {
        }

        @Override
        public void setNestedScrollingEnabled(View view, boolean bl) {
            if (view instanceof NestedScrollingChild) {
                ((NestedScrollingChild)view).setNestedScrollingEnabled(bl);
            }
        }

        @Override
        public void setOnApplyWindowInsetsListener(View view, OnApplyWindowInsetsListener onApplyWindowInsetsListener) {
        }

        @Override
        public void setPaddingRelative(View view, int n2, int n3, int n4, int n5) {
            view.setPadding(n2, n3, n4, n5);
        }

        @Override
        public void setPivotX(View view, float f2) {
        }

        @Override
        public void setPivotY(View view, float f2) {
        }

        @Override
        public void setPointerIcon(View view, PointerIconCompat pointerIconCompat) {
        }

        @Override
        public void setRotation(View view, float f2) {
        }

        @Override
        public void setRotationX(View view, float f2) {
        }

        @Override
        public void setRotationY(View view, float f2) {
        }

        @Override
        public void setSaveFromParentEnabled(View view, boolean bl) {
        }

        @Override
        public void setScaleX(View view, float f2) {
        }

        @Override
        public void setScaleY(View view, float f2) {
        }

        @Override
        public void setScrollIndicators(View view, int n2) {
        }

        @Override
        public void setScrollIndicators(View view, int n2, int n3) {
        }

        @Override
        public void setTransitionName(View view, String string2) {
        }

        @Override
        public void setTranslationX(View view, float f2) {
        }

        @Override
        public void setTranslationY(View view, float f2) {
        }

        @Override
        public void setTranslationZ(View view, float f2) {
        }

        @Override
        public void setX(View view, float f2) {
        }

        @Override
        public void setY(View view, float f2) {
        }

        @Override
        public void setZ(View view, float f2) {
        }

        @Override
        public boolean startNestedScroll(View view, int n2) {
            if (view instanceof NestedScrollingChild) {
                return ((NestedScrollingChild)view).startNestedScroll(n2);
            }
            return false;
        }

        @Override
        public void stopNestedScroll(View view) {
            if (view instanceof NestedScrollingChild) {
                ((NestedScrollingChild)view).stopNestedScroll();
            }
        }
    }

    @Retention(value=RetentionPolicy.SOURCE)
    @RestrictTo(value={RestrictTo.Scope.GROUP_ID})
    public static @interface FocusDirection {
    }

    @Retention(value=RetentionPolicy.SOURCE)
    @RestrictTo(value={RestrictTo.Scope.GROUP_ID})
    public static @interface FocusRealDirection {
    }

    @Retention(value=RetentionPolicy.SOURCE)
    @RestrictTo(value={RestrictTo.Scope.GROUP_ID})
    public static @interface FocusRelativeDirection {
    }

    static class HCViewCompatImpl
    extends BaseViewCompatImpl {
        HCViewCompatImpl() {
        }

        @Override
        public int combineMeasuredStates(int n2, int n3) {
            return ViewCompatHC.combineMeasuredStates(n2, n3);
        }

        @Override
        public float getAlpha(View view) {
            return ViewCompatHC.getAlpha(view);
        }

        @Override
        long getFrameTime() {
            return ViewCompatHC.getFrameTime();
        }

        @Override
        public int getLayerType(View view) {
            return ViewCompatHC.getLayerType(view);
        }

        @Override
        public Matrix getMatrix(View view) {
            return ViewCompatHC.getMatrix(view);
        }

        @Override
        public int getMeasuredHeightAndState(View view) {
            return ViewCompatHC.getMeasuredHeightAndState(view);
        }

        @Override
        public int getMeasuredState(View view) {
            return ViewCompatHC.getMeasuredState(view);
        }

        @Override
        public int getMeasuredWidthAndState(View view) {
            return ViewCompatHC.getMeasuredWidthAndState(view);
        }

        @Override
        public float getPivotX(View view) {
            return ViewCompatHC.getPivotX(view);
        }

        @Override
        public float getPivotY(View view) {
            return ViewCompatHC.getPivotY(view);
        }

        @Override
        public float getRotation(View view) {
            return ViewCompatHC.getRotation(view);
        }

        @Override
        public float getRotationX(View view) {
            return ViewCompatHC.getRotationX(view);
        }

        @Override
        public float getRotationY(View view) {
            return ViewCompatHC.getRotationY(view);
        }

        @Override
        public float getScaleX(View view) {
            return ViewCompatHC.getScaleX(view);
        }

        @Override
        public float getScaleY(View view) {
            return ViewCompatHC.getScaleY(view);
        }

        @Override
        public float getTranslationX(View view) {
            return ViewCompatHC.getTranslationX(view);
        }

        @Override
        public float getTranslationY(View view) {
            return ViewCompatHC.getTranslationY(view);
        }

        @Override
        public float getX(View view) {
            return ViewCompatHC.getX(view);
        }

        @Override
        public float getY(View view) {
            return ViewCompatHC.getY(view);
        }

        @Override
        public void jumpDrawablesToCurrentState(View view) {
            ViewCompatHC.jumpDrawablesToCurrentState(view);
        }

        @Override
        public void offsetLeftAndRight(View view, int n2) {
            ViewCompatHC.offsetLeftAndRight(view, n2);
        }

        @Override
        public void offsetTopAndBottom(View view, int n2) {
            ViewCompatHC.offsetTopAndBottom(view, n2);
        }

        @Override
        public int resolveSizeAndState(int n2, int n3, int n4) {
            return ViewCompatHC.resolveSizeAndState(n2, n3, n4);
        }

        @Override
        public void setActivated(View view, boolean bl) {
            ViewCompatHC.setActivated(view, bl);
        }

        @Override
        public void setAlpha(View view, float f2) {
            ViewCompatHC.setAlpha(view, f2);
        }

        @Override
        public void setLayerPaint(View view, Paint paint) {
            this.setLayerType(view, this.getLayerType(view), paint);
            view.invalidate();
        }

        @Override
        public void setLayerType(View view, int n2, Paint paint) {
            ViewCompatHC.setLayerType(view, n2, paint);
        }

        @Override
        public void setPivotX(View view, float f2) {
            ViewCompatHC.setPivotX(view, f2);
        }

        @Override
        public void setPivotY(View view, float f2) {
            ViewCompatHC.setPivotY(view, f2);
        }

        @Override
        public void setRotation(View view, float f2) {
            ViewCompatHC.setRotation(view, f2);
        }

        @Override
        public void setRotationX(View view, float f2) {
            ViewCompatHC.setRotationX(view, f2);
        }

        @Override
        public void setRotationY(View view, float f2) {
            ViewCompatHC.setRotationY(view, f2);
        }

        @Override
        public void setSaveFromParentEnabled(View view, boolean bl) {
            ViewCompatHC.setSaveFromParentEnabled(view, bl);
        }

        @Override
        public void setScaleX(View view, float f2) {
            ViewCompatHC.setScaleX(view, f2);
        }

        @Override
        public void setScaleY(View view, float f2) {
            ViewCompatHC.setScaleY(view, f2);
        }

        @Override
        public void setTranslationX(View view, float f2) {
            ViewCompatHC.setTranslationX(view, f2);
        }

        @Override
        public void setTranslationY(View view, float f2) {
            ViewCompatHC.setTranslationY(view, f2);
        }

        @Override
        public void setX(View view, float f2) {
            ViewCompatHC.setX(view, f2);
        }

        @Override
        public void setY(View view, float f2) {
            ViewCompatHC.setY(view, f2);
        }
    }

    static class ICSMr1ViewCompatImpl
    extends ICSViewCompatImpl {
        ICSMr1ViewCompatImpl() {
        }

        @Override
        public boolean hasOnClickListeners(View view) {
            return ViewCompatICSMr1.hasOnClickListeners(view);
        }
    }

    static class ICSViewCompatImpl
    extends HCViewCompatImpl {
        static boolean accessibilityDelegateCheckFailed = false;
        static Field mAccessibilityDelegateField;

        ICSViewCompatImpl() {
        }

        @Override
        public ViewPropertyAnimatorCompat animate(View view) {
            ViewPropertyAnimatorCompat viewPropertyAnimatorCompat;
            if (this.mViewPropertyAnimatorCompatMap == null) {
                this.mViewPropertyAnimatorCompatMap = new WeakHashMap();
            }
            ViewPropertyAnimatorCompat viewPropertyAnimatorCompat2 = viewPropertyAnimatorCompat = (ViewPropertyAnimatorCompat)this.mViewPropertyAnimatorCompatMap.get((Object)view);
            if (viewPropertyAnimatorCompat == null) {
                viewPropertyAnimatorCompat2 = new ViewPropertyAnimatorCompat(view);
                this.mViewPropertyAnimatorCompatMap.put(view, viewPropertyAnimatorCompat2);
            }
            return viewPropertyAnimatorCompat2;
        }

        @Override
        public boolean canScrollHorizontally(View view, int n2) {
            return ViewCompatICS.canScrollHorizontally(view, n2);
        }

        @Override
        public boolean canScrollVertically(View view, int n2) {
            return ViewCompatICS.canScrollVertically(view, n2);
        }

        /*
         * Loose catch block
         * Enabled aggressive block sorting
         * Enabled unnecessary exception pruning
         * Enabled aggressive exception aggregation
         * Lifted jumps to return sites
         */
        @Override
        public boolean hasAccessibilityDelegate(View object) {
            boolean bl = true;
            if (accessibilityDelegateCheckFailed) {
                return false;
            }
            if (mAccessibilityDelegateField == null) {
                mAccessibilityDelegateField = View.class.getDeclaredField("mAccessibilityDelegate");
                mAccessibilityDelegateField.setAccessible(true);
            }
            try {
                object = mAccessibilityDelegateField.get(object);
                if (object == null) return false;
                return bl;
            }
            catch (Throwable var1_3) {
                accessibilityDelegateCheckFailed = true;
                return false;
            }
            catch (Throwable throwable) {
                accessibilityDelegateCheckFailed = true;
                return false;
            }
        }

        @Override
        public void onInitializeAccessibilityEvent(View view, AccessibilityEvent accessibilityEvent) {
            ViewCompatICS.onInitializeAccessibilityEvent(view, accessibilityEvent);
        }

        @Override
        public void onInitializeAccessibilityNodeInfo(View view, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
            ViewCompatICS.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfoCompat.getInfo());
        }

        @Override
        public void onPopulateAccessibilityEvent(View view, AccessibilityEvent accessibilityEvent) {
            ViewCompatICS.onPopulateAccessibilityEvent(view, accessibilityEvent);
        }

        /*
         * Enabled aggressive block sorting
         */
        @Override
        public void setAccessibilityDelegate(View view, @Nullable AccessibilityDelegateCompat object) {
            object = object == null ? null : object.getBridge();
            ViewCompatICS.setAccessibilityDelegate(view, object);
        }

        @Override
        public void setFitsSystemWindows(View view, boolean bl) {
            ViewCompatICS.setFitsSystemWindows(view, bl);
        }
    }

    static class JBViewCompatImpl
    extends ICSMr1ViewCompatImpl {
        JBViewCompatImpl() {
        }

        @Override
        public AccessibilityNodeProviderCompat getAccessibilityNodeProvider(View object) {
            if ((object = ViewCompatJB.getAccessibilityNodeProvider((View)object)) != null) {
                return new AccessibilityNodeProviderCompat(object);
            }
            return null;
        }

        @Override
        public boolean getFitsSystemWindows(View view) {
            return ViewCompatJB.getFitsSystemWindows(view);
        }

        @Override
        public int getImportantForAccessibility(View view) {
            return ViewCompatJB.getImportantForAccessibility(view);
        }

        @Override
        public int getMinimumHeight(View view) {
            return ViewCompatJB.getMinimumHeight(view);
        }

        @Override
        public int getMinimumWidth(View view) {
            return ViewCompatJB.getMinimumWidth(view);
        }

        @Override
        public ViewParent getParentForAccessibility(View view) {
            return ViewCompatJB.getParentForAccessibility(view);
        }

        @Override
        public boolean hasOverlappingRendering(View view) {
            return ViewCompatJB.hasOverlappingRendering(view);
        }

        @Override
        public boolean hasTransientState(View view) {
            return ViewCompatJB.hasTransientState(view);
        }

        @Override
        public boolean performAccessibilityAction(View view, int n2, Bundle bundle) {
            return ViewCompatJB.performAccessibilityAction(view, n2, bundle);
        }

        @Override
        public void postInvalidateOnAnimation(View view) {
            ViewCompatJB.postInvalidateOnAnimation(view);
        }

        @Override
        public void postInvalidateOnAnimation(View view, int n2, int n3, int n4, int n5) {
            ViewCompatJB.postInvalidateOnAnimation(view, n2, n3, n4, n5);
        }

        @Override
        public void postOnAnimation(View view, Runnable runnable) {
            ViewCompatJB.postOnAnimation(view, runnable);
        }

        @Override
        public void postOnAnimationDelayed(View view, Runnable runnable, long l2) {
            ViewCompatJB.postOnAnimationDelayed(view, runnable, l2);
        }

        @Override
        public void requestApplyInsets(View view) {
            ViewCompatJB.requestApplyInsets(view);
        }

        @Override
        public void setBackground(View view, Drawable drawable2) {
            ViewCompatJB.setBackground(view, drawable2);
        }

        @Override
        public void setHasTransientState(View view, boolean bl) {
            ViewCompatJB.setHasTransientState(view, bl);
        }

        @Override
        public void setImportantForAccessibility(View view, int n2) {
            int n3 = n2;
            if (n2 == 4) {
                n3 = 2;
            }
            ViewCompatJB.setImportantForAccessibility(view, n3);
        }
    }

    static class JbMr1ViewCompatImpl
    extends JBViewCompatImpl {
        JbMr1ViewCompatImpl() {
        }

        @Override
        public Display getDisplay(View view) {
            return ViewCompatJellybeanMr1.getDisplay(view);
        }

        @Override
        public int getLabelFor(View view) {
            return ViewCompatJellybeanMr1.getLabelFor(view);
        }

        @Override
        public int getLayoutDirection(View view) {
            return ViewCompatJellybeanMr1.getLayoutDirection(view);
        }

        @Override
        public int getPaddingEnd(View view) {
            return ViewCompatJellybeanMr1.getPaddingEnd(view);
        }

        @Override
        public int getPaddingStart(View view) {
            return ViewCompatJellybeanMr1.getPaddingStart(view);
        }

        @Override
        public int getWindowSystemUiVisibility(View view) {
            return ViewCompatJellybeanMr1.getWindowSystemUiVisibility(view);
        }

        @Override
        public boolean isPaddingRelative(View view) {
            return ViewCompatJellybeanMr1.isPaddingRelative(view);
        }

        @Override
        public void setLabelFor(View view, int n2) {
            ViewCompatJellybeanMr1.setLabelFor(view, n2);
        }

        @Override
        public void setLayerPaint(View view, Paint paint) {
            ViewCompatJellybeanMr1.setLayerPaint(view, paint);
        }

        @Override
        public void setLayoutDirection(View view, int n2) {
            ViewCompatJellybeanMr1.setLayoutDirection(view, n2);
        }

        @Override
        public void setPaddingRelative(View view, int n2, int n3, int n4, int n5) {
            ViewCompatJellybeanMr1.setPaddingRelative(view, n2, n3, n4, n5);
        }
    }

    static class JbMr2ViewCompatImpl
    extends JbMr1ViewCompatImpl {
        JbMr2ViewCompatImpl() {
        }

        @Override
        public Rect getClipBounds(View view) {
            return ViewCompatJellybeanMr2.getClipBounds(view);
        }

        @Override
        public boolean isInLayout(View view) {
            return ViewCompatJellybeanMr2.isInLayout(view);
        }

        @Override
        public void setClipBounds(View view, Rect rect) {
            ViewCompatJellybeanMr2.setClipBounds(view, rect);
        }
    }

    static class KitKatViewCompatImpl
    extends JbMr2ViewCompatImpl {
        KitKatViewCompatImpl() {
        }

        @Override
        public int getAccessibilityLiveRegion(View view) {
            return ViewCompatKitKat.getAccessibilityLiveRegion(view);
        }

        @Override
        public boolean isAttachedToWindow(View view) {
            return ViewCompatKitKat.isAttachedToWindow(view);
        }

        @Override
        public boolean isLaidOut(View view) {
            return ViewCompatKitKat.isLaidOut(view);
        }

        @Override
        public boolean isLayoutDirectionResolved(View view) {
            return ViewCompatKitKat.isLayoutDirectionResolved(view);
        }

        @Override
        public void setAccessibilityLiveRegion(View view, int n2) {
            ViewCompatKitKat.setAccessibilityLiveRegion(view, n2);
        }

        @Override
        public void setImportantForAccessibility(View view, int n2) {
            ViewCompatJB.setImportantForAccessibility(view, n2);
        }
    }

    static class LollipopViewCompatImpl
    extends KitKatViewCompatImpl {
        LollipopViewCompatImpl() {
        }

        @Override
        public WindowInsetsCompat dispatchApplyWindowInsets(View view, WindowInsetsCompat windowInsetsCompat) {
            return WindowInsetsCompat.wrap(ViewCompatLollipop.dispatchApplyWindowInsets(view, WindowInsetsCompat.unwrap(windowInsetsCompat)));
        }

        @Override
        public boolean dispatchNestedFling(View view, float f2, float f3, boolean bl) {
            return ViewCompatLollipop.dispatchNestedFling(view, f2, f3, bl);
        }

        @Override
        public boolean dispatchNestedPreFling(View view, float f2, float f3) {
            return ViewCompatLollipop.dispatchNestedPreFling(view, f2, f3);
        }

        @Override
        public boolean dispatchNestedPreScroll(View view, int n2, int n3, int[] arrn, int[] arrn2) {
            return ViewCompatLollipop.dispatchNestedPreScroll(view, n2, n3, arrn, arrn2);
        }

        @Override
        public boolean dispatchNestedScroll(View view, int n2, int n3, int n4, int n5, int[] arrn) {
            return ViewCompatLollipop.dispatchNestedScroll(view, n2, n3, n4, n5, arrn);
        }

        @Override
        public ColorStateList getBackgroundTintList(View view) {
            return ViewCompatLollipop.getBackgroundTintList(view);
        }

        @Override
        public PorterDuff.Mode getBackgroundTintMode(View view) {
            return ViewCompatLollipop.getBackgroundTintMode(view);
        }

        @Override
        public float getElevation(View view) {
            return ViewCompatLollipop.getElevation(view);
        }

        @Override
        public String getTransitionName(View view) {
            return ViewCompatLollipop.getTransitionName(view);
        }

        @Override
        public float getTranslationZ(View view) {
            return ViewCompatLollipop.getTranslationZ(view);
        }

        @Override
        public float getZ(View view) {
            return ViewCompatLollipop.getZ(view);
        }

        @Override
        public boolean hasNestedScrollingParent(View view) {
            return ViewCompatLollipop.hasNestedScrollingParent(view);
        }

        @Override
        public boolean isImportantForAccessibility(View view) {
            return ViewCompatLollipop.isImportantForAccessibility(view);
        }

        @Override
        public boolean isNestedScrollingEnabled(View view) {
            return ViewCompatLollipop.isNestedScrollingEnabled(view);
        }

        @Override
        public void offsetLeftAndRight(View view, int n2) {
            ViewCompatLollipop.offsetLeftAndRight(view, n2);
        }

        @Override
        public void offsetTopAndBottom(View view, int n2) {
            ViewCompatLollipop.offsetTopAndBottom(view, n2);
        }

        @Override
        public WindowInsetsCompat onApplyWindowInsets(View view, WindowInsetsCompat windowInsetsCompat) {
            return WindowInsetsCompat.wrap(ViewCompatLollipop.onApplyWindowInsets(view, WindowInsetsCompat.unwrap(windowInsetsCompat)));
        }

        @Override
        public void requestApplyInsets(View view) {
            ViewCompatLollipop.requestApplyInsets(view);
        }

        @Override
        public void setBackgroundTintList(View view, ColorStateList colorStateList) {
            ViewCompatLollipop.setBackgroundTintList(view, colorStateList);
        }

        @Override
        public void setBackgroundTintMode(View view, PorterDuff.Mode mode) {
            ViewCompatLollipop.setBackgroundTintMode(view, mode);
        }

        @Override
        public void setElevation(View view, float f2) {
            ViewCompatLollipop.setElevation(view, f2);
        }

        @Override
        public void setNestedScrollingEnabled(View view, boolean bl) {
            ViewCompatLollipop.setNestedScrollingEnabled(view, bl);
        }

        @Override
        public void setOnApplyWindowInsetsListener(View view, final OnApplyWindowInsetsListener onApplyWindowInsetsListener) {
            if (onApplyWindowInsetsListener == null) {
                ViewCompatLollipop.setOnApplyWindowInsetsListener(view, null);
                return;
            }
            ViewCompatLollipop.setOnApplyWindowInsetsListener(view, new ViewCompatLollipop.OnApplyWindowInsetsListenerBridge(){

                @Override
                public Object onApplyWindowInsets(View view, Object object) {
                    object = WindowInsetsCompat.wrap(object);
                    return WindowInsetsCompat.unwrap(onApplyWindowInsetsListener.onApplyWindowInsets(view, (WindowInsetsCompat)object));
                }
            });
        }

        @Override
        public void setTransitionName(View view, String string2) {
            ViewCompatLollipop.setTransitionName(view, string2);
        }

        @Override
        public void setTranslationZ(View view, float f2) {
            ViewCompatLollipop.setTranslationZ(view, f2);
        }

        @Override
        public void setZ(View view, float f2) {
            ViewCompatLollipop.setZ(view, f2);
        }

        @Override
        public boolean startNestedScroll(View view, int n2) {
            return ViewCompatLollipop.startNestedScroll(view, n2);
        }

        @Override
        public void stopNestedScroll(View view) {
            ViewCompatLollipop.stopNestedScroll(view);
        }

    }

    static class MarshmallowViewCompatImpl
    extends LollipopViewCompatImpl {
        MarshmallowViewCompatImpl() {
        }

        @Override
        public int getScrollIndicators(View view) {
            return ViewCompatMarshmallow.getScrollIndicators(view);
        }

        @Override
        public void offsetLeftAndRight(View view, int n2) {
            ViewCompatMarshmallow.offsetLeftAndRight(view, n2);
        }

        @Override
        public void offsetTopAndBottom(View view, int n2) {
            ViewCompatMarshmallow.offsetTopAndBottom(view, n2);
        }

        @Override
        public void setScrollIndicators(View view, int n2) {
            ViewCompatMarshmallow.setScrollIndicators(view, n2);
        }

        @Override
        public void setScrollIndicators(View view, int n2, int n3) {
            ViewCompatMarshmallow.setScrollIndicators(view, n2, n3);
        }
    }

    @Retention(value=RetentionPolicy.SOURCE)
    public static @interface ScrollIndicators {
    }

    static interface ViewCompatImpl {
        public ViewPropertyAnimatorCompat animate(View var1);

        public boolean canScrollHorizontally(View var1, int var2);

        public boolean canScrollVertically(View var1, int var2);

        public int combineMeasuredStates(int var1, int var2);

        public WindowInsetsCompat dispatchApplyWindowInsets(View var1, WindowInsetsCompat var2);

        public void dispatchFinishTemporaryDetach(View var1);

        public boolean dispatchNestedFling(View var1, float var2, float var3, boolean var4);

        public boolean dispatchNestedPreFling(View var1, float var2, float var3);

        public boolean dispatchNestedPreScroll(View var1, int var2, int var3, int[] var4, int[] var5);

        public boolean dispatchNestedScroll(View var1, int var2, int var3, int var4, int var5, int[] var6);

        public void dispatchStartTemporaryDetach(View var1);

        public int getAccessibilityLiveRegion(View var1);

        public AccessibilityNodeProviderCompat getAccessibilityNodeProvider(View var1);

        public float getAlpha(View var1);

        public ColorStateList getBackgroundTintList(View var1);

        public PorterDuff.Mode getBackgroundTintMode(View var1);

        public Rect getClipBounds(View var1);

        public Display getDisplay(View var1);

        public float getElevation(View var1);

        public boolean getFitsSystemWindows(View var1);

        public int getImportantForAccessibility(View var1);

        public int getLabelFor(View var1);

        public int getLayerType(View var1);

        public int getLayoutDirection(View var1);

        @Nullable
        public Matrix getMatrix(View var1);

        public int getMeasuredHeightAndState(View var1);

        public int getMeasuredState(View var1);

        public int getMeasuredWidthAndState(View var1);

        public int getMinimumHeight(View var1);

        public int getMinimumWidth(View var1);

        public int getPaddingEnd(View var1);

        public int getPaddingStart(View var1);

        public ViewParent getParentForAccessibility(View var1);

        public float getPivotX(View var1);

        public float getPivotY(View var1);

        public float getRotation(View var1);

        public float getRotationX(View var1);

        public float getRotationY(View var1);

        public float getScaleX(View var1);

        public float getScaleY(View var1);

        public int getScrollIndicators(View var1);

        public String getTransitionName(View var1);

        public float getTranslationX(View var1);

        public float getTranslationY(View var1);

        public float getTranslationZ(View var1);

        public int getWindowSystemUiVisibility(View var1);

        public float getX(View var1);

        public float getY(View var1);

        public float getZ(View var1);

        public boolean hasAccessibilityDelegate(View var1);

        public boolean hasNestedScrollingParent(View var1);

        public boolean hasOnClickListeners(View var1);

        public boolean hasOverlappingRendering(View var1);

        public boolean hasTransientState(View var1);

        public boolean isAttachedToWindow(View var1);

        public boolean isImportantForAccessibility(View var1);

        public boolean isInLayout(View var1);

        public boolean isLaidOut(View var1);

        public boolean isLayoutDirectionResolved(View var1);

        public boolean isNestedScrollingEnabled(View var1);

        public boolean isPaddingRelative(View var1);

        public void jumpDrawablesToCurrentState(View var1);

        public void offsetLeftAndRight(View var1, int var2);

        public void offsetTopAndBottom(View var1, int var2);

        public WindowInsetsCompat onApplyWindowInsets(View var1, WindowInsetsCompat var2);

        public void onInitializeAccessibilityEvent(View var1, AccessibilityEvent var2);

        public void onInitializeAccessibilityNodeInfo(View var1, AccessibilityNodeInfoCompat var2);

        public void onPopulateAccessibilityEvent(View var1, AccessibilityEvent var2);

        public boolean performAccessibilityAction(View var1, int var2, Bundle var3);

        public void postInvalidateOnAnimation(View var1);

        public void postInvalidateOnAnimation(View var1, int var2, int var3, int var4, int var5);

        public void postOnAnimation(View var1, Runnable var2);

        public void postOnAnimationDelayed(View var1, Runnable var2, long var3);

        public void requestApplyInsets(View var1);

        public int resolveSizeAndState(int var1, int var2, int var3);

        public void setAccessibilityDelegate(View var1, @Nullable AccessibilityDelegateCompat var2);

        public void setAccessibilityLiveRegion(View var1, int var2);

        public void setActivated(View var1, boolean var2);

        public void setAlpha(View var1, float var2);

        public void setBackground(View var1, Drawable var2);

        public void setBackgroundTintList(View var1, ColorStateList var2);

        public void setBackgroundTintMode(View var1, PorterDuff.Mode var2);

        public void setChildrenDrawingOrderEnabled(ViewGroup var1, boolean var2);

        public void setClipBounds(View var1, Rect var2);

        public void setElevation(View var1, float var2);

        public void setFitsSystemWindows(View var1, boolean var2);

        public void setHasTransientState(View var1, boolean var2);

        public void setImportantForAccessibility(View var1, int var2);

        public void setLabelFor(View var1, int var2);

        public void setLayerPaint(View var1, Paint var2);

        public void setLayerType(View var1, int var2, Paint var3);

        public void setLayoutDirection(View var1, int var2);

        public void setNestedScrollingEnabled(View var1, boolean var2);

        public void setOnApplyWindowInsetsListener(View var1, OnApplyWindowInsetsListener var2);

        public void setPaddingRelative(View var1, int var2, int var3, int var4, int var5);

        public void setPivotX(View var1, float var2);

        public void setPivotY(View var1, float var2);

        public void setPointerIcon(View var1, PointerIconCompat var2);

        public void setRotation(View var1, float var2);

        public void setRotationX(View var1, float var2);

        public void setRotationY(View var1, float var2);

        public void setSaveFromParentEnabled(View var1, boolean var2);

        public void setScaleX(View var1, float var2);

        public void setScaleY(View var1, float var2);

        public void setScrollIndicators(View var1, int var2);

        public void setScrollIndicators(View var1, int var2, int var3);

        public void setTransitionName(View var1, String var2);

        public void setTranslationX(View var1, float var2);

        public void setTranslationY(View var1, float var2);

        public void setTranslationZ(View var1, float var2);

        public void setX(View var1, float var2);

        public void setY(View var1, float var2);

        public void setZ(View var1, float var2);

        public boolean startNestedScroll(View var1, int var2);

        public void stopNestedScroll(View var1);
    }

}

