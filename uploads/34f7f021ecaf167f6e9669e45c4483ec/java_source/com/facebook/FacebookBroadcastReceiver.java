/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.content.BroadcastReceiver
 *  android.content.Context
 *  android.content.Intent
 *  android.os.Bundle
 */
package com.facebook;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import com.facebook.internal.NativeProtocol;

public class FacebookBroadcastReceiver
extends BroadcastReceiver {
    protected void onFailedAppCall(String string2, String string3, Bundle bundle) {
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    public void onReceive(Context object, Intent intent) {
        object = intent.getStringExtra("com.facebook.platform.protocol.CALL_ID");
        String string2 = intent.getStringExtra("com.facebook.platform.protocol.PROTOCOL_ACTION");
        if (object == null || string2 == null) return;
        Bundle bundle = intent.getExtras();
        if (NativeProtocol.isErrorResult(intent)) {
            this.onFailedAppCall((String)object, string2, bundle);
            return;
        }
        this.onSuccessfulAppCall((String)object, string2, bundle);
    }

    protected void onSuccessfulAppCall(String string2, String string3, Bundle bundle) {
    }
}

