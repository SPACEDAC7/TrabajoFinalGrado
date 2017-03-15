/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.graphics.Paint
 *  android.graphics.drawable.Drawable
 *  android.os.Build
 *  android.os.Build$VERSION
 *  android.os.Bundle
 *  android.util.Log
 *  android.view.View
 *  android.view.ViewParent
 *  android.view.accessibility.AccessibilityEvent
 */
package android.support.v4.view;

import android.graphics.Paint;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Bundle;
import android.support.annotation.IntDef;
import android.support.v4.view.AccessibilityDelegateCompat;
import android.support.v4.view.ViewCompatEclairMr1;
import android.support.v4.view.ViewCompatGingerbread;
import android.support.v4.view.ViewCompatHC;
import android.support.v4.view.ViewCompatICS;
import android.support.v4.view.ViewCompatJB;
import android.support.v4.view.ViewCompatJellybeanMr1;
import android.support.v4.view.ViewCompatKitKat;
import android.support.v4.view.ViewPropertyAnimatorCompat;
import android.support.v4.view.accessibility.AccessibilityNodeInfoCompat;
import android.support.v4.view.accessibility.AccessibilityNodeProviderCompat;
import android.util.Log;
import android.view.View;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityEvent;
import java.lang.annotation.Annotation;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
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
    public static final int OVER_SCROLL_ALWAYS = 0;
    public static final int OVER_SCROLL_IF_CONTENT_SCROLLS = 1;
    public static final int OVER_SCROLL_NEVER = 2;
    private static final String TAG = "ViewCompat";

    static {
        int n2 = Build.VERSION.SDK_INT;
        IMPL = n2 >= 19 ? new KitKatViewCompatImpl() : (n2 >= 17 ? new JbMr1ViewCompatImpl() : (n2 >= 16 ? new JBViewCompatImpl() : (n2 >= 14 ? new ICSViewCompatImpl() : (n2 >= 11 ? new HCViewCompatImpl() : (n2 >= 9 ? new GBViewCompatImpl() : new BaseViewCompatImpl())))));
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

    public static void dispatchFinishTemporaryDetach(View view) {
        IMPL.dispatchFinishTemporaryDetach(view);
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

    public static int getOverScrollMode(View view) {
        return IMPL.getOverScrollMode(view);
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

    public static float getTranslationX(View view) {
        return IMPL.getTranslationX(view);
    }

    public static float getTranslationY(View view) {
        return IMPL.getTranslationY(view);
    }

    public static boolean hasTransientState(View view) {
        return IMPL.hasTransientState(view);
    }

    public static boolean isOpaque(View view) {
        return IMPL.isOpaque(view);
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

    public static int resolveSizeAndState(int n2, int n3, int n4) {
        return IMPL.resolveSizeAndState(n2, n3, n4);
    }

    public static void setAccessibilityDelegate(View view, AccessibilityDelegateCompat accessibilityDelegateCompat) {
        IMPL.setAccessibilityDelegate(view, accessibilityDelegateCompat);
    }

    public static void setAccessibilityLiveRegion(View view, int n2) {
        IMPL.setAccessibilityLiveRegion(view, n2);
    }

    public static void setAlpha(View view, float f2) {
        IMPL.setAlpha(view, f2);
    }

    public static void setHasTransientState(View view, boolean bl) {
        IMPL.setHasTransientState(view, bl);
    }

    public static void setImportantForAccessibility(View view, int n2) {
        IMPL.setImportantForAccessibility(view, n2);
    }

    public static void setLabelFor(View view, int n2) {
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

    public static void setOverScrollMode(View view, int n2) {
        IMPL.setOverScrollMode(view, n2);
    }

    public static void setPaddingRelative(View view, int n2, int n3, int n4, int n5) {
        IMPL.setPaddingRelative(view, n2, n3, n4, n5);
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

    public static void setScaleX(View view, float f2) {
        IMPL.setScaleX(view, f2);
    }

    public static void setScaleY(View view, float f2) {
        IMPL.setScaleY(view, f2);
    }

    public static void setTranslationX(View view, float f2) {
        IMPL.setTranslationX(view, f2);
    }

    public static void setTranslationY(View view, float f2) {
        IMPL.setTranslationY(view, f2);
    }

    public static void setX(View view, float f2) {
        IMPL.setX(view, f2);
    }

    public static void setY(View view, float f2) {
        IMPL.setY(view, f2);
    }

    public float getPivotX(View view) {
        return IMPL.getPivotX(view);
    }

    public float getPivotY(View view) {
        return IMPL.getPivotY(view);
    }

    public float getRotation(View view) {
        return IMPL.getRotation(view);
    }

    public float getRotationX(View view) {
        return IMPL.getRotationX(view);
    }

    public float getRotationY(View view) {
        return IMPL.getRotationY(view);
    }

    public float getScaleX(View view) {
        return IMPL.getScaleX(view);
    }

    public float getScaleY(View view) {
        return IMPL.getScaleY(view);
    }

    public float getX(View view) {
        return IMPL.getX(view);
    }

    public float getY(View view) {
        return IMPL.getY(view);
    }

    public void setPivotX(View view, float f2) {
        IMPL.setPivotX(view, f2);
    }

    public void setPivotY(View view, float f2) {
        IMPL.setPivotX(view, f2);
    }

    @Retention(value=RetentionPolicy.SOURCE)
    @IntDef(value={0, 1, 2})
    private static @interface AccessibilityLiveRegion {
    }

    static class BaseViewCompatImpl
    implements ViewCompatImpl {
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

        @Override
        public ViewPropertyAnimatorCompat animate(View view) {
            return new ViewPropertyAnimatorCompat(view);
        }

        @Override
        public boolean canScrollHorizontally(View view, int n2) {
            return false;
        }

        @Override
        public boolean canScrollVertically(View view, int n2) {
            return false;
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
            return 0;
        }

        @Override
        public int getMinimumWidth(View view) {
            return 0;
        }

        @Override
        public int getOverScrollMode(View view) {
            return 2;
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
        public float getTranslationX(View view) {
            return 0.0f;
        }

        @Override
        public float getTranslationY(View view) {
            return 0.0f;
        }

        @Override
        public float getX(View view) {
            return 0.0f;
        }

        @Override
        public float getY(View view) {
            return 0.0f;
        }

        @Override
        public boolean hasTransientState(View view) {
            return false;
        }

        @Override
        public boolean isOpaque(View view) {
            boolean bl = false;
            view = view.getBackground();
            boolean bl2 = bl;
            if (view != null) {
                bl2 = bl;
                if (view.getOpacity() == -1) {
                    bl2 = true;
                }
            }
            return bl2;
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
        public void setAlpha(View view, float f2) {
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
        public void setOverScrollMode(View view, int n2) {
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
        public void setRotation(View view, float f2) {
        }

        @Override
        public void setRotationX(View view, float f2) {
        }

        @Override
        public void setRotationY(View view, float f2) {
        }

        @Override
        public void setScaleX(View view, float f2) {
        }

        @Override
        public void setScaleY(View view, float f2) {
        }

        @Override
        public void setTranslationX(View view, float f2) {
        }

        @Override
        public void setTranslationY(View view, float f2) {
        }

        @Override
        public void setX(View view, float f2) {
        }

        @Override
        public void setY(View view, float f2) {
        }
    }

    static class EclairMr1ViewCompatImpl
    extends BaseViewCompatImpl {
        EclairMr1ViewCompatImpl() {
        }

        @Override
        public boolean isOpaque(View view) {
            return ViewCompatEclairMr1.isOpaque(view);
        }
    }

    static class GBViewCompatImpl
    extends EclairMr1ViewCompatImpl {
        GBViewCompatImpl() {
        }

        @Override
        public int getOverScrollMode(View view) {
            return ViewCompatGingerbread.getOverScrollMode(view);
        }

        @Override
        public void setOverScrollMode(View view, int n2) {
            ViewCompatGingerbread.setOverScrollMode(view, n2);
        }
    }

    static class HCViewCompatImpl
    extends GBViewCompatImpl {
        HCViewCompatImpl() {
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
        public int resolveSizeAndState(int n2, int n3, int n4) {
            return ViewCompatHC.resolveSizeAndState(n2, n3, n4);
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

    static class ICSViewCompatImpl
    extends HCViewCompatImpl {
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

        @Override
        public void setAccessibilityDelegate(View view, AccessibilityDelegateCompat accessibilityDelegateCompat) {
            ViewCompatICS.setAccessibilityDelegate(view, accessibilityDelegateCompat.getBridge());
        }
    }

    @Retention(value=RetentionPolicy.SOURCE)
    @IntDef(value={0, 1, 2, 4})
    private static @interface ImportantForAccessibility {
    }

    static class JBViewCompatImpl
    extends ICSViewCompatImpl {
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

    static class KitKatViewCompatImpl
    extends JbMr1ViewCompatImpl {
        KitKatViewCompatImpl() {
        }

        @Override
        public int getAccessibilityLiveRegion(View view) {
            return ViewCompatKitKat.getAccessibilityLiveRegion(view);
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

    @Retention(value=RetentionPolicy.SOURCE)
    @IntDef(value={0, 1, 2})
    private static @interface LayerType {
    }

    @Retention(value=RetentionPolicy.SOURCE)
    @IntDef(value={0, 1, 2, 3})
    private static @interface LayoutDirectionMode {
    }

    @Retention(value=RetentionPolicy.SOURCE)
    @IntDef(value={0, 1, 1})
    private static @interface OverScroll {
    }

    @Retention(value=RetentionPolicy.SOURCE)
    @IntDef(value={0, 1})
    private static @interface ResolvedLayoutDirectionMode {
    }

    static interface ViewCompatImpl {
        public ViewPropertyAnimatorCompat animate(View var1);

        public boolean canScrollHorizontally(View var1, int var2);

        public boolean canScrollVertically(View var1, int var2);

        public void dispatchFinishTemporaryDetach(View var1);

        public void dispatchStartTemporaryDetach(View var1);

        public int getAccessibilityLiveRegion(View var1);

        public AccessibilityNodeProviderCompat getAccessibilityNodeProvider(View var1);

        public float getAlpha(View var1);

        public int getImportantForAccessibility(View var1);

        public int getLabelFor(View var1);

        public int getLayerType(View var1);

        public int getLayoutDirection(View var1);

        public int getMeasuredHeightAndState(View var1);

        public int getMeasuredState(View var1);

        public int getMeasuredWidthAndState(View var1);

        public int getMinimumHeight(View var1);

        public int getMinimumWidth(View var1);

        public int getOverScrollMode(View var1);

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

        public float getTranslationX(View var1);

        public float getTranslationY(View var1);

        public float getX(View var1);

        public float getY(View var1);

        public boolean hasTransientState(View var1);

        public boolean isOpaque(View var1);

        public void onInitializeAccessibilityEvent(View var1, AccessibilityEvent var2);

        public void onInitializeAccessibilityNodeInfo(View var1, AccessibilityNodeInfoCompat var2);

        public void onPopulateAccessibilityEvent(View var1, AccessibilityEvent var2);

        public boolean performAccessibilityAction(View var1, int var2, Bundle var3);

        public void postInvalidateOnAnimation(View var1);

        public void postInvalidateOnAnimation(View var1, int var2, int var3, int var4, int var5);

        public void postOnAnimation(View var1, Runnable var2);

        public void postOnAnimationDelayed(View var1, Runnable var2, long var3);

        public int resolveSizeAndState(int var1, int var2, int var3);

        public void setAccessibilityDelegate(View var1, AccessibilityDelegateCompat var2);

        public void setAccessibilityLiveRegion(View var1, int var2);

        public void setAlpha(View var1, float var2);

        public void setHasTransientState(View var1, boolean var2);

        public void setImportantForAccessibility(View var1, int var2);

        public void setLabelFor(View var1, int var2);

        public void setLayerPaint(View var1, Paint var2);

        public void setLayerType(View var1, int var2, Paint var3);

        public void setLayoutDirection(View var1, int var2);

        public void setOverScrollMode(View var1, int var2);

        public void setPaddingRelative(View var1, int var2, int var3, int var4, int var5);

        public void setPivotX(View var1, float var2);

        public void setPivotY(View var1, float var2);

        public void setRotation(View var1, float var2);

        public void setRotationX(View var1, float var2);

        public void setRotationY(View var1, float var2);

        public void setScaleX(View var1, float var2);

        public void setScaleY(View var1, float var2);

        public void setTranslationX(View var1, float var2);

        public void setTranslationY(View var1, float var2);

        public void setX(View var1, float var2);

        public void setY(View var1, float var2);
    }

}

