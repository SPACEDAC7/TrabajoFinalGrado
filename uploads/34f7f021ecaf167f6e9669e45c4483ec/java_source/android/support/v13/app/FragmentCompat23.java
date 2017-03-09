/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.app.Fragment
 */
package android.support.v13.app;

import android.app.Fragment;

class FragmentCompat23 {
    FragmentCompat23() {
    }

    public static void requestPermissions(Fragment fragment, String[] arrstring, int n2) {
        fragment.requestPermissions(arrstring, n2);
    }

    public static boolean shouldShowRequestPermissionRationale(Fragment fragment, String string2) {
        return fragment.shouldShowRequestPermissionRationale(string2);
    }
}

