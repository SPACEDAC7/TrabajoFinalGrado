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
import com.buzzfeed.toolkit.util.LogUtil;

public class UAServerPreference
extends BasePreference<UAServer> {
    private static final String TAG = LogUtil.makeLogTag(UAServerPreference.class);

    public UAServerPreference(Context context) {
        super(context);
    }

    @Override
    protected UAServer getDefaultValue(Context context) {
        return UAServer.ALPHA;
    }

    @Override
    protected int getKeyResourceId() {
        return 2131296927;
    }

    @Override
    public UAServer getValue() {
        Object object = this.mPreference.getString(this.mKey, null);
        if (!TextUtils.isEmpty((CharSequence)object)) {
            try {
                object = UAServer.valueOf((String)object);
                return object;
            }
            catch (IllegalArgumentException var1_2) {
                LogUtil.e(TAG, "Could not convert saved value to preference", var1_2);
            }
        }
        return (UAServer)((Object)this.mDefaultValue);
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    public void setValue(UAServer object) {
        object = object != null ? object.name() : null;
        this.mPreference.edit().putString(this.mKey, (String)object).apply();
    }

    public static enum UAServer {
        PRODUCTION,
        ALPHA;
        

        private UAServer() {
        }
    }

}

