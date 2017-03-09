/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.content.Context
 *  android.content.pm.ApplicationInfo
 *  android.content.pm.PackageManager
 *  android.os.Bundle
 */
package com.crashlytics.android.core;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.os.Bundle;
import com.crashlytics.android.core.UnityVersionProvider;

class ManifestUnityVersionProvider
implements UnityVersionProvider {
    static final String FABRIC_UNITY_CRASHLYTICS_VERSION_KEY = "io.fabric.unity.crashlytics.version";
    private final Context context;
    private final String packageName;

    public ManifestUnityVersionProvider(Context context, String string2) {
        this.context = context;
        this.packageName = string2;
    }

    @Override
    public String getUnityVersion() {
        String string2;
        block3 : {
            string2 = null;
            PackageManager packageManager = this.context.getPackageManager();
            try {
                packageManager = packageManager.getApplicationInfo((String)this.packageName, (int)128).metaData;
                if (packageManager == null) break block3;
            }
            catch (Exception var1_2) {
                return null;
            }
            string2 = packageManager.getString("io.fabric.unity.crashlytics.version");
        }
        return string2;
    }
}

