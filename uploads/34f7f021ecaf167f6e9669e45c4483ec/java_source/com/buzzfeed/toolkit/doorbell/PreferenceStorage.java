/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.content.Context
 *  android.content.SharedPreferences
 *  android.content.SharedPreferences$Editor
 */
package com.buzzfeed.toolkit.doorbell;

import android.content.Context;
import android.content.SharedPreferences;
import com.buzzfeed.toolkit.doorbell.PoundStorage;

class PreferenceStorage
implements PoundStorage {
    private static final String PREF_FILENAME = "com.buzzfeed.doorbell.";
    private static final String PREF_ID_KEY = "id_key";
    private SharedPreferences mPrefs;

    public PreferenceStorage(Context context, String string2) {
        this.mPrefs = context.getSharedPreferences("com.buzzfeed.doorbell." + string2, 0);
    }

    @Override
    public String getText() {
        return this.mPrefs.getString("id_key", null);
    }

    @Override
    public boolean isAvailable() {
        return true;
    }

    @Override
    public void saveText(String string2) {
        this.mPrefs.edit().putString("id_key", string2).apply();
    }
}

