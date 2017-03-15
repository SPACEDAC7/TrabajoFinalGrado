/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.content.Context
 *  android.content.pm.ApplicationInfo
 *  android.content.pm.PackageManager
 *  android.content.res.Resources
 *  android.os.Bundle
 *  android.text.TextUtils
 */
package io.fabric.sdk.android.services.common;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.os.Bundle;
import android.text.TextUtils;
import io.fabric.sdk.android.Fabric;
import io.fabric.sdk.android.services.common.CommonUtils;

public class ApiKey {
    static final String CRASHLYTICS_API_KEY = "com.crashlytics.ApiKey";
    static final String FABRIC_API_KEY = "io.fabric.ApiKey";

    @Deprecated
    public static String getApiKey(Context context) {
        Fabric.getLogger().w("Fabric", "getApiKey(context) is deprecated, please upgrade kit(s) to the latest version.");
        return new ApiKey().getValue(context);
    }

    @Deprecated
    public static String getApiKey(Context context, boolean bl) {
        Fabric.getLogger().w("Fabric", "getApiKey(context, debug) is deprecated, please upgrade kit(s) to the latest version.");
        return new ApiKey().getValue(context);
    }

    protected String buildApiKeyInstructions() {
        return "Fabric could not be initialized, API key missing from AndroidManifest.xml. Add the following tag to your Application element \n\t<meta-data android:name=\"io.fabric.ApiKey\" android:value=\"YOUR_API_KEY\"/>";
    }

    protected String getApiKeyFromManifest(Context object) {
        block6 : {
            String string2;
            String string3 = null;
            Object var4_4 = null;
            String string4 = string3;
            try {
                string2 = object.getPackageName();
                string4 = string3;
            }
            catch (Exception var1_2) {
                Fabric.getLogger().d("Fabric", "Caught non-fatal exception while retrieving apiKey: " + var1_2);
                return string4;
            }
            string2 = object.getPackageManager().getApplicationInfo((String)string2, (int)128).metaData;
            object = var4_4;
            if (string2 == null) break block6;
            string4 = string3;
            object = string3 = string2.getString("io.fabric.ApiKey");
            if (string3 != null) break block6;
            string4 = string3;
            Fabric.getLogger().d("Fabric", "Falling back to Crashlytics key lookup from Manifest");
            string4 = string3;
            object = string2.getString("com.crashlytics.ApiKey");
        }
        return object;
    }

    protected String getApiKeyFromStrings(Context context) {
        int n2;
        String string2 = null;
        int n3 = n2 = CommonUtils.getResourcesIdentifier(context, "io.fabric.ApiKey", "string");
        if (n2 == 0) {
            Fabric.getLogger().d("Fabric", "Falling back to Crashlytics key lookup from Strings");
            n3 = CommonUtils.getResourcesIdentifier(context, "com.crashlytics.ApiKey", "string");
        }
        if (n3 != 0) {
            string2 = context.getResources().getString(n3);
        }
        return string2;
    }

    public String getValue(Context context) {
        String string2;
        String string3 = string2 = this.getApiKeyFromManifest(context);
        if (TextUtils.isEmpty((CharSequence)string2)) {
            string3 = this.getApiKeyFromStrings(context);
        }
        if (TextUtils.isEmpty((CharSequence)string3)) {
            this.logErrorOrThrowException(context);
        }
        return string3;
    }

    protected void logErrorOrThrowException(Context context) {
        if (Fabric.isDebuggable() || CommonUtils.isAppDebuggable(context)) {
            throw new IllegalArgumentException(this.buildApiKeyInstructions());
        }
        Fabric.getLogger().e("Fabric", this.buildApiKeyInstructions());
    }
}

