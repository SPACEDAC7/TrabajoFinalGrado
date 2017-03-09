/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.content.Context
 *  android.content.SharedPreferences
 *  android.content.SharedPreferences$Editor
 *  com.urbanairship.util.NotificationIdGenerator
 */
package com.buzzfeed.android.pushnotifications;

import android.content.Context;
import android.content.SharedPreferences;
import com.urbanairship.util.NotificationIdGenerator;

public class PushNotificationIdGenerator {
    private static final int DEFAULT_ID = 1000;
    private static final String KEY_PUSH_LAST_ID = "last_id";
    private static final int MAX_NOTIFICATIONS = 6;
    private static final String PUSH_NOTIFICATION_SETTINGS = "com.buzzfeed.pushnotifications";
    private Context mContext;

    public PushNotificationIdGenerator(Context context) {
        this.mContext = context.getApplicationContext();
        NotificationIdGenerator.setStart((int)this.getPreferences().getInt("last_id", 1000));
        NotificationIdGenerator.setRange((int)6);
    }

    private SharedPreferences getPreferences() {
        return this.mContext.getSharedPreferences("com.buzzfeed.pushnotifications", 0);
    }

    private void saveLastIdSent(int n2) {
        this.getPreferences().edit().putInt("last_id", n2).apply();
    }

    public int getNextId() {
        int n2;
        int n3 = n2 = this.getPreferences().getInt("last_id", 1000) + 1;
        if (n2 > 1006) {
            n3 = 1001;
        }
        this.saveLastIdSent(n3);
        return n3;
    }
}

