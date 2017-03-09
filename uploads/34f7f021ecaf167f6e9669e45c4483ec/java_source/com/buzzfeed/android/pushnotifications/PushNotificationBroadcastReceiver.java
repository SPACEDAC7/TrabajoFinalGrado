/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.content.BroadcastReceiver
 *  android.content.Context
 *  android.content.Intent
 *  com.urbanairship.push.notifications.NotificationFactory
 */
package com.buzzfeed.android.pushnotifications;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.buzzfeed.analytics.client.DustbusterClient;
import com.buzzfeed.android.pushnotifications.PushNotificationFactory;
import com.urbanairship.UAirship;
import com.urbanairship.push.PushManager;
import com.urbanairship.push.notifications.NotificationFactory;

public class PushNotificationBroadcastReceiver
extends BroadcastReceiver {
    private static final String ACTION_DISMISS = "dismiss";
    private static final String KEY_BUZZ_URI = "buzz_uri";
    private static final String KEY_MESSAGE = "message";
    private static final String KEY_SHOW_ID = "show_id";

    public static Intent getDismissIntent(Context context, String string2, String string3) {
        return PushNotificationBroadcastReceiver.getDismissIntent(context, string2, string3, null);
    }

    public static Intent getDismissIntent(Context context, String string2, String string3, String string4) {
        context = new Intent(context, (Class)PushNotificationBroadcastReceiver.class);
        context.setAction("dismiss");
        context.putExtra("buzz_uri", string3);
        context.putExtra("message", string2);
        context.putExtra("show_id", string4);
        return context;
    }

    /*
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    public void onReceive(Context context, Intent intent) {
        if (intent == null) {
            return;
        }
        if (intent.getAction() == null) return;
        if (!intent.getAction().equals("dismiss")) return;
        DustbusterClient.getInstance().trackNotificationDismissed(intent.getStringExtra("message"), intent.getStringExtra("buzz_uri"));
        if (!intent.hasExtra("show_id")) return;
        ((PushNotificationFactory)UAirship.shared().getPushManager().getNotificationFactory()).handleNotificationDismissed(intent.getStringExtra("show_id"));
    }
}

