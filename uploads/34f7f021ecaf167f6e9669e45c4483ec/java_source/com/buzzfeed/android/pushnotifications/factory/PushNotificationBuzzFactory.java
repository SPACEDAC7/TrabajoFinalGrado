/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.app.Notification
 *  android.app.NotificationManager
 *  android.app.PendingIntent
 *  android.content.Context
 *  android.content.Intent
 *  android.content.res.Resources
 *  android.text.Html
 *  android.text.TextUtils
 *  com.urbanairship.push.PushMessage
 */
package com.buzzfeed.android.pushnotifications.factory;

import android.app.Notification;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.support.v4.app.NotificationCompat;
import android.text.Html;
import android.text.TextUtils;
import com.buzzfeed.android.activity.SplashActivity;
import com.buzzfeed.android.pushnotifications.PushNotificationBroadcastReceiver;
import com.buzzfeed.android.pushnotifications.PushNotificationIdGenerator;
import com.buzzfeed.android.pushnotifications.PushNotificationUtil;
import com.buzzfeed.android.pushnotifications.factory.PushNotificationFactoryProvider;
import com.buzzfeed.toolkit.util.LogUtil;
import com.urbanairship.push.PushMessage;

public class PushNotificationBuzzFactory
implements PushNotificationFactoryProvider {
    private static final int REQUEST_CODE_BUZZ_ADDITION = 100;
    private static final int REQUEST_CODE_DISMISS_ADDITION = 200;
    private static final String TAG = PushNotificationBuzzFactory.class.getSimpleName();
    private Context mContext;
    private PushNotificationIdGenerator mIdGenerator;

    public PushNotificationBuzzFactory(Context context) {
        this.mContext = context.getApplicationContext();
        this.mIdGenerator = new PushNotificationIdGenerator(context);
    }

    private static int getRequestCodeBuzzIntent(int n2) {
        return n2 + 100;
    }

    private static int getRequestCodeDismissIntent(int n2) {
        return n2 + 200;
    }

    @Override
    public Notification getNotification(PushMessage pushMessage, int n2) {
        Object object = PushNotificationUtil.getBuzzUriFromPushMessage(pushMessage);
        if (TextUtils.isEmpty((CharSequence)object)) {
            return null;
        }
        Intent intent = SplashActivity.getNotificationIntent(n2, (String)object, pushMessage.getAlert());
        intent = PendingIntent.getActivity((Context)this.mContext, (int)PushNotificationBuzzFactory.getRequestCodeBuzzIntent(n2), (Intent)intent, (int)134217728);
        object = PendingIntent.getBroadcast((Context)this.mContext, (int)PushNotificationBuzzFactory.getRequestCodeDismissIntent(n2), (Intent)PushNotificationBroadcastReceiver.getDismissIntent(this.mContext, pushMessage.getAlert(), (String)object), (int)134217728);
        object = new NotificationCompat.Builder(this.mContext).setContentTitle(this.mContext.getString(2131296632)).setContentText((CharSequence)Html.fromHtml((String)pushMessage.getAlert())).setAutoCancel(true).setStyle(new NotificationCompat.BigTextStyle().bigText((CharSequence)Html.fromHtml((String)pushMessage.getAlert()))).setOnlyAlertOnce(false).setColor(this.mContext.getResources().getColor(2131755045)).setSmallIcon(2130837774).setContentIntent((PendingIntent)intent).setDeleteIntent((PendingIntent)object);
        LogUtil.i(TAG, "Creating BUZZ notification with id: " + n2 + " content: " + pushMessage.getAlert());
        ((NotificationManager)this.mContext.getSystemService("notification")).notify(n2, object.build());
        return null;
    }

    @Override
    public int getNotificationId(PushMessage pushMessage) {
        return this.mIdGenerator.getNextId();
    }

    @Override
    public void handleNotificationDismissed(String string2) {
    }

    @Override
    public void handleNotificationOpened(PushMessage pushMessage) {
    }

    @Override
    public boolean handlesPushMessage(PushMessage pushMessage) {
        return true;
    }
}

