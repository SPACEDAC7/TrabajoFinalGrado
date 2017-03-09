/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.app.Notification
 *  android.content.ComponentName
 *  android.content.Context
 *  android.content.Intent
 *  android.os.Bundle
 *  com.urbanairship.push.PushMessage
 */
package com.buzzfeed.android.pushnotifications.factory;

import android.app.Notification;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import com.buzzfeed.android.pushnotifications.ShowNotificationIntentService;
import com.buzzfeed.android.pushnotifications.ShowNotificationStorageProvider;
import com.buzzfeed.android.pushnotifications.ShowNotificationUtils;
import com.buzzfeed.android.pushnotifications.ShowSubscriptionNotificationStorage;
import com.buzzfeed.android.pushnotifications.factory.PushNotificationFactoryProvider;
import com.buzzfeed.toolkit.util.StringUtils;
import com.urbanairship.push.PushMessage;
import java.util.HashMap;

public class PushNotificationShowFactory
implements PushNotificationFactoryProvider {
    private Context mContext;

    public PushNotificationShowFactory(Context context) {
        this.mContext = context.getApplicationContext();
    }

    @Override
    public Notification getNotification(PushMessage pushMessage, int n2) {
        this.mContext.startService(ShowNotificationIntentService.getStartIntent(this.mContext, pushMessage, n2));
        return null;
    }

    @Override
    public int getNotificationId(PushMessage pushMessage) {
        return pushMessage.getPushBundle().getString("show_title").hashCode();
    }

    @Override
    public void handleNotificationDismissed(String string2) {
        if (!StringUtils.isEmpty(string2)) {
            ShowNotificationStorageProvider.getInstance().getShowSubscriptionNotificationStorage().remove(string2);
        }
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    public void handleNotificationOpened(PushMessage object) {
        if (!this.handlesPushMessage((PushMessage)object) || StringUtils.isEmpty((CharSequence)(object = ShowNotificationUtils.getShowIdFromPushMessage((PushMessage)object)))) {
            return;
        }
        ShowNotificationStorageProvider.getInstance().getShowSubscriptionNotificationStorage().remove(object);
    }

    @Override
    public boolean handlesPushMessage(PushMessage pushMessage) {
        if (pushMessage.getPushBundle().getString("show_title") != null) {
            return true;
        }
        return false;
    }
}

