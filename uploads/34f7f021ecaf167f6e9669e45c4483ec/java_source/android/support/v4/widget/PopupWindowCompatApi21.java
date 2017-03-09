/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.util.Log
 *  android.widget.PopupWindow
 */
package android.support.v4.widget;

import android.util.Log;
import android.widget.PopupWindow;
import java.lang.reflect.Field;

class PopupWindowCompatApi21 {
    private static final String TAG = "PopupWindowCompatApi21";
    private static Field sOverlapAnchorField;

    static {
        try {
            sOverlapAnchorField = PopupWindow.class.getDeclaredField("mOverlapAnchor");
            sOverlapAnchorField.setAccessible(true);
        }
        catch (NoSuchFieldException var0) {
            Log.i((String)"PopupWindowCompatApi21", (String)"Could not fetch mOverlapAnchor field from PopupWindow", (Throwable)var0);
        }
    }

    PopupWindowCompatApi21() {
    }

    static boolean getOverlapAnchor(PopupWindow popupWindow) {
        if (sOverlapAnchorField != null) {
            try {
                boolean bl = (Boolean)sOverlapAnchorField.get((Object)popupWindow);
                return bl;
            }
            catch (IllegalAccessException var0_1) {
                Log.i((String)"PopupWindowCompatApi21", (String)"Could not get overlap anchor field in PopupWindow", (Throwable)var0_1);
            }
        }
        return false;
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    static void setOverlapAnchor(PopupWindow popupWindow, boolean bl) {
        if (sOverlapAnchorField == null) return;
        try {
            sOverlapAnchorField.set((Object)popupWindow, bl);
            return;
        }
        catch (IllegalAccessException var0_1) {
            Log.i((String)"PopupWindowCompatApi21", (String)"Could not set overlap anchor field in PopupWindow", (Throwable)var0_1);
            return;
        }
    }
}

