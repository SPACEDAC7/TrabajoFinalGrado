/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.content.BroadcastReceiver
 *  android.content.Context
 *  android.content.Intent
 */
package com.buzzfeed.android.util;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.adjust.sdk.AdjustReferrerReceiver;
import com.google.android.gms.analytics.CampaignTrackingReceiver;

public class BFInstallReceiver
extends BroadcastReceiver {
    public void onReceive(Context context, Intent intent) {
        new AdjustReferrerReceiver().onReceive(context, intent);
        new CampaignTrackingReceiver().onReceive(context, intent);
    }
}

