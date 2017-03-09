/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.os.Build
 *  android.os.Build$VERSION
 */
package jackpal.androidterm.compat;

import android.os.Build;

class AndroidLevel4PlusCompat {
    AndroidLevel4PlusCompat() {
    }

    static int getSDKInt() {
        return Build.VERSION.SDK_INT;
    }
}

