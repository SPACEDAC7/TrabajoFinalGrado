/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.app.Activity
 *  android.app.Application
 *  android.app.Application$ActivityLifecycleCallbacks
 *  android.content.Context
 *  android.os.Build
 *  android.os.Build$VERSION
 *  android.text.TextUtils
 *  android.webkit.CookieManager
 *  android.webkit.CookieSyncManager
 *  android.webkit.ValueCallback
 *  com.urbanairship.push.notifications.NotificationFactory
 */
package com.buzzfeed.android.data;

import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.os.Build;
import android.support.multidex.MultiDex;
import android.support.multidex.MultiDexApplication;
import android.text.TextUtils;
import android.webkit.CookieManager;
import android.webkit.CookieSyncManager;
import android.webkit.ValueCallback;
import com.buzzfeed.ads.utils.AdConfig;
import com.buzzfeed.analytics.AdjustConfigurationBuzzFeed;
import com.buzzfeed.analytics.Analytics;
import com.buzzfeed.analytics.client.BuzzFeedTracker;
import com.buzzfeed.analytics.client.DustbusterClient;
import com.buzzfeed.analytics.client.SubscriptionProvider;
import com.buzzfeed.analytics.provider.LoginStatusProvider;
import com.buzzfeed.android.activity.SplashActivity;
import com.buzzfeed.android.data.ActivityLifecycleListener;
import com.buzzfeed.android.data.BuzzUser;
import com.buzzfeed.android.data.EnvironmentConfig;
import com.buzzfeed.android.data.bookmark.BFBookmarkManager;
import com.buzzfeed.android.data.preferences.BooleanPreference;
import com.buzzfeed.android.data.preferences.DebugTrackerPreference;
import com.buzzfeed.android.data.preferences.DebuggingPreference;
import com.buzzfeed.android.data.preferences.LeakCanaryPreference;
import com.buzzfeed.android.data.preferences.LimitMobileDataPreference;
import com.buzzfeed.android.data.preferences.NetworkLoggingPreference;
import com.buzzfeed.android.data.preferences.PushNotificationPreference;
import com.buzzfeed.android.data.preferences.TestAdsPreference;
import com.buzzfeed.android.data.preferences.UAServerPreference;
import com.buzzfeed.android.data.preferences.VCRDebuggingPreference;
import com.buzzfeed.android.data.tracking.BuzzFeedLoginStatusProvider;
import com.buzzfeed.android.pushnotifications.PushNotificationFactory;
import com.buzzfeed.android.pushnotifications.PushNotificationTagHelper;
import com.buzzfeed.android.pushnotifications.PushNotificationUtil;
import com.buzzfeed.android.util.BuzzUtils;
import com.buzzfeed.android.vcr.VCRConfig;
import com.buzzfeed.android.vcr.util.VCRApplicationBitrateLimiter;
import com.buzzfeed.android.vcr.util.VCRCacheCleaner;
import com.buzzfeed.showx.showpage.data.ShowSubscriptionStorage;
import com.buzzfeed.toolkit.doorbell.Doorbell;
import com.buzzfeed.toolkit.dustbuster.BaseDustbusterLauncher;
import com.buzzfeed.toolkit.dustbuster.DustbusterLauncherService;
import com.buzzfeed.toolkit.networking.Environment;
import com.buzzfeed.toolkit.networking.NetworkConfig;
import com.buzzfeed.toolkit.networking.NetworkService;
import com.buzzfeed.toolkit.sharmo.ShareManager;
import com.buzzfeed.toolkit.util.AbstractActivityLifecycleCallbacks;
import com.buzzfeed.toolkit.util.ApplicationStateCallbacks;
import com.buzzfeed.toolkit.util.BFVault;
import com.buzzfeed.toolkit.util.LogUtil;
import com.squareup.leakcanary.LeakCanary;
import com.urbanairship.AirshipConfigOptions;
import com.urbanairship.UAirship;
import com.urbanairship.push.PushManager;
import com.urbanairship.push.notifications.NotificationFactory;
import java.lang.ref.WeakReference;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;
import uk.co.chrisjenx.calligraphy.CalligraphyConfig;

