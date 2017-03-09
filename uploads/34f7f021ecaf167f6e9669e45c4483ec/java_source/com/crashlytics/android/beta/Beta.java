/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.annotation.TargetApi
 *  android.app.Application
 *  android.content.Context
 *  android.content.res.AssetManager
 *  android.os.Build
 *  android.os.Build$VERSION
 *  android.text.TextUtils
 *  io.fabric.sdk.android.ActivityLifecycleManager
 *  io.fabric.sdk.android.Logger
 *  io.fabric.sdk.android.services.cache.MemoryValueCache
 *  io.fabric.sdk.android.services.cache.ValueLoader
 *  io.fabric.sdk.android.services.common.CurrentTimeProvider
 *  io.fabric.sdk.android.services.common.DeviceIdentifierProvider
 *  io.fabric.sdk.android.services.common.IdManager$DeviceIdentifierType
 *  io.fabric.sdk.android.services.common.SystemCurrentTimeProvider
 *  io.fabric.sdk.android.services.network.DefaultHttpRequestFactory
 *  io.fabric.sdk.android.services.network.HttpRequestFactory
 *  io.fabric.sdk.android.services.persistence.PreferenceStore
 *  io.fabric.sdk.android.services.settings.BetaSettingsData
 *  io.fabric.sdk.android.services.settings.Settings
 *  io.fabric.sdk.android.services.settings.SettingsData
 */
package com.crashlytics.android.beta;

import android.annotation.TargetApi;
import android.app.Application;
import android.content.Context;
import android.content.res.AssetManager;
import android.os.Build;
import android.text.TextUtils;
import com.crashlytics.android.beta.ActivityLifecycleCheckForUpdatesController;
import com.crashlytics.android.beta.BuildProperties;
import com.crashlytics.android.beta.DeviceTokenLoader;
import com.crashlytics.android.beta.ImmediateCheckForUpdatesController;
import com.crashlytics.android.beta.UpdatesController;
import io.fabric.sdk.android.ActivityLifecycleManager;
import io.fabric.sdk.android.Fabric;
import io.fabric.sdk.android.Kit;
import io.fabric.sdk.android.Logger;
import io.fabric.sdk.android.services.cache.MemoryValueCache;
import io.fabric.sdk.android.services.cache.ValueLoader;
import io.fabric.sdk.android.services.common.CommonUtils;
import io.fabric.sdk.android.services.common.CurrentTimeProvider;
import io.fabric.sdk.android.services.common.DeviceIdentifierProvider;
import io.fabric.sdk.android.services.common.IdManager;
import io.fabric.sdk.android.services.common.SystemCurrentTimeProvider;
import io.fabric.sdk.android.services.network.DefaultHttpRequestFactory;
import io.fabric.sdk.android.services.network.HttpRequestFactory;
import io.fabric.sdk.android.services.persistence.PreferenceStore;
import io.fabric.sdk.android.services.persistence.PreferenceStoreImpl;
import io.fabric.sdk.android.services.settings.BetaSettingsData;
import io.fabric.sdk.android.services.settings.Settings;
import io.fabric.sdk.android.services.settings.SettingsData;
import java.io.IOException;
import java.io.InputStream;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.ExecutorService;

