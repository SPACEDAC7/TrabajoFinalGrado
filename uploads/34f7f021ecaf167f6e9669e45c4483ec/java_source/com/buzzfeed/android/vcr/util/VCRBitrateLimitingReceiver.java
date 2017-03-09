/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.content.BroadcastReceiver
 *  android.content.Context
 *  android.content.Intent
 *  android.content.IntentFilter
 */
package com.buzzfeed.android.vcr.util;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.support.annotation.NonNull;
import com.buzzfeed.android.vcr.VCRConfig;
import com.buzzfeed.toolkit.util.EZUtil;

public final class VCRBitrateLimitingReceiver {
    private final Context mContext;
    private final BroadcastReceiver mReceiver;

    public VCRBitrateLimitingReceiver(@NonNull Context context) {
        this.mContext = EZUtil.checkNotNull(context, "Context must not be null.");
        this.mReceiver = new ConnectivityReceiver();
    }

    public void register() {
        this.mContext.registerReceiver(this.mReceiver, new IntentFilter("android.net.conn.CONNECTIVITY_CHANGE"));
    }

    public void unregister() {
        this.mContext.unregisterReceiver(this.mReceiver);
    }

    private final class ConnectivityReceiver
    extends BroadcastReceiver {
        private ConnectivityReceiver() {
        }

        public void onReceive(Context context, Intent intent) {
            VCRConfig.getInstance().setAdaptiveBitrateLimitForConnection(context);
        }
    }

}

