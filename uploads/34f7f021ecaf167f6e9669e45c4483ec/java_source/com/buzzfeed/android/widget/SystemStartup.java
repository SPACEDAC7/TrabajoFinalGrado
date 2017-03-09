/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.content.BroadcastReceiver
 *  android.content.Context
 *  android.content.Intent
 *  android.os.SystemClock
 */
package com.buzzfeed.android.widget;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.os.SystemClock;
import com.buzzfeed.android.widget.Widget4x2Stacked;
import com.buzzfeed.toolkit.util.LogUtil;

public class SystemStartup
extends BroadcastReceiver {
    private static final String TAG = SystemStartup.class.getSimpleName();

    public void onReceive(Context context, Intent intent) {
        String string2 = TAG + ".onReceive";
        if (intent.getAction() != null && intent.getAction().equals("android.intent.action.BOOT_COMPLETED")) {
            LogUtil.d(string2, "Received boot broadcast; starting alarm service");
            Widget4x2Stacked.setWidgetAlarm(context, SystemClock.elapsedRealtime() + 2000);
        }
    }
}

