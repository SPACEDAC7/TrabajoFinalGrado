/*
 * Decompiled with CFR 0_115.
 */
package io.fabric.sdk.android.services.settings;

public class AnalyticsSettingsData {
    public static final int DEFAULT_SAMPLING_RATE = 1;
    public final String analyticsURL;
    public final int flushIntervalSeconds;
    public final boolean flushOnBackground;
    public final int maxByteSizePerFile;
    public final int maxFileCountPerSend;
    public final int maxPendingSendFileCount;
    public final int samplingRate;
    public final boolean trackCustomEvents;
    public final boolean trackPredefinedEvents;

    @Deprecated
    public AnalyticsSettingsData(String string2, int n2, int n3, int n4, int n5, boolean bl) {
        this(string2, n2, n3, n4, n5, bl, true, 1, true);
    }

    @Deprecated
    public AnalyticsSettingsData(String string2, int n2, int n3, int n4, int n5, boolean bl, int n6) {
        this(string2, n2, n3, n4, n5, bl, true, n6, true);
    }

    public AnalyticsSettingsData(String string2, int n2, int n3, int n4, int n5, boolean bl, boolean bl2, int n6, boolean bl3) {
        this.analyticsURL = string2;
        this.flushIntervalSeconds = n2;
        this.maxByteSizePerFile = n3;
        this.maxFileCountPerSend = n4;
        this.maxPendingSendFileCount = n5;
        this.trackCustomEvents = bl;
        this.trackPredefinedEvents = bl2;
        this.samplingRate = n6;
        this.flushOnBackground = bl3;
    }
}

