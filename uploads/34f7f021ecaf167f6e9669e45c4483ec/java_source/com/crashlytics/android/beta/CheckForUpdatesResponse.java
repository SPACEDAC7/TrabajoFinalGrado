/*
 * Decompiled with CFR 0_115.
 */
package com.crashlytics.android.beta;

class CheckForUpdatesResponse {
    public final String buildVersion;
    public final String displayVersion;
    public final String instanceId;
    public final String packageName;
    public final String url;
    public final String versionString;

    public CheckForUpdatesResponse(String string2, String string3, String string4, String string5, String string6, String string7) {
        this.url = string2;
        this.versionString = string3;
        this.displayVersion = string4;
        this.buildVersion = string5;
        this.packageName = string6;
        this.instanceId = string7;
    }
}

