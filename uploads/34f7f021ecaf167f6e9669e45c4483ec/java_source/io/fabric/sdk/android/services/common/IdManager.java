/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.content.ContentResolver
 *  android.content.Context
 *  android.content.SharedPreferences
 *  android.content.SharedPreferences$Editor
 *  android.os.Build
 *  android.os.Build$VERSION
 *  android.provider.Settings
 *  android.provider.Settings$Secure
 *  io.fabric.sdk.android.services.common.AdvertisingInfo
 *  io.fabric.sdk.android.services.common.AdvertisingInfoProvider
 *  io.fabric.sdk.android.services.common.DeviceIdentifierProvider
 *  io.fabric.sdk.android.services.common.IdManager$DeviceIdentifierType
 *  io.fabric.sdk.android.services.common.InstallerPackageNameProvider
 */
package io.fabric.sdk.android.services.common;

import android.content.ContentResolver;
import android.content.Context;
import android.content.SharedPreferences;
import android.os.Build;
import android.provider.Settings;
import io.fabric.sdk.android.Fabric;
import io.fabric.sdk.android.Kit;
import io.fabric.sdk.android.services.common.AdvertisingInfo;
import io.fabric.sdk.android.services.common.AdvertisingInfoProvider;
import io.fabric.sdk.android.services.common.CommonUtils;
import io.fabric.sdk.android.services.common.DeviceIdentifierProvider;
import io.fabric.sdk.android.services.common.IdManager;
import io.fabric.sdk.android.services.common.InstallerPackageNameProvider;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import java.util.UUID;
import java.util.concurrent.locks.ReentrantLock;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class IdManager {
    private static final String BAD_ANDROID_ID = "9774d56d682e549c";
    public static final String COLLECT_DEVICE_IDENTIFIERS = "com.crashlytics.CollectDeviceIdentifiers";
    public static final String COLLECT_USER_IDENTIFIERS = "com.crashlytics.CollectUserIdentifiers";
    public static final String DEFAULT_VERSION_NAME = "0.0";
    private static final String FORWARD_SLASH_REGEX;
    private static final Pattern ID_PATTERN;
    private static final String PREFKEY_INSTALLATION_UUID = "crashlytics.installation.id";
    AdvertisingInfo advertisingInfo;
    AdvertisingInfoProvider advertisingInfoProvider;
    private final Context appContext;
    private final String appIdentifier;
    private final String appInstallIdentifier;
    private final boolean collectHardwareIds;
    private final boolean collectUserIds;
    boolean fetchedAdvertisingInfo;
    private final ReentrantLock installationIdLock = new ReentrantLock();
    private final InstallerPackageNameProvider installerPackageNameProvider;
    private final Collection<Kit> kits;

    static {
        ID_PATTERN = Pattern.compile("[^\\p{Alnum}]");
        FORWARD_SLASH_REGEX = Pattern.quote("/");
    }

    public IdManager(Context context, String string2, String string3, Collection<Kit> collection) {
        if (context == null) {
            throw new IllegalArgumentException("appContext must not be null");
        }
        if (string2 == null) {
            throw new IllegalArgumentException("appIdentifier must not be null");
        }
        if (collection == null) {
            throw new IllegalArgumentException("kits must not be null");
        }
        this.appContext = context;
        this.appIdentifier = string2;
        this.appInstallIdentifier = string3;
        this.kits = collection;
        this.installerPackageNameProvider = new InstallerPackageNameProvider();
        this.advertisingInfoProvider = new AdvertisingInfoProvider(context);
        this.collectHardwareIds = CommonUtils.getBooleanResourceValue(context, "com.crashlytics.CollectDeviceIdentifiers", true);
        if (!this.collectHardwareIds) {
            Fabric.getLogger().d("Fabric", "Device ID collection disabled for " + context.getPackageName());
        }
        this.collectUserIds = CommonUtils.getBooleanResourceValue(context, "com.crashlytics.CollectUserIdentifiers", true);
        if (!this.collectUserIds) {
            Fabric.getLogger().d("Fabric", "User information collection disabled for " + context.getPackageName());
        }
    }

    private String createInstallationUUID(SharedPreferences sharedPreferences) {
        String string2;
        block4 : {
            String string3;
            this.installationIdLock.lock();
            string2 = string3 = sharedPreferences.getString("crashlytics.installation.id", null);
            if (string3 != null) break block4;
            string2 = this.formatId(UUID.randomUUID().toString());
            sharedPreferences.edit().putString("crashlytics.installation.id", string2).commit();
        }
        return string2;
        finally {
            this.installationIdLock.unlock();
        }
    }

    private String formatId(String string2) {
        if (string2 == null) {
            return null;
        }
        return ID_PATTERN.matcher(string2).replaceAll("").toLowerCase(Locale.US);
    }

    private void putNonNullIdInto(Map<, String> map,  deviceIdentifierType, String string2) {
        if (string2 != null) {
            map.put(deviceIdentifierType, string2);
        }
    }

    private String removeForwardSlashesIn(String string2) {
        return string2.replaceAll(FORWARD_SLASH_REGEX, "");
    }

    public boolean canCollectUserIds() {
        return this.collectUserIds;
    }

    @Deprecated
    public String createIdHeaderValue(String string2, String string3) {
        return "";
    }

    public String getAdvertisingId() {
        String string2;
        String string3 = string2 = null;
        if (this.collectHardwareIds) {
            AdvertisingInfo advertisingInfo = this.getAdvertisingInfo();
            string3 = string2;
            if (advertisingInfo != null) {
                string3 = advertisingInfo.advertisingId;
            }
        }
        return string3;
    }

    AdvertisingInfo getAdvertisingInfo() {
        synchronized (this) {
            if (!this.fetchedAdvertisingInfo) {
                this.advertisingInfo = this.advertisingInfoProvider.getAdvertisingInfo();
                this.fetchedAdvertisingInfo = true;
            }
            AdvertisingInfo advertisingInfo = this.advertisingInfo;
            return advertisingInfo;
        }
    }

    public String getAndroidId() {
        String string2;
        String string3 = string2 = null;
        if (this.collectHardwareIds) {
            String string4 = Settings.Secure.getString((ContentResolver)this.appContext.getContentResolver(), (String)"android_id");
            string3 = string2;
            if (!"9774d56d682e549c".equals(string4)) {
                string3 = this.formatId(string4);
            }
        }
        return string3;
    }

    public String getAppIdentifier() {
        return this.appIdentifier;
    }

    public String getAppInstallIdentifier() {
        String string2;
        String string3 = string2 = this.appInstallIdentifier;
        if (string2 == null) {
            SharedPreferences sharedPreferences = CommonUtils.getSharedPrefs(this.appContext);
            string3 = string2 = sharedPreferences.getString("crashlytics.installation.id", null);
            if (string2 == null) {
                string3 = this.createInstallationUUID(sharedPreferences);
            }
        }
        return string3;
    }

    @Deprecated
    public String getBluetoothMacAddress() {
        return null;
    }

    public Map<, String> getDeviceIdentifiers() {
        HashMap<, String> hashMap = new HashMap<, String>();
        Iterator<Kit> iterator = this.kits.iterator();
        while (iterator.hasNext()) {
            Kit kit = iterator.next();
            if (!(kit instanceof DeviceIdentifierProvider)) continue;
            for (Map.Entry entry : ((DeviceIdentifierProvider)kit).getDeviceIdentifiers().entrySet()) {
                this.putNonNullIdInto(hashMap, ()entry.getKey(), (String)entry.getValue());
            }
        }
        this.putNonNullIdInto(hashMap, .ANDROID_ID, this.getAndroidId());
        this.putNonNullIdInto(hashMap, .ANDROID_ADVERTISING_ID, this.getAdvertisingId());
        return Collections.unmodifiableMap(hashMap);
    }

    public String getDeviceUUID() {
        String string2 = "";
        if (this.collectHardwareIds) {
            String string3;
            string2 = string3 = this.getAndroidId();
            if (string3 == null) {
                SharedPreferences sharedPreferences = CommonUtils.getSharedPrefs(this.appContext);
                string2 = string3 = sharedPreferences.getString("crashlytics.installation.id", null);
                if (string3 == null) {
                    string2 = this.createInstallationUUID(sharedPreferences);
                }
            }
        }
        return string2;
    }

    public String getInstallerPackageName() {
        return this.installerPackageNameProvider.getInstallerPackageName(this.appContext);
    }

    public String getModelName() {
        return String.format(Locale.US, "%s/%s", this.removeForwardSlashesIn(Build.MANUFACTURER), this.removeForwardSlashesIn(Build.MODEL));
    }

    public String getOsBuildVersionString() {
        return this.removeForwardSlashesIn(Build.VERSION.INCREMENTAL);
    }

    public String getOsDisplayVersionString() {
        return this.removeForwardSlashesIn(Build.VERSION.RELEASE);
    }

    public String getOsVersionString() {
        return this.getOsDisplayVersionString() + "/" + this.getOsBuildVersionString();
    }

    @Deprecated
    public String getSerialNumber() {
        return null;
    }

    @Deprecated
    public String getTelephonyId() {
        return null;
    }

    @Deprecated
    public String getWifiMacAddress() {
        return null;
    }

    public Boolean isLimitAdTrackingEnabled() {
        Boolean bl;
        Boolean bl2 = bl = null;
        if (this.collectHardwareIds) {
            AdvertisingInfo advertisingInfo = this.getAdvertisingInfo();
            bl2 = bl;
            if (advertisingInfo != null) {
                bl2 = advertisingInfo.limitAdTrackingEnabled;
            }
        }
        return bl2;
    }
}

