/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.app.IntentService
 *  android.app.Notification
 *  android.app.NotificationManager
 *  android.app.PendingIntent
 *  android.content.Context
 *  android.content.Intent
 *  android.content.res.Resources
 *  android.graphics.Bitmap
 *  android.graphics.BitmapFactory
 *  android.os.Bundle
 *  android.os.Parcelable
 *  com.urbanairship.push.PushMessage
 */
package com.buzzfeed.android.pushnotifications;

import android.app.IntentService;
import android.app.Notification;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.os.Bundle;
import android.os.Parcelable;
import android.support.v4.app.NotificationCompat;
import com.buzzfeed.android.activity.SplashActivity;
import com.buzzfeed.android.pushnotifications.PushNotificationBroadcastReceiver;
import com.buzzfeed.android.pushnotifications.PushNotificationUtil;
import com.buzzfeed.android.pushnotifications.ShowNotificationStorageProvider;
import com.buzzfeed.android.pushnotifications.ShowNotificationUtils;
import com.buzzfeed.android.pushnotifications.ShowSubscriptionNotificationStorage;
import com.buzzfeed.toolkit.util.ImageUtil;
import com.buzzfeed.toolkit.util.LogUtil;
import com.buzzfeed.toolkit.util.VersionUtil;
import com.urbanairship.push.PushMessage;
import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLConnection;
import java.util.HashMap;

public class ShowNotificationIntentService
extends IntentService {
    private static final String KEY_NOTIFICATION_ID = "notification_id";
    private static final String KEY_PUSH_MESSAGE = "push_message";
    private static final int REQUEST_CODE_DISMISS_ADDITION = 2000;
    private static final int REQUEST_CODE_SHOW_ADDITION = 1000;
    private static final String TAG = ShowNotificationIntentService.class.getSimpleName();

    public ShowNotificationIntentService() {
        super("ShowNotificationIntentService");
    }

    private Bitmap getBitmapFromURL(Context context, String object) {
        String string2 = TAG + ".getBitmapFromUrl";
        try {
            object = (HttpURLConnection)new URL((String)object).openConnection();
            object.setDoInput(true);
            object.setConnectTimeout(10000);
            object.connect();
            object = BitmapFactory.decodeStream((InputStream)object.getInputStream());
            context = ImageUtil.getRoundedCornersBitmap(context, (Bitmap)object, (float)object.getWidth() * 0.05f);
            return context;
        }
        catch (IOException var1_2) {
            LogUtil.e(string2, "Error loading notification bitmap", var1_2);
            return null;
        }
    }

    private static int getRequestCode(int n2) {
        return n2 + 1000;
    }

    private static int getRequestCodeDismissIntent(int n2) {
        return n2 + 2000;
    }

    public static Intent getStartIntent(Context context, PushMessage pushMessage, int n2) {
        context = new Intent(context, (Class)ShowNotificationIntentService.class);
        context.putExtra("push_message", (Parcelable)pushMessage);
        context.putExtra("notification_id", n2);
        return context;
    }

    /*
     * Enabled aggressive block sorting
     */
    protected void onHandleIntent(Intent object) {
        Object object2;
        PushMessage pushMessage = (PushMessage)object.getParcelableExtra("push_message");
        int n2 = object.getIntExtra("notification_id", -1);
        if (pushMessage == null || (object2 = PushNotificationUtil.getBuzzUriFromPushMessage(pushMessage)) == null) {
            return;
        }
        object = ShowNotificationUtils.getShowIdFromPushMessage(pushMessage);
        Object object3 = pushMessage.getPushBundle().getString("show_icon_url");
        Intent intent = SplashActivity.getShowNotificationIntent(n2, (String)object2, pushMessage.getAlert(), (String)object);
        intent = PendingIntent.getActivity((Context)this.getApplicationContext(), (int)ShowNotificationIntentService.getRequestCode(n2), (Intent)intent, (int)134217728);
        object2 = PendingIntent.getBroadcast((Context)this.getApplicationContext(), (int)ShowNotificationIntentService.getRequestCodeDismissIntent(n2), (Intent)PushNotificationBroadcastReceiver.getDismissIntent(this.getApplicationContext(), pushMessage.getAlert(), (String)object2, (String)object), (int)134217728);
        object2 = new NotificationCompat.Builder(this.getApplicationContext()).setContentTitle(pushMessage.getPushBundle().getString("show_title")).setAutoCancel(true).setOnlyAlertOnce(false).setContentIntent((PendingIntent)intent).setDeleteIntent((PendingIntent)object2);
        if (VersionUtil.hasNougat()) {
            object2.setColor(this.getApplicationContext().getResources().getColor(2131755045)).setSmallIcon(2130837779);
        } else {
            object2.setColor(this.getApplicationContext().getResources().getColor(2131755045)).setSmallIcon(2130837774);
        }
        ShowSubscriptionNotificationStorage showSubscriptionNotificationStorage = ShowNotificationStorageProvider.getInstance().getShowSubscriptionNotificationStorage().get(object);
        object3 = this.getBitmapFromURL(this.getApplicationContext(), (String)object3);
        if (object3 != null) {
            object2.setLargeIcon(Bitmap.createScaledBitmap((Bitmap)object3, (int)this.getResources().getDimensionPixelSize(17104902), (int)this.getResources().getDimensionPixelSize(17104902), (boolean)false));
        }
        if (showSubscriptionNotificationStorage != null) {
            showSubscriptionNotificationStorage.addNotification(pushMessage.getAlert());
            int n3 = showSubscriptionNotificationStorage.getMessagesCount();
            object2.setStyle(new NotificationCompat.BigTextStyle().setBigContentTitle(pushMessage.getPushBundle().getString("show_title")).bigText(showSubscriptionNotificationStorage.getAllMessagesCombined()));
            object2.setContentText(String.format(this.getApplicationContext().getString(2131296950), n3));
            object2.addAction(2130837723, this.getApplicationContext().getString(2131296951), (PendingIntent)intent);
        } else {
            object3 = new ShowSubscriptionNotificationStorage(n2);
            object3.addNotification(pushMessage.getAlert());
            ShowNotificationStorageProvider.getInstance().getShowSubscriptionNotificationStorage().put((String)object, (ShowSubscriptionNotificationStorage)object3);
            object2.setContentText(pushMessage.getAlert());
        }
        LogUtil.i(TAG, "Creating SHOW notification with id: " + n2 + " content: " + pushMessage.getAlert());
        ((NotificationManager)this.getSystemService("notification")).notify(n2, object2.build());
    }
}

