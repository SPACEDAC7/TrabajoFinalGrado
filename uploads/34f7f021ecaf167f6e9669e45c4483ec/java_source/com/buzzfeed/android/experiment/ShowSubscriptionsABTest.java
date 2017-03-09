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

public class ShowSubscriptionsABTest {
    private static final String EXPERIMENT = "Show_Subscriptions_ANDROID";
    private static final String TAG = LogUtil.makeLogTag(ShowSubscriptionsABTest.class);
    private static boolean sEnableShowSubscriptions;
    private static boolean sFirstRun;

    static {
        sFirstRun = true;
    }

    private static void logStatus(String string2) {
        if (sFirstRun) {
            LogUtil.i(TAG, string2);
        }
        sFirstRun = false;
    }

    public static boolean shouldEnableShowSubscriptions(Context object) {
        synchronized (ShowSubscriptionsABTest.class) {
            final VariantBlockInterface variantBlockInterface = new VariantBlockInterface((Context)object){
                final /* synthetic */ Context val$context;

                @Override
                public void executeBlock(Experiment experiment) {
                    sEnableShowSubscriptions = false;
                    ShowSubscriptionsABTest.logStatus("Show Subscriptions AB Test: Control");
                }

                @Override
                public void initialExecuteBlock(Experiment experiment) {
                    DiscriminatingTracker.getInstance().trackEvent(this.val$context.getString(2131296748), this.val$context.getString(2131296806), this.val$context.getString(2131296807), 0);
                    DustbusterClient.getInstance().trackABeagleExperimentStatus(experiment.getId(), experiment.getName(), experiment.getVersion(), experiment.getSelectedVariantId(), experiment.getSelectedVariantName());
                }
            };
            object = new HashMap<String, VariantBlockInterface>((Context)object){
                final /* synthetic */ Context val$context;

            };
            ExperimentManager.getInstance().conductExperiment("Show_Subscriptions_ANDROID", (Map<String, VariantBlockInterface>)object, variantBlockInterface);
            boolean bl = sEnableShowSubscriptions;
            return bl;
        }
    }

}

