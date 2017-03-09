/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.content.Context
 *  android.content.SharedPreferences
 *  android.content.SharedPreferences$Editor
 */
package com.buzzfeed.toolkit.dustbuster;

import android.content.Context;
import android.content.SharedPreferences;

class DustbusterPrefs {
    public static final int DEFAULT_MAX_BATCH_SIZE = 100;
    public static final int DEFAULT_MIN_BATCH_SIZE = 10;
    public static final String PREFS_FILENAME = "com.buzzfeed.dusbuster.prefs";
    private static final String PREFS_MAX_BATCH_SIZE = "com.buzzfeed.dustbuster.prefs.maxbatchsize";
    private static final String PREFS_MIN_BATCH_SIZE = "com.buzzfeed.dustbuster.prefs.minbatchsize";
    private SharedPreferences mPrefs;

    public DustbusterPrefs(Context context) {
        this.mPrefs = context.getSharedPreferences("com.buzzfeed.dusbuster.prefs", 0);
    }

    public int getMaxBatchSize() {
        return this.mPrefs.getInt("com.buzzfeed.dustbuster.prefs.maxbatchsize", 100);
    }

    public int getMinBatchSize() {
        return this.mPrefs.getInt("com.buzzfeed.dustbuster.prefs.minbatchsize", 10);
    }

    public void setMaxBatchSize(int n2) {
        this.mPrefs.edit().putInt("com.buzzfeed.dustbuster.prefs.maxbatchsize", n2).apply();
    }

    public void setMinBatchSize(int n2) {
        this.mPrefs.edit().putInt("com.buzzfeed.dustbuster.prefs.minbatchsize", n2).apply();
    }
}

