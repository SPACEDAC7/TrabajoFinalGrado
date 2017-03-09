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

public abstract class BooleanPreference
extends BasePreference<Boolean> {
    public BooleanPreference(Context context) {
        super(context);
    }

    @Override
    public Boolean getValue() {
        return this.mPreference.getBoolean(this.mKey, ((Boolean)this.mDefaultValue).booleanValue());
    }

    @Override
    public void setValue(Boolean bl) {
        this.mPreference.edit().putBoolean(this.mKey, bl.booleanValue()).apply();
    }
}

