/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.content.Context
 *  android.text.TextUtils
 */
package com.buzzfeed.analytics;

import android.content.Context;
import android.support.annotation.Nullable;
import android.text.TextUtils;
import com.adjust.sdk.Adjust;
import com.adjust.sdk.AdjustConfig;
import com.adjust.sdk.AdjustEvent;
import com.buzzfeed.analytics.adjust.AdjustConfiguration;
import com.buzzfeed.toolkit.util.LogUtil;

public class AdjustConfigurationBuzzFeed
extends AdjustConfiguration {
    private static final String TAG = LogUtil.makeLogTag(AdjustConfigurationBuzzFeed.class);

    public AdjustConfigurationBuzzFeed(@Nullable String string2, boolean bl) {
        super(string2, bl);
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    public void configure(Context context) {
        if (TextUtils.isEmpty((CharSequence)this.mAdjustToken)) {
            return;
        }
        long l2 = System.currentTimeMillis();
        String string2 = this.mAdjustProduction ? "production" : "sandbox";
        Adjust.onCreate(new AdjustConfig(context, this.mAdjustToken, string2));
        Adjust.setEnabled(true);
        LogUtil.i(TAG, "Finished initializing Adjust (in " + (double)(System.currentTimeMillis() - l2) / 1000.0 + " secs)");
    }

    @Override
    public void onPause() {
        Adjust.onPause();
    }

    @Override
    public void onResume() {
        Adjust.onResume();
    }

    @Override
    public void trackAdjustEvent(String string2) {
        if (!Adjust.isEnabled()) {
            Adjust.setEnabled(true);
        }
        Adjust.trackEvent(new AdjustEvent(string2));
    }
}

