/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.content.Context
 *  android.content.SharedPreferences
 *  android.content.SharedPreferences$Editor
 *  android.preference.PreferenceManager
 */
package com.buzzfeed.android.data.preferences;

import android.content.Context;
import android.content.SharedPreferences;
import android.preference.PreferenceManager;
import android.support.annotation.StringRes;

public abstract class BasePreference<T> {
    protected final T mDefaultValue;
    protected final String mKey;
    protected final SharedPreferences mPreference;

    public BasePreference(Context context) {
        this.mPreference = this.onSetupSharePreferences(context);
        this.mKey = context.getString(this.getKeyResourceId());
        this.mDefaultValue = this.getDefaultValue(context);
    }

    public void delete() {
        this.mPreference.edit().remove(this.mKey).apply();
    }

    protected abstract T getDefaultValue(Context var1);

    public final String getKey() {
        return this.mKey;
    }

    @StringRes
    protected abstract int getKeyResourceId();

    public abstract T getValue();

    public boolean isSet() {
        return this.mPreference.contains(this.mKey);
    }

    protected SharedPreferences onSetupSharePreferences(Context context) {
        return PreferenceManager.getDefaultSharedPreferences((Context)context);
    }

    public abstract void setValue(T var1);
}

