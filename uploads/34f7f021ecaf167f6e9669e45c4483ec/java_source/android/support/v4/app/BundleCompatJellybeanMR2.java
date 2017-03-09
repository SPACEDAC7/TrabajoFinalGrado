/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.os.Bundle
 *  android.os.IBinder
 */
package android.support.v4.app;

import android.os.Bundle;
import android.os.IBinder;

class BundleCompatJellybeanMR2 {
    BundleCompatJellybeanMR2() {
    }

    public static IBinder getBinder(Bundle bundle, String string2) {
        return bundle.getBinder(string2);
    }

    public static void putBinder(Bundle bundle, String string2, IBinder iBinder) {
        bundle.putBinder(string2, iBinder);
    }
}

