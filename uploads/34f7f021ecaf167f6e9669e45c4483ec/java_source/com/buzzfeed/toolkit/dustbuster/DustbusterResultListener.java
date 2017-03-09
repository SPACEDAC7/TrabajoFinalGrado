/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.content.BroadcastReceiver
 *  android.content.Context
 *  android.content.Intent
 *  android.content.IntentFilter
 */
package com.buzzfeed.toolkit.dustbuster;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import java.util.ArrayList;
import java.util.List;

public class DustbusterResultListener
extends BroadcastReceiver {
    private DustbusterResultCallback mCallback;
    private boolean mIsRegistered;

    public DustbusterResultListener() {
    }

    public DustbusterResultListener(DustbusterResultCallback dustbusterResultCallback) {
        this.mCallback = dustbusterResultCallback;
    }

    private static IntentFilter getIntentFilter() {
        return new IntentFilter("com.buzzfeed.dustbuster.result");
    }

    /*
     * Enabled aggressive block sorting
     */
    public void onReceive(Context context, Intent intent) {
        if (intent == null || intent.getAction() == null || this.mCallback == null || !intent.getAction().equals("com.buzzfeed.dustbuster.result")) {
            return;
        }
        this.mCallback.onEventsProcessed(intent.getBooleanExtra("is_success", false), intent.getStringExtra("response_message"), intent.getStringArrayListExtra("keys_sent"));
    }

    public void register(Context context) {
        if (this.mIsRegistered) {
            return;
        }
        context.registerReceiver((BroadcastReceiver)this, DustbusterResultListener.getIntentFilter());
        this.mIsRegistered = true;
    }

    public void unregister(Context context) {
        if (!this.mIsRegistered) {
            return;
        }
        context.unregisterReceiver((BroadcastReceiver)this);
        this.mIsRegistered = false;
    }

    public static interface DustbusterResultCallback {
        public void onEventsProcessed(boolean var1, String var2, List<String> var3);
    }

}

