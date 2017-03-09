/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.content.Context
 *  org.json.JSONArray
 */
package com.buzzfeed.toolkit.dustbuster;

import android.content.Context;
import com.buzzfeed.toolkit.dustbuster.DustbusterEvent;
import org.json.JSONArray;

public abstract class BaseDustbusterLauncher {
    protected final String mApiUrl;
    protected final Context mApplicationContext;

    public BaseDustbusterLauncher(Context context, String string2) {
        this.mApplicationContext = context;
        this.mApiUrl = string2;
    }

    public abstract void forceProcessEvents();

    public abstract void processEventCollection(JSONArray var1);

    public abstract void processNewEvent(DustbusterEvent var1);

    public abstract void refreshServicePrefs();
}

