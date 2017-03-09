/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.content.BroadcastReceiver
 *  android.content.Context
 *  android.content.Intent
 *  android.content.IntentFilter
 *  android.os.Parcelable
 */
package com.facebook;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Parcelable;
import android.support.v4.content.LocalBroadcastManager;
import com.facebook.AccessToken;
import com.facebook.FacebookSdk;
import com.facebook.internal.Validate;

public abstract class AccessTokenTracker {
    private final LocalBroadcastManager broadcastManager;
    private boolean isTracking = false;
    private final BroadcastReceiver receiver;

    public AccessTokenTracker() {
        Validate.sdkInitialized();
        this.receiver = new CurrentAccessTokenBroadcastReceiver();
        this.broadcastManager = LocalBroadcastManager.getInstance(FacebookSdk.getApplicationContext());
        this.startTracking();
    }

    private void addBroadcastReceiver() {
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("com.facebook.sdk.ACTION_CURRENT_ACCESS_TOKEN_CHANGED");
        this.broadcastManager.registerReceiver(this.receiver, intentFilter);
    }

    public boolean isTracking() {
        return this.isTracking;
    }

    protected abstract void onCurrentAccessTokenChanged(AccessToken var1, AccessToken var2);

    public void startTracking() {
        if (this.isTracking) {
            return;
        }
        this.addBroadcastReceiver();
        this.isTracking = true;
    }

    public void stopTracking() {
        if (!this.isTracking) {
            return;
        }
        this.broadcastManager.unregisterReceiver(this.receiver);
        this.isTracking = false;
    }

    private class CurrentAccessTokenBroadcastReceiver
    extends BroadcastReceiver {
        private CurrentAccessTokenBroadcastReceiver() {
        }

        public void onReceive(Context object, Intent object2) {
            if ("com.facebook.sdk.ACTION_CURRENT_ACCESS_TOKEN_CHANGED".equals(object2.getAction())) {
                object = (AccessToken)object2.getParcelableExtra("com.facebook.sdk.EXTRA_OLD_ACCESS_TOKEN");
                object2 = (AccessToken)object2.getParcelableExtra("com.facebook.sdk.EXTRA_NEW_ACCESS_TOKEN");
                AccessTokenTracker.this.onCurrentAccessTokenChanged((AccessToken)object, (AccessToken)object2);
            }
        }
    }

}

