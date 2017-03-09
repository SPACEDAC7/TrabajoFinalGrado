/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.content.Context
 *  io.fabric.sdk.android.services.common.IdManager$DeviceIdentifierType
 */
package com.crashlytics.android.answers;

import android.content.Context;
import com.crashlytics.android.answers.SessionEventMetadata;
import io.fabric.sdk.android.services.common.CommonUtils;
import io.fabric.sdk.android.services.common.IdManager;
import java.util.Map;
import java.util.UUID;

class SessionMetadataCollector {
    private final Context context;
    private final io.fabric.sdk.android.services.common.IdManager idManager;
    private final String versionCode;
    private final String versionName;

    public SessionMetadataCollector(Context context, io.fabric.sdk.android.services.common.IdManager idManager, String string2, String string3) {
        this.context = context;
        this.idManager = idManager;
        this.versionCode = string2;
        this.versionName = string3;
    }

    public SessionEventMetadata getMetadata() {
        Object object = this.idManager.getDeviceIdentifiers();
        String string2 = this.idManager.getAppIdentifier();
        String string3 = this.idManager.getAppInstallIdentifier();
        String string4 = object.get((Object)IdManager.ANDROID_ID);
        String string5 = object.get((Object)IdManager.ANDROID_ADVERTISING_ID);
        Boolean bl = this.idManager.isLimitAdTrackingEnabled();
        object = object.get((Object)IdManager.FONT_TOKEN);
        String string6 = CommonUtils.resolveBuildId(this.context);
        String string7 = this.idManager.getOsVersionString();
        String string8 = this.idManager.getModelName();
        return new SessionEventMetadata(string2, UUID.randomUUID().toString(), string3, string4, string5, bl, (String)object, string6, string7, string8, this.versionCode, this.versionName);
    }
}

