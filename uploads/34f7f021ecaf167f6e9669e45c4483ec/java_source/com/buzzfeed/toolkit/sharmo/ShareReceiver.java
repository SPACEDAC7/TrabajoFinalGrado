/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.content.BroadcastReceiver
 *  android.content.ComponentName
 *  android.content.Context
 *  android.content.Intent
 *  android.os.Bundle
 */
package com.buzzfeed.toolkit.sharmo;

import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import com.buzzfeed.toolkit.sharmo.ShareManager;

public class ShareReceiver
extends BroadcastReceiver {
    public void onReceive(Context context, Intent intent) {
        context = intent.getExtras();
        if (context == null) {
            ShareManager.sendShareApp(null);
            return;
        }
        if ((context = (ComponentName)context.get("android.intent.extra.CHOSEN_COMPONENT")) == null) {
            ShareManager.sendShareApp(null);
            return;
        }
        ShareManager.sendShareApp(context.getClassName());
    }
}

