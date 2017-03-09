/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.content.Context
 *  android.content.pm.PackageManager
 *  android.os.Binder
 *  android.os.Process
 */
package android.support.v4.content;

import android.content.Context;
import android.content.pm.PackageManager;
import android.os.Binder;
import android.os.Process;
import android.support.annotation.NonNull;
import android.support.v4.app.AppOpsManagerCompat;
import java.lang.annotation.Annotation;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

public final class PermissionChecker {
    public static final int PERMISSION_DENIED = -1;
    public static final int PERMISSION_DENIED_APP_OP = -2;
    public static final int PERMISSION_GRANTED = 0;

    private PermissionChecker() {
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    public static int checkCallingOrSelfPermission(@NonNull Context context, @NonNull String string2) {
        String string3;
        if (Binder.getCallingPid() == Process.myPid()) {
            string3 = context.getPackageName();
            do {
                return PermissionChecker.checkPermission(context, string2, Binder.getCallingPid(), Binder.getCallingUid(), string3);
                break;
            } while (true);
        }
        string3 = null;
        return PermissionChecker.checkPermission(context, string2, Binder.getCallingPid(), Binder.getCallingUid(), string3);
    }

    public static int checkCallingPermission(@NonNull Context context, @NonNull String string2, String string3) {
        if (Binder.getCallingPid() == Process.myPid()) {
            return -1;
        }
        return PermissionChecker.checkPermission(context, string2, Binder.getCallingPid(), Binder.getCallingUid(), string3);
    }

    /*
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    public static int checkPermission(@NonNull Context context, @NonNull String arrstring, int n2, int n3, String string2) {
        if (context.checkPermission((String)arrstring, n2, n3) == -1) {
            return -1;
        }
        String string3 = AppOpsManagerCompat.permissionToOp((String)arrstring);
        if (string3 == null) {
            return 0;
        }
        arrstring = string2;
        if (string2 == null) {
            arrstring = context.getPackageManager().getPackagesForUid(n3);
            if (arrstring == null) return -1;
            if (arrstring.length <= 0) return -1;
            arrstring = arrstring[0];
        }
        if (AppOpsManagerCompat.noteProxyOp(context, string3, (String)arrstring) == 0) return 0;
        return -2;
    }

    public static int checkSelfPermission(@NonNull Context context, @NonNull String string2) {
        return PermissionChecker.checkPermission(context, string2, Process.myPid(), Process.myUid(), context.getPackageName());
    }

    @Retention(value=RetentionPolicy.SOURCE)
    public static @interface PermissionResult {
    }

}

