/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.content.Context
 *  android.os.Build
 *  android.os.Build$VERSION
 */
package android.support.v4.app;

import android.content.Context;
import android.os.Build;
import android.support.annotation.NonNull;
import android.support.v4.app.AppOpsManagerCompat23;

public final class AppOpsManagerCompat {
    private static final AppOpsManagerImpl IMPL = Build.VERSION.SDK_INT >= 23 ? new AppOpsManager23() : new AppOpsManagerImpl();
    public static final int MODE_ALLOWED = 0;
    public static final int MODE_DEFAULT = 3;
    public static final int MODE_IGNORED = 1;

    private AppOpsManagerCompat() {
    }

    public static int noteOp(@NonNull Context context, @NonNull String string2, int n2, @NonNull String string3) {
        return IMPL.noteOp(context, string2, n2, string3);
    }

    public static int noteProxyOp(@NonNull Context context, @NonNull String string2, @NonNull String string3) {
        return IMPL.noteProxyOp(context, string2, string3);
    }

    public static String permissionToOp(@NonNull String string2) {
        return IMPL.permissionToOp(string2);
    }

    private static class AppOpsManager23
    extends AppOpsManagerImpl {
        AppOpsManager23() {
        }

        @Override
        public int noteOp(Context context, String string2, int n2, String string3) {
            return AppOpsManagerCompat23.noteOp(context, string2, n2, string3);
        }

        @Override
        public int noteProxyOp(Context context, String string2, String string3) {
            return AppOpsManagerCompat23.noteProxyOp(context, string2, string3);
        }

        @Override
        public String permissionToOp(String string2) {
            return AppOpsManagerCompat23.permissionToOp(string2);
        }
    }

    private static class AppOpsManagerImpl {
        AppOpsManagerImpl() {
        }

        public int noteOp(Context context, String string2, int n2, String string3) {
            return 1;
        }

        public int noteProxyOp(Context context, String string2, String string3) {
            return 1;
        }

        public String permissionToOp(String string2) {
            return null;
        }
    }

}

