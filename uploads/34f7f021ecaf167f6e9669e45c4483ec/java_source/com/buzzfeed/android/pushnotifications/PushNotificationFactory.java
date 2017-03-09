/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.app.Notification
 *  android.content.Context
 *  com.urbanairship.push.PushMessage
 *  com.urbanairship.push.notifications.NotificationFactory
 */
package com.buzzfeed.android.pushnotifications;

import android.app.Notification;
import android.content.Context;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import com.buzzfeed.android.pushnotifications.factory.PushNotificationBuzzFactory;
import com.buzzfeed.android.pushnotifications.factory.PushNotificationFactoryProvider;
import com.buzzfeed.android.pushnotifications.factory.PushNotificationShowFactory;
import com.buzzfeed.toolkit.util.LogUtil;
import com.urbanairship.push.PushMessage;
import com.urbanairship.push.notifications.NotificationFactory;
import java.util.ArrayList;
import java.util.List;

public class PushNotificationFactory
extends NotificationFactory {
    private static final String TAG = PushNotificationFactory.class.getSimpleName();
    private PushNotificationFactoryProvider mDefaultFactory;
    private List<PushNotificationFactoryProvider> mPushNotificationFactoryProviders;
    private PushNotificationShowFactory mPushNotificationShowFactory;

    public PushNotificationFactory(Context context) {
        super(context);
        this.mPushNotificationShowFactory = new PushNotificationShowFactory(context);
        this.mPushNotificationFactoryProviders = new ArrayList<PushNotificationFactoryProvider>();
        this.mPushNotificationFactoryProviders.add(this.mPushNotificationShowFactory);
        this.mDefaultFactory = new PushNotificationBuzzFactory(context);
    }

    private PushNotificationFactoryProvider getProviderForPushMessage(PushMessage pushMessage) {
        for (PushNotificationFactoryProvider pushNotificationFactoryProvider : this.mPushNotificationFactoryProviders) {
            if (!pushNotificationFactoryProvider.handlesPushMessage(pushMessage)) continue;
            return pushNotificationFactoryProvider;
        }
        return this.mDefaultFactory;
    }

    @Nullable
    public Notification createNotification(@NonNull PushMessage pushMessage, int n2) {
        return this.getProviderForPushMessage(pushMessage).getNotification(pushMessage, n2);
    }

    public int getNextId(@NonNull PushMessage pushMessage) {
        int n2 = this.getProviderForPushMessage(pushMessage).getNotificationId(pushMessage);
        LogUtil.v(TAG, "Generating new push notification id: " + n2);
        return n2;
    }

    public void handleNotificationDismissed(String string2) {
        this.mPushNotificationShowFactory.handleNotificationDismissed(string2);
    }

    public void handleNotificationOpened(PushMessage pushMessage) {
        this.mPushNotificationShowFactory.handleNotificationOpened(pushMessage);
    }
}

