/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.annotation.SuppressLint
 *  android.content.Context
 *  android.net.Uri
 *  android.net.Uri$Builder
 *  android.text.TextUtils
 *  android.util.Log
 *  org.json.JSONException
 *  org.json.JSONObject
 */
package com.buzzfeed.androidabframework.data;

import android.annotation.SuppressLint;
import android.content.Context;
import android.net.Uri;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.text.TextUtils;
import android.util.Log;
import com.buzzfeed.androidabframework.data.ABeagleData;
import com.buzzfeed.androidabframework.data.Experiment;
import com.buzzfeed.androidabframework.util.CodeTimer;
import com.buzzfeed.androidabframework.util.Environment;
import com.buzzfeed.androidabframework.util.ReturnCode;
import com.buzzfeed.androidabframework.util.Util;
import java.io.IOException;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

public class ABeagle {
    private static final String ABEAGLE_RESPONSE_ERROR_KEY = "error";
    private static final String ABEAGLE_RESPONSE_EXPERIMENT_ID_KEY = "id";
    private static final String ABEAGLE_RESPONSE_MESSAGE_KEY = "message";
    private static final String ABEAGLE_RESPONSE_RESOLVED_KEY = "resolved";
    private static final String ABEAGLE_RESPONSE_VARIANT_ID_KEY = "variant_id";
    private static final String ABEAGLE_RESPONSE_VARIANT_NAME_KEY = "value";
    private static final String ABEAGLE_RESPONSE_VERSION_KEY = "version";
    private static final String ABEAGLE_URL_DOMAIN_BASE = "buzzfeed.com";
    private static final String ABEAGLE_URL_DOMAIN_PROD = "abeagle-public.buzzfeed.com";
    private static final String ABEAGLE_URL_DOMAIN_STAGE = "abeagle-public-stage.buzzfeed.com";
    private static final String ABEAGLE_URL_PATH = "/public/v2/experiment_variants";
    private static final String ABEAGLE_URL_QUERY_CLIENT_ID_KEY = "client_id";
    private static final String ABEAGLE_URL_QUERY_CLIENT_ID_VALUE = "4";
    private static final String ABEAGLE_URL_QUERY_EXPERIMENTS_KEY = "experiment_names";
    private static final String ABEAGLE_URL_QUERY_USER_ID_KEY = "user_id";
    private static final String ABEAGLE_URL_SCHEME = "https";
    private static final String TAG = ABeagle.class.getName();
    @NonNull
    private Map<String, ABeagleData> mABeagleDataMap = new HashMap<String, ABeagleData>();
    @NonNull
    private Environment mEnvironment;
    @Nullable
    private List<Experiment> mExperimentList;
    private long mResponseTime;
    @Nullable
    private String mUserId;

    private ABeagle() {
    }

    @NonNull
    private String generateABeagleUrl(@NonNull String string2, @NonNull List<Experiment> object) {
        StringBuilder stringBuilder = new StringBuilder();
        object = object.iterator();
        while (object.hasNext()) {
            Experiment experiment = (Experiment)object.next();
            if (stringBuilder.length() > 0) {
                stringBuilder.append(";");
            }
            stringBuilder.append(experiment.getName());
        }
        object = stringBuilder.toString();
        stringBuilder = new Uri.Builder();
        stringBuilder.scheme("https").authority(this.getABeagleDomain()).path("/public/v2/experiment_variants").appendQueryParameter("client_id", "4").appendQueryParameter("user_id", string2).appendQueryParameter("experiment_names", (String)object);
        return stringBuilder.build().toString();
    }

    @SuppressLint(value={"LongLogTag"})
    @NonNull
    private JSONObject loadABeagleJsonObjectFromUrl(@NonNull String string2) throws IOException, JSONException {
        String string3 = TAG + "loadABeagleJsonObjectFromUrl";
        Log.d((String)string3, (String)("Loading ABeagle JSON from URL: " + string2));
        CodeTimer codeTimer = new CodeTimer().start();
        string2 = Util.downloadUrl(string2);
        this.mResponseTime = codeTimer.stop().getElapsedMilliseconds();
        Log.d((String)string3, (String)("Network call took " + this.mResponseTime + "ms"));
        string2 = new JSONObject(string2);
        Log.d((String)string3, (String)("ABeagle JSON returned from server: " + string2.toString()));
        return string2;
    }

