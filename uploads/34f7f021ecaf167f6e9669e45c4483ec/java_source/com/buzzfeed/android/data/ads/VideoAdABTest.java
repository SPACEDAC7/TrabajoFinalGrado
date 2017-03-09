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

public class VideoAdABTest {
    private static final String EXPERIMENT = "video_ads_turn_on_182";
    private static final String TAG = LogUtil.makeLogTag(VideoAdABTest.class);
    public static boolean sFirstRun;
    private static boolean sShowVideoAds;

    private static boolean getShowVideoAds() {
        return sShowVideoAds;
    }

    private static void setShowVideoAds(boolean bl) {
        sShowVideoAds = bl;
    }

    public static boolean shouldShowVideoAds(Context object) {
        synchronized (VideoAdABTest.class) {
            final String string2 = TAG + ".conductExperiment";
            final VariantBlockInterface variantBlockInterface = new VariantBlockInterface((Context)object){
                final /* synthetic */ Context val$context;

                @Override
                public void executeBlock(Experiment experiment) {
                    VideoAdABTest.setShowVideoAds(false);
                    if (VideoAdABTest.sFirstRun) {
                        LogUtil.i(string2, "Video Ad Experiment: disabled");
                    }
                    VideoAdABTest.sFirstRun = false;
                }

                @Override
                public void initialExecuteBlock(Experiment experiment) {
                    DiscriminatingTracker.getInstance().trackEvent(this.val$context.getString(2131296748), this.val$context.getString(2131296812), this.val$context.getString(2131296813), 0);
                    DustbusterClient.getInstance().trackABeagleExperimentStatus(experiment.getId(), experiment.getName(), experiment.getVersion(), experiment.getSelectedVariantId(), experiment.getSelectedVariantName());
                }
            };
            object = new HashMap<String, VariantBlockInterface>((Context)object){
                final /* synthetic */ Context val$context;

            };
            ExperimentManager.getInstance().conductExperiment("video_ads_turn_on_182", (Map<String, VariantBlockInterface>)object, variantBlockInterface);
            boolean bl = VideoAdABTest.getShowVideoAds();
            return bl;
        }
    }

}

