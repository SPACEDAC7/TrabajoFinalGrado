/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.content.Context
 */
package com.buzzfeed.android.data;

import android.content.Context;
import com.buzzfeed.analytics.client.DustbusterClient;
import com.buzzfeed.android.util.DiscriminatingTracker;
import com.buzzfeed.androidabframework.controller.ExperimentManager;
import com.buzzfeed.androidabframework.data.Experiment;
import com.buzzfeed.androidabframework.data.VariantBlockInterface;
import com.buzzfeed.toolkit.util.LogUtil;
import java.util.HashMap;
import java.util.Map;

public class ShareFabLabelABTest {
    private static final String EXPERIMENT = "FAB_Share_4_55";
    private static final String TAG = LogUtil.makeLogTag(ShareFabLabelABTest.class);
    private static boolean sFirstRun = true;
    private static boolean sUseShareFabLabel;

    private static boolean getUseShareFabLabel() {
        return sUseShareFabLabel;
    }

    private static void setUseShareFabLabel(boolean bl) {
        sUseShareFabLabel = bl;
    }

    public static boolean shouldUseShareFabLabel(Context object) {
        synchronized (ShareFabLabelABTest.class) {
            final VariantBlockInterface variantBlockInterface = new VariantBlockInterface((Context)object){
                final /* synthetic */ Context val$context;

                @Override
                public void executeBlock(Experiment experiment) {
                    ShareFabLabelABTest.setUseShareFabLabel(false);
                    if (sFirstRun) {
                        LogUtil.i(TAG, "Share Fab Label Experiment: disabled");
                    }
                    sFirstRun = false;
                }

                @Override
                public void initialExecuteBlock(Experiment experiment) {
                    DiscriminatingTracker.getInstance().trackEvent(this.val$context.getString(2131296748), this.val$context.getString(2131296775), this.val$context.getString(2131296776), 0);
                    DustbusterClient.getInstance().trackABeagleExperimentStatus(experiment.getId(), experiment.getName(), experiment.getVersion(), experiment.getSelectedVariantId(), experiment.getSelectedVariantName());
                }
            };
            object = new HashMap<String, VariantBlockInterface>((Context)object){
                final /* synthetic */ Context val$context;

            };
            ExperimentManager.getInstance().conductExperiment("FAB_Share_4_55", (Map<String, VariantBlockInterface>)object, variantBlockInterface);
            boolean bl = ShareFabLabelABTest.getUseShareFabLabel();
            return bl;
        }
    }

}

