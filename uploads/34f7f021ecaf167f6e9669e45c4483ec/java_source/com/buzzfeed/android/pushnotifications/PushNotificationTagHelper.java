/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.content.Context
 */
package com.buzzfeed.android.pushnotifications;

import android.content.Context;
import com.buzzfeed.android.data.BuzzUser;
import com.buzzfeed.android.pushnotifications.tags.AuthenticationTag;
import com.buzzfeed.android.pushnotifications.tags.DeviceTag;
import com.buzzfeed.android.pushnotifications.tags.PushTag;
import com.buzzfeed.android.pushnotifications.tags.RandomBucketTag;
import com.buzzfeed.android.pushnotifications.tags.SignUpSourceTag;
import com.buzzfeed.android.pushnotifications.tags.TrendingTag;
import com.buzzfeed.toolkit.util.LogUtil;
import com.urbanairship.UAirship;
import com.urbanairship.push.PushManager;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;

public class PushNotificationTagHelper {
    private static final String TAG = PushNotificationTagHelper.class.getSimpleName();

    public static void initializePushNotifications(Context context) {
        PushNotificationTagHelper.initializePushTags(context);
    }

    private static void initializePushTags(Context context) {
        String string2 = TAG + ".insertPushTags";
        Set<String> set = UAirship.shared().getPushManager().getTags();
        HashSet<String> hashSet = new HashSet<String>(set);
        Object object = new ArrayList<PushTag>();
        object.add((SignUpSourceTag)new SignUpSourceTag(context));
        object.add((DeviceTag)new DeviceTag());
        object.add((AuthenticationTag)new AuthenticationTag(context));
        object.add((TrendingTag)new TrendingTag(context));
        object.add((RandomBucketTag)new RandomBucketTag(context));
        object = object.iterator();
        while (object.hasNext()) {
            ((PushTag)object.next()).addTag(hashSet);
        }
        if (!hashSet.equals(set)) {
            UAirship.shared().getPushManager().setTags(hashSet);
            PushNotificationTagHelper.setPushNotificationsAliases(context);
        }
        LogUtil.i(string2, "Push Notification Tags: " + hashSet.toString());
    }

    private static void setPushNotificationsAliases(Context object) {
        Object object2 = BuzzUser.getInstance((Context)object);
        if (object2 != null && object2.getUserid() != null) {
            object = UAirship.shared().getPushManager().getAlias();
            object2 = object2.getUserid();
            if (object == null || !object.equals(object2)) {
                UAirship.shared().getPushManager().setAlias((String)object2);
                LogUtil.i(TAG, "Push Notification Alias: " + (String)object2);
            }
        }
    }
}

