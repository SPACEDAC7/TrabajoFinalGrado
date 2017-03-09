/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.content.ComponentName
 *  android.content.Context
 *  android.content.Intent
 *  org.json.JSONArray
 */
package com.buzzfeed.toolkit.dustbuster;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import com.buzzfeed.toolkit.dustbuster.BaseDustbusterLauncher;
import com.buzzfeed.toolkit.dustbuster.DustbusterEvent;
import com.buzzfeed.toolkit.dustbuster.DustbusterEventIntentService;
import org.json.JSONArray;

public class DustbusterLauncherService
extends BaseDustbusterLauncher {
    public DustbusterLauncherService(Context context, String string2) {
        super(context, string2);
    }

    @Override
    public void forceProcessEvents() {
        this.mApplicationContext.startService(DustbusterEventIntentService.getProcessBatchesIntent(this.mApplicationContext, this.mApiUrl));
    }

    @Override
    public void processEventCollection(JSONArray jSONArray) {
        this.mApplicationContext.startService(DustbusterEventIntentService.getAddEventCollectionIntent(this.mApplicationContext, jSONArray, this.mApiUrl));
    }

    @Override
    public void processNewEvent(DustbusterEvent dustbusterEvent) {
        this.mApplicationContext.startService(DustbusterEventIntentService.getAddEventIntent(this.mApplicationContext, dustbusterEvent, this.mApiUrl));
    }

    @Override
    public void refreshServicePrefs() {
        this.mApplicationContext.startService(DustbusterEventIntentService.getRefreshPrefsIntent(this.mApplicationContext));
    }
}

