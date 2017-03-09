/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.os.Build
 *  android.os.Build$VERSION
 */
package jackpal.androidterm.emulatorview.compat;

import android.os.Build;
import jackpal.androidterm.emulatorview.compat.AndroidLevel4PlusCompat;

public class AndroidCompat {
    public static final int SDK = AndroidCompat.getSDK();

    private static final int getSDK() {
        try {
            int n = AndroidLevel4PlusCompat.getSDKInt();
            return n;
        }
        catch (VerifyError var0_2) {
            try {
                int n = Integer.valueOf(Build.VERSION.SDK);
                return n;
            }
            catch (NumberFormatException var0_3) {
                return 1;
            }
        }
    }
}

