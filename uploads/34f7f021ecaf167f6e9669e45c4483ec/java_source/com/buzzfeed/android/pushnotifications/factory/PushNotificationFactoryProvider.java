/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.app.Notification
 *  com.urbanairship.push.PushMessage
 */
package com.buzzfeed.android.pushnotifications.factory;

import android.app.Notification;
import com.urbanairship.push.PushMessage;

public interface PushNotificationFactoryProvider {
    public Notification getNotification(PushMessage var1, int var2);

    public int getNotificationId(PushMessage var1);

    public void handleNotificationDismissed(String var1);

    public void handleNotificationOpened(PushMessage var1);

    public boolean handlesPushMessage(PushMessage var1);
}

