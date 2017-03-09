/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.graphics.Rect
 *  android.os.Build
 *  android.os.Build$VERSION
 *  android.util.Log
 *  android.view.View
 */
package android.support.v7.widget;

import android.graphics.Rect;
import android.os.Build;
import android.support.annotation.RestrictTo;
import android.support.v4.view.ViewCompat;
import android.util.Log;
import android.view.View;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

@RestrictTo(value={RestrictTo.Scope.GROUP_ID})
public class ViewUtils {
    private static final String TAG = "ViewUtils";
    private static Method sComputeFitSystemWindowsMethod;

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    static {
        if (Build.VERSION.SDK_INT < 18) return;
        try {
            sComputeFitSystemWindowsMethod = View.class.getDeclaredMethod("computeFitSystemWindows", Rect.class, Rect.class);
            if (sComputeFitSystemWindowsMethod.isAccessible()) return;
            sComputeFitSystemWindowsMethod.setAccessible(true);
            return;
        }
        catch (NoSuchMethodException var0) {
            Log.d((String)"ViewUtils", (String)"Could not find method computeFitSystemWindows. Oh well.");
            return;
        }
    }

    private ViewUtils() {
    }

    public static int combineMeasuredStates(int n2, int n3) {
        return n2 | n3;
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    public static void computeFitSystemWindows(View view, Rect rect, Rect rect2) {
        if (sComputeFitSystemWindowsMethod == null) return;
        try {
            sComputeFitSystemWindowsMethod.invoke((Object)view, new Object[]{rect, rect2});
            return;
        }
        catch (Exception var0_1) {
            Log.d((String)"ViewUtils", (String)"Could not invoke computeFitSystemWindows", (Throwable)var0_1);
            return;
        }
    }

    public static boolean isLayoutRtl(View view) {
        if (ViewCompat.getLayoutDirection(view) == 1) {
            return true;
        }
        return false;
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    public static void makeOptionalFitsSystemWindows(View view) {
        if (Build.VERSION.SDK_INT < 16) return;
        try {
            Method method = view.getClass().getMethod("makeOptionalFitsSystemWindows", new Class[0]);
            if (!method.isAccessible()) {
                method.setAccessible(true);
            }
            method.invoke((Object)view, new Object[0]);
            return;
        }
        catch (NoSuchMethodException var0_1) {
            Log.d((String)"ViewUtils", (String)"Could not find method makeOptionalFitsSystemWindows. Oh well...");
            return;
        }
        catch (InvocationTargetException var0_2) {
            Log.d((String)"ViewUtils", (String)"Could not invoke makeOptionalFitsSystemWindows", (Throwable)var0_2);
            return;
        }
        catch (IllegalAccessException var0_3) {
            Log.d((String)"ViewUtils", (String)"Could not invoke makeOptionalFitsSystemWindows", (Throwable)var0_3);
            return;
        }
    }
}

