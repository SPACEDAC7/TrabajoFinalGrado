/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.annotation.TargetApi
 *  android.os.Build
 *  android.os.Build$VERSION
 *  io.fabric.sdk.android.services.events.EventTransform
 *  org.json.JSONException
 *  org.json.JSONObject
 */
package com.crashlytics.android.answers;

import android.annotation.TargetApi;
import android.os.Build;
import com.crashlytics.android.answers.SessionEvent;
import com.crashlytics.android.answers.SessionEventMetadata;
import io.fabric.sdk.android.services.events.EventTransform;
import java.io.IOException;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

class SessionEventTransform
implements EventTransform<SessionEvent> {
    static final String ADVERTISING_ID_KEY = "advertisingId";
    static final String ANDROID_ID_KEY = "androidId";
    static final String APP_BUNDLE_ID_KEY = "appBundleId";
    static final String APP_VERSION_CODE_KEY = "appVersionCode";
    static final String APP_VERSION_NAME_KEY = "appVersionName";
    static final String BETA_DEVICE_TOKEN_KEY = "betaDeviceToken";
    static final String BUILD_ID_KEY = "buildId";
    static final String CUSTOM_ATTRIBUTES = "customAttributes";
    static final String CUSTOM_TYPE = "customType";
    static final String DETAILS_KEY = "details";
    static final String DEVICE_MODEL_KEY = "deviceModel";
    static final String EXECUTION_ID_KEY = "executionId";
    static final String INSTALLATION_ID_KEY = "installationId";
    static final String LIMIT_AD_TRACKING_ENABLED_KEY = "limitAdTrackingEnabled";
    static final String OS_VERSION_KEY = "osVersion";
    static final String PREDEFINED_ATTRIBUTES = "predefinedAttributes";
    static final String PREDEFINED_TYPE = "predefinedType";
    static final String TIMESTAMP_KEY = "timestamp";
    static final String TYPE_KEY = "type";

    SessionEventTransform() {
    }

    @TargetApi(value=9)
    public JSONObject buildJsonForEvent(SessionEvent sessionEvent) throws IOException {
        try {
            JSONObject jSONObject = new JSONObject();
            SessionEventMetadata sessionEventMetadata = sessionEvent.sessionEventMetadata;
            jSONObject.put("appBundleId", (Object)sessionEventMetadata.appBundleId);
            jSONObject.put("executionId", (Object)sessionEventMetadata.executionId);
            jSONObject.put("installationId", (Object)sessionEventMetadata.installationId);
            jSONObject.put("androidId", (Object)sessionEventMetadata.androidId);
            jSONObject.put("advertisingId", (Object)sessionEventMetadata.advertisingId);
            jSONObject.put("limitAdTrackingEnabled", (Object)sessionEventMetadata.limitAdTrackingEnabled);
            jSONObject.put("betaDeviceToken", (Object)sessionEventMetadata.betaDeviceToken);
            jSONObject.put("buildId", (Object)sessionEventMetadata.buildId);
            jSONObject.put("osVersion", (Object)sessionEventMetadata.osVersion);
            jSONObject.put("deviceModel", (Object)sessionEventMetadata.deviceModel);
            jSONObject.put("appVersionCode", (Object)sessionEventMetadata.appVersionCode);
            jSONObject.put("appVersionName", (Object)sessionEventMetadata.appVersionName);
            jSONObject.put("timestamp", sessionEvent.timestamp);
            jSONObject.put("type", (Object)sessionEvent.type.toString());
            if (sessionEvent.details != null) {
                jSONObject.put("details", (Object)new JSONObject(sessionEvent.details));
            }
            jSONObject.put("customType", (Object)sessionEvent.customType);
            if (sessionEvent.customAttributes != null) {
                jSONObject.put("customAttributes", (Object)new JSONObject(sessionEvent.customAttributes));
            }
            jSONObject.put("predefinedType", (Object)sessionEvent.predefinedType);
            if (sessionEvent.predefinedAttributes != null) {
                jSONObject.put("predefinedAttributes", (Object)new JSONObject(sessionEvent.predefinedAttributes));
            }
            return jSONObject;
        }
        catch (JSONException var1_2) {
            if (Build.VERSION.SDK_INT >= 9) {
                throw new IOException(var1_2.getMessage(), (Throwable)var1_2);
            }
            throw new IOException(var1_2.getMessage());
        }
    }

    public byte[] toBytes(SessionEvent sessionEvent) throws IOException {
        return this.buildJsonForEvent(sessionEvent).toString().getBytes("UTF-8");
    }
}

