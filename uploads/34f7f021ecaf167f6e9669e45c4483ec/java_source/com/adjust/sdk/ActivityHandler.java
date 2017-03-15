/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.app.ActivityManager
 *  android.app.ActivityManager$RunningAppProcessInfo
 *  android.content.Context
 *  android.content.Intent
 *  android.content.pm.PackageManager
 *  android.content.res.AssetManager
 *  android.net.Uri
 *  android.os.Handler
 *  android.os.Looper
 *  android.os.Process
 */
package com.adjust.sdk;

import android.app.ActivityManager;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.res.AssetManager;
import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import android.os.Process;
import com.adjust.sdk.ActivityPackage;
import com.adjust.sdk.ActivityState;
import com.adjust.sdk.AdjustAttribution;
import com.adjust.sdk.AdjustConfig;
import com.adjust.sdk.AdjustEvent;
import com.adjust.sdk.AdjustEventFailure;
import com.adjust.sdk.AdjustEventSuccess;
import com.adjust.sdk.AdjustFactory;
import com.adjust.sdk.AdjustSessionFailure;
import com.adjust.sdk.AdjustSessionSuccess;
import com.adjust.sdk.AttributionResponseData;
import com.adjust.sdk.CustomScheduledExecutor;
import com.adjust.sdk.DeviceInfo;
import com.adjust.sdk.EventResponseData;
import com.adjust.sdk.IActivityHandler;
import com.adjust.sdk.IAttributionHandler;
import com.adjust.sdk.ILogger;
import com.adjust.sdk.IPackageHandler;
import com.adjust.sdk.IRunActivityHandler;
import com.adjust.sdk.ISdkClickHandler;
import com.adjust.sdk.OnAttributionChangedListener;
import com.adjust.sdk.OnDeeplinkResponseListener;
import com.adjust.sdk.OnEventTrackingFailedListener;
import com.adjust.sdk.OnEventTrackingSucceededListener;
import com.adjust.sdk.OnSessionTrackingFailedListener;
import com.adjust.sdk.OnSessionTrackingSucceededListener;
import com.adjust.sdk.PackageBuilder;
import com.adjust.sdk.ResponseData;
import com.adjust.sdk.SessionParameters;
import com.adjust.sdk.SessionResponseData;
import com.adjust.sdk.TimerCycle;
import com.adjust.sdk.TimerOnce;
import com.adjust.sdk.Util;
import java.io.InputStream;
import java.text.DecimalFormat;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Properties;
import java.util.concurrent.Future;

