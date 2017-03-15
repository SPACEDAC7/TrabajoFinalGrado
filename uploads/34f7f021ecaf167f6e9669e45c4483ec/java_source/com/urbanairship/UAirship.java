/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.app.Application
 *  android.app.Application$ActivityLifecycleCallbacks
 *  android.content.Context
 *  android.content.Intent
 *  android.content.pm.ApplicationInfo
 *  android.content.pm.PackageInfo
 *  android.content.pm.PackageManager
 *  android.content.pm.PackageManager$NameNotFoundException
 *  android.os.Build
 *  android.os.Build$VERSION
 *  android.os.Looper
 *  android.util.Log
 *  com.urbanairship.ActivityMonitor
 *  com.urbanairship.ApplicationMetrics
 *  com.urbanairship.Cancelable
 *  com.urbanairship.CancelableOperation
 *  com.urbanairship.ChannelCapture
 *  com.urbanairship.Logger
 *  com.urbanairship.PreferenceDataStore
 *  com.urbanairship.UAirship$1
 *  com.urbanairship.UAirship$2
 *  com.urbanairship.actions.ActionRegistry
 *  com.urbanairship.amazon.AdmUtils
 *  com.urbanairship.analytics.Analytics
 *  com.urbanairship.automation.Automation
 *  com.urbanairship.google.PlayServicesUtils
 *  com.urbanairship.js.Whitelist
 *  com.urbanairship.location.UALocationManager
 *  com.urbanairship.messagecenter.MessageCenter
 *  com.urbanairship.push.NamedUser
 *  com.urbanairship.push.iam.InAppMessageManager
 *  com.urbanairship.richpush.RichPushInbox
 *  com.urbanairship.util.ManifestUtils
 */
package com.urbanairship;

