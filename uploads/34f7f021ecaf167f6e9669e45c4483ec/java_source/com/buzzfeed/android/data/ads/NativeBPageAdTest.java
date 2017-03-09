/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.content.Context
 */
package com.buzzfeed.android.data.ads;

import android.content.Context;
import com.buzzfeed.analytics.client.DustbusterClient;
import com.buzzfeed.android.util.DiscriminatingTracker;
import com.buzzfeed.androidabframework.controller.ExperimentManager;
import com.buzzfeed.androidabframework.data.Experiment;
import com.buzzfeed.androidabframework.data.VariantBlockInterface;
import com.buzzfeed.toolkit.util.LogUtil;
import java.util.HashMap;
import java.util.Map;

public class NativeBPageAdTest {
    private static final String EXPERIMENT = "spicy_native_bpage_ads_4716";
    private static final String TAG = LogUtil.makeLogTag(NativeBPageAdTest.class);
    public static boolean sFirstRun;
    private static boolean sUseNativeBPageAds;

    private static boolean getUseNativeBPageAds() {
        return sUseNativeBPageAds;
    }

    private static void setUseNativeBPageAds(boolean bl) {
        sUseNativeBPageAds = bl;
    }

    public static boolean useNativeBPageAds(Context object) {
        synchronized (NativeBPageAdTest.class) {
            final String string2 = TAG + ".conductExperiment";
            final VariantBlockInterface variantBlockInterface = new VariantBlockInterface((Context)object){
                final /* synthetic */ Context val$context;

                @Override
                public void executeBlock(Experiment experiment) {
                    NativeBPageAdTest.setUseNativeBPageAds(false);
                    if (NativeBPageAdTest.sFirstRun) {
                        LogUtil.i(string2, "Native BPage Ads Experiment: disabled");
                    }
                    NativeBPageAdTest.sFirstRun = false;
                }

                @Override
                public void initialExecuteBlock(Experiment experiment) {
                    DiscriminatingTracker.getInstance().trackEvent(this.val$context.getString(2131296748), this.val$context.getString(2131296793), this.val$context.getString(2131296794), 0);
                    DustbusterClient.getInstance().trackABeagleExperimentStatus(experiment.getId(), experiment.getName(), experiment.getVersion(), experiment.getSelectedVariantId(), experiment.getSelectedVariantName());
                }
            };
            object = new HashMap<String, VariantBlockInterface>((Context)object){
                final /* synthetic */ Context val$context;

            };
            ExperimentManager.getInstance().conductExperiment("spicy_native_bpage_ads_4716", (Map<String, VariantBlockInterface>)object, variantBlockInterface);
            boolean bl = NativeBPageAdTest.getUseNativeBPageAds();
            return bl;
        }
    }

}

