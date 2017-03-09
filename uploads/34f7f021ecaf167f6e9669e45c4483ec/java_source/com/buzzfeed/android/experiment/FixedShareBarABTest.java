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
import com.buzzfeed.spicerack.experiment.FixedShareBarVariant;
import com.buzzfeed.toolkit.util.LogUtil;
import java.util.HashMap;
import java.util.Map;

public class FixedShareBarABTest {
    private static final String EXPERIMENT = "Share_Bar_4_56";
    private static final String TAG = LogUtil.makeLogTag(FixedShareBarABTest.class);
    private static boolean sFirstRun = true;
    private static FixedShareBarVariant sFixedShareBarVariant = FixedShareBarVariant.Control;

    public static FixedShareBarVariant getFixedShareBarVariant(Context object) {
        synchronized (FixedShareBarABTest.class) {
            final VariantBlockInterface variantBlockInterface = new VariantBlockInterface((Context)object){
                final /* synthetic */ Context val$context;

                @Override
                public void executeBlock(Experiment experiment) {
                    sFixedShareBarVariant = FixedShareBarVariant.Control;
                    FixedShareBarABTest.logStatus("Fixed Share Bar AB Experiment: Control");
                }

                @Override
                public void initialExecuteBlock(Experiment experiment) {
                    DiscriminatingTracker.getInstance().trackEvent(this.val$context.getString(2131296748), this.val$context.getString(2131296778), this.val$context.getString(2131296780), 0);
                    DustbusterClient.getInstance().trackABeagleExperimentStatus(experiment.getId(), experiment.getName(), experiment.getVersion(), experiment.getSelectedVariantId(), experiment.getSelectedVariantName());
                }
            };
            object = new HashMap<String, VariantBlockInterface>((Context)object){
                final /* synthetic */ Context val$context;

            };
            ExperimentManager.getInstance().conductExperiment("Share_Bar_4_56", (Map<String, VariantBlockInterface>)object, variantBlockInterface);
            object = sFixedShareBarVariant;
            return object;
        }
    }

    private static void logStatus(String string2) {
        if (sFirstRun) {
            LogUtil.i(TAG, string2);
        }
        sFirstRun = false;
    }

}

