/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.app.Fragment
 *  android.app.FragmentManager
 */
package android.support.v13.app;

import android.app.Fragment;
import android.app.FragmentManager;

class FragmentCompatICSMR1 {
    FragmentCompatICSMR1() {
    }

    public static void setUserVisibleHint(Fragment fragment, boolean bl) {
        if (fragment.getFragmentManager() != null) {
            fragment.setUserVisibleHint(bl);
        }
    }
}

