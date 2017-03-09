/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.content.Context
 */
package com.bumptech.glide.manager;

import android.content.Context;
import com.bumptech.glide.manager.ConnectivityMonitor;
import com.bumptech.glide.manager.DefaultConnectivityMonitor;
import com.bumptech.glide.manager.NullConnectivityMonitor;

public class ConnectivityMonitorFactory {
    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    public ConnectivityMonitor build(Context context, ConnectivityMonitor.ConnectivityListener connectivityListener) {
        if (context.checkCallingOrSelfPermission("android.permission.ACCESS_NETWORK_STATE") != 0) return new NullConnectivityMonitor();
        return new DefaultConnectivityMonitor(context, connectivityListener);
    }
}

