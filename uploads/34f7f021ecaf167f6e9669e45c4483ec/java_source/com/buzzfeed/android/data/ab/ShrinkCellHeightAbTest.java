/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.content.Context
 */
package com.buzzfeed.android.data.ab;

import android.content.Context;
import com.buzzfeed.analytics.client.DustbusterClient;
import com.buzzfeed.android.util.DiscriminatingTracker;
import com.buzzfeed.androidabframework.controller.ExperimentManager;
import com.buzzfeed.androidabframework.data.Experiment;
import com.buzzfeed.androidabframework.data.VariantBlockInterface;
import com.buzzfeed.toolkit.util.LogUtil;
import java.util.HashMap;
import java.util.Map;

public class ShrinkCellHeightAbTest {
    private static final String EXPERIMENT = "Grid_Height_ANDROID";
    private static final String TAG = LogUtil.makeLogTag(ShrinkCellHeightAbTest.class);
    private static boolean sFirstRun;
    private static boolean sUseSmallCells;

    static {
        sUseSmallCells = false;
        sFirstRun = true;
    }

    private static boolean getUseSmallCells() {
        return sUseSmallCells;
    }

    private static void setUseSmallCells(boolean bl) {
        sUseSmallCells = bl;
    }

    public static boolean shouldUseSmallCells(Context object) {
        synchronized (ShrinkCellHeightAbTest.class) {
            final VariantBlockInterface variantBlockInterface = new VariantBlockInterface((Context)object){
                final /* synthetic */ Context val$context;

                @Override
                public void executeBlock(Experiment experiment) {
                    ShrinkCellHeightAbTest.setUseSmallCells(false);
                    if (sFirstRun) {
                        LogUtil.i(TAG, "Shrink Cell Height SDK Experiment: disabled");
                    }
                    sFirstRun = false;
                }

                @Override
                public void initialExecuteBlock(Experiment experiment) {
                    DiscriminatingTracker.getInstance().trackEvent(this.val$context.getString(2131296748), this.val$context.getString(2131296782), this.val$context.getString(2131296783), 0);
                    DustbusterClient.getInstance().trackABeagleExperimentStatus(experiment.getId(), experiment.getName(), experiment.getVersion(), experiment.getSelectedVariantId(), experiment.getSelectedVariantName());
                }
            };
            object = new HashMap<String, VariantBlockInterface>((Context)object){
                final /* synthetic */ Context val$context;

            };
            ExperimentManager.getInstance().conductExperiment("Grid_Height_ANDROID", (Map<String, VariantBlockInterface>)object, variantBlockInterface);
            boolean bl = ShrinkCellHeightAbTest.getUseSmallCells();
            return bl;
        }
    }

}