public class BuzzFeedApplication
extends MultiDexApplication {
    private static final String APP_NAME = "buzz_app";
    private static final String TAG = BuzzFeedApplication.class.getSimpleName();
    private CopyOnWriteArrayList<ApplicationStateCallbacks> mApplicationStateCallbacks = new CopyOnWriteArrayList();

    private void clearWebViewCache() {
        if (Build.VERSION.SDK_INT >= 22) {
            CookieManager.getInstance().removeAllCookies(null);
            CookieManager.getInstance().flush();
            return;
        }
        CookieSyncManager cookieSyncManager = CookieSyncManager.createInstance((Context)this);
        cookieSyncManager.startSync();
        CookieManager cookieManager = CookieManager.getInstance();
        cookieManager.removeAllCookie();
        cookieManager.removeSessionCookie();
        cookieSyncManager.stopSync();
        cookieSyncManager.sync();
    }

    /*
     * Enabled aggressive block sorting
     */
    private void initFromPreferences() {
        BooleanPreference booleanPreference;
        if (!EnvironmentConfig.isProductionBuild()) {
            EnvironmentConfig.initialize((Context)this);
            LogUtil.setDebug(new DebuggingPreference((Context)this).getValue());
            BuzzFeedTracker.setDebug(new DebugTrackerPreference((Context)this).getValue());
            AdConfig.setTestAdType(Integer.parseInt((String)new TestAdsPreference((Context)this).getValue()));
            booleanPreference = new VCRDebuggingPreference((Context)this);
            VCRConfig.getInstance().setDebugLoggingEnabled(booleanPreference.getValue());
        } else {
            EnvironmentConfig.initialize((Context)this, Environment.PRODUCTION);
            LogUtil.setDebug(false);
            BuzzFeedTracker.setDebug(false);
            AdConfig.setTestAdType(0);
            VCRConfig.getInstance().setDebugLoggingEnabled(false);
        }
        if (!(booleanPreference = new PushNotificationPreference((Context)this)).isSet()) {
            booleanPreference.setValue(true);
        }
        EnvironmentConfig.debugLog((Context)this);
    }

    @Deprecated
    private void initializeAdSettings() {
        BuzzUtils.loadAndSetAdvertisingData((Context)this);
    }

    /*
     * Enabled aggressive block sorting
     */
    private void initializeAnalyticsModule() {
        Analytics.initializeWith((Context)this, new Analytics.Configuration.Builder("buzz_app").withLoginStatusProvider(new BuzzFeedLoginStatusProvider(BuzzUser.getInstance((Context)this))).withBuildEnvironment("production").withEdition(EnvironmentConfig.getEdition((Context)this)).withProductionEnabled(EnvironmentConfig.isProductionBuild()).withPushNotificationsEnabled(new PushNotificationPreference((Context)this).getValue()).build());
        Object object = EnvironmentConfig.isProductionBuild() ? "https://pixiedust.buzzfeed.com/events" : "https://pixiedust-stage.buzzfeed.com/events";
        object = new DustbusterLauncherService(this.getApplicationContext(), (String)object);
        DustbusterClient.initialize((Context)this, new Doorbell((Context)this), Analytics.getInstance().getConfiguration(), (BaseDustbusterLauncher)object, new SubscriptionProvider(){

            @Override
            public String[] getSubscriptions() {
                return new ShowSubscriptionStorage((Context)BuzzFeedApplication.this).getShowSubscriptions();
            }
        });
        Object object2 = BFVault.getInstance();
        long l2 = System.currentTimeMillis();
        object = object2.getQuantCastTrackingId();
        String string2 = object2.getComScoreTrackingId();
        String string3 = object2.getComScoreTrackingSecretId();
        String string4 = object2.getAdjustTrackingId();
        String string5 = object2.getLotameTrackingId();
        object2 = object2.getGoogleAnalyticsAccountId();
        if (!(TextUtils.isEmpty((CharSequence)object2) || TextUtils.isEmpty((CharSequence)object) || TextUtils.isEmpty((CharSequence)string2) || TextUtils.isEmpty((CharSequence)string3) || TextUtils.isEmpty((CharSequence)string4) || TextUtils.isEmpty((CharSequence)string5))) {
            BuzzFeedTracker.onApplicationCreate((Context)this, (String)object2, (String)object, string2, string3, string5, new AdjustConfigurationBuzzFeed(string4, true));
            BuzzFeedTracker.setTrackingLogMaxLines(50);
            LogUtil.i(TAG, "Finished Analytics initialization (in " + (double)(System.currentTimeMillis() - l2) / 1000.0 + " secs)");
            return;
        }
        object = EnvironmentConfig.isProductionBuild() ? "One or more required tracking ID's have not be set" : "One or more required tracking ID's have not be set:\n  GOOGLE_ANALYTICS_ACCOUNT_ID: " + (String)object2 + "\n" + "  QUANTCAST_TRACKING_ID: " + (String)object + "\n" + "  COMSCORE_TRACKING_ID: " + string2 + "\n" + "  COMSCORE_TRACKING_SECRET: " + string3 + "\n" + "  ADJUST_TRACKING_ID: " + string4 + "\n" + "  LOTAME_TRACKING_ID: " + string5;
        LogUtil.e(TAG, (String)object);
        throw new Error((String)object);
    }

    private void notifyApplicationEnterBackground() {
        LogUtil.d(TAG + ".notifyApplicationEnterBackground", "Application is entering background.");
        Iterator<ApplicationStateCallbacks> iterator = this.mApplicationStateCallbacks.iterator();
        while (iterator.hasNext()) {
            iterator.next().onApplicationEnterBackground();
        }
    }

    private void notifyApplicationEnterForeground() {
        LogUtil.d(TAG + ".notifyApplicationEnterForeground", "Application is entering foreground.");
        Iterator<ApplicationStateCallbacks> iterator = this.mApplicationStateCallbacks.iterator();
        while (iterator.hasNext()) {
            iterator.next().onApplicationEnterForeground();
        }
    }

    private void restoreBookmarks() {
        BFBookmarkManager.getInstance((Context)this).restoreBookmarks();
    }

    private void setUpCalligraphy() {
        CalligraphyConfig.Builder builder = new CalligraphyConfig.Builder();
        builder.setDefaultFontPath("fonts/ProximaNova-Reg.otf").setFontAttrId(2130771993);
        CalligraphyConfig.initDefault(builder.build());
    }

    private void setupLeakCanary() {
        if (new LeakCanaryPreference((Context)this).getValue().booleanValue()) {
            LogUtil.d(TAG, "Starting LeakCanary");
            LeakCanary.install(this);
        }
    }

    /*
     * Enabled aggressive block sorting
     */
    private void setupNetworkService() {
        if (EnvironmentConfig.isProductionBuild()) {
            NetworkConfig.getInstance().setLogLevel(NetworkConfig.LogLevel.NONE);
        } else {
            Object object = new NetworkLoggingPreference((Context)this).getValue();
            NetworkConfig.getInstance().setLogLevel(NetworkConfig.LogLevel.getLogLevelWithName((String)object));
        }
        NetworkService.initialize((Context)this, EnvironmentConfig.getEnvironment());
    }

    /*
     * Enabled aggressive block sorting
     */
    private void setupUrbanAirship() {
        final boolean bl = new PushNotificationPreference((Context)this).getValue();
        BFVault bFVault = BFVault.getInstance();
        Object object = new UAServerPreference((Context)this);
        boolean bl2 = EnvironmentConfig.isProductionBuild() || object.getValue() == UAServerPreference.UAServer.PRODUCTION;
        object = bl2 ? bFVault.getUrbanAirshipAppProdKey() : bFVault.getUrbanAirshipAppAlphaKey();
        String string2 = bl2 ? bFVault.getUrbanAirshipAppProdSecret() : bFVault.getUrbanAirshipAppAlphaSecret();
        UAirship.takeOff(this, new AirshipConfigOptions.Builder().setProductionAppKey((String)object).setProductionAppSecret(string2).setInProduction(true).setGcmSender(bFVault.getUrbanAirShipGcmSender()).build(), new UAirship.OnReadyCallback(){

            @Override
            public void onAirshipReady(UAirship uAirship) {
                UAirship.shared().getPushManager().setUserNotificationsEnabled(true);
                UAirship.shared().getPushManager().setNotificationFactory(new PushNotificationFactory((Context)BuzzFeedApplication.this));
                PushNotificationUtil.setPushNotificationsEnabled(bl);
                PushNotificationTagHelper.initializePushNotifications((Context)BuzzFeedApplication.this);
                LogUtil.i(TAG, "Push Notification Settings:\n  ChannelId: " + UAirship.shared().getPushManager().getChannelId() + "\n" + "  Available: " + UAirship.shared().getPushManager().isPushAvailable() + "\n" + "  Enabled: " + UAirship.shared().getPushManager().isPushEnabled() + "\n" + "  Opted In: " + UAirship.shared().getPushManager().isOptIn() + "\n" + "  Production Server: " + UAirship.shared().getAirshipConfigOptions().inProduction);
            }
        });
    }

    private void setupVCR() {
        boolean bl = new LimitMobileDataPreference((Context)this).getValue();
        VCRConfig.getInstance().setAdaptiveBitrateLimitingEnabled((Context)this, bl);
    }

    @Override
    protected void attachBaseContext(Context context) {
        super.attachBaseContext(context);
        MultiDex.install((Context)this);
        this.registerActivityLifecycleCallbacks(new ActivityLifecycleListener());
        this.registerActivityLifecycleCallbacks(new ApplicationLifecycleCallbacks());
        this.registerActivityLifecycleCallbacks(new VCRCacheCleaner());
        this.registerActivityLifecycleCallbacks(new VCRApplicationBitrateLimiter(this));
        this.registerActivityLifecycleCallbacks(new SplashActivity.SplashActivityBackgroundCallback());
    }

    /*
     * Exception decompiling
     */
    public void onCreate() {
        // This method has failed to decompile.  When submitting a bug report, please provide this stack trace, and (if you hold appropriate legal rights) the relevant class file.
        // org.benf.cfr.reader.util.ConfusedCFRException: First case is not immediately after switch.
        // org.benf.cfr.reader.bytecode.analysis.opgraph.op3rewriters.SwitchReplacer.examineSwitchContiguity(SwitchReplacer.java:366)
        // org.benf.cfr.reader.bytecode.analysis.opgraph.op3rewriters.SwitchReplacer.replaceRawSwitches(SwitchReplacer.java:65)
        // org.benf.cfr.reader.bytecode.CodeAnalyser.getAnalysisInner(CodeAnalyser.java:425)
        // org.benf.cfr.reader.bytecode.CodeAnalyser.getAnalysisOrWrapFail(CodeAnalyser.java:220)
        // org.benf.cfr.reader.bytecode.CodeAnalyser.getAnalysis(CodeAnalyser.java:165)
        // org.benf.cfr.reader.entities.attributes.AttributeCode.analyse(AttributeCode.java:91)
        // org.benf.cfr.reader.entities.Method.analyse(Method.java:354)
        // org.benf.cfr.reader.entities.ClassFile.analyseMid(ClassFile.java:751)
        // org.benf.cfr.reader.entities.ClassFile.analyseTop(ClassFile.java:683)
        // org.benf.cfr.reader.Main.doJar(Main.java:129)
        // org.benf.cfr.reader.Main.main(Main.java:181)
        throw new IllegalStateException("Decompilation failed");
    }

    public void onTerminate() {
        super.onTerminate();
        LogUtil.e(TAG, "onTerminate");
    }

    public void registerActivityLifecycleCallbacks(Application.ActivityLifecycleCallbacks activityLifecycleCallbacks) {
        super.registerActivityLifecycleCallbacks(activityLifecycleCallbacks);
        if (activityLifecycleCallbacks instanceof ApplicationStateCallbacks) {
            this.mApplicationStateCallbacks.add((ApplicationStateCallbacks)activityLifecycleCallbacks);
        }
    }

    public void unregisterActivityLifecycleCallbacks(Application.ActivityLifecycleCallbacks activityLifecycleCallbacks) {
        super.unregisterActivityLifecycleCallbacks(activityLifecycleCallbacks);
        if (activityLifecycleCallbacks instanceof ApplicationStateCallbacks) {
            this.mApplicationStateCallbacks.remove((Object)activityLifecycleCallbacks);
        }
    }

    private class ApplicationLifecycleCallbacks
    extends AbstractActivityLifecycleCallbacks {
        protected WeakReference<Activity> mWeakActivityRef;

        private ApplicationLifecycleCallbacks() {
        }

        @Override
        public void onActivityResumed(Activity activity) {
            if (this.mWeakActivityRef != null && this.mWeakActivityRef.get() != activity) {
                this.mWeakActivityRef = new WeakReference<Activity>(activity);
            }
        }

        @Override
        public void onActivityStarted(Activity activity) {
            if (this.mWeakActivityRef == null) {
                BuzzFeedApplication.this.notifyApplicationEnterForeground();
            }
            this.mWeakActivityRef = new WeakReference<Activity>(activity);
        }

        @Override
        public void onActivityStopped(Activity activity) {
            if (this.mWeakActivityRef != null && this.mWeakActivityRef.get() == activity && !activity.isChangingConfigurations()) {
                this.mWeakActivityRef = null;
                BuzzFeedApplication.this.notifyApplicationEnterBackground();
            }
        }
    }

}