public class Beta
extends Kit<Boolean>
implements DeviceIdentifierProvider {
    private static final String CRASHLYTICS_API_ENDPOINT = "com.crashlytics.ApiEndpoint";
    private static final String CRASHLYTICS_BUILD_PROPERTIES = "crashlytics-build.properties";
    static final String NO_DEVICE_TOKEN = "";
    public static final String TAG = "Beta";
    private final MemoryValueCache<String> deviceTokenCache = new MemoryValueCache();
    private final DeviceTokenLoader deviceTokenLoader = new DeviceTokenLoader();
    private UpdatesController updatesController;

    private String getBetaDeviceToken(Context object, String string2) {
        if (this.isAppPossiblyInstalledByBeta(string2, Build.VERSION.SDK_INT)) {
            Fabric.getLogger().d("Beta", "App was possibly installed by Beta. Getting device token");
            try {
                object = (String)this.deviceTokenCache.get((Context)object, (ValueLoader)this.deviceTokenLoader);
                boolean bl = "".equals(object);
                if (bl) {
                    return null;
                }
                return object;
            }
            catch (Exception var1_2) {
                Fabric.getLogger().e("Beta", "Failed to load the Beta device token", (Throwable)var1_2);
                return null;
            }
        }
        Fabric.getLogger().d("Beta", "App was not installed by Beta. Skipping device token");
        return null;
    }

    private BetaSettingsData getBetaSettingsData() {
        SettingsData settingsData = Settings.getInstance().awaitSettingsData();
        if (settingsData != null) {
            return settingsData.betaSettingsData;
        }
        return null;
    }

    public static Beta getInstance() {
        return (Beta)Fabric.getKit(Beta.class);
    }

    /*
     * Loose catch block
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     * Lifted jumps to return sites
     */
    private BuildProperties loadBuildProperties(Context object) {
        Object object3 = null;
        InputStream inputStream2 = null;
        Object object4 = null;
        Object var7_8 = null;
        Object object2 = object4;
        InputStream inputStream = object.getAssets().open("crashlytics-build.properties");
        object = var7_8;
        if (inputStream != null) {
            object2 = object4;
            inputStream2 = inputStream;
            object3 = inputStream;
            object2 = object = BuildProperties.fromPropertiesStream(inputStream);
            inputStream2 = inputStream;
            object3 = inputStream;
            Fabric.getLogger().d("Beta", object.packageName + " build properties: " + object.versionName + " (" + object.versionCode + ")" + " - " + object.buildId);
        }
        object3 = object;
        if (inputStream == null) return object3;
        try {
            inputStream.close();
            return object;
        }
        catch (IOException var2_10) {
            Fabric.getLogger().e("Beta", "Error closing Beta build properties asset", (Throwable)var2_10);
            return object;
        }
        catch (Exception exception) {
            object3 = inputStream2;
            try {
                Fabric.getLogger().e("Beta", "Error reading Beta build properties", (Throwable)exception);
                object3 = object2;
                if (inputStream2 == null) return object3;
            }
            catch (Throwable var1_4) {
                if (object3 == null) throw var1_4;
                try {
                    object3.close();
                }
                catch (IOException var2_11) {
                    Fabric.getLogger().e("Beta", "Error closing Beta build properties asset", (Throwable)var2_11);
                    throw var1_4;
                }
                throw var1_4;
            }
            try {
                inputStream2.close();
                return object2;
            }
            catch (IOException var1_3) {
                Fabric.getLogger().e("Beta", "Error closing Beta build properties asset", (Throwable)var1_3);
                return object2;
            }
        }
    }

    boolean canCheckForUpdates(BetaSettingsData betaSettingsData, BuildProperties buildProperties) {
        if (betaSettingsData != null && !TextUtils.isEmpty((CharSequence)betaSettingsData.updateUrl) && buildProperties != null) {
            return true;
        }
        return false;
    }

    @TargetApi(value=14)
    UpdatesController createUpdatesController(int n2, Application application) {
        if (n2 >= 14) {
            return new ActivityLifecycleCheckForUpdatesController(this.getFabric().getActivityLifecycleManager(), this.getFabric().getExecutorService());
        }
        return new ImmediateCheckForUpdatesController();
    }

    @Override
    protected Boolean doInBackground() {
        Fabric.getLogger().d("Beta", "Beta kit initializing...");
        Context context = this.getContext();
        io.fabric.sdk.android.services.common.IdManager idManager = this.getIdManager();
        if (TextUtils.isEmpty((CharSequence)this.getBetaDeviceToken(context, idManager.getInstallerPackageName()))) {
            Fabric.getLogger().d("Beta", "A Beta device token was not found for this app");
            return false;
        }
        Fabric.getLogger().d("Beta", "Beta device token is present, checking for app updates.");
        BetaSettingsData betaSettingsData = this.getBetaSettingsData();
        BuildProperties buildProperties = this.loadBuildProperties(context);
        if (this.canCheckForUpdates(betaSettingsData, buildProperties)) {
            this.updatesController.initialize(context, this, idManager, betaSettingsData, buildProperties, new PreferenceStoreImpl(this), (CurrentTimeProvider)new SystemCurrentTimeProvider(), (HttpRequestFactory)new DefaultHttpRequestFactory(Fabric.getLogger()));
        }
        return true;
    }

    public Map<IdManager, String> getDeviceIdentifiers() {
        String string2 = this.getIdManager().getInstallerPackageName();
        string2 = this.getBetaDeviceToken(this.getContext(), string2);
        HashMap<IdManager, String> hashMap = new HashMap<IdManager, String>();
        if (!TextUtils.isEmpty((CharSequence)string2)) {
            hashMap.put(IdManager.FONT_TOKEN, string2);
        }
        return hashMap;
    }

    @Override
    public String getIdentifier() {
        return "com.crashlytics.sdk.android:beta";
    }

    String getOverridenSpiEndpoint() {
        return CommonUtils.getStringsFileValue(this.getContext(), "com.crashlytics.ApiEndpoint");
    }

    @Override
    public String getVersion() {
        return "1.1.4.92";
    }

    @TargetApi(value=11)
    boolean isAppPossiblyInstalledByBeta(String string2, int n2) {
        if (n2 < 11) {
            if (string2 == null) {
                return true;
            }
            return false;
        }
        return "io.crash.air".equals(string2);
    }

    @TargetApi(value=14)
    @Override
    protected boolean onPreExecute() {
        Application application = (Application)this.getContext().getApplicationContext();
        this.updatesController = this.createUpdatesController(Build.VERSION.SDK_INT, application);
        return true;
    }
}

