/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.os.Build
 *  android.os.Build$VERSION
 *  android.os.Bundle
 *  android.os.IBinder
 */
package android.support.v4.app;

import android.os.Build;
import android.os.Bundle;
import android.os.IBinder;
import android.support.v4.app.BundleCompatGingerbread;
import android.support.v4.app.BundleCompatJellybeanMR2;

public final class BundleCompat {
    private BundleCompat() {
    }

    public static IBinder getBinder(Bundle bundle, String string2) {
        if (Build.VERSION.SDK_INT >= 18) {
            return BundleCompatJellybeanMR2.getBinder(bundle, string2);
        }
        return BundleCompatGingerbread.getBinder(bundle, string2);
    }

    public static void putBinder(Bundle bundle, String string2, IBinder iBinder) {
        if (Build.VERSION.SDK_INT >= 18) {
            BundleCompatJellybeanMR2.putBinder(bundle, string2, iBinder);
            return;
        }
        BundleCompatGingerbread.putBinder(bundle, string2, iBinder);
    }
}

