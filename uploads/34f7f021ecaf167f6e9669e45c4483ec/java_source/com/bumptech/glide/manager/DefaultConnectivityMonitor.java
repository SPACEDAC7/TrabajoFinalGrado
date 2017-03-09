/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.content.BroadcastReceiver
 *  android.content.Context
 *  android.content.Intent
 *  android.content.IntentFilter
 *  android.net.ConnectivityManager
 *  android.net.NetworkInfo
 */
package com.bumptech.glide.manager;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import com.bumptech.glide.manager.ConnectivityMonitor;

class DefaultConnectivityMonitor
implements ConnectivityMonitor {
    private final BroadcastReceiver connectivityReceiver;
    private final Context context;
    private boolean isConnected;
    private boolean isRegistered;
    private final ConnectivityMonitor.ConnectivityListener listener;

    public DefaultConnectivityMonitor(Context context, ConnectivityMonitor.ConnectivityListener connectivityListener) {
        this.connectivityReceiver = new BroadcastReceiver(){

            public void onReceive(Context context, Intent intent) {
                boolean bl = DefaultConnectivityMonitor.this.isConnected;
                DefaultConnectivityMonitor.this.isConnected = DefaultConnectivityMonitor.this.isConnected(context);
                if (bl != DefaultConnectivityMonitor.this.isConnected) {
                    DefaultConnectivityMonitor.this.listener.onConnectivityChanged(DefaultConnectivityMonitor.this.isConnected);
                }
            }
        };
        this.context = context.getApplicationContext();
        this.listener = connectivityListener;
    }

    private boolean isConnected(Context context) {
        if ((context = ((ConnectivityManager)context.getSystemService("connectivity")).getActiveNetworkInfo()) != null && context.isConnected()) {
            return true;
        }
        return false;
    }

    private void register() {
        if (this.isRegistered) {
            return;
        }
        this.isConnected = this.isConnected(this.context);
        this.context.registerReceiver(this.connectivityReceiver, new IntentFilter("android.net.conn.CONNECTIVITY_CHANGE"));
        this.isRegistered = true;
    }

    private void unregister() {
        if (!this.isRegistered) {
            return;
        }
        this.context.unregisterReceiver(this.connectivityReceiver);
        this.isRegistered = false;
    }

    @Override
    public void onDestroy() {
    }

    @Override
    public void onStart() {
        this.register();
    }

    @Override
    public void onStop() {
        this.unregister();
    }

}

