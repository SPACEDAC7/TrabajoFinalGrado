/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.content.Context
 *  android.content.Intent
 *  android.content.SharedPreferences
 *  android.content.SharedPreferences$Editor
 *  org.json.JSONArray
 *  org.json.JSONException
 *  org.json.JSONObject
 */
package com.buzzfeed.toolkit.dustbuster;

import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import com.buzzfeed.toolkit.dustbuster.DustbusterEvent;
import com.buzzfeed.toolkit.dustbuster.DustbusterHttpClient;
import com.buzzfeed.toolkit.dustbuster.DustbusterHttpClientImpl;
import com.buzzfeed.toolkit.dustbuster.DustbusterPrefs;
import com.buzzfeed.toolkit.dustbuster.DustbusterResponse;
import com.buzzfeed.toolkit.util.EZUtil;
import com.buzzfeed.toolkit.util.LogUtil;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class DustbusterLogic {
    private static final String ERROR_HTTP_CLIENT = "exception in httpClient.post()";
    public static final String PREFS_SAVED_EVENT_FILE_NAME = "com.buzzfeed.dustbuster.savedevents";
    private static final String TAG = DustbusterLogic.class.getSimpleName();
    private Context mContext;
    private DustbusterHttpClient mHttpClient;
    private int mMaxBatchSize;
    private int mMinBatchSize;
    private DustbusterPrefs mPrefs;
    private SharedPreferences mSavedEventPrefs;

    public DustbusterLogic(Context context) {
        this(context, new DustbusterHttpClientImpl());
    }

    public DustbusterLogic(Context context, DustbusterHttpClient dustbusterHttpClient) {
        this.mContext = context;
        this.mSavedEventPrefs = context.getSharedPreferences("com.buzzfeed.dustbuster.savedevents", 0);
        this.mPrefs = new DustbusterPrefs(this.mContext);
        this.mHttpClient = dustbusterHttpClient;
        this.reloadPrefs();
    }

    private static Intent getExceptionResultBroadcastIntent(String string2) {
        Intent intent = new Intent("com.buzzfeed.dustbuster.result");
        intent.putExtra("is_success", false);
        intent.putExtra("response_message", string2);
        intent.putExtra("keys_sent", new ArrayList());
        return intent;
    }

    public static JSONArray getJsonArrayForCollection(List<DustbusterEvent> list) {
        JSONArray jSONArray = new JSONArray();
        for (int i2 = 0; i2 < list.size(); ++i2) {
            jSONArray.put((Object)list.get(i2).toJsonObject());
        }
        return jSONArray;
    }

    private static Intent getResultBroadcastIntent(DustbusterResponse dustbusterResponse, ArrayList<String> arrayList) {
        Intent intent = new Intent("com.buzzfeed.dustbuster.result");
        intent.putExtra("is_success", dustbusterResponse.isSuccess());
        intent.putExtra("response_message", dustbusterResponse.getResponseText());
        intent.putStringArrayListExtra("keys_sent", arrayList);
        return intent;
    }

    private void sendExceptionResultBroadcast(String string2) {
        this.mContext.sendBroadcast(DustbusterLogic.getExceptionResultBroadcastIntent(string2));
    }

    private void sendResultBroadcast(DustbusterResponse dustbusterResponse, ArrayList<String> arrayList) {
        this.mContext.sendBroadcast(DustbusterLogic.getResultBroadcastIntent(dustbusterResponse, arrayList));
    }

    public void addEvent(String string2, String string3) {
        this.mSavedEventPrefs.edit().putString(string2, string3).apply();
    }

    public void addEventCollection(String string2) {
        int n2;
        try {
            string2 = new JSONArray(string2);
            n2 = 0;
        }
        catch (JSONException var1_2) {
            LogUtil.e(TAG, "error reading json from addEventCollection", (Throwable)var1_2);
        }
        do {
            if (n2 < string2.length()) {
                JSONObject jSONObject = string2.getJSONObject(n2);
                this.addEvent(jSONObject.getString(DustbusterEvent.getEventIdKey()), jSONObject.toString());
                ++n2;
                continue;
            }
            break;
        } while (true);
    }

    public boolean checkMinimumEventsToProcess(String string2) {
        if (this.getEventCount() >= this.mMinBatchSize) {
            this.processBatches(string2);
            return true;
        }
        return false;
    }

    public int getEventCount() {
        return this.mSavedEventPrefs.getAll().size();
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     * Lifted jumps to return sites
     */
    public LogicResult getEventsToProcess(int n2) {
        String string2 = TAG + ".getEventsToProcess";
        int n3 = this.mSavedEventPrefs.getAll().size();
        LogUtil.v(string2, "all event count: " + n3);
        boolean bl = false;
        int n4 = n3;
        if (n3 > n2) {
            n4 = n2;
            bl = true;
        }
        ArrayList<String> arrayList = new ArrayList<String>(n4);
        JSONArray jSONArray = new JSONArray();
        n4 = 0;
        Iterator iterator = this.mSavedEventPrefs.getAll().keySet().iterator();
        while (iterator.hasNext()) {
            String string3 = (String)iterator.next();
            if (n4 >= n2) {
                LogUtil.v(string2, "reached max batch size, stopping until next time");
                return new LogicResult(bl, arrayList, jSONArray);
            }
            String string4 = this.mSavedEventPrefs.getString(string3, null);
            if (string4 == null) continue;
            try {
                jSONArray.put((Object)new DustbusterEvent(string4).toJsonObject(false));
                arrayList.add(string3);
                LogUtil.v(string2, "adding event to be processed: id " + string3 + " count: " + n4);
            }
            catch (JSONException var6_10) {
                LogUtil.e(string2, "exception in recreating event from json string", (Throwable)var6_10);
            }
            ++n4;
        }
        return new LogicResult(bl, arrayList, jSONArray);
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    public void processBatches(String string2) {
        String string3 = TAG + ".processBatches";
        LogicResult logicResult = this.getEventsToProcess(this.mMaxBatchSize);
        boolean bl = false;
        boolean bl2 = false;
        boolean bl3 = bl;
        try {
            DustbusterResponse dustbusterResponse = this.mHttpClient.post(string2, logicResult.getJsonParams());
            bl3 = bl;
            LogUtil.v(string3, "Processed the following keys: " + EZUtil.join(logicResult.getEventsProcessed(), ", "));
            bl3 = bl;
            if (dustbusterResponse.isSuccess()) {
                bl3 = bl;
                LogUtil.v(string3, "Processing events was successful. " + dustbusterResponse.getResponseText());
                bl3 = bl;
                this.removeEventsFromStorage(logicResult.getEventsProcessed());
                bl2 = true;
            } else {
                bl3 = bl;
                LogUtil.v(string3, "Processing events was unsuccessful. " + dustbusterResponse.getResponseText());
            }
            bl3 = bl2;
            this.sendResultBroadcast(dustbusterResponse, logicResult.getEventsProcessed());
        }
        catch (Exception var4_8) {
            LogUtil.e(string3, "exception in httpClient.post()", var4_8);
            this.sendExceptionResultBroadcast("exception in httpClient.post()");
            bl2 = bl3;
        }
        if (logicResult.isShouldProcessMore() && bl2) {
            this.processBatches(string2);
        }
    }

    public void reloadPrefs() {
        this.mMinBatchSize = this.mPrefs.getMinBatchSize();
        this.mMaxBatchSize = this.mPrefs.getMaxBatchSize();
    }

    public void removeEventsFromStorage(List<String> object) {
        SharedPreferences.Editor editor = this.mSavedEventPrefs.edit();
        object = object.iterator();
        while (object.hasNext()) {
            editor.remove((String)object.next());
        }
        editor.apply();
    }

    static class LogicResult {
        private ArrayList<String> mEventsProcessed;
        private JSONArray mJsonParams;
        private boolean mShouldProcessMore;

        public LogicResult(boolean bl, ArrayList<String> arrayList, JSONArray jSONArray) {
            this.mShouldProcessMore = bl;
            this.mEventsProcessed = arrayList;
            this.mJsonParams = jSONArray;
        }

        public ArrayList<String> getEventsProcessed() {
            return this.mEventsProcessed;
        }

        public JSONArray getJsonParams() {
            return this.mJsonParams;
        }

        public boolean isShouldProcessMore() {
            return this.mShouldProcessMore;
        }
    }

}

