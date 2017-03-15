/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.app.IntentService
 *  android.content.Context
 *  android.content.Intent
 *  org.json.JSONArray
 */
package com.buzzfeed.toolkit.dustbuster;

import android.app.IntentService;
import android.content.Context;
import android.content.Intent;
import com.buzzfeed.toolkit.dustbuster.DustbusterEvent;
import com.buzzfeed.toolkit.dustbuster.DustbusterLogic;
import org.json.JSONArray;

public class DustbusterEventIntentService
extends IntentService {
    private static final String ACTION_ADD_EVENT = "add_event";
    private static final String ACTION_ADD_EVENT_COLLECTION = "add_event_collection";
    private static final String ACTION_PROCESS_BATCHES = "process_batches";
    private static final String ACTION_REFRESH_PREFS = "refresh_prefs";
    public static final String ACTION_RESULT = "com.buzzfeed.dustbuster.result";
    private static final String EXTRA_EVENT = "event";
    private static final String EXTRA_EVENTS = "eventCollection";
    private static final String EXTRA_EVENT_ID = "event_id";
    public static final String EXTRA_RESPONSE_EVENT_KEYS = "keys_sent";
    public static final String EXTRA_RESPONSE_IS_SUCCESS = "is_success";
    public static final String EXTRA_RESPONSE_MESSAGE = "response_message";
    private static final String EXTRA_URL = "url";
    private static final String TAG = DustbusterEventIntentService.class.getSimpleName();
    private DustbusterLogic mLogic;

    public DustbusterEventIntentService() {
        super("DustbusterEventIntentService");
    }

    public DustbusterEventIntentService(String string2) {
        super(string2);
    }

    public static Intent getAddEventCollectionIntent(Context context, JSONArray jSONArray, String string2) {
        context = new Intent(context, (Class)DustbusterEventIntentService.class);
        context.setAction("add_event_collection");
        context.putExtra("eventCollection", jSONArray.toString());
        context.putExtra("url", string2);
        return context;
    }

    public static Intent getAddEventIntent(Context context, DustbusterEvent dustbusterEvent, String string2) {
        context = new Intent(context, (Class)DustbusterEventIntentService.class);
        context.setAction("add_event");
        context.putExtra("event", dustbusterEvent.toJson());
        context.putExtra("event_id", dustbusterEvent.getEventId());
        context.putExtra("url", string2);
        return context;
    }

    public static Intent getProcessBatchesIntent(Context context, String string2) {
        context = new Intent(context, (Class)DustbusterEventIntentService.class);
        context.setAction("process_batches");
        context.putExtra("url", string2);
        return context;
    }

    public static Intent getRefreshPrefsIntent(Context context) {
        context = new Intent(context, (Class)DustbusterEventIntentService.class);
        context.setAction("refresh_prefs");
        return context;
    }

    public void onCreate() {
        super.onCreate();
        this.mLogic = new DustbusterLogic((Context)this);
    }

    /*
     * Unable to fully structure code
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    protected void onHandleIntent(Intent var1_1) {
        if (var1_1 == null) return;
        if (var1_1.getAction() == null) {
            return;
        }
        var2_2 = var1_1.getAction();
        var3_3 = -1;
        switch (var2_2.hashCode()) {
            case -1435645876: {
                if (var2_2.equals("refresh_prefs")) {
                    var3_3 = 0;
                    ** break;
                }
                ** GOTO lbl20
            }
            case 330666364: {
                if (var2_2.equals("add_event")) {
                    var3_3 = 1;
                    ** break;
                }
                ** GOTO lbl20
            }
            case 720760129: {
                if (var2_2.equals("add_event_collection")) {
                    var3_3 = 2;
                }
            }
lbl20: // 8 sources:
            default: {
                ** GOTO lbl25
            }
            case -670768232: 
        }
        if (var2_2.equals("process_batches")) {
            var3_3 = 3;
        }
lbl25: // 4 sources:
        switch (var3_3) {
            default: {
                return;
            }
            case 0: {
                this.mLogic.reloadPrefs();
                return;
            }
            case 1: {
                this.mLogic.addEvent(var1_1.getStringExtra("event_id"), var1_1.getStringExtra("event"));
                this.mLogic.checkMinimumEventsToProcess(var1_1.getStringExtra("url"));
                return;
            }
            case 2: {
                this.mLogic.addEventCollection(var1_1.getStringExtra("eventCollection"));
                this.mLogic.checkMinimumEventsToProcess(var1_1.getStringExtra("url"));
                return;
            }
            case 3: 
        }
        this.mLogic.processBatches(var1_1.getStringExtra("url"));
    }
}

