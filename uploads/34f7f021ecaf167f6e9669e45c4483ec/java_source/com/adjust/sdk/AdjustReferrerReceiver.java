/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.content.BroadcastReceiver
 *  android.content.Context
 *  android.content.Intent
 */
package com.adjust.sdk;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.adjust.sdk.Adjust;
import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;

public class AdjustReferrerReceiver
extends BroadcastReceiver {
    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    public void onReceive(Context object, Intent intent) {
        object = intent.getStringExtra("referrer");
        if (object == null) {
            return;
        }
        try {
            object = URLDecoder.decode((String)object, "UTF-8");
        }
        catch (UnsupportedEncodingException var1_2) {
            object = "malformed";
        }
        Adjust.getDefaultInstance().sendReferrer((String)object);
    }
}

