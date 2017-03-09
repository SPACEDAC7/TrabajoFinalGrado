/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.content.Context
 */
package com.buzzfeed.android.pushnotifications.tags;

import android.content.Context;
import com.buzzfeed.android.data.preferences.PushNotificationBucketPreference;
import com.buzzfeed.android.pushnotifications.tags.PushTag;
import com.buzzfeed.toolkit.util.LogUtil;
import java.util.Set;

public class RandomBucketTag
implements PushTag {
    private static final String PUSH_NOTIFICATION_KEY_BUCKET_PREFIX = "bucket_";
    private static final String TAG = RandomBucketTag.class.getSimpleName();
    private Context mContext;

    public RandomBucketTag(Context context) {
        this.mContext = context.getApplicationContext();
    }

    @Override
    public void addTag(Set<String> set) {
        int n2;
        PushNotificationBucketPreference pushNotificationBucketPreference = new PushNotificationBucketPreference(this.mContext);
        int n3 = n2 = pushNotificationBucketPreference.getValue().intValue();
        if (n2 == 0) {
            n3 = (int)(Math.random() * 10.0) + 1;
            pushNotificationBucketPreference.setValue(n3);
            LogUtil.i(TAG, "Push notification bucket tag created and persisted: " + n3);
        }
        set.add("bucket_" + n3);
    }
}

