/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.content.Context
 */
package com.buzzfeed.android.data.tracking;

import android.content.Context;
import android.support.annotation.NonNull;
import com.buzzfeed.analytics.client.BuzzFeedTracker;
import com.buzzfeed.analytics.client.DustbusterClient;
import com.buzzfeed.toolkit.util.EZUtil;
import java.util.Map;

public class ExploreTracker {
    static final String EXPLORE_SCREEN_NAME = "/list/explore";
    private final Context mAppContext;
    private final BuzzFeedTracker mBuzzFeedTracker;
    private final DustbusterClient mDustbusterClient;

    public ExploreTracker(@NonNull Context context, @NonNull BuzzFeedTracker buzzFeedTracker, @NonNull DustbusterClient dustbusterClient) {
        this.mAppContext = EZUtil.checkNotNull(context.getApplicationContext(), "Context must not be null.");
        this.mBuzzFeedTracker = EZUtil.checkNotNull(buzzFeedTracker, "BuzzFeedTracker must not be null.");
        this.mDustbusterClient = EZUtil.checkNotNull(dustbusterClient, "DustbusterClient must not be null.");
    }

    public void trackFeedSelection(String string2) {
        this.mBuzzFeedTracker.trackEvent(this.mAppContext.getString(2131296750), this.mAppContext.getString(2131296690), string2);
    }

    public void trackScreenView() {
        this.mBuzzFeedTracker.trackPageView("/list/explore", null);
        this.mDustbusterClient.trackFeedPageView("/list/explore");
    }
}

