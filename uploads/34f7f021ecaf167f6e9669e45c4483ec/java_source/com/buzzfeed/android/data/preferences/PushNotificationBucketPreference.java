/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.content.Context
 */
package com.buzzfeed.android.data.preferences;

import android.content.Context;
import com.buzzfeed.android.data.preferences.IntegerPreference;

public final class PushNotificationBucketPreference
extends IntegerPreference {
    public PushNotificationBucketPreference(Context context) {
        super(context);
    }

    @Override
    protected Integer getDefaultValue(Context context) {
        return 0;
    }

    @Override
    protected int getKeyResourceId() {
        return 2131296919;
    }
}

