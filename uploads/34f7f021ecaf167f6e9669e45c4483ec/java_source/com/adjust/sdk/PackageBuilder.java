/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.content.ContentResolver
 *  android.content.Context
 *  android.text.TextUtils
 *  org.json.JSONObject
 */
package com.adjust.sdk;

import android.content.ContentResolver;
import android.content.Context;
import android.text.TextUtils;
import com.adjust.sdk.ActivityKind;
import com.adjust.sdk.ActivityPackage;
import com.adjust.sdk.ActivityState;
import com.adjust.sdk.AdjustAttribution;
import com.adjust.sdk.AdjustConfig;
import com.adjust.sdk.AdjustEvent;
import com.adjust.sdk.AdjustFactory;
import com.adjust.sdk.DeviceInfo;
import com.adjust.sdk.ILogger;
import com.adjust.sdk.SessionParameters;
import com.adjust.sdk.Util;
import java.text.SimpleDateFormat;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import org.json.JSONObject;

class PackageBuilder {
    private static ILogger logger = AdjustFactory.getLogger();
    private ActivityStateCopy activityStateCopy;
    private AdjustConfig adjustConfig;
    AdjustAttribution attribution;
    long clickTime;
    private long createdAt;
    String deeplink;
    private DeviceInfo deviceInfo;
    Map<String, String> extraParameters;
    String referrer;
    String reftag;

    public PackageBuilder(AdjustConfig adjustConfig, DeviceInfo deviceInfo, ActivityState activityState, long l2) {
        this.adjustConfig = adjustConfig;
        this.deviceInfo = deviceInfo;
        this.activityStateCopy = new ActivityStateCopy(activityState);
        this.createdAt = l2;
    }

    /*
     * Enabled aggressive block sorting
     */
    public static void addBoolean(Map<String, String> map, String string2, Boolean bl) {
        if (bl == null) {
            return;
        }
        boolean bl2 = bl != false;
        PackageBuilder.addInt(map, string2, (long)bl2 ? 1 : 0);
    }

    public static void addDate(Map<String, String> map, String string2, long l2) {
        if (l2 < 0) {
            return;
        }
        PackageBuilder.addString(map, string2, Util.dateFormatter.format(l2));
    }

    public static void addDouble(Map<String, String> map, String string2, Double d2) {
        if (d2 == null) {
            return;
        }
        PackageBuilder.addString(map, string2, String.format(Locale.US, "%.5f", d2));
    }

    public static void addDuration(Map<String, String> map, String string2, long l2) {
        if (l2 < 0) {
            return;
        }
        PackageBuilder.addInt(map, string2, (500 + l2) / 1000);
    }

    public static void addInt(Map<String, String> map, String string2, long l2) {
        if (l2 < 0) {
            return;
        }
        PackageBuilder.addString(map, string2, Long.toString(l2));
    }

    /*
     * Enabled aggressive block sorting
     */
    public static void addMapJson(Map<String, String> map, String string2, Map<String, String> map2) {
        if (map2 == null || map2.size() == 0) {
            return;
        }
        PackageBuilder.addString(map, string2, new JSONObject(map2).toString());
    }

    public static void addString(Map<String, String> map, String string2, String string3) {
        if (TextUtils.isEmpty((CharSequence)string3)) {
            return;
        }
        map.put(string2, string3);
    }

    private void checkDeviceIds(Map<String, String> map) {
        if (!(map.containsKey("mac_sha1") || map.containsKey("mac_md5") || map.containsKey("android_id") || map.containsKey("gps_adid"))) {
            logger.error("Missing device id's. Please check if Proguard is correctly set with Adjust SDK", new Object[0]);
        }
    }

    /*
     * Enabled aggressive block sorting
     */
    private void fillPluginKeys(Map<String, String> map) {
        if (this.deviceInfo.pluginKeys != null) {
            for (Map.Entry<String, String> entry : this.deviceInfo.pluginKeys.entrySet()) {
                PackageBuilder.addString(map, entry.getKey(), entry.getValue());
            }
        }
    }

    private ActivityPackage getDefaultActivityPackage(ActivityKind object) {
        object = new ActivityPackage((ActivityKind)((Object)object));
        object.setClientSdk(this.deviceInfo.clientSdk);
        return object;
    }

    private Map<String, String> getDefaultParameters() {
        HashMap<String, String> hashMap = new HashMap<String, String>();
        this.injectDeviceInfo(hashMap);
        this.injectConfig(hashMap);
        this.injectActivityState(hashMap);
        this.injectCommonParameters(hashMap);
        this.checkDeviceIds(hashMap);
        return hashMap;
    }

