/*
 * Decompiled with CFR 0_115.
 */
package com.buzzfeed.android.vcr.util;

import com.buzzfeed.android.vcr.VCRConfig;
import com.buzzfeed.android.vcr.toolbox.PositionCache;
import com.buzzfeed.toolkit.util.ApplicationStateCallbacks;
import com.buzzfeed.toolkit.util.LogUtil;

public class VCRCacheCleaner
extends ApplicationStateCallbacks {
    private static final long DEFAULT_POSITION_CACHE_TIMEOUT = 300000;
    private static final String TAG = LogUtil.makeLogTag(VCRCacheCleaner.class);
    private long mLastSessionTimestamp = -1;
    private final long mTimeoutIntervalMillis;

    public VCRCacheCleaner() {
        this(300000);
    }

    public VCRCacheCleaner(long l2) {
        this.mTimeoutIntervalMillis = l2;
    }

    @Override
    public void onApplicationEnterBackground() {
        this.mLastSessionTimestamp = System.currentTimeMillis();
    }

    @Override
    public void onApplicationEnterForeground() {
        String string2 = TAG + ".onApplicationEnterForeground";
        if (System.currentTimeMillis() - this.mLastSessionTimestamp >= this.mTimeoutIntervalMillis) {
            LogUtil.d(string2, "Clearing VCR global position cache.");
            VCRConfig.getInstance().getGlobalPositionCache().clearCache();
        }
    }
}

