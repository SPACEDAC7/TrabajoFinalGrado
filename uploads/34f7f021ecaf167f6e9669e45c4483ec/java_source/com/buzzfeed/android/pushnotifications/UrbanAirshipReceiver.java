/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.content.Context
 *  android.content.Intent
 *  android.util.Log
 *  com.urbanairship.AirshipReceiver
 *  com.urbanairship.AirshipReceiver$ActionButtonInfo
 *  com.urbanairship.AirshipReceiver$NotificationInfo
 *  com.urbanairship.push.PushMessage
 */
package com.buzzfeed.android.pushnotifications;

import android.content.Context;
import android.content.Intent;
import android.support.annotation.NonNull;
import android.util.Log;
import com.buzzfeed.android.pushnotifications.PushNotificationUtil;
import com.urbanairship.AirshipReceiver;
import com.urbanairship.push.PushMessage;

public class UrbanAirshipReceiver
extends AirshipReceiver {
    private static final String TAG = "UrbanAirshipReceiver";

    protected void onChannelCreated(@NonNull Context context, @NonNull String string2) {
        super.onChannelCreated(context, string2);
        Log.i((String)"UrbanAirshipReceiver", (String)("onChannelCreated, channelId: " + string2));
    }

    protected void onChannelRegistrationFailed(Context context) {
        Log.i((String)"UrbanAirshipReceiver", (String)"Channel registration failed.");
    }

    protected void onChannelUpdated(@NonNull Context context, @NonNull String string2) {
        super.onChannelUpdated(context, string2);
        Log.i((String)"UrbanAirshipReceiver", (String)("onChannelUpdated , channelId: " + string2));
    }

    protected void onNotificationDismissed(@NonNull Context context, @NonNull AirshipReceiver.NotificationInfo notificationInfo) {
        Log.i((String)"UrbanAirshipReceiver", (String)("Notification dismissed. Alert: " + notificationInfo.getMessage().getAlert() + ". Notification ID: " + notificationInfo.getNotificationId()));
    }

    protected boolean onNotificationOpened(@NonNull Context context, @NonNull AirshipReceiver.NotificationInfo notificationInfo) {
        Log.i((String)"UrbanAirshipReceiver", (String)("Notification opened. Alert: " + notificationInfo.getMessage().getAlert() + ". NotificationId: " + notificationInfo.getNotificationId()));
        return false;
    }

    protected boolean onNotificationOpened(@NonNull Context context, @NonNull AirshipReceiver.NotificationInfo notificationInfo, @NonNull AirshipReceiver.ActionButtonInfo actionButtonInfo) {
        Log.i((String)"UrbanAirshipReceiver", (String)("Notification action button opened. Button ID: " + actionButtonInfo.getButtonId() + ". NotificationId: " + notificationInfo.getNotificationId()));
        return false;
    }

    protected void onNotificationPosted(@NonNull Context context, @NonNull AirshipReceiver.NotificationInfo notificationInfo) {
        Log.i((String)"UrbanAirshipReceiver", (String)("Notification posted. Alert: " + notificationInfo.getMessage().getAlert() + ". NotificationId: " + notificationInfo.getNotificationId()));
    }

    protected void onPushReceived(@NonNull Context context, @NonNull PushMessage pushMessage, boolean bl) {
        Log.i((String)"UrbanAirshipReceiver", (String)("Received push message. Alert: " + pushMessage.getAlert() + ". posted notification: " + bl));
        PushNotificationUtil.notificationReceived(pushMessage);
    }

    public void onReceive(Context context, Intent intent) {
        super.onReceive(context, intent);
        Log.i((String)"UrbanAirshipReceiver", (String)("onReceive Intent: " + (Object)intent));
    }
}