    private String getEventSuffix(AdjustEvent adjustEvent) {
        if (adjustEvent.revenue == null) {
            return String.format(Locale.US, "'%s'", adjustEvent.eventToken);
        }
        return String.format(Locale.US, "(%.5f %s, '%s')", adjustEvent.revenue, adjustEvent.currency, adjustEvent.eventToken);
    }

    private Map<String, String> getIdsParameters() {
        HashMap<String, String> hashMap = new HashMap<String, String>();
        this.injectDeviceInfoIds(hashMap);
        this.injectConfig(hashMap);
        this.injectCommonParameters(hashMap);
        this.checkDeviceIds(hashMap);
        return hashMap;
    }

    private void injectActivityState(Map<String, String> map) {
        PackageBuilder.addString(map, "android_uuid", this.activityStateCopy.uuid);
        PackageBuilder.addInt(map, "session_count", this.activityStateCopy.sessionCount);
        PackageBuilder.addInt(map, "subsession_count", this.activityStateCopy.subsessionCount);
        PackageBuilder.addDuration(map, "session_length", this.activityStateCopy.sessionLength);
        PackageBuilder.addDuration(map, "time_spent", this.activityStateCopy.timeSpent);
    }

    private void injectAttribution(Map<String, String> map) {
        if (this.attribution == null) {
            return;
        }
        PackageBuilder.addString(map, "tracker", this.attribution.trackerName);
        PackageBuilder.addString(map, "campaign", this.attribution.campaign);
        PackageBuilder.addString(map, "adgroup", this.attribution.adgroup);
        PackageBuilder.addString(map, "creative", this.attribution.creative);
    }

    private void injectCommonParameters(Map<String, String> map) {
        PackageBuilder.addDate(map, "created_at", this.createdAt);
        PackageBuilder.addBoolean(map, "attribution_deeplink", true);
    }

    private void injectConfig(Map<String, String> map) {
        PackageBuilder.addString(map, "app_token", this.adjustConfig.appToken);
        PackageBuilder.addString(map, "environment", this.adjustConfig.environment);
        PackageBuilder.addBoolean(map, "device_known", this.adjustConfig.deviceKnown);
        PackageBuilder.addBoolean(map, "needs_response_details", true);
        PackageBuilder.addString(map, "gps_adid", Util.getPlayAdId(this.adjustConfig.context));
        PackageBuilder.addBoolean(map, "tracking_enabled", Util.isPlayTrackingEnabled(this.adjustConfig.context));
        PackageBuilder.addBoolean(map, "event_buffering_enabled", this.adjustConfig.eventBufferingEnabled);
        PackageBuilder.addString(map, "push_token", this.activityStateCopy.pushToken);
        ContentResolver contentResolver = this.adjustConfig.context.getContentResolver();
        PackageBuilder.addString(map, "fire_adid", Util.getFireAdvertisingId(contentResolver));
        PackageBuilder.addBoolean(map, "fire_tracking_enabled", Util.getFireTrackingEnabled(contentResolver));
    }

    private void injectDeviceInfo(Map<String, String> map) {
        this.injectDeviceInfoIds(map);
        PackageBuilder.addString(map, "fb_id", this.deviceInfo.fbAttributionId);
        PackageBuilder.addString(map, "package_name", this.deviceInfo.packageName);
        PackageBuilder.addString(map, "app_version", this.deviceInfo.appVersion);
        PackageBuilder.addString(map, "device_type", this.deviceInfo.deviceType);
        PackageBuilder.addString(map, "device_name", this.deviceInfo.deviceName);
        PackageBuilder.addString(map, "device_manufacturer", this.deviceInfo.deviceManufacturer);
        PackageBuilder.addString(map, "os_name", this.deviceInfo.osName);
        PackageBuilder.addString(map, "os_version", this.deviceInfo.osVersion);
        PackageBuilder.addString(map, "api_level", this.deviceInfo.apiLevel);
        PackageBuilder.addString(map, "language", this.deviceInfo.language);
        PackageBuilder.addString(map, "country", this.deviceInfo.country);
        PackageBuilder.addString(map, "screen_size", this.deviceInfo.screenSize);
        PackageBuilder.addString(map, "screen_format", this.deviceInfo.screenFormat);
        PackageBuilder.addString(map, "screen_density", this.deviceInfo.screenDensity);
        PackageBuilder.addString(map, "display_width", this.deviceInfo.displayWidth);
        PackageBuilder.addString(map, "display_height", this.deviceInfo.displayHeight);
        PackageBuilder.addString(map, "hardware_name", this.deviceInfo.hardwareName);
        PackageBuilder.addString(map, "cpu_type", this.deviceInfo.abi);
        PackageBuilder.addString(map, "os_build", this.deviceInfo.buildName);
        PackageBuilder.addString(map, "vm_isa", this.deviceInfo.vmInstructionSet);
        this.fillPluginKeys(map);
    }

