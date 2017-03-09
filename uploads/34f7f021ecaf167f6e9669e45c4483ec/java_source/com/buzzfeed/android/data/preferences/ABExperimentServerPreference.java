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
import com.buzzfeed.androidabframework.util.Environment;

public class ABExperimentServerPreference
extends BasePreference<Environment> {
    public ABExperimentServerPreference(Context context) {
        super(context);
    }

    @Override
    protected Environment getDefaultValue(Context context) {
        return Environment.Production;
    }

    @Override
    protected int getKeyResourceId() {
        return 2131296904;
    }

    @Override
    public Environment getValue() {
        String string2 = this.mPreference.getString(this.mKey, null);
        if (!TextUtils.isEmpty((CharSequence)string2)) {
            return Environment.valueOf(string2);
        }
        return (Environment)((Object)this.mDefaultValue);
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    public void setValue(Environment object) {
        object = object != null ? object.name() : null;
        this.mPreference.edit().putString(this.mKey, (String)object).apply();
    }
}

