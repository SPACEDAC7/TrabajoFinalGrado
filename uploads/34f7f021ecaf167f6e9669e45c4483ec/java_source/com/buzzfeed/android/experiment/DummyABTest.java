/*
 * Decompiled with CFR 0_115.
 */
package com.buzzfeed.android.experiment;

import com.buzzfeed.analytics.client.DustbusterClient;
import com.buzzfeed.android.experiment.ExperimentUtils;
import com.buzzfeed.android.util.DiscriminatingTracker;
import com.buzzfeed.androidabframework.controller.ExperimentManager;
import com.buzzfeed.androidabframework.data.Experiment;
import com.buzzfeed.androidabframework.data.VariantBlockInterface;
import com.buzzfeed.toolkit.util.LogUtil;
import java.util.HashMap;
import java.util.Map;

public class DummyABTest {
    private static final String ANALYTICS_ACTION;
    private static final String ANALYTICS_CATEGORY;
    private static final String ANALYTICS_LABEL_CONTROL;
    private static final String ANALYTICS_LABEL_TURN_ON;
    private static final String EXPERIMENT = "android_experiment_test_4_55";
    private static final String TAG;
    private static final String VARIANT_CONTROL = "control";
    private static final String VARIANT_TURN_ON = "turn_on";
    private static boolean sFirstRun;
    private static boolean sStatus;

    static {
        TAG = LogUtil.makeLogTag(DummyABTest.class);
        ANALYTICS_CATEGORY = ExperimentUtils.getAnalyticsCategory();
        ANALYTICS_ACTION = ExperimentUtils.getAnalyticsAction("android_experiment_test_4_55");
        ANALYTICS_LABEL_CONTROL = ExperimentUtils.getAnalyticsLabel("android_experiment_test_4_55", "control");
        ANALYTICS_LABEL_TURN_ON = ExperimentUtils.getAnalyticsLabel("android_experiment_test_4_55", "turn_on");
        sStatus = false;
        sFirstRun = true;
    }

    private static boolean getStatus() {
        return sStatus;
    }

    private static void setStatus(boolean bl) {
        sStatus = bl;
    }

    public static boolean shouldDoSomething() {
        synchronized (DummyABTest.class) {
            final VariantBlockInterface variantBlockInterface = new VariantBlockInterface(){

                @Override
                public void executeBlock(Experiment experiment) {
                    DummyABTest.setStatus(false);
                    if (sFirstRun) {
                        LogUtil.i(TAG, "Dummy A/B Experiment: disabled");
                    }
                    sFirstRun = false;
                }

                @Override
                public void initialExecuteBlock(Experiment experiment) {
                    DiscriminatingTracker.getInstance().trackEvent(ANALYTICS_CATEGORY, ANALYTICS_ACTION, ANALYTICS_LABEL_CONTROL, 0);
                    DustbusterClient.getInstance().trackABeagleExperimentStatus(experiment.getId(), experiment.getName(), experiment.getVersion(), experiment.getSelectedVariantId(), experiment.getSelectedVariantName());
                }
            };
            HashMap<String, VariantBlockInterface> hashMap = new HashMap<String, VariantBlockInterface>(){

            };
            ExperimentManager.getInstance().conductExperiment("android_experiment_test_4_55", hashMap, variantBlockInterface);
            boolean bl = DummyABTest.getStatus();
            return bl;
        }
    }

}

