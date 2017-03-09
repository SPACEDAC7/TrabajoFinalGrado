/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.content.Context
 */
package com.buzzfeed.android.experiment;

import android.content.Context;
import com.buzzfeed.analytics.client.DustbusterClient;
import com.buzzfeed.android.util.DiscriminatingTracker;
import com.buzzfeed.androidabframework.controller.ExperimentManager;
import com.buzzfeed.androidabframework.data.Experiment;
import com.buzzfeed.androidabframework.data.VariantBlockInterface;
import com.buzzfeed.toolkit.util.LogUtil;
import java.util.HashMap;
import java.util.Map;

public class SplashABTest {
    private static final String EXPERIMENT = "Splash_ANDROID_4_57";
    private static final String TAG = LogUtil.makeLogTag(SplashABTest.class);
    private static boolean sFirstRun = true;
    private static boolean sNoSplash;

    private static boolean getDontUseSplash() {
        return sNoSplash;
    }

    private static void setDontUseSplash(boolean bl) {
        sNoSplash = bl;
    }

    public static boolean shouldNotUseSplash(Context object) {
        synchronized (SplashABTest.class) {
            final VariantBlockInterface variantBlockInterface = new VariantBlockInterface((Context)object){
                final /* synthetic */ Context val$context;

                @Override
                public void executeBlock(Experiment experiment) {
                    SplashABTest.setDontUseSplash(false);
                    if (sFirstRun) {
                        LogUtil.i(TAG, "Splash Experiment: disabled");
                    }
                    sFirstRun = false;
                }

                @Override
                public void initialExecuteBlock(Experiment experiment) {
                    DiscriminatingTracker.getInstance().trackEvent(this.val$context.getString(2131296748), this.val$context.getString(2131296809), this.val$context.getString(2131296810), 0);
                    DustbusterClient.getInstance().trackABeagleExperimentStatus(experiment.getId(), experiment.getName(), experiment.getVersion(), experiment.getSelectedVariantId(), experiment.getSelectedVariantName());
                }
            };
            object = new HashMap<String, VariantBlockInterface>((Context)object){
                final /* synthetic */ Context val$context;

            };
            ExperimentManager.getInstance().conductExperiment("Splash_ANDROID_4_57", (Map<String, VariantBlockInterface>)object, variantBlockInterface);
            boolean bl = SplashABTest.getDontUseSplash();
            return bl;
        }
    }

}