public class ActivityHandler
implements IActivityHandler {
    private static final String ACTIVITY_STATE_NAME = "Activity state";
    private static final String ADJUST_PREFIX = "adjust_";
    private static final String ATTRIBUTION_NAME = "Attribution";
    private static long BACKGROUND_TIMER_INTERVAL = 0;
    private static final String BACKGROUND_TIMER_NAME = "Background timer";
    private static final String DELAY_START_TIMER_NAME = "Delay Start timer";
    private static long FOREGROUND_TIMER_INTERVAL = 0;
    private static final String FOREGROUND_TIMER_NAME = "Foreground timer";
    private static long FOREGROUND_TIMER_START = 0;
    private static final String SESSION_CALLBACK_PARAMETERS_NAME = "Session Callback parameters";
    private static long SESSION_INTERVAL = 0;
    private static final String SESSION_PARTNER_PARAMETERS_NAME = "Session Partner parameters";
    private static long SUBSESSION_INTERVAL = 0;
    private static final String TIME_TRAVEL = "Time travel!";
    private ActivityState activityState;
    private AdjustConfig adjustConfig;
    private AdjustAttribution attribution;
    private IAttributionHandler attributionHandler;
    private TimerOnce backgroundTimer;
    private TimerOnce delayStartTimer;
    private DeviceInfo deviceInfo;
    private TimerCycle foregroundTimer;
    private InternalState internalState;
    private ILogger logger;
    private IPackageHandler packageHandler;
    private CustomScheduledExecutor scheduledExecutor;
    private ISdkClickHandler sdkClickHandler;
    private SessionParameters sessionParameters;

    private ActivityHandler(AdjustConfig adjustConfig) {
        this.init(adjustConfig);
        this.logger = AdjustFactory.getLogger();
        this.logger.lockLogLevel();
        this.scheduledExecutor = new CustomScheduledExecutor("ActivityHandler");
        this.internalState = new InternalState();
        this.internalState.enabled = true;
        this.internalState.offline = false;
        this.internalState.background = true;
        this.internalState.delayStart = false;
        this.internalState.updatePackages = false;
        this.scheduledExecutor.submit(new Runnable(){

            @Override
            public void run() {
                ActivityHandler.this.initI();
            }
        });
    }

    static /* synthetic */ AdjustConfig access$2100(ActivityHandler activityHandler) {
        return activityHandler.adjustConfig;
    }

    private void backgroundTimerFiredI() {
        if (this.toSendI()) {
            this.packageHandler.sendFirstPackage();
        }
    }

    private boolean checkActivityStateI(ActivityState activityState) {
        if (activityState == null) {
            this.logger.error("Missing activity state", new Object[0]);
            return false;
        }
        return true;
    }

    /*
     * Enabled aggressive block sorting
     */
    private void checkAttributionStateI() {
        if (!this.checkActivityStateI(this.activityState) || this.activityState.subsessionCount <= 1 || this.attribution != null && !this.activityState.askingAttribution) {
            return;
        }
        this.attributionHandler.getAttribution();
    }

    private boolean checkEventI(AdjustEvent adjustEvent) {
        if (adjustEvent == null) {
            this.logger.error("Event missing", new Object[0]);
            return false;
        }
        if (!adjustEvent.isValid()) {
            this.logger.error("Event not initialized correctly", new Object[0]);
            return false;
        }
        return true;
    }

    private boolean checkOrderIdI(String string2) {
        if (string2 == null || string2.isEmpty()) {
            return true;
        }
        if (this.activityState.findOrderId(string2)) {
            this.logger.info("Skipping duplicated order ID '%s'", string2);
            return false;
        }
        this.activityState.addOrderId(string2);
        this.logger.verbose("Added order ID '%s'", string2);
        return true;
    }

    /*
     * Enabled aggressive block sorting
     */
    private Intent createDeeplinkIntentI(Uri uri) {
        uri = this.adjustConfig.deepLinkComponent == null ? new Intent("android.intent.action.VIEW", uri) : new Intent("android.intent.action.VIEW", uri, this.adjustConfig.context, this.adjustConfig.deepLinkComponent);
        uri.setFlags(268435456);
        uri.setPackage(this.adjustConfig.context.getPackageName());
        return uri;
    }

    /*
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    private void delayStartI() {
        long l2;
        String string2;
        if (this.internalState.isToStartNow()) {
            return;
        }
        if (this.isToUpdatePackagesI()) return;
        double d2 = this.adjustConfig.delayStart != null ? this.adjustConfig.delayStart : 0.0;
        long l3 = AdjustFactory.getMaxDelayStart();
        long l4 = l2 = (long)(1000.0 * d2);
        double d3 = d2;
        if (l2 > l3) {
            d3 = l3 / 1000;
            string2 = Util.SecondsDisplayFormat.format(d2);
            String string3 = Util.SecondsDisplayFormat.format(d3);
            this.logger.warn("Delay start of %s seconds bigger than max allowed value of %s seconds", string2, string3);
            l4 = l3;
        }
        string2 = Util.SecondsDisplayFormat.format(d3);
        this.logger.info("Waiting %s seconds before starting first session", string2);
        this.delayStartTimer.startIn(l4);
        this.internalState.updatePackages = true;
        if (this.activityState == null) return;
        this.activityState.updatePackages = true;
        this.writeActivityStateI();
    }

    public static boolean deleteActivityState(Context context) {
        return context.deleteFile("AdjustIoActivityState");
    }

    public static boolean deleteAttribution(Context context) {
        return context.deleteFile("AdjustAttribution");
    }

    public static boolean deleteSessionCallbackParameters(Context context) {
        return context.deleteFile("AdjustSessionCallbackParameters");
    }

    public static boolean deleteSessionPartnerParameters(Context context) {
        return context.deleteFile("AdjustSessionPartnerParameters");
    }

    private void endI() {
        if (!this.toSendI()) {
            this.pauseSendingI();
        }
        if (this.updateActivityStateI(System.currentTimeMillis())) {
            this.writeActivityStateI();
        }
    }

    /*
     * Enabled aggressive block sorting
     */
    private void foregroundTimerFiredI() {
        if (!this.isEnabledI()) {
            this.stopForegroundTimerI();
            return;
        } else {
            if (this.toSendI()) {
                this.packageHandler.sendFirstPackage();
            }
            if (!this.updateActivityStateI(System.currentTimeMillis())) return;
            {
                this.writeActivityStateI();
                return;
            }
        }
    }

    /*
     * Enabled aggressive block sorting
     */
    public static ActivityHandler getInstance(AdjustConfig adjustConfig) {
        if (adjustConfig == null) {
            AdjustFactory.getLogger().error("AdjustConfig missing", new Object[0]);
            return null;
        }
        if (!adjustConfig.isValid()) {
            AdjustFactory.getLogger().error("AdjustConfig not initialized correctly", new Object[0]);
            return null;
        }
        if (adjustConfig.processName == null) return new ActivityHandler(adjustConfig);
        int n2 = Process.myPid();
        ActivityManager activityManager = (ActivityManager)adjustConfig.context.getSystemService("activity");
        if (activityManager == null) return null;
        for (ActivityManager.RunningAppProcessInfo runningAppProcessInfo : activityManager.getRunningAppProcesses()) {
            if (runningAppProcessInfo.pid != n2) continue;
            if (runningAppProcessInfo.processName.equalsIgnoreCase(adjustConfig.processName)) return new ActivityHandler(adjustConfig);
            {
                AdjustFactory.getLogger().info("Skipping initialization in background process (%s)", runningAppProcessInfo.processName);
                return null;
            }
        }
        return new ActivityHandler(adjustConfig);
    }

    private boolean hasChangedState(boolean bl, boolean bl2, String string2, String string3) {
        if (bl != bl2) {
            return true;
        }
        if (bl) {
            this.logger.debug(string2, new Object[0]);
            return false;
        }
        this.logger.debug(string3, new Object[0]);
        return false;
    }

    /*
     * Enabled aggressive block sorting
     */
    private void initI() {
        SESSION_INTERVAL = AdjustFactory.getSessionInterval();
        SUBSESSION_INTERVAL = AdjustFactory.getSubsessionInterval();
        FOREGROUND_TIMER_INTERVAL = AdjustFactory.getTimerInterval();
        FOREGROUND_TIMER_START = AdjustFactory.getTimerStart();
        BACKGROUND_TIMER_INTERVAL = AdjustFactory.getTimerInterval();
        this.readAttributionI(this.adjustConfig.context);
        this.readActivityStateI(this.adjustConfig.context);
        this.sessionParameters = new SessionParameters();
        this.readSessionCallbackParametersI(this.adjustConfig.context);
        this.readSessionPartnerParametersI(this.adjustConfig.context);
        if (this.activityState != null) {
            this.internalState.enabled = this.activityState.enabled;
            this.internalState.updatePackages = this.activityState.updatePackages;
        }
        this.readConfigFile(this.adjustConfig.context);
        this.deviceInfo = new DeviceInfo(this.adjustConfig.context, this.adjustConfig.sdkPrefix);
        if (this.adjustConfig.eventBufferingEnabled) {
            this.logger.info("Event buffering is enabled", new Object[0]);
        }
        if (Util.getPlayAdId(this.adjustConfig.context) == null) {
            this.logger.warn("Unable to get Google Play Services Advertising ID at start time", new Object[0]);
            if (this.deviceInfo.macSha1 == null && this.deviceInfo.macShortMd5 == null && this.deviceInfo.androidId == null) {
                this.logger.error("Unable to get any device id's. Please check if Proguard is correctly set with Adjust SDK", new Object[0]);
            }
        } else {
            this.logger.info("Google Play Services Advertising ID read correctly at start time", new Object[0]);
        }
        if (this.adjustConfig.defaultTracker != null) {
            this.logger.info("Default tracker: '%s'", this.adjustConfig.defaultTracker);
        }
        if (this.adjustConfig.pushToken != null) {
            this.logger.info("Push token: '%s'", this.adjustConfig.pushToken);
            if (this.activityState != null) {
                this.setPushToken(this.adjustConfig.pushToken);
            }
        }
        this.foregroundTimer = new TimerCycle(this.scheduledExecutor, new Runnable(){

            @Override
            public void run() {
                ActivityHandler.this.foregroundTimerFiredI();
            }
        }, FOREGROUND_TIMER_START, FOREGROUND_TIMER_INTERVAL, "Foreground timer");
        if (this.adjustConfig.sendInBackground) {
            this.logger.info("Send in background configured", new Object[0]);
            this.backgroundTimer = new TimerOnce(this.scheduledExecutor, new Runnable(){

                @Override
                public void run() {
                    ActivityHandler.this.backgroundTimerFiredI();
                }
            }, "Background timer");
        }
        if (this.activityState == null && this.adjustConfig.delayStart != null && this.adjustConfig.delayStart > 0.0) {
            this.logger.info("Delay start configured", new Object[0]);
            this.internalState.delayStart = true;
            this.delayStartTimer = new TimerOnce(this.scheduledExecutor, new Runnable(){

                @Override
                public void run() {
                    ActivityHandler.this.sendFirstPackagesI();
                }
            }, "Delay Start timer");
        }
        Util.setUserAgent(this.adjustConfig.userAgent);
        this.packageHandler = AdjustFactory.getPackageHandler(this, this.adjustConfig.context, this.toSendI(false));
        this.attributionHandler = AdjustFactory.getAttributionHandler(this, this.getAttributionPackageI(), this.toSendI(false));
        this.sdkClickHandler = AdjustFactory.getSdkClickHandler(this.toSendI(true));
        if (this.isToUpdatePackagesI()) {
            this.updatePackagesI();
        }
        if (this.adjustConfig.referrer != null) {
            this.sendReferrerI(this.adjustConfig.referrer, this.adjustConfig.referrerClickTime);
        }
        this.sessionParametersActionsI(this.adjustConfig.sessionParametersActionsArray);
    }

    private boolean isEnabledI() {
        if (this.activityState != null) {
            return this.activityState.enabled;
        }
        return this.internalState.isEnabled();
    }

    private boolean isToUpdatePackagesI() {
        if (this.activityState != null) {
            return this.activityState.updatePackages;
        }
        return this.internalState.isToUpdatePackages();
    }

    private void launchAttributionListenerI(Handler handler) {
        if (this.adjustConfig.onAttributionChangedListener == null) {
            return;
        }
        handler.post(new Runnable(){

            @Override
            public void run() {
                ActivityHandler.access$2100((ActivityHandler)ActivityHandler.this).onAttributionChangedListener.onAttributionChanged(ActivityHandler.this.attribution);
            }
        });
    }

    private void launchAttributionResponseTasksI(AttributionResponseData attributionResponseData) {
        this.updateAdidI(attributionResponseData.adid);
        Handler handler = new Handler(this.adjustConfig.context.getMainLooper());
        if (this.updateAttributionI(attributionResponseData.attribution)) {
            this.launchAttributionListenerI(handler);
        }
        this.prepareDeeplinkI(attributionResponseData.deeplink, handler);
    }

    /*
     * Enabled aggressive block sorting
     */
    private void launchDeeplinkMain(Intent intent, Uri uri) {
        boolean bl = this.adjustConfig.context.getPackageManager().queryIntentActivities(intent, 0).size() > 0;
        if (!bl) {
            this.logger.error("Unable to open deferred deep link (%s)", new Object[]{uri});
            return;
        }
        this.logger.info("Open deferred deep link (%s)", new Object[]{uri});
        this.adjustConfig.context.startActivity(intent);
    }

    /*
     * Enabled aggressive block sorting
     */
    private void launchEventResponseTasksI(final EventResponseData eventResponseData) {
        this.updateAdidI(eventResponseData.adid);
        Handler handler = new Handler(this.adjustConfig.context.getMainLooper());
        if (eventResponseData.success && this.adjustConfig.onEventTrackingSucceededListener != null) {
            this.logger.debug("Launching success event tracking listener", new Object[0]);
            handler.post(new Runnable(){

                @Override
                public void run() {
                    ActivityHandler.access$2100((ActivityHandler)ActivityHandler.this).onEventTrackingSucceededListener.onFinishedEventTrackingSucceeded(eventResponseData.getSuccessResponseData());
                }
            });
            return;
        } else {
            if (eventResponseData.success || this.adjustConfig.onEventTrackingFailedListener == null) return;
            {
                this.logger.debug("Launching failed event tracking listener", new Object[0]);
                handler.post(new Runnable(){

                    @Override
                    public void run() {
                        ActivityHandler.access$2100((ActivityHandler)ActivityHandler.this).onEventTrackingFailedListener.onFinishedEventTrackingFailed(eventResponseData.getFailureResponseData());
                    }
                });
                return;
            }
        }
    }

    /*
     * Enabled aggressive block sorting
     */
    private void launchSessionResponseListenerI(final SessionResponseData sessionResponseData, Handler handler) {
        if (sessionResponseData.success && this.adjustConfig.onSessionTrackingSucceededListener != null) {
            this.logger.debug("Launching success session tracking listener", new Object[0]);
            handler.post(new Runnable(){

                @Override
                public void run() {
                    ActivityHandler.access$2100((ActivityHandler)ActivityHandler.this).onSessionTrackingSucceededListener.onFinishedSessionTrackingSucceeded(sessionResponseData.getSuccessResponseData());
                }
            });
            return;
        } else {
            if (sessionResponseData.success || this.adjustConfig.onSessionTrackingFailedListener == null) return;
            {
                this.logger.debug("Launching failed session tracking listener", new Object[0]);
                handler.post(new Runnable(){

                    @Override
                    public void run() {
                        ActivityHandler.access$2100((ActivityHandler)ActivityHandler.this).onSessionTrackingFailedListener.onFinishedSessionTrackingFailed(sessionResponseData.getFailureResponseData());
                    }
                });
                return;
            }
        }
    }

    private void launchSessionResponseTasksI(SessionResponseData sessionResponseData) {
        this.updateAdidI(sessionResponseData.adid);
        Handler handler = new Handler(this.adjustConfig.context.getMainLooper());
        if (this.updateAttributionI(sessionResponseData.attribution)) {
            this.launchAttributionListenerI(handler);
        }
        this.launchSessionResponseListenerI(sessionResponseData, handler);
    }

    private void pauseSendingI() {
        this.attributionHandler.pauseSending();
        this.packageHandler.pauseSending();
        if (!this.toSendI(true)) {
            this.sdkClickHandler.pauseSending();
            return;
        }
        this.sdkClickHandler.resumeSending();
    }

    private boolean pausedI() {
        return this.pausedI(false);
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    private boolean pausedI(boolean bl) {
        boolean bl2 = false;
        if (bl) {
            if (this.internalState.isOffline()) return true;
            bl = bl2;
            if (this.isEnabledI()) return bl;
            return true;
        }
        if (this.internalState.isOffline()) return true;
        if (!this.isEnabledI()) return true;
        bl = bl2;
        if (!this.internalState.isDelayStart()) return bl;
        return true;
    }

    private void prepareDeeplinkI(final Uri uri, Handler handler) {
        if (uri == null) {
            return;
        }
        this.logger.info("Deferred deeplink received (%s)", new Object[]{uri});
        handler.post(new Runnable(this.createDeeplinkIntentI(uri)){
            final /* synthetic */ Intent val$deeplinkIntent;

            @Override
            public void run() {
                boolean bl = true;
                if (ActivityHandler.access$2100((ActivityHandler)ActivityHandler.this).onDeeplinkResponseListener != null) {
                    bl = ActivityHandler.access$2100((ActivityHandler)ActivityHandler.this).onDeeplinkResponseListener.launchReceivedDeeplink(uri);
                }
                if (bl) {
                    ActivityHandler.this.launchDeeplinkMain(this.val$deeplinkIntent, uri);
                }
            }
        });
    }

    private void processSessionI() {
        long l2 = System.currentTimeMillis();
        if (this.activityState == null) {
            this.activityState = new ActivityState();
            this.activityState.sessionCount = 1;
            this.activityState.pushToken = this.adjustConfig.pushToken;
            this.transferSessionPackageI(l2);
            this.activityState.resetSessionAttributes(l2);
            this.activityState.enabled = this.internalState.isEnabled();
            this.activityState.updatePackages = this.internalState.isToUpdatePackages();
            this.writeActivityStateI();
            return;
        }
        long l3 = l2 - this.activityState.lastActivity;
        if (l3 < 0) {
            this.logger.error("Time travel!", new Object[0]);
            this.activityState.lastActivity = l2;
            this.writeActivityStateI();
            return;
        }
        if (l3 > SESSION_INTERVAL) {
            ActivityState activityState = this.activityState;
            ++activityState.sessionCount;
            this.activityState.lastInterval = l3;
            this.transferSessionPackageI(l2);
            this.activityState.resetSessionAttributes(l2);
            this.writeActivityStateI();
            return;
        }
        if (l3 > SUBSESSION_INTERVAL) {
            ActivityState activityState = this.activityState;
            ++activityState.subsessionCount;
            activityState = this.activityState;
            activityState.sessionLength += l3;
            this.activityState.lastActivity = l2;
            this.logger.verbose("Started subsession %d of session %d", this.activityState.subsessionCount, this.activityState.sessionCount);
            this.writeActivityStateI();
            return;
        }
        this.logger.verbose("Time span since last activity too short for a new subsession", new Object[0]);
    }

    private PackageBuilder queryStringClickPackageBuilderI(String object) {
        if (object == null) {
            return null;
        }
        LinkedHashMap<String, String> linkedHashMap = new LinkedHashMap<String, String>();
        AdjustAttribution adjustAttribution = new AdjustAttribution();
        this.logger.verbose("Reading query string (%s)", object);
        object = object.split("&");
        int n2 = object.length;
        for (int i2 = 0; i2 < n2; ++i2) {
            this.readQueryStringI(object[i2], linkedHashMap, adjustAttribution);
        }
        object = (String)linkedHashMap.remove("reftag");
        long l2 = System.currentTimeMillis();
        PackageBuilder packageBuilder = new PackageBuilder(this.adjustConfig, this.deviceInfo, this.activityState, l2);
        packageBuilder.extraParameters = linkedHashMap;
        packageBuilder.attribution = adjustAttribution;
        packageBuilder.reftag = object;
        return packageBuilder;
    }

    private void readActivityStateI(Context context) {
        try {
            this.activityState = (ActivityState)Util.readObject(context, "AdjustIoActivityState", "Activity state", ActivityState.class);
            return;
        }
        catch (Exception var1_2) {
            this.logger.error("Failed to read %s file (%s)", "Activity state", var1_2.getMessage());
            this.activityState = null;
            return;
        }
    }

    private void readAttributionI(Context context) {
        try {
            this.attribution = (AdjustAttribution)Util.readObject(context, "AdjustAttribution", "Attribution", AdjustAttribution.class);
            return;
        }
        catch (Exception var1_2) {
            this.logger.error("Failed to read %s file (%s)", "Attribution", var1_2.getMessage());
            this.attribution = null;
            return;
        }
    }

    private void readConfigFile(Context object) {
        try {
            object = object.getAssets().open("adjust_config.properties");
            Properties properties = new Properties();
            properties.load((InputStream)object);
            this.logger.verbose("adjust_config.properties file read and loaded", new Object[0]);
            object = properties.getProperty("defaultTracker");
            if (object != null) {
                this.adjustConfig.defaultTracker = object;
            }
            return;
        }
        catch (Exception var1_2) {
            this.logger.debug("%s file not found in this app", var1_2.getMessage());
            return;
        }
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    private void readOpenUrlI(Uri object, long l2) {
        String string2;
        if (object == null) {
            return;
        }
        Object object2 = string2 = object.getQuery();
        if (string2 == null) {
            object2 = string2;
            if (object.toString().length() > 0) {
                object2 = "";
            }
        }
        if ((object2 = this.queryStringClickPackageBuilderI((String)object2)) == null) return;
        object2.deeplink = object.toString();
        object2.clickTime = l2;
        object = object2.buildClickPackage("deeplink");
        this.sdkClickHandler.sendSdkClick((ActivityPackage)object);
    }

    /*
     * Enabled aggressive block sorting
     */
    private boolean readQueryStringI(String string2, Map<String, String> map, AdjustAttribution adjustAttribution) {
        String[] arrstring = string2.split("=");
        if (arrstring.length != 2 || !(string2 = arrstring[0]).startsWith("adjust_") || (arrstring = arrstring[1]).length() == 0 || (string2 = string2.substring("adjust_".length())).length() == 0) {
            return false;
        }
        if (!this.trySetAttributionI(adjustAttribution, string2, (String)arrstring)) {
            map.put(string2, (String)arrstring);
        }
        return true;
    }

    private void readSessionCallbackParametersI(Context context) {
        try {
            this.sessionParameters.callbackParameters = (Map)Util.readObject(context, "AdjustSessionCallbackParameters", "Session Callback parameters", Map.class);
            return;
        }
        catch (Exception var1_2) {
            this.logger.error("Failed to read %s file (%s)", "Session Callback parameters", var1_2.getMessage());
            this.sessionParameters.callbackParameters = null;
            return;
        }
    }

    private void readSessionPartnerParametersI(Context context) {
        try {
            this.sessionParameters.partnerParameters = (Map)Util.readObject(context, "AdjustSessionPartnerParameters", "Session Partner parameters", Map.class);
            return;
        }
        catch (Exception var1_2) {
            this.logger.error("Failed to read %s file (%s)", "Session Partner parameters", var1_2.getMessage());
            this.sessionParameters.partnerParameters = null;
            return;
        }
    }

    private void resumeSendingI() {
        this.attributionHandler.resumeSending();
        this.packageHandler.resumeSending();
        this.sdkClickHandler.resumeSending();
    }

    private void sendFirstPackagesI() {
        if (this.internalState.isToStartNow()) {
            this.logger.info("Start delay expired or never configured", new Object[0]);
            return;
        }
        this.updatePackagesI();
        this.internalState.delayStart = false;
        this.delayStartTimer.cancel();
        this.delayStartTimer = null;
        this.updateHandlersStatusAndSendI();
    }

    /*
     * Enabled aggressive block sorting
     */
    private void sendReferrerI(String object, long l2) {
        PackageBuilder packageBuilder;
        if (object == null || object.length() == 0 || (packageBuilder = this.queryStringClickPackageBuilderI((String)object)) == null) {
            return;
        }
        packageBuilder.referrer = object;
        packageBuilder.clickTime = l2;
        object = packageBuilder.buildClickPackage("reftag");
        this.sdkClickHandler.sendSdkClick((ActivityPackage)object);
    }

    /*
     * Enabled aggressive block sorting
     */
    private void sessionParametersActionsI(List<IRunActivityHandler> iterator) {
        if (iterator != null) {
            iterator = iterator.iterator();
            while (iterator.hasNext()) {
                ((IRunActivityHandler)iterator.next()).run(this);
            }
        }
    }

    /*
     * Enabled aggressive block sorting
     */
    private void setPushTokenI(String object) {
        if (object == null || object.equals(this.activityState.pushToken)) {
            return;
        }
        this.activityState.pushToken = object;
        this.writeActivityStateI();
        long l2 = System.currentTimeMillis();
        object = new PackageBuilder(this.adjustConfig, this.deviceInfo, this.activityState, l2).buildInfoPackage("push");
        this.packageHandler.addPackage((ActivityPackage)object);
        this.packageHandler.sendFirstPackage();
    }

    /*
     * Enabled aggressive block sorting
     */
    private void startBackgroundTimerI() {
        if (this.backgroundTimer == null || !this.toSendI() || this.backgroundTimer.getFireIn() > 0) {
            return;
        }
        this.backgroundTimer.startIn(BACKGROUND_TIMER_INTERVAL);
    }

    private void startForegroundTimerI() {
        if (!this.isEnabledI()) {
            return;
        }
        this.foregroundTimer.start();
    }

    private void startI() {
        if (this.activityState != null && !this.activityState.enabled) {
            return;
        }
        this.updateHandlersStatusAndSendI();
        this.processSessionI();
        this.checkAttributionStateI();
    }

    private void stopBackgroundTimerI() {
        if (this.backgroundTimer == null) {
            return;
        }
        this.backgroundTimer.cancel();
    }

    private void stopForegroundTimerI() {
        this.foregroundTimer.suspend();
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    private void teardownActivityStateS(boolean bl) {
        synchronized (ActivityState.class) {
            if (this.activityState == null) {
                return;
            }
            if (bl && this.adjustConfig != null && this.adjustConfig.context != null) {
                ActivityHandler.deleteActivityState(this.adjustConfig.context);
            }
            this.activityState = null;
            return;
        }
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    private void teardownAllSessionParametersS(boolean bl) {
        synchronized (SessionParameters.class) {
            if (this.sessionParameters == null) {
                return;
            }
            if (bl && this.adjustConfig != null && this.adjustConfig.context != null) {
                ActivityHandler.deleteSessionCallbackParameters(this.adjustConfig.context);
                ActivityHandler.deleteSessionPartnerParameters(this.adjustConfig.context);
            }
            this.sessionParameters = null;
            return;
        }
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    private void teardownAttributionS(boolean bl) {
        synchronized (AdjustAttribution.class) {
            if (this.attribution == null) {
                return;
            }
            if (bl && this.adjustConfig != null && this.adjustConfig.context != null) {
                ActivityHandler.deleteAttribution(this.adjustConfig.context);
            }
            this.attribution = null;
            return;
        }
    }

    private boolean toSendI() {
        return this.toSendI(false);
    }

    private boolean toSendI(boolean bl) {
        if (this.pausedI(bl)) {
            return false;
        }
        if (this.adjustConfig.sendInBackground) {
            return true;
        }
        return this.internalState.isForeground();
    }

    /*
     * Enabled aggressive block sorting
     */
    private void trackEventI(AdjustEvent object) {
        if (!(this.checkActivityStateI(this.activityState) && this.isEnabledI() && this.checkEventI((AdjustEvent)object) && this.checkOrderIdI(object.orderId))) {
            return;
        }
        long l2 = System.currentTimeMillis();
        ActivityState activityState = this.activityState;
        ++activityState.eventCount;
        this.updateActivityStateI(l2);
        object = new PackageBuilder(this.adjustConfig, this.deviceInfo, this.activityState, l2).buildEventPackage((AdjustEvent)object, this.sessionParameters, this.internalState.isDelayStart());
        this.packageHandler.addPackage((ActivityPackage)object);
        if (this.adjustConfig.eventBufferingEnabled) {
            this.logger.info("Buffered event %s", object.getSuffix());
        } else {
            this.packageHandler.sendFirstPackage();
        }
        if (this.adjustConfig.sendInBackground && this.internalState.isBackground()) {
            this.startBackgroundTimerI();
        }
        this.writeActivityStateI();
    }

    private void transferSessionPackageI(long l2) {
        ActivityPackage activityPackage = new PackageBuilder(this.adjustConfig, this.deviceInfo, this.activityState, l2).buildSessionPackage(this.sessionParameters, this.internalState.isDelayStart());
        this.packageHandler.addPackage(activityPackage);
        this.packageHandler.sendFirstPackage();
    }

    private boolean trySetAttributionI(AdjustAttribution adjustAttribution, String string2, String string3) {
        if (string2.equals("tracker")) {
            adjustAttribution.trackerName = string3;
            return true;
        }
        if (string2.equals("campaign")) {
            adjustAttribution.campaign = string3;
            return true;
        }
        if (string2.equals("adgroup")) {
            adjustAttribution.adgroup = string3;
            return true;
        }
        if (string2.equals("creative")) {
            adjustAttribution.creative = string3;
            return true;
        }
        return false;
    }

    /*
     * Enabled aggressive block sorting
     */
    private boolean updateActivityStateI(long l2) {
        if (!this.checkActivityStateI(this.activityState)) {
            return false;
        }
        long l3 = l2 - this.activityState.lastActivity;
        if (l3 > SESSION_INTERVAL) return false;
        this.activityState.lastActivity = l2;
        if (l3 < 0) {
            this.logger.error("Time travel!", new Object[0]);
            return true;
        }
        ActivityState activityState = this.activityState;
        activityState.sessionLength += l3;
        activityState = this.activityState;
        activityState.timeSpent += l3;
        return true;
    }

    /*
     * Enabled aggressive block sorting
     */
    private void updateAdidI(String string2) {
        if (string2 == null || string2.equals(this.activityState.adid)) {
            return;
        }
        this.activityState.adid = string2;
        this.writeActivityStateI();
    }

    private void updateHandlersStatusAndSend() {
        this.scheduledExecutor.submit(new Runnable(){

            @Override
            public void run() {
                ActivityHandler.this.updateHandlersStatusAndSendI();
            }
        });
    }

    /*
     * Enabled aggressive block sorting
     */
    private void updateHandlersStatusAndSendI() {
        if (!this.toSendI()) {
            this.pauseSendingI();
            return;
        } else {
            this.resumeSendingI();
            if (this.adjustConfig.eventBufferingEnabled) return;
            {
                this.packageHandler.sendFirstPackage();
                return;
            }
        }
    }

    private void updatePackagesI() {
        this.packageHandler.updatePackages(this.sessionParameters);
        this.internalState.updatePackages = false;
        if (this.activityState != null) {
            this.activityState.updatePackages = false;
            this.writeActivityStateI();
        }
    }

    /*
     * Enabled aggressive block sorting
     */
    private void updateStatus(boolean bl, String string2, String string3, String string4) {
        if (bl) {
            this.logger.info(string2, new Object[0]);
        } else if (this.pausedI(false)) {
            if (this.pausedI(true)) {
                this.logger.info(string3, new Object[0]);
            } else {
                this.logger.info(string3 + ", except the Sdk Click Handler", new Object[0]);
            }
        } else {
            this.logger.info(string4, new Object[0]);
        }
        this.updateHandlersStatusAndSend();
    }

    private void writeActivityStateI() {
        this.writeActivityStateS(null);
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    private void writeActivityStateS(Runnable runnable) {
        synchronized (ActivityState.class) {
            if (this.activityState == null) {
                return;
            }
            if (runnable != null) {
                runnable.run();
            }
            Util.writeObject(this.activityState, this.adjustConfig.context, "AdjustIoActivityState", "Activity state");
            return;
        }
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    private void writeAttributionI() {
        synchronized (AdjustAttribution.class) {
            if (this.attribution == null) {
                return;
            }
            Util.writeObject(this.attribution, this.adjustConfig.context, "AdjustAttribution", "Attribution");
            return;
        }
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    private void writeSessionCallbackParametersI() {
        synchronized (SessionParameters.class) {
            if (this.sessionParameters == null) {
                return;
            }
            Util.writeObject(this.sessionParameters.callbackParameters, this.adjustConfig.context, "AdjustSessionCallbackParameters", "Session Callback parameters");
            return;
        }
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    private void writeSessionPartnerParametersI() {
        synchronized (SessionParameters.class) {
            if (this.sessionParameters == null) {
                return;
            }
            Util.writeObject(this.sessionParameters.partnerParameters, this.adjustConfig.context, "AdjustSessionPartnerParameters", "Session Partner parameters");
            return;
        }
    }

    @Override
    public void addSessionCallbackParameter(final String string2, final String string3) {
        this.scheduledExecutor.submit(new Runnable(){

            @Override
            public void run() {
                ActivityHandler.this.addSessionCallbackParameterI(string2, string3);
            }
        });
    }

    /*
     * Enabled aggressive block sorting
     */
    public void addSessionCallbackParameterI(String string2, String string3) {
        String string4;
        if (!Util.isValidParameter(string2, "key", "Session Callback") || !Util.isValidParameter(string3, "value", "Session Callback")) {
            return;
        }
        if (this.sessionParameters.callbackParameters == null) {
            this.sessionParameters.callbackParameters = new LinkedHashMap<String, String>();
        }
        if (string3.equals(string4 = this.sessionParameters.callbackParameters.get(string2))) {
            this.logger.verbose("Key %s already present with the same value", string2);
            return;
        }
        if (string4 != null) {
            this.logger.warn("Key %s will be overwritten", string2);
        }
        this.sessionParameters.callbackParameters.put(string2, string3);
        this.writeSessionCallbackParametersI();
    }

    @Override
    public void addSessionPartnerParameter(final String string2, final String string3) {
        this.scheduledExecutor.submit(new Runnable(){

            @Override
            public void run() {
                ActivityHandler.this.addSessionPartnerParameterI(string2, string3);
            }
        });
    }

    /*
     * Enabled aggressive block sorting
     */
    public void addSessionPartnerParameterI(String string2, String string3) {
        String string4;
        if (!Util.isValidParameter(string2, "key", "Session Partner") || !Util.isValidParameter(string3, "value", "Session Partner")) {
            return;
        }
        if (this.sessionParameters.partnerParameters == null) {
            this.sessionParameters.partnerParameters = new LinkedHashMap<String, String>();
        }
        if (string3.equals(string4 = this.sessionParameters.partnerParameters.get(string2))) {
            this.logger.verbose("Key %s already present with the same value", string2);
            return;
        }
        if (string4 != null) {
            this.logger.warn("Key %s will be overwritten", string2);
        }
        this.sessionParameters.partnerParameters.put(string2, string3);
        this.writeSessionPartnerParametersI();
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    public void finishedTrackingActivity(ResponseData responseData) {
        if (responseData instanceof SessionResponseData) {
            this.attributionHandler.checkSessionResponse((SessionResponseData)responseData);
            return;
        } else {
            if (!(responseData instanceof EventResponseData)) return;
            {
                this.launchEventResponseTasks((EventResponseData)responseData);
                return;
            }
        }
    }

    public String getAdid() {
        if (this.activityState == null) {
            return null;
        }
        return this.activityState.adid;
    }

    public AdjustAttribution getAttribution() {
        return this.attribution;
    }

    public ActivityPackage getAttributionPackageI() {
        long l2 = System.currentTimeMillis();
        return new PackageBuilder(this.adjustConfig, this.deviceInfo, this.activityState, l2).buildAttributionPackage();
    }

    public InternalState getInternalState() {
        return this.internalState;
    }

    @Override
    public void init(AdjustConfig adjustConfig) {
        this.adjustConfig = adjustConfig;
    }

    @Override
    public boolean isEnabled() {
        return this.isEnabledI();
    }

    @Override
    public void launchAttributionResponseTasks(final AttributionResponseData attributionResponseData) {
        this.scheduledExecutor.submit(new Runnable(){

            @Override
            public void run() {
                ActivityHandler.this.launchAttributionResponseTasksI(attributionResponseData);
            }
        });
    }

    @Override
    public void launchEventResponseTasks(final EventResponseData eventResponseData) {
        this.scheduledExecutor.submit(new Runnable(){

            @Override
            public void run() {
                ActivityHandler.this.launchEventResponseTasksI(eventResponseData);
            }
        });
    }

    @Override
    public void launchSessionResponseTasks(final SessionResponseData sessionResponseData) {
        this.scheduledExecutor.submit(new Runnable(){

            @Override
            public void run() {
                ActivityHandler.this.launchSessionResponseTasksI(sessionResponseData);
            }
        });
    }

    @Override
    public void onPause() {
        this.internalState.background = true;
        this.scheduledExecutor.submit(new Runnable(){

            @Override
            public void run() {
                ActivityHandler.this.stopForegroundTimerI();
                ActivityHandler.this.startBackgroundTimerI();
                ActivityHandler.this.logger.verbose("Subsession end", new Object[0]);
                ActivityHandler.this.endI();
            }
        });
    }

    @Override
    public void onResume() {
        this.internalState.background = false;
        this.scheduledExecutor.submit(new Runnable(){

            @Override
            public void run() {
                ActivityHandler.this.delayStartI();
                ActivityHandler.this.stopBackgroundTimerI();
                ActivityHandler.this.startForegroundTimerI();
                ActivityHandler.this.logger.verbose("Subsession start", new Object[0]);
                ActivityHandler.this.startI();
            }
        });
    }

    @Override
    public void readOpenUrl(final Uri uri, final long l2) {
        this.scheduledExecutor.submit(new Runnable(){

            @Override
            public void run() {
                ActivityHandler.this.readOpenUrlI(uri, l2);
            }
        });
    }

    @Override
    public void removeSessionCallbackParameter(final String string2) {
        this.scheduledExecutor.submit(new Runnable(){

            @Override
            public void run() {
                ActivityHandler.this.removeSessionCallbackParameterI(string2);
            }
        });
    }

    public void removeSessionCallbackParameterI(String string2) {
        if (!Util.isValidParameter(string2, "key", "Session Callback")) {
            return;
        }
        if (this.sessionParameters.callbackParameters == null) {
            this.logger.warn("Session Callback parameters are not set", new Object[0]);
            return;
        }
        if (this.sessionParameters.callbackParameters.remove(string2) == null) {
            this.logger.warn("Key %s does not exist", string2);
            return;
        }
        this.logger.debug("Key %s will be removed", string2);
        this.writeSessionCallbackParametersI();
    }

    @Override
    public void removeSessionPartnerParameter(final String string2) {
        this.scheduledExecutor.submit(new Runnable(){

            @Override
            public void run() {
                ActivityHandler.this.removeSessionPartnerParameterI(string2);
            }
        });
    }

    public void removeSessionPartnerParameterI(String string2) {
        if (!Util.isValidParameter(string2, "key", "Session Partner")) {
            return;
        }
        if (this.sessionParameters.partnerParameters == null) {
            this.logger.warn("Session Partner parameters are not set", new Object[0]);
            return;
        }
        if (this.sessionParameters.partnerParameters.remove(string2) == null) {
            this.logger.warn("Key %s does not exist", string2);
            return;
        }
        this.logger.debug("Key %s will be removed", string2);
        this.writeSessionPartnerParametersI();
    }

    @Override
    public void resetSessionCallbackParameters() {
        this.scheduledExecutor.submit(new Runnable(){

            @Override
            public void run() {
                ActivityHandler.this.resetSessionCallbackParametersI();
            }
        });
    }

    public void resetSessionCallbackParametersI() {
        if (this.sessionParameters.callbackParameters == null) {
            this.logger.warn("Session Callback parameters are not set", new Object[0]);
        }
        this.sessionParameters.callbackParameters = null;
        this.writeSessionCallbackParametersI();
    }

    @Override
    public void resetSessionPartnerParameters() {
        this.scheduledExecutor.submit(new Runnable(){

            @Override
            public void run() {
                ActivityHandler.this.resetSessionPartnerParametersI();
            }
        });
    }

    public void resetSessionPartnerParametersI() {
        if (this.sessionParameters.partnerParameters == null) {
            this.logger.warn("Session Partner parameters are not set", new Object[0]);
        }
        this.sessionParameters.partnerParameters = null;
        this.writeSessionPartnerParametersI();
    }

    @Override
    public void sendFirstPackages() {
        this.scheduledExecutor.submit(new Runnable(){

            @Override
            public void run() {
                ActivityHandler.this.sendFirstPackagesI();
            }
        });
    }

    @Override
    public void sendReferrer(final String string2, final long l2) {
        this.scheduledExecutor.submit(new Runnable(){

            @Override
            public void run() {
                ActivityHandler.this.sendReferrerI(string2, l2);
            }
        });
    }

    @Override
    public void setAskingAttribution(final boolean bl) {
        this.writeActivityStateS(new Runnable(){

            @Override
            public void run() {
                ActivityHandler.access$900((ActivityHandler)ActivityHandler.this).askingAttribution = bl;
            }
        });
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    public void setEnabled(final boolean bl) {
        boolean bl2 = true;
        boolean bl3 = true;
        if (!this.hasChangedState(this.isEnabled(), bl, "Adjust already enabled", "Adjust already disabled")) {
            return;
        }
        this.internalState.enabled = bl;
        if (this.activityState == null) {
            bl = !bl ? bl3 : false;
            this.updateStatus(bl, "Handlers will start as paused due to the SDK being disabled", "Handlers will still start as paused", "Handlers will start as active due to the SDK being enabled");
            return;
        }
        this.writeActivityStateS(new Runnable(){

            @Override
            public void run() {
                ActivityHandler.access$900((ActivityHandler)ActivityHandler.this).enabled = bl;
            }
        });
        bl = !bl ? bl2 : false;
        this.updateStatus(bl, "Pausing handlers due to SDK being disabled", "Handlers remain paused", "Resuming handlers due to SDK being enabled");
    }

    @Override
    public void setOfflineMode(boolean bl) {
        if (!this.hasChangedState(this.internalState.isOffline(), bl, "Adjust already in offline mode", "Adjust already in online mode")) {
            return;
        }
        this.internalState.offline = bl;
        if (this.activityState == null) {
            this.updateStatus(bl, "Handlers will start paused due to SDK being offline", "Handlers will still start as paused", "Handlers will start as active due to SDK being online");
            return;
        }
        this.updateStatus(bl, "Pausing handlers to put SDK offline mode", "Handlers remain paused", "Resuming handlers to put SDK in online mode");
    }

    @Override
    public void setPushToken(final String string2) {
        this.scheduledExecutor.submit(new Runnable(){

            @Override
            public void run() {
                if (ActivityHandler.this.activityState == null) {
                    ActivityHandler.this.startI();
                }
                ActivityHandler.this.setPushTokenI(string2);
            }
        });
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    @Override
    public void teardown(boolean bl) {
        if (this.backgroundTimer != null) {
            this.backgroundTimer.teardown();
        }
        if (this.foregroundTimer != null) {
            this.foregroundTimer.teardown();
        }
        if (this.delayStartTimer != null) {
            this.delayStartTimer.teardown();
        }
        if (this.scheduledExecutor != null) {
            try {
                this.scheduledExecutor.shutdownNow();
            }
            catch (SecurityException var2_2) {}
        }
        if (this.packageHandler != null) {
            this.packageHandler.teardown(bl);
        }
        if (this.attributionHandler != null) {
            this.attributionHandler.teardown();
        }
        if (this.sdkClickHandler != null) {
            this.sdkClickHandler.teardown();
        }
        if (this.sessionParameters != null) {
            if (this.sessionParameters.callbackParameters != null) {
                this.sessionParameters.callbackParameters.clear();
            }
            if (this.sessionParameters.partnerParameters != null) {
                this.sessionParameters.partnerParameters.clear();
            }
        }
        this.teardownActivityStateS(bl);
        this.teardownAttributionS(bl);
        this.teardownAllSessionParametersS(bl);
        this.packageHandler = null;
        this.logger = null;
        this.foregroundTimer = null;
        this.scheduledExecutor = null;
        this.backgroundTimer = null;
        this.delayStartTimer = null;
        this.internalState = null;
        this.deviceInfo = null;
        this.adjustConfig = null;
        this.attributionHandler = null;
        this.sdkClickHandler = null;
        this.sessionParameters = null;
    }

    @Override
    public void trackEvent(final AdjustEvent adjustEvent) {
        this.scheduledExecutor.submit(new Runnable(){

            @Override
            public void run() {
                if (ActivityHandler.this.activityState == null) {
                    ActivityHandler.this.logger.warn("Event tracked before first activity resumed.\nIf it was triggered in the Application class, it might timestamp or even send an install long before the user opens the app.\nPlease check https://github.com/adjust/android_sdk#can-i-trigger-an-event-at-application-launch for more information.", new Object[0]);
                    ActivityHandler.this.startI();
                }
                ActivityHandler.this.trackEventI(adjustEvent);
            }
        });
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    public boolean updateAttributionI(AdjustAttribution adjustAttribution) {
        if (adjustAttribution == null || adjustAttribution.equals(this.attribution)) {
            return false;
        }
        this.attribution = adjustAttribution;
        this.writeAttributionI();
        return true;
    }

    public class InternalState {
        boolean background;
        boolean delayStart;
        boolean enabled;
        boolean offline;
        boolean updatePackages;

        public boolean isBackground() {
            return this.background;
        }

        public boolean isDelayStart() {
            return this.delayStart;
        }

        public boolean isDisabled() {
            if (!this.enabled) {
                return true;
            }
            return false;
        }

        public boolean isEnabled() {
            return this.enabled;
        }

        public boolean isForeground() {
            if (!this.background) {
                return true;
            }
            return false;
        }

        public boolean isOffline() {
            return this.offline;
        }

        public boolean isOnline() {
            if (!this.offline) {
                return true;
            }
            return false;
        }

        public boolean isToStartNow() {
            if (!this.delayStart) {
                return true;
            }
            return false;
        }

        public boolean isToUpdatePackages() {
            return this.updatePackages;
        }
    }

}

