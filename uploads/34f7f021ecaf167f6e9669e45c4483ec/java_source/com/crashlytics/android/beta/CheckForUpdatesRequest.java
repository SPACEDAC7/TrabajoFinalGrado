/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  io.fabric.sdk.android.services.common.AbstractSpiCall
 *  io.fabric.sdk.android.services.network.HttpMethod
 *  io.fabric.sdk.android.services.network.HttpRequest
 *  io.fabric.sdk.android.services.network.HttpRequestFactory
 *  org.json.JSONObject
 */
package com.crashlytics.android.beta;

import com.crashlytics.android.beta.BuildProperties;
import com.crashlytics.android.beta.CheckForUpdatesResponse;
import com.crashlytics.android.beta.CheckForUpdatesResponseTransform;
import io.fabric.sdk.android.Fabric;
import io.fabric.sdk.android.Kit;
import io.fabric.sdk.android.services.common.AbstractSpiCall;
import io.fabric.sdk.android.services.network.HttpMethod;
import io.fabric.sdk.android.services.network.HttpRequest;
import io.fabric.sdk.android.services.network.HttpRequestFactory;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONObject;

class CheckForUpdatesRequest
extends AbstractSpiCall {
    static final String BETA_SOURCE = "3";
    static final String BUILD_VERSION = "build_version";
    static final String DISPLAY_VERSION = "display_version";
    static final String HEADER_BETA_TOKEN = "X-CRASHLYTICS-BETA-TOKEN";
    static final String INSTANCE = "instance";
    static final String SDK_ANDROID_DIR_TOKEN_TYPE = "3";
    static final String SOURCE = "source";
    private final CheckForUpdatesResponseTransform responseTransform;

    public CheckForUpdatesRequest(Kit kit, String string2, String string3, HttpRequestFactory httpRequestFactory, CheckForUpdatesResponseTransform checkForUpdatesResponseTransform) {
        super(kit, string2, string3, httpRequestFactory, HttpMethod.GET);
        this.responseTransform = checkForUpdatesResponseTransform;
    }

    private HttpRequest applyHeadersTo(HttpRequest httpRequest, String string2, String string3) {
        return httpRequest.header("Accept", "application/json").header("User-Agent", "Crashlytics Android SDK/" + this.kit.getVersion()).header("X-CRASHLYTICS-DEVELOPER-TOKEN", "470fa2b4ae81cd56ecbcda9735803434cec591fa").header("X-CRASHLYTICS-API-CLIENT-TYPE", "android").header("X-CRASHLYTICS-API-CLIENT-VERSION", this.kit.getVersion()).header("X-CRASHLYTICS-API-KEY", string2).header("X-CRASHLYTICS-BETA-TOKEN", CheckForUpdatesRequest.createBetaTokenHeaderValueFor(string3));
    }

    static String createBetaTokenHeaderValueFor(String string2) {
        return "3:" + string2;
    }

    private Map<String, String> getQueryParamsFor(BuildProperties buildProperties) {
        HashMap<String, String> hashMap = new HashMap<String, String>();
        hashMap.put("build_version", buildProperties.versionCode);
        hashMap.put("display_version", buildProperties.versionName);
        hashMap.put("instance", buildProperties.buildId);
        hashMap.put("source", "3");
        return hashMap;
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    public CheckForUpdatesResponse invoke(String string2, String object, BuildProperties buildProperties) {
        Object object2;
        Object object3;
        block5 : {
            BuildProperties buildProperties2;
            BuildProperties buildProperties3 = null;
            object3 = buildProperties2 = null;
            object2 = buildProperties3;
            Map<String, String> map = this.getQueryParamsFor(buildProperties);
            object3 = buildProperties2;
            object2 = buildProperties3;
            object3 = buildProperties = this.getHttpRequest(map);
            object2 = buildProperties;
            object3 = string2 = this.applyHeadersTo((HttpRequest)buildProperties, string2, (String)object);
            object2 = string2;
            Fabric.getLogger().d("Beta", "Checking for updates from " + this.getUrl());
            object3 = string2;
            object2 = string2;
            Fabric.getLogger().d("Beta", "Checking for updates query params are: " + map);
            object3 = string2;
            object2 = string2;
            if (!string2.ok()) break block5;
            object3 = string2;
            object2 = string2;
            Fabric.getLogger().d("Beta", "Checking for updates was successful");
            object3 = string2;
            object2 = string2;
            object = new JSONObject(string2.body());
            object3 = string2;
            object2 = string2;
            object = this.responseTransform.fromJson((JSONObject)object);
            if (string2 == null) return object;
            string2 = string2.header("X-REQUEST-ID");
            Fabric.getLogger().d("Fabric", "Checking for updates request ID: " + string2);
            return object;
        }
        object3 = string2;
        object2 = string2;
        try {
            Fabric.getLogger().e("Beta", "Checking for updates failed. Response code: " + string2.code());
            if (string2 == null) return null;
        }
        catch (Exception var1_2) {
            object2 = object3;
            try {
                Fabric.getLogger().e("Beta", "Error while checking for updates from " + this.getUrl(), (Throwable)var1_2);
                if (object3 == null) return null;
            }
            catch (Throwable var1_4) {
                if (object2 == null) throw var1_4;
                object = object2.header("X-REQUEST-ID");
                Fabric.getLogger().d("Fabric", "Checking for updates request ID: " + (String)object);
                throw var1_4;
            }
            String string3 = object3.header("X-REQUEST-ID");
            Fabric.getLogger().d("Fabric", "Checking for updates request ID: " + string3);
            return null;
        }
        string2 = string2.header("X-REQUEST-ID");
        Fabric.getLogger().d("Fabric", "Checking for updates request ID: " + string2);
        return null;
    }
}