    @NonNull
    public static ABeagle newInstance(@NonNull Environment environment, @NonNull long l2, @Nullable String string2, @Nullable List<Experiment> list) {
        String string3 = TAG + ".newInstance";
        ABeagle aBeagle = new ABeagle();
        aBeagle.mEnvironment = environment;
        aBeagle.mUserId = string2;
        aBeagle.mExperimentList = list;
        Log.d((String)string3, (String)"Initialized with:");
        Log.d((String)string3, (String)("  Environment: " + environment.toString()));
        Log.d((String)string3, (String)("  Cache TTL: " + l2));
        Log.d((String)string3, (String)("  User ID: " + string2));
        Log.d((String)string3, (String)("  Experiment List: " + list.toString()));
        return aBeagle;
    }

    @SuppressLint(value={"LongLogTag"})
    @NonNull
    private Map<String, ABeagleData> parseABeagleDataFromJson(@NonNull JSONObject jSONObject) throws JSONException {
        String string2 = TAG + ".parseABeagleDataFromJson";
        Log.d((String)string2, (String)("Parsing A/Beagle response: " + (Object)jSONObject));
        HashMap<String, ABeagleData> hashMap = new HashMap<String, ABeagleData>();
        Iterator iterator = jSONObject.keys();
        while (iterator.hasNext()) {
            String string3 = (String)iterator.next();
            JSONObject jSONObject2 = jSONObject.getJSONObject(string3);
            ABeagleData aBeagleData = new ABeagleData();
            aBeagleData.experimentName = string3;
            if (jSONObject2.has("id") && !jSONObject2.isNull("id")) {
                aBeagleData.experimentId = jSONObject2.getInt("id");
            }
            if (jSONObject2.has("version") && !jSONObject2.isNull("version")) {
                aBeagleData.version = jSONObject2.getInt("version");
            }
            if (jSONObject2.has("resolved") && !jSONObject2.isNull("resolved")) {
                aBeagleData.resolved = jSONObject2.getBoolean("resolved");
            }
            if (jSONObject2.has("value") && !jSONObject2.isNull("value")) {
                aBeagleData.selectedVariantName = jSONObject2.getString("value");
            }
            if (jSONObject2.has("variant_id") && !jSONObject2.isNull("variant_id")) {
                aBeagleData.selectedVariantId = jSONObject2.getInt("variant_id");
            }
            if (jSONObject2.has("message") && !jSONObject2.isNull("message")) {
                aBeagleData.message = jSONObject2.getString("message");
            }
            if (jSONObject2.has("error") && !jSONObject2.isNull("error")) {
                aBeagleData.error = jSONObject2.getString("error");
            }
            if (aBeagleData.message != null) {
                Log.d((String)string2, (String)("Experiment: " + string3 + ", message: " + jSONObject2.getString("message")));
            }
            if (aBeagleData.error != null) {
                Log.w((String)string2, (String)("Experiment: " + string3 + ", error: " + jSONObject2.getString("error")));
            }
            hashMap.put(string3, aBeagleData);
        }
        return hashMap;
    }

    @NonNull
    public Map<String, ABeagleData> getABeagleDataMap() {
        synchronized (this) {
            Map<String, ABeagleData> map = this.mABeagleDataMap;
            return map;
        }
    }

    @NonNull
    public String getABeagleDomain() {
        if (this.mEnvironment.equals((Object)Environment.Stage)) {
            return "abeagle-public-stage.buzzfeed.com";
        }
        return "abeagle-public.buzzfeed.com";
    }

    public long getResponseTime() {
        return this.mResponseTime;
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    @NonNull
    public ReturnCode loadABeagleData(@NonNull Context object) {
        synchronized (this) {
            String string2 = TAG + ".loadABeagleData";
            this.mResponseTime = 0;
            if (TextUtils.isEmpty((CharSequence)this.mUserId)) {
                return ReturnCode.NoUserId;
            }
            if (this.mExperimentList == null) return ReturnCode.NoExperiments;
            if (this.mExperimentList.size() == 0) {
                return ReturnCode.NoExperiments;
            }
            String string3 = this.generateABeagleUrl(this.mUserId, this.mExperimentList);
            if (!Util.isNetworkConnectionUp((Context)object)) {
                return ReturnCode.NoNetworkConnection;
            }
            try {
                object = new CodeTimer().start();
                this.mABeagleDataMap = this.parseABeagleDataFromJson(this.loadABeagleJsonObjectFromUrl(string3));
                Log.d((String)string2, (String)("Loaded and parsed ABeagle data in " + object.stop().getElapsedMilliseconds() + "ms"));
                return ReturnCode.SucceededNormally;
            }
            catch (JSONException var1_2) {
                return ReturnCode.FailedToLoadRemoteJson;
            }
            catch (IOException var1_3) {}
            return ReturnCode.FailedToLoadRemoteJson;
        }
    }
}

