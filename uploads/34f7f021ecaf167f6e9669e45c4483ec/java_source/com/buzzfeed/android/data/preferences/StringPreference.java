/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.content.Context
 *  android.content.SharedPreferences
 *  android.content.SharedPreferences$Editor
 */
package com.buzzfeed.android.data.preferences;

import android.content.Context;
import android.content.SharedPreferences;
import com.buzzfeed.android.data.preferences.BasePreference;

public abstract class StringPreference
extends BasePreference<String> {
    public StringPreference(Context context) {
        super(context);
    }

    @Override
    public String getValue() {
        return this.mPreference.getString(this.mKey, (String)this.mDefaultValue);
    }

    @Override
    public void setValue(String string2) {
        this.mPreference.edit().putString(this.mKey, string2).apply();
    }
}

