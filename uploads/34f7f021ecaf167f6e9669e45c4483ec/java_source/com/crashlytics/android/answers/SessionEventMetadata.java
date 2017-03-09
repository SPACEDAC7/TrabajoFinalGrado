/*
 * Decompiled with CFR 0_115.
 */
package com.crashlytics.android.answers;

final class SessionEventMetadata {
    public final String advertisingId;
    public final String androidId;
    public final String appBundleId;
    public final String appVersionCode;
    public final String appVersionName;
    public final String betaDeviceToken;
    public final String buildId;
    public final String deviceModel;
    public final String executionId;
    public final String installationId;
    public final Boolean limitAdTrackingEnabled;
    public final String osVersion;
    private String stringRepresentation;

    public SessionEventMetadata(String string2, String string3, String string4, String string5, String string6, Boolean bl, String string7, String string8, String string9, String string10, String string11, String string12) {
        this.appBundleId = string2;
        this.executionId = string3;
        this.installationId = string4;
        this.androidId = string5;
        this.advertisingId = string6;
        this.limitAdTrackingEnabled = bl;
        this.betaDeviceToken = string7;
        this.buildId = string8;
        this.osVersion = string9;
        this.deviceModel = string10;
        this.appVersionCode = string11;
        this.appVersionName = string12;
    }

    public String toString() {
        if (this.stringRepresentation == null) {
            this.stringRepresentation = "appBundleId=" + this.appBundleId + ", executionId=" + this.executionId + ", installationId=" + this.installationId + ", androidId=" + this.androidId + ", advertisingId=" + this.advertisingId + ", limitAdTrackingEnabled=" + this.limitAdTrackingEnabled + ", betaDeviceToken=" + this.betaDeviceToken + ", buildId=" + this.buildId + ", osVersion=" + this.osVersion + ", deviceModel=" + this.deviceModel + ", appVersionCode=" + this.appVersionCode + ", appVersionName=" + this.appVersionName;
        }
        return this.stringRepresentation;
    }
}

