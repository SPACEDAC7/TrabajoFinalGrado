/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.app.AppOpsManager
 *  android.content.Context
 */
package android.support.v4.app;

import android.app.AppOpsManager;
import android.content.Context;

class AppOpsManagerCompat23 {
    AppOpsManagerCompat23() {
    }

    public static int noteOp(Context context, String string2, int n2, String string3) {
        return ((AppOpsManager)context.getSystemService((Class)AppOpsManager.class)).noteOp(string2, n2, string3);
    }

    public static int noteProxyOp(Context context, String string2, String string3) {
        return ((AppOpsManager)context.getSystemService((Class)AppOpsManager.class)).noteProxyOp(string2, string3);
    }

    public static String permissionToOp(String string2) {
        return AppOpsManager.permissionToOp((String)string2);
    }
}

