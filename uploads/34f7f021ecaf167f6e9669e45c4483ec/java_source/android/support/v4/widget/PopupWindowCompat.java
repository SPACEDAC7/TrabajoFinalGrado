/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.os.Build
 *  android.os.Build$VERSION
 *  android.view.View
 *  android.widget.PopupWindow
 */
package android.support.v4.widget;

import android.os.Build;
import android.support.v4.view.GravityCompat;
import android.support.v4.view.ViewCompat;
import android.support.v4.widget.PopupWindowCompatApi21;
import android.support.v4.widget.PopupWindowCompatApi23;
import android.support.v4.widget.PopupWindowCompatKitKat;
import android.view.View;
import android.widget.PopupWindow;
import java.lang.reflect.Method;

public final class PopupWindowCompat {
    static final PopupWindowImpl IMPL;

    static {
        int n2 = Build.VERSION.SDK_INT;
        IMPL = n2 >= 23 ? new Api23PopupWindowImpl() : (n2 >= 21 ? new Api21PopupWindowImpl() : (n2 >= 19 ? new KitKatPopupWindowImpl() : new BasePopupWindowImpl()));
    }

    private PopupWindowCompat() {
    }

    public static boolean getOverlapAnchor(PopupWindow popupWindow) {
        return IMPL.getOverlapAnchor(popupWindow);
    }

    public static int getWindowLayoutType(PopupWindow popupWindow) {
        return IMPL.getWindowLayoutType(popupWindow);
    }

    public static void setOverlapAnchor(PopupWindow popupWindow, boolean bl) {
        IMPL.setOverlapAnchor(popupWindow, bl);
    }

    public static void setWindowLayoutType(PopupWindow popupWindow, int n2) {
        IMPL.setWindowLayoutType(popupWindow, n2);
    }

    public static void showAsDropDown(PopupWindow popupWindow, View view, int n2, int n3, int n4) {
        IMPL.showAsDropDown(popupWindow, view, n2, n3, n4);
    }

    static class Api21PopupWindowImpl
    extends KitKatPopupWindowImpl {
        Api21PopupWindowImpl() {
        }

        @Override
        public boolean getOverlapAnchor(PopupWindow popupWindow) {
            return PopupWindowCompatApi21.getOverlapAnchor(popupWindow);
        }

        @Override
        public void setOverlapAnchor(PopupWindow popupWindow, boolean bl) {
            PopupWindowCompatApi21.setOverlapAnchor(popupWindow, bl);
        }
    }

    static class Api23PopupWindowImpl
    extends Api21PopupWindowImpl {
        Api23PopupWindowImpl() {
        }

        @Override
        public boolean getOverlapAnchor(PopupWindow popupWindow) {
            return PopupWindowCompatApi23.getOverlapAnchor(popupWindow);
        }

        @Override
        public int getWindowLayoutType(PopupWindow popupWindow) {
            return PopupWindowCompatApi23.getWindowLayoutType(popupWindow);
        }

        @Override
        public void setOverlapAnchor(PopupWindow popupWindow, boolean bl) {
            PopupWindowCompatApi23.setOverlapAnchor(popupWindow, bl);
        }

        @Override
        public void setWindowLayoutType(PopupWindow popupWindow, int n2) {
            PopupWindowCompatApi23.setWindowLayoutType(popupWindow, n2);
        }
    }

    static class BasePopupWindowImpl
    implements PopupWindowImpl {
        private static Method sGetWindowLayoutTypeMethod;
        private static boolean sGetWindowLayoutTypeMethodAttempted;
        private static Method sSetWindowLayoutTypeMethod;
        private static boolean sSetWindowLayoutTypeMethodAttempted;

        BasePopupWindowImpl() {
        }

        @Override
        public boolean getOverlapAnchor(PopupWindow popupWindow) {
            return false;
        }

        /*
         * Enabled aggressive block sorting
         * Enabled unnecessary exception pruning
         * Enabled aggressive exception aggregation
         */
        @Override
        public int getWindowLayoutType(PopupWindow popupWindow) {
            if (!sGetWindowLayoutTypeMethodAttempted) {
                try {
                    sGetWindowLayoutTypeMethod = PopupWindow.class.getDeclaredMethod("getWindowLayoutType", new Class[0]);
                    sGetWindowLayoutTypeMethod.setAccessible(true);
                }
                catch (Exception var2_4) {}
                sGetWindowLayoutTypeMethodAttempted = true;
            }
            if (sGetWindowLayoutTypeMethod == null) return 0;
            try {
                return (Integer)sGetWindowLayoutTypeMethod.invoke((Object)popupWindow, new Object[0]);
            }
            catch (Exception var1_2) {
                // empty catch block
            }
            return 0;
        }

        @Override
        public void setOverlapAnchor(PopupWindow popupWindow, boolean bl) {
        }

        /*
         * Enabled aggressive block sorting
         * Enabled unnecessary exception pruning
         * Enabled aggressive exception aggregation
         * Lifted jumps to return sites
         */
        @Override
        public void setWindowLayoutType(PopupWindow popupWindow, int n2) {
            if (!sSetWindowLayoutTypeMethodAttempted) {
                try {
                    sSetWindowLayoutTypeMethod = PopupWindow.class.getDeclaredMethod("setWindowLayoutType", Integer.TYPE);
                    sSetWindowLayoutTypeMethod.setAccessible(true);
                }
                catch (Exception var3_4) {}
                sSetWindowLayoutTypeMethodAttempted = true;
            }
            if (sSetWindowLayoutTypeMethod == null) return;
            try {
                sSetWindowLayoutTypeMethod.invoke((Object)popupWindow, n2);
                return;
            }
            catch (Exception var1_2) {
                return;
            }
        }

        @Override
        public void showAsDropDown(PopupWindow popupWindow, View view, int n2, int n3, int n4) {
            int n5 = n2;
            if ((GravityCompat.getAbsoluteGravity(n4, ViewCompat.getLayoutDirection(view)) & 7) == 5) {
                n5 = n2 - (popupWindow.getWidth() - view.getWidth());
            }
            popupWindow.showAsDropDown(view, n5, n3);
        }
    }

    static class KitKatPopupWindowImpl
    extends BasePopupWindowImpl {
        KitKatPopupWindowImpl() {
        }

        @Override
        public void showAsDropDown(PopupWindow popupWindow, View view, int n2, int n3, int n4) {
            PopupWindowCompatKitKat.showAsDropDown(popupWindow, view, n2, n3, n4);
        }
    }

    static interface PopupWindowImpl {
        public boolean getOverlapAnchor(PopupWindow var1);

        public int getWindowLayoutType(PopupWindow var1);

        public void setOverlapAnchor(PopupWindow var1, boolean var2);

        public void setWindowLayoutType(PopupWindow var1, int var2);

        public void showAsDropDown(PopupWindow var1, View var2, int var3, int var4, int var5);
    }

}

