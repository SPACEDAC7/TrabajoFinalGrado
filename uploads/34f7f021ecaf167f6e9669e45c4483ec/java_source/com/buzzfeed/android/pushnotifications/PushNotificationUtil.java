/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.app.NotificationManager
 *  android.content.Context
 *  android.os.Bundle
 *  android.text.TextUtils
 *  com.urbanairship.push.PushMessage
 */
package com.buzzfeed.android.pushnotifications;

import android.app.NotificationManager;
import android.content.Context;
import android.os.Bundle;
import android.text.TextUtils;
import com.buzzfeed.analytics.client.DustbusterClient;
import com.buzzfeed.android.data.preferences.PushNotificationPreference;
import com.buzzfeed.android.data.preferences.PushNotificationTrendingPreference;
import com.buzzfeed.android.pushnotifications.ShowNotificationStorageProvider;
import com.buzzfeed.android.util.DiscriminatingTracker;
import com.buzzfeed.toolkit.util.LogUtil;
import com.urbanairship.UAirship;
import com.urbanairship.actions.ActionValue;
import com.urbanairship.push.PushManager;
import com.urbanairship.push.PushMessage;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

public class PushNotificationUtil {
    public static final String PUSH_NOTIFICATION_KEY_BUZZ = "buzz";
    private static final String TAG = PushNotificationUtil.class.getSimpleName();

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    public static String getBuzzUriFromPushMessage(PushMessage object) {
        String string2;
        Object object2 = string2 = object.getPushBundle().getString("buzz");
        if (!TextUtils.isEmpty((CharSequence)string2)) return object2;
        Map map = object.getActions();
        if (!map.containsKey("deep_link_action")) {
            object2 = string2;
            if (!map.containsKey("^d")) return object2;
        }
        object = string2;
        if (map.get("deep_link_action") != null) {
            object = ((ActionValue)map.get("deep_link_action")).getString();
        }
        object2 = object;
        if (!TextUtils.isEmpty((CharSequence)object)) return object2;
        object2 = object;
        if (map.get("^d") == null) return object2;
        return ((ActionValue)map.get("^d")).getString();
    }

    public static void handleShowPageOpened(Context context, String string2) {
        int n2 = ShowNotificationStorageProvider.getInstance().handleShowPageOpened(string2);
        ((NotificationManager)context.getSystemService("notification")).cancel(n2);
    }

    private static void logPushMessage(PushMessage pushMessage) {
        pushMessage = pushMessage.getPushBundle();
        Object object = pushMessage.keySet();
        List<String> list = Arrays.asList("collapse_key", "from", "com.urbanairship.push.NOTIFICATION_ID");
        object = object.iterator();
        while (object.hasNext()) {
            String string2 = (String)object.next();
            if (list.contains(string2)) continue;
            LogUtil.d(TAG, "Push Notification Message Bundle: [" + string2 + " : " + pushMessage.get(string2) + "]");
        }
    }

    public static void notificationReceived(PushMessage pushMessage) {
        PushNotificationUtil.logPushMessage(pushMessage);
        DustbusterClient.getInstance().trackNotificationReceived(pushMessage.getAlert(), PushNotificationUtil.getBuzzUriFromPushMessage(pushMessage), null);
    }

    /*
     * Enabled aggressive block sorting
     */
    public static void notificationStatusChanged(Context object, boolean bl) {
        PushNotificationUtil.setPushNotificationsEnabled(bl);
        new PushNotificationPreference((Context)object).setValue(bl);
        new PushNotificationTrendingPreference((Context)object).setValue(bl);
        Object object2 = DiscriminatingTracker.getInstance();
        String string2 = object.getString(2131296767);
        int n2 = bl ? 2131296697 : 2131296696;
        object2.trackEvent(string2, object.getString(n2), "", 0);
        object2 = DustbusterClient.getInstance();
        object = bl ? "opt_in" : "opt_out";
        object2.trackNotificationStatusChanged((String)object, null);
    }

    /*
     * Enabled aggressive block sorting
     */
    public static void setPushNotificationsEnabled(boolean bl) {
        String string2 = TAG + ".setPushNotifications";
        UAirship.shared().getPushManager().setPushEnabled(bl);
        StringBuilder stringBuilder = new StringBuilder().append("Push Notifications ");
        String string3 = bl ? "enabled" : "disabled";
        LogUtil.i(string2, stringBuilder.append(string3).toString());
    }
}

