/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.content.Context
 */
package com.buzzfeed.android.vcr;

import android.content.Context;
import android.support.annotation.NonNull;
import android.support.annotation.VisibleForTesting;
import com.buzzfeed.android.vcr.toolbox.DefaultPositionCache;
import com.buzzfeed.android.vcr.toolbox.PositionCache;
import com.buzzfeed.toolkit.util.LogUtil;
import com.buzzfeed.toolkit.util.NetworkUtil;

public final class VCRConfig {
    public static final int ALLOWED_JOINING_TIME_MS = 5000;
    private static final long BITRATE_LIMIT_DEFAULT = 1500000;
    private static final long BITRATE_UNLIMITED = 0;
    private static final int MAX_CACHED_POSITIONS = 50;
    public static final int MAX_DROPPED_FRAME_COUNT = 50;
    public static final int MIN_BUFFER_TIME_MS = 1000;
    public static final int MIN_REBUFFER_TIME_MS = 5000;
    private static final String TAG = LogUtil.makeLogTag(VCRConfig.class);
    private static VCRConfig sSingleton;
    private boolean mIsBitrateLimitingEnabled;
    private boolean mIsDebugLoggingEnabled;
    private long mPeakBitrate = 0;
    private DefaultPositionCache mPositionCache = new DefaultPositionCache(50);

    @VisibleForTesting
    VCRConfig() {
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    public static VCRConfig getInstance() {
        if (sSingleton == null) {
            synchronized (VCRConfig.class) {
                if (sSingleton == null) {
                    sSingleton = new VCRConfig();
                }
            }
        }
        return sSingleton;
    }

    public long getAdaptiveBitrateLimit() {
        if (this.mIsBitrateLimitingEnabled) {
            return this.mPeakBitrate;
        }
        return 0;
    }

    public PositionCache getGlobalPositionCache() {
        return this.mPositionCache;
    }

    public boolean isDebugLoggingEnabled() {
        return this.mIsDebugLoggingEnabled;
    }

    /*
     * Enabled aggressive block sorting
     */
    public void setAdaptiveBitrateLimitForConnection(@NonNull Context object) {
        String string2 = TAG + ".setAdaptiveBitrateLimitForConnection";
        this.mPeakBitrate = (object = NetworkUtil.getConnectionType((Context)object)) == NetworkUtil.ConnectionType.Mobile ? 1500000 : 0;
        LogUtil.d(string2, "connectionType=" + object + ", peakBitrate=" + this.mPeakBitrate);
    }

    /*
     * Enabled aggressive block sorting
     */
    public void setAdaptiveBitrateLimitingEnabled(@NonNull Context context, boolean bl) {
        String string2 = TAG + ".setAdaptiveBitrateLimitingEnabled";
        StringBuilder stringBuilder = new StringBuilder().append("Setting playback bitrate limiting: ");
        String string3 = bl ? "ENABLED" : "DISABLED";
        LogUtil.d(string2, stringBuilder.append(string3).toString());
        this.mIsBitrateLimitingEnabled = bl;
        if (bl) {
            this.setAdaptiveBitrateLimitForConnection(context);
        }
    }

    public void setDebugLoggingEnabled(boolean bl) {
        LogUtil.d(TAG + ".setDebugLoggingEnabled", "VCR debug logging: enabled=" + bl);
        this.mIsDebugLoggingEnabled = bl;
    }
}

