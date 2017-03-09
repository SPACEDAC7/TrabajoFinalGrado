/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.util.Log
 */
package com.crashlytics.android.core;

import android.util.Log;
import com.crashlytics.android.core.CrashlyticsMissingDependencyException;
import io.fabric.sdk.android.Fabric;
import io.fabric.sdk.android.services.common.CommonUtils;

class BuildIdValidator {
    private static final String MESSAGE = "This app relies on Crashlytics. Please sign up for access at https://fabric.io/sign_up,\ninstall an Android build tool and ask a team member to invite you to this app's organization.";
    private final String buildId;
    private final boolean requiringBuildId;

    public BuildIdValidator(String string2, boolean bl) {
        this.buildId = string2;
        this.requiringBuildId = bl;
    }

    protected String getMessage(String string2, String string3) {
        return "This app relies on Crashlytics. Please sign up for access at https://fabric.io/sign_up,\ninstall an Android build tool and ask a team member to invite you to this app's organization.";
    }

    public void validate(String string2, String string3) {
        if (CommonUtils.isNullOrEmpty(this.buildId) && this.requiringBuildId) {
            string2 = this.getMessage(string2, string3);
            Log.e((String)"CrashlyticsCore", (String)".");
            Log.e((String)"CrashlyticsCore", (String)".     |  | ");
            Log.e((String)"CrashlyticsCore", (String)".     |  |");
            Log.e((String)"CrashlyticsCore", (String)".     |  |");
            Log.e((String)"CrashlyticsCore", (String)".   \\ |  | /");
            Log.e((String)"CrashlyticsCore", (String)".    \\    /");
            Log.e((String)"CrashlyticsCore", (String)".     \\  /");
            Log.e((String)"CrashlyticsCore", (String)".      \\/");
            Log.e((String)"CrashlyticsCore", (String)".");
            Log.e((String)"CrashlyticsCore", (String)string2);
            Log.e((String)"CrashlyticsCore", (String)".");
            Log.e((String)"CrashlyticsCore", (String)".      /\\");
            Log.e((String)"CrashlyticsCore", (String)".     /  \\");
            Log.e((String)"CrashlyticsCore", (String)".    /    \\");
            Log.e((String)"CrashlyticsCore", (String)".   / |  | \\");
            Log.e((String)"CrashlyticsCore", (String)".     |  |");
            Log.e((String)"CrashlyticsCore", (String)".     |  |");
            Log.e((String)"CrashlyticsCore", (String)".     |  |");
            Log.e((String)"CrashlyticsCore", (String)".");
            throw new CrashlyticsMissingDependencyException(string2);
        }
        if (!this.requiringBuildId) {
            Fabric.getLogger().d("CrashlyticsCore", "Configured not to require a build ID.");
        }
    }
}

