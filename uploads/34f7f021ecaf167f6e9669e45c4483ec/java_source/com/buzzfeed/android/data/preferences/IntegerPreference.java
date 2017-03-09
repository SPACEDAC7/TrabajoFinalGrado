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

public abstract class IntegerPreference
extends BasePreference<Integer> {
    public IntegerPreference(Context context) {
        super(context);
    }

    @Override
    public Integer getValue() {
        return this.mPreference.getInt(this.mKey, ((Integer)this.mDefaultValue).intValue());
    }

    @Override
    public void setValue(Integer n2) {
        this.mPreference.edit().putInt(this.mKey, n2.intValue()).apply();
    }
}

