/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.net.ConnectivityManager
 */
package android.support.v4.net;

import android.net.ConnectivityManager;

class ConnectivityManagerCompatJellyBean {
    ConnectivityManagerCompatJellyBean() {
    }

    public static boolean isActiveNetworkMetered(ConnectivityManager connectivityManager) {
        return connectivityManager.isActiveNetworkMetered();
    }
}