    private void injectDeviceInfoIds(Map<String, String> map) {
        PackageBuilder.addString(map, "mac_sha1", this.deviceInfo.macSha1);
        PackageBuilder.addString(map, "mac_md5", this.deviceInfo.macShortMd5);
        PackageBuilder.addString(map, "android_id", this.deviceInfo.androidId);
    }

    public ActivityPackage buildAttributionPackage() {
        Map<String, String> map = this.getIdsParameters();
        ActivityPackage activityPackage = this.getDefaultActivityPackage(ActivityKind.ATTRIBUTION);
        activityPackage.setPath("attribution");
        activityPackage.setSuffix("");
        activityPackage.setParameters(map);
        return activityPackage;
    }

    public ActivityPackage buildClickPackage(String object) {
        Map<String, String> map = this.getIdsParameters();
        PackageBuilder.addString(map, "source", (String)object);
        PackageBuilder.addDate(map, "click_time", this.clickTime);
        PackageBuilder.addString(map, "reftag", this.reftag);
        PackageBuilder.addMapJson(map, "params", this.extraParameters);
        PackageBuilder.addString(map, "referrer", this.referrer);
        PackageBuilder.addString(map, "deeplink", this.deeplink);
        this.injectAttribution(map);
        object = this.getDefaultActivityPackage(ActivityKind.CLICK);
        object.setPath("/sdk_click");
        object.setSuffix("");
        object.setParameters(map);
        return object;
    }

    public ActivityPackage buildEventPackage(AdjustEvent adjustEvent, SessionParameters object, boolean bl) {
        Map<String, String> map = this.getDefaultParameters();
        PackageBuilder.addInt(map, "event_count", this.activityStateCopy.eventCount);
        PackageBuilder.addString(map, "event_token", adjustEvent.eventToken);
        PackageBuilder.addDouble(map, "revenue", adjustEvent.revenue);
        PackageBuilder.addString(map, "currency", adjustEvent.currency);
        if (!bl) {
            PackageBuilder.addMapJson(map, "callback_params", Util.mergeParameters(object.callbackParameters, adjustEvent.callbackParameters, "Callback"));
            PackageBuilder.addMapJson(map, "partner_params", Util.mergeParameters(object.partnerParameters, adjustEvent.partnerParameters, "Partner"));
        }
        object = this.getDefaultActivityPackage(ActivityKind.EVENT);
        object.setPath("/event");
        object.setSuffix(this.getEventSuffix(adjustEvent));
        object.setParameters(map);
        if (bl) {
            object.setCallbackParameters(adjustEvent.callbackParameters);
            object.setPartnerParameters(adjustEvent.partnerParameters);
        }
        return object;
    }

    public ActivityPackage buildInfoPackage(String object) {
        Map<String, String> map = this.getIdsParameters();
        PackageBuilder.addString(map, "source", (String)object);
        this.injectAttribution(map);
        object = this.getDefaultActivityPackage(ActivityKind.INFO);
        object.setPath("/sdk_info");
        object.setSuffix("");
        object.setParameters(map);
        return object;
    }

    public ActivityPackage buildSessionPackage(SessionParameters object, boolean bl) {
        Map<String, String> map = this.getDefaultParameters();
        PackageBuilder.addDuration(map, "last_interval", this.activityStateCopy.lastInterval);
        PackageBuilder.addString(map, "default_tracker", this.adjustConfig.defaultTracker);
        if (!bl) {
            PackageBuilder.addMapJson(map, "callback_params", object.callbackParameters);
            PackageBuilder.addMapJson(map, "partner_params", object.partnerParameters);
        }
        object = this.getDefaultActivityPackage(ActivityKind.SESSION);
        object.setPath("/session");
        object.setSuffix("");
        object.setParameters(map);
        return object;
    }

    private class ActivityStateCopy {
        int eventCount;
        long lastInterval;
        String pushToken;
        int sessionCount;
        long sessionLength;
        int subsessionCount;
        long timeSpent;
        String uuid;

        ActivityStateCopy(ActivityState activityState) {
            this.lastInterval = -1;
            this.eventCount = -1;
            this.uuid = null;
            this.sessionCount = -1;
            this.subsessionCount = -1;
            this.sessionLength = -1;
            this.timeSpent = -1;
            this.pushToken = null;
            if (activityState == null) {
                return;
            }
            this.lastInterval = activityState.lastInterval;
            this.eventCount = activityState.eventCount;
            this.uuid = activityState.uuid;
            this.sessionCount = activityState.sessionCount;
            this.subsessionCount = activityState.subsessionCount;
            this.sessionLength = activityState.sessionLength;
            this.timeSpent = activityState.timeSpent;
            this.pushToken = activityState.pushToken;
        }
    }

}

