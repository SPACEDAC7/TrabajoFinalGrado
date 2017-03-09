/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.content.Context
 *  android.os.AsyncTask
 *  org.json.JSONArray
 */
package com.buzzfeed.toolkit.dustbuster;

import android.content.Context;
import android.os.AsyncTask;
import com.buzzfeed.toolkit.dustbuster.BaseDustbusterLauncher;
import com.buzzfeed.toolkit.dustbuster.DustbusterEvent;
import com.buzzfeed.toolkit.dustbuster.DustbusterLogic;
import org.json.JSONArray;

public class DustbusterLauncherInstance
extends BaseDustbusterLauncher {
    private final DustbusterLogic mLogic;

    public DustbusterLauncherInstance(Context context, String string2) {
        super(context, string2);
        this.mLogic = new DustbusterLogic(context);
    }

    DustbusterLauncherInstance(Context context, String string2, DustbusterLogic dustbusterLogic) {
        super(context, string2);
        this.mLogic = dustbusterLogic;
    }

    @Override
    public void forceProcessEvents() {
        new AsyncTask<Void, Void, Void>(){

            protected /* varargs */ Void doInBackground(Void ... arrvoid) {
                DustbusterLauncherInstance.this.mLogic.processBatches(DustbusterLauncherInstance.this.mApiUrl);
                return null;
            }
        }.execute((Object[])new Void[0]);
    }

    @Override
    public void processEventCollection(final JSONArray jSONArray) {
        new AsyncTask<Void, Void, Void>(){

            protected /* varargs */ Void doInBackground(Void ... arrvoid) {
                DustbusterLauncherInstance.this.mLogic.addEventCollection(jSONArray.toString());
                DustbusterLauncherInstance.this.mLogic.checkMinimumEventsToProcess(DustbusterLauncherInstance.this.mApiUrl);
                return null;
            }
        }.execute((Object[])new Void[0]);
    }

    @Override
    public void processNewEvent(final DustbusterEvent dustbusterEvent) {
        new AsyncTask<Void, Void, Void>(){

            protected /* varargs */ Void doInBackground(Void ... arrvoid) {
                DustbusterLauncherInstance.this.mLogic.addEvent(dustbusterEvent.getEventId(), dustbusterEvent.toJson());
                DustbusterLauncherInstance.this.mLogic.checkMinimumEventsToProcess(DustbusterLauncherInstance.this.mApiUrl);
                return null;
            }
        }.execute((Object[])new Void[0]);
    }

    @Override
    public void refreshServicePrefs() {
        this.mLogic.reloadPrefs();
    }

}