import android.app.Application;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.os.Build;
import android.os.Looper;
import android.support.annotation.MainThread;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.util.Log;
import com.urbanairship.ActivityMonitor;
import com.urbanairship.AirshipComponent;
import com.urbanairship.AirshipConfigOptions;
import com.urbanairship.ApplicationMetrics;
import com.urbanairship.Cancelable;
import com.urbanairship.CancelableOperation;
import com.urbanairship.ChannelCapture;
import com.urbanairship.Logger;
import com.urbanairship.PreferenceDataStore;
import com.urbanairship.UAirship;
import com.urbanairship.actions.ActionRegistry;
import com.urbanairship.amazon.AdmUtils;
import com.urbanairship.analytics.Analytics;
import com.urbanairship.automation.Automation;
import com.urbanairship.google.PlayServicesUtils;
import com.urbanairship.js.Whitelist;
import com.urbanairship.location.UALocationManager;
import com.urbanairship.messagecenter.MessageCenter;
import com.urbanairship.push.NamedUser;
import com.urbanairship.push.PushManager;
import com.urbanairship.push.iam.InAppMessageManager;
import com.urbanairship.richpush.RichPushInbox;
import com.urbanairship.util.ManifestUtils;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class UAirship {
    public static final String ACTION_AIRSHIP_READY = "com.urbanairship.AIRSHIP_READY";
    public static final int AMAZON_PLATFORM = 1;
    public static final int ANDROID_PLATFORM = 2;
    private static final String LIBRARY_VERSION_KEY = "com.urbanairship.application.device.LIBRARY_VERSION";
    public static boolean LOG_TAKE_OFF_STACKTRACE = false;
    private static final String PLATFORM_KEY = "com.urbanairship.application.device.PLATFORM";
    private static final Object airshipLock = new Object();
    static Application application;
    static volatile boolean isFlying;
    static volatile boolean isMainProcess;
    static volatile boolean isTakingOff;
    private static final List<CancelableOperation> pendingAirshipRequests;
    private static boolean queuePendingAirshipRequests;
    static UAirship sharedAirship;
    ActionRegistry actionRegistry;
    AirshipConfigOptions airshipConfigOptions;
    Analytics analytics;
    ApplicationMetrics applicationMetrics;
    Automation automation;
    ChannelCapture channelCapture;
    List<AirshipComponent> components;
    InAppMessageManager inAppMessageManager;
    RichPushInbox inbox;
    UALocationManager locationManager;
    MessageCenter messageCenter;
    NamedUser namedUser;
    PreferenceDataStore preferenceDataStore;
    PushManager pushManager;
    Whitelist whitelist;

    static {
        isFlying = false;
        isTakingOff = false;
        isMainProcess = false;
        LOG_TAKE_OFF_STACKTRACE = false;
        pendingAirshipRequests = new ArrayList<CancelableOperation>();
        queuePendingAirshipRequests = true;
    }

    UAirship(@NonNull AirshipConfigOptions airshipConfigOptions) {
        this.airshipConfigOptions = airshipConfigOptions;
    }

    static /* synthetic */ void access$000(Application application, AirshipConfigOptions airshipConfigOptions, OnReadyCallback onReadyCallback) {
        UAirship.executeTakeOff(application, airshipConfigOptions, onReadyCallback);
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    private static void executeTakeOff(@NonNull Application application, @Nullable AirshipConfigOptions object, @Nullable OnReadyCallback object2) {
        Object object3 = object;
        if (object == null) {
            object3 = new AirshipConfigOptions.Builder().applyDefaultProperties(application.getApplicationContext()).build();
        }
        Logger.logLevel = object3.getLoggerLevel();
        Logger.TAG = UAirship.getAppName() + " - UALib";
        Logger.info((String)"Airship taking off!");
        Logger.info((String)("Airship log level: " + Logger.logLevel));
        Logger.info((String)("UA Version: " + UAirship.getVersion() + " / App key = " + object3.getAppKey() + " Production = " + object3.inProduction));
        sharedAirship = new UAirship((AirshipConfigOptions)object3);
        object = airshipLock;
        synchronized (object) {
            isFlying = true;
            isTakingOff = false;
            sharedAirship.init();
            if (!object3.inProduction) {
                ManifestUtils.validateManifest();
            }
            Logger.info((String)"Airship ready!");
            if (object2 != null) {
                object2.onAirshipReady(sharedAirship);
            }
            object2 = pendingAirshipRequests;
            synchronized (object2) {
                queuePendingAirshipRequests = false;
                object3 = pendingAirshipRequests.iterator();
                do {
                    if (!object3.hasNext()) {
                        pendingAirshipRequests.clear();
                        // MONITOREXIT [5, 6, 7, 8] lbl27 : MonitorExitStatement: MONITOREXIT : var2_2
                        application.sendBroadcast(new Intent("com.urbanairship.AIRSHIP_READY").setPackage(UAirship.getPackageName()).addCategory(UAirship.getPackageName()), UAirship.getUrbanAirshipPermission());
                        airshipLock.notifyAll();
                        return;
                    }
                    ((Runnable)object3.next()).run();
                } while (true);
            }
        }
    }

    public static int getAppIcon() {
        ApplicationInfo applicationInfo = UAirship.getAppInfo();
        if (applicationInfo != null) {
            return applicationInfo.icon;
        }
        return -1;
    }

    public static ApplicationInfo getAppInfo() {
        return UAirship.getApplicationContext().getApplicationInfo();
    }

    public static String getAppName() {
        if (UAirship.getAppInfo() != null) {
            return UAirship.getPackageManager().getApplicationLabel(UAirship.getAppInfo()).toString();
        }
        return null;
    }

    public static Context getApplicationContext() {
        if (application == null) {
            throw new IllegalStateException("TakeOff must be called first.");
        }
        return application.getApplicationContext();
    }

    public static PackageInfo getPackageInfo() {
        try {
            PackageInfo packageInfo = UAirship.getPackageManager().getPackageInfo(UAirship.getPackageName(), 0);
            return packageInfo;
        }
        catch (PackageManager.NameNotFoundException var0_1) {
            Logger.warn((String)"UAirship - Unable to get package info.", (Throwable)var0_1);
            return null;
        }
    }

    public static PackageManager getPackageManager() {
        return UAirship.getApplicationContext().getPackageManager();
    }

    public static String getPackageName() {
        return UAirship.getApplicationContext().getPackageName();
    }

    public static String getUrbanAirshipPermission() {
        return UAirship.getApplicationContext().getPackageName() + ".permission.UA_DATA";
    }

    public static String getVersion() {
        return "8.2.5";
    }

    private void init() {
        this.preferenceDataStore = new PreferenceDataStore((Context)application);
        this.preferenceDataStore.init();
        this.analytics = new Analytics((Context)application, this.preferenceDataStore, this.airshipConfigOptions, this.getPlatformType(), ActivityMonitor.shared((Context)application));
        this.applicationMetrics = new ApplicationMetrics((Context)application, this.preferenceDataStore, ActivityMonitor.shared((Context)application));
        this.inbox = new RichPushInbox((Context)application, this.preferenceDataStore, ActivityMonitor.shared((Context)application));
        this.locationManager = new UALocationManager((Context)application, this.preferenceDataStore, ActivityMonitor.shared((Context)application));
        this.inAppMessageManager = new InAppMessageManager(this.preferenceDataStore, ActivityMonitor.shared((Context)application));
        this.pushManager = new PushManager((Context)application, this.preferenceDataStore, this.airshipConfigOptions);
        this.namedUser = new NamedUser((Context)application, this.preferenceDataStore);
        this.channelCapture = new ChannelCapture((Context)application, this.airshipConfigOptions, this.pushManager, ActivityMonitor.shared((Context)application));
        this.whitelist = Whitelist.createDefaultWhitelist((AirshipConfigOptions)this.airshipConfigOptions);
        this.actionRegistry = new ActionRegistry();
        this.actionRegistry.registerDefaultActions();
        this.messageCenter = new MessageCenter();
        this.automation = new Automation((Context)application, this.airshipConfigOptions, this.analytics, this.preferenceDataStore, ActivityMonitor.shared((Context)application));
        Object object = this.getComponents().iterator();
        while (object.hasNext()) {
            object.next().init();
        }
        object = UAirship.getVersion();
        String string2 = this.preferenceDataStore.getString("com.urbanairship.application.device.LIBRARY_VERSION", null);
        if (string2 != null && !string2.equals(object)) {
            Logger.info((String)("Urban Airship library changed from " + string2 + " to " + (String)object + "."));
        }
        this.preferenceDataStore.put("com.urbanairship.application.device.LIBRARY_VERSION", UAirship.getVersion());
    }

    public static boolean isFlying() {
        return isFlying;
    }

    public static boolean isMainProcess() {
        return isMainProcess;
    }

    public static boolean isTakingOff() {
        return isTakingOff;
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    public static void land() {
        Object object = airshipLock;
        synchronized (object) {
            if (!isTakingOff && !isFlying) {
                return;
            }
            application.unregisterActivityLifecycleCallbacks((Application.ActivityLifecycleCallbacks)ActivityMonitor.shared((Context)application));
            UAirship.shared().tearDown();
            isFlying = false;
            isTakingOff = false;
            sharedAirship = null;
            application = null;
            return;
        }
    }

    @NonNull
    public static Cancelable shared(OnReadyCallback onReadyCallback) {
        return UAirship.shared(onReadyCallback, null);
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    @NonNull
    public static Cancelable shared(OnReadyCallback object, Looper looper) {
        looper = new /* Unavailable Anonymous Inner Class!! */;
        object = pendingAirshipRequests;
        synchronized (object) {
            if (queuePendingAirshipRequests) {
                pendingAirshipRequests.add((CancelableOperation)looper);
            } else {
                looper.run();
            }
            return looper;
        }
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    @NonNull
    public static UAirship shared() {
        Object object = airshipLock;
        synchronized (object) {
            if (isTakingOff) return UAirship.waitForTakeOff(0);
            if (isFlying) return UAirship.waitForTakeOff(0);
            throw new IllegalStateException("Take off must be called before shared()");
        }
    }

    @MainThread
    public static void takeOff(@NonNull Application application) {
        UAirship.takeOff(application, null, null);
    }

    @MainThread
    public static void takeOff(@NonNull Application application, @Nullable AirshipConfigOptions airshipConfigOptions) {
        UAirship.takeOff(application, airshipConfigOptions, null);
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    @MainThread
    public static void takeOff(@NonNull Application application, @Nullable AirshipConfigOptions airshipConfigOptions, @Nullable OnReadyCallback onReadyCallback) {
        Object object;
        if (application == null) {
            throw new IllegalArgumentException("Application argument must not be null");
        }
        if (Looper.myLooper() == null || Looper.getMainLooper() != Looper.myLooper()) {
            Logger.error((String)"takeOff() must be called on the main thread!");
        } else if (Build.VERSION.SDK_INT < 16) {
            try {
                Class.forName("android.os.AsyncTask");
            }
            catch (ClassNotFoundException var3_3) {
                Logger.error((String)"AsyncTask workaround failed.", (Throwable)var3_3);
            }
        }
        if (LOG_TAKE_OFF_STACKTRACE) {
            object = new StringBuilder();
            for (StackTraceElement stackTraceElement : new Exception().getStackTrace()) {
                object.append("\n\tat ");
                object.append(stackTraceElement.toString());
            }
            Log.d((String)Logger.TAG, (String)("Takeoff stack trace: " + object.toString()));
        }
        object = airshipLock;
        synchronized (object) {
            if (!isFlying && !isTakingOff) {
                Logger.info((String)"Airship taking off!");
                isTakingOff = true;
                UAirship.application = application;
                new Thread((Runnable)new /* Unavailable Anonymous Inner Class!! */).start();
                return;
            }
            Logger.error((String)"You can only call takeOff() once.");
            return;
        }
    }

    @MainThread
    public static void takeOff(@NonNull Application application, @Nullable OnReadyCallback onReadyCallback) {
        UAirship.takeOff(application, null, onReadyCallback);
    }

    private void tearDown() {
        Iterator<AirshipComponent> iterator = this.getComponents().iterator();
        while (iterator.hasNext()) {
            iterator.next().tearDown();
        }
        this.preferenceDataStore.tearDown();
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    public static UAirship waitForTakeOff(long l2) {
        Object object = airshipLock;
        synchronized (object) {
            if (isFlying) {
                return sharedAirship;
            }
            boolean bl = false;
            try {
                boolean bl2;
                while (!(bl2 = isFlying)) {
                    try {
                        airshipLock.wait(l2);
                    }
                    catch (InterruptedException var3_3) {
                        bl = true;
                    }
                }
                UAirship uAirship = sharedAirship;
                return uAirship;
            }
            finally {
                if (bl) {
                    Thread.currentThread().interrupt();
                }
            }
        }
    }

    public ActionRegistry getActionRegistry() {
        return this.actionRegistry;
    }

    public AirshipConfigOptions getAirshipConfigOptions() {
        return this.airshipConfigOptions;
    }

    public Analytics getAnalytics() {
        return this.analytics;
    }

    public ApplicationMetrics getApplicationMetrics() {
        return this.applicationMetrics;
    }

    public Automation getAutomation() {
        return this.automation;
    }

    List<AirshipComponent> getComponents() {
        if (this.components == null) {
            this.components = new ArrayList<AirshipComponent>();
            this.components.add((AirshipComponent)this.inbox);
            this.components.add(this.pushManager);
            this.components.add((AirshipComponent)this.locationManager);
            this.components.add((AirshipComponent)this.inAppMessageManager);
            this.components.add((AirshipComponent)this.channelCapture);
            this.components.add((AirshipComponent)this.applicationMetrics);
            this.components.add((AirshipComponent)this.analytics);
            this.components.add((AirshipComponent)this.messageCenter);
            this.components.add((AirshipComponent)this.namedUser);
            this.components.add((AirshipComponent)this.automation);
        }
        return this.components;
    }

    public InAppMessageManager getInAppMessageManager() {
        return this.inAppMessageManager;
    }

    public RichPushInbox getInbox() {
        return this.inbox;
    }

    public UALocationManager getLocationManager() {
        return this.locationManager;
    }

    public MessageCenter getMessageCenter() {
        return this.messageCenter;
    }

    public NamedUser getNamedUser() {
        return this.namedUser;
    }

    /*
     * Unable to fully structure code
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    public int getPlatformType() {
        switch (this.preferenceDataStore.getInt("com.urbanairship.application.device.PLATFORM", -1)) {
            default: {
                if (!AdmUtils.isAdmAvailable()) break;
                Logger.info((String)"ADM available. Setting platform to Amazon.");
                var1_1 = 1;
                ** GOTO lbl21
            }
            case 1: {
                return 1;
            }
            case 2: {
                return 2;
            }
        }
        if (PlayServicesUtils.isGooglePlayStoreAvailable((Context)UAirship.getApplicationContext())) {
            Logger.info((String)"Google Play Store available. Setting platform to Android.");
            var1_1 = 2;
        } else if ("amazon".equalsIgnoreCase(Build.MANUFACTURER)) {
            Logger.info((String)"Build.MANUFACTURER is AMAZON. Setting platform to Amazon.");
            var1_1 = 1;
        } else {
            Logger.info((String)"Defaulting platform to Android.");
            var1_1 = 2;
        }
lbl21: // 4 sources:
        this.preferenceDataStore.put("com.urbanairship.application.device.PLATFORM", var1_1);
        return var1_1;
    }

    public PushManager getPushManager() {
        return this.pushManager;
    }

    public Whitelist getWhitelist() {
        return this.whitelist;
    }

    public static interface OnReadyCallback {
        public void onAirshipReady(UAirship var1);
    }

}

