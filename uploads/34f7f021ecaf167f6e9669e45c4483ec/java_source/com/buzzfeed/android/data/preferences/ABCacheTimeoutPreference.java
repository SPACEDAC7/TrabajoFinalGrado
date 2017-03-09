/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.content.Context
 *  android.content.SharedPreferences
 *  android.content.SharedPreferences$Editor
 *  android.text.TextUtils
 */
package com.buzzfeed.android.data.preferences;

import android.content.Context;
import android.content.SharedPreferences;
import android.text.TextUtils;
import com.buzzfeed.android.data.preferences.BasePreference;

public class ABCacheTimeoutPreference
extends BasePreference<TimeOut> {
    public ABCacheTimeoutPreference(Context context) {
        super(context);
    }

    @Override
    protected TimeOut getDefaultValue(Context context) {
        return TimeOut.ONE_HOUR;
    }

    @Override
    protected int getKeyResourceId() {
        return 2131296903;
    }

    @Override
    public TimeOut getValue() {
        String string2 = this.mPreference.getString(this.mKey, null);
        if (!TextUtils.isEmpty((CharSequence)string2)) {
            return TimeOut.valueOf(string2);
        }
        return (TimeOut)((Object)this.mDefaultValue);
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    public void setValue(TimeOut object) {
        object = object != null ? object.name() : null;
        this.mPreference.edit().putString(this.mKey, (String)object).apply();
    }

    public static enum TimeOut {
        ONE_HOUR(3600000),
        ONE_MINUTE(60000);
        
        private long mMilliSecs;

        private TimeOut(long l2) {
            this.mMilliSecs = l2;
        }

        public long milliseconds() {
            return this.mMilliSecs;
        }
    }

}

