/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.content.res.ColorStateList
 *  android.graphics.PorterDuff
 *  android.graphics.PorterDuff$Mode
 *  android.graphics.Rect
 *  android.graphics.drawable.Drawable
 *  android.os.Build
 *  android.os.Build$VERSION
 *  android.view.View
 *  android.view.View$OnApplyWindowInsetsListener
 *  android.view.ViewParent
 *  android.view.WindowInsets
 */
package android.support.v4.view;

import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.support.v4.view.ViewCompatHC;
import android.view.View;
import android.view.ViewParent;
import android.view.WindowInsets;

class ViewCompatLollipop {
    private static ThreadLocal<Rect> sThreadLocalRect;

    ViewCompatLollipop() {
    }

    public static Object dispatchApplyWindowInsets(View view, Object object) {
        WindowInsets windowInsets = (WindowInsets)object;
        if ((view = view.dispatchApplyWindowInsets(windowInsets)) != windowInsets) {
            object = new WindowInsets((WindowInsets)view);
        }
        return object;
    }

    public static boolean dispatchNestedFling(View view, float f2, float f3, boolean bl) {
        return view.dispatchNestedFling(f2, f3, bl);
    }

    public static boolean dispatchNestedPreFling(View view, float f2, float f3) {
        return view.dispatchNestedPreFling(f2, f3);
    }

    public static boolean dispatchNestedPreScroll(View view, int n2, int n3, int[] arrn, int[] arrn2) {
        return view.dispatchNestedPreScroll(n2, n3, arrn, arrn2);
    }

    public static boolean dispatchNestedScroll(View view, int n2, int n3, int n4, int n5, int[] arrn) {
        return view.dispatchNestedScroll(n2, n3, n4, n5, arrn);
    }

    static ColorStateList getBackgroundTintList(View view) {
        return view.getBackgroundTintList();
    }

    static PorterDuff.Mode getBackgroundTintMode(View view) {
        return view.getBackgroundTintMode();
    }

    public static float getElevation(View view) {
        return view.getElevation();
    }

    private static Rect getEmptyTempRect() {
        Rect rect;
        if (sThreadLocalRect == null) {
            sThreadLocalRect = new ThreadLocal();
        }
        Rect rect2 = rect = sThreadLocalRect.get();
        if (rect == null) {
            rect2 = new Rect();
            sThreadLocalRect.set(rect2);
        }
        rect2.setEmpty();
        return rect2;
    }

    public static String getTransitionName(View view) {
        return view.getTransitionName();
    }

    public static float getTranslationZ(View view) {
        return view.getTranslationZ();
    }

    public static float getZ(View view) {
        return view.getZ();
    }

    public static boolean hasNestedScrollingParent(View view) {
        return view.hasNestedScrollingParent();
    }

    public static boolean isImportantForAccessibility(View view) {
        return view.isImportantForAccessibility();
    }

    public static boolean isNestedScrollingEnabled(View view) {
        return view.isNestedScrollingEnabled();
    }

    /*
     * Enabled aggressive block sorting
     */
    static void offsetLeftAndRight(View view, int n2) {
        Rect rect = ViewCompatLollipop.getEmptyTempRect();
        boolean bl = false;
        ViewParent viewParent = view.getParent();
        if (viewParent instanceof View) {
            View view2 = (View)viewParent;
            rect.set(view2.getLeft(), view2.getTop(), view2.getRight(), view2.getBottom());
            bl = !rect.intersects(view.getLeft(), view.getTop(), view.getRight(), view.getBottom());
        }
        ViewCompatHC.offsetLeftAndRight(view, n2);
        if (bl && rect.intersect(view.getLeft(), view.getTop(), view.getRight(), view.getBottom())) {
            ((View)viewParent).invalidate(rect);
        }
    }

    /*
     * Enabled aggressive block sorting
     */
    static void offsetTopAndBottom(View view, int n2) {
        Rect rect = ViewCompatLollipop.getEmptyTempRect();
        boolean bl = false;
        ViewParent viewParent = view.getParent();
        if (viewParent instanceof View) {
            View view2 = (View)viewParent;
            rect.set(view2.getLeft(), view2.getTop(), view2.getRight(), view2.getBottom());
            bl = !rect.intersects(view.getLeft(), view.getTop(), view.getRight(), view.getBottom());
        }
        ViewCompatHC.offsetTopAndBottom(view, n2);
        if (bl && rect.intersect(view.getLeft(), view.getTop(), view.getRight(), view.getBottom())) {
            ((View)viewParent).invalidate(rect);
        }
    }

    public static Object onApplyWindowInsets(View view, Object object) {
        WindowInsets windowInsets = (WindowInsets)object;
        if ((view = view.onApplyWindowInsets(windowInsets)) != windowInsets) {
            object = new WindowInsets((WindowInsets)view);
        }
        return object;
    }

    public static void requestApplyInsets(View view) {
        view.requestApplyInsets();
    }

    /*
     * Enabled aggressive block sorting
     */
    static void setBackgroundTintList(View view, ColorStateList colorStateList) {
        view.setBackgroundTintList(colorStateList);
        if (Build.VERSION.SDK_INT == 21) {
            colorStateList = view.getBackground();
            boolean bl = view.getBackgroundTintList() != null && view.getBackgroundTintMode() != null;
            if (colorStateList == null) return;
            if (bl) {
                if (colorStateList.isStateful()) {
                    colorStateList.setState(view.getDrawableState());
                }
                view.setBackground((Drawable)colorStateList);
            }
        }
    }

    /*
     * Enabled aggressive block sorting
     */
    static void setBackgroundTintMode(View view, PorterDuff.Mode mode) {
        view.setBackgroundTintMode(mode);
        if (Build.VERSION.SDK_INT == 21) {
            mode = view.getBackground();
            boolean bl = view.getBackgroundTintList() != null && view.getBackgroundTintMode() != null;
            if (mode == null) return;
            if (bl) {
                if (mode.isStateful()) {
                    mode.setState(view.getDrawableState());
                }
                view.setBackground((Drawable)mode);
            }
        }
    }

    public static void setElevation(View view, float f2) {
        view.setElevation(f2);
    }

    public static void setNestedScrollingEnabled(View view, boolean bl) {
        view.setNestedScrollingEnabled(bl);
    }

    public static void setOnApplyWindowInsetsListener(View view, final OnApplyWindowInsetsListenerBridge onApplyWindowInsetsListenerBridge) {
        if (onApplyWindowInsetsListenerBridge == null) {
            view.setOnApplyWindowInsetsListener(null);
            return;
        }
        view.setOnApplyWindowInsetsListener(new View.OnApplyWindowInsetsListener(){

            public WindowInsets onApplyWindowInsets(View view, WindowInsets windowInsets) {
                return (WindowInsets)onApplyWindowInsetsListenerBridge.onApplyWindowInsets(view, (Object)windowInsets);
            }
        });
    }

    public static void setTransitionName(View view, String string2) {
        view.setTransitionName(string2);
    }

    public static void setTranslationZ(View view, float f2) {
        view.setTranslationZ(f2);
    }

    public static void setZ(View view, float f2) {
        view.setZ(f2);
    }

    public static boolean startNestedScroll(View view, int n2) {
        return view.startNestedScroll(n2);
    }

    public static void stopNestedScroll(View view) {
        view.stopNestedScroll();
    }

    public static interface OnApplyWindowInsetsListenerBridge {
        public Object onApplyWindowInsets(View var1, Object var2);
    }

}

