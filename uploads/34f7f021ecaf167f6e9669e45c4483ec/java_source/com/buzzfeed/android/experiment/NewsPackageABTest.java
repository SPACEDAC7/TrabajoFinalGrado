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

public class NewsPackageABTest {
    private static final String EXPERIMENT = "News_Package_ANDROID_4_58";
    private static final String TAG = LogUtil.makeLogTag(NewsPackageABTest.class);
    private static boolean sFirstRun;
    private static boolean sShowNewsPackages;

    static {
        sShowNewsPackages = false;
        sFirstRun = true;
    }

    private static boolean getShouldShowNewsPackages() {
        return sShowNewsPackages;
    }

    private static void setShouldShowNewsPackages(boolean bl) {
        sShowNewsPackages = bl;
    }

    public static boolean shouldShowNewsPackages(Context object) {
        synchronized (NewsPackageABTest.class) {
            final VariantBlockInterface variantBlockInterface = new VariantBlockInterface((Context)object){
                final /* synthetic */ Context val$context;

                @Override
                public void executeBlock(Experiment experiment) {
                    NewsPackageABTest.setShouldShowNewsPackages(false);
                    if (sFirstRun) {
                        LogUtil.i(TAG, "News Package A/B Experiment: Control");
                    }
                    sFirstRun = false;
                }

                @Override
                public void initialExecuteBlock(Experiment experiment) {
                    DiscriminatingTracker.getInstance().trackEvent(this.val$context.getString(2131296748), this.val$context.getString(2131296796), this.val$context.getString(2131296797), 0);
                    DustbusterClient.getInstance().trackABeagleExperimentStatus(experiment.getId(), experiment.getName(), experiment.getVersion(), experiment.getSelectedVariantId(), experiment.getSelectedVariantName());
                }
            };
            object = new HashMap<String, VariantBlockInterface>((Context)object){
                final /* synthetic */ Context val$context;

            };
            ExperimentManager.getInstance().conductExperiment("News_Package_ANDROID_4_58", (Map<String, VariantBlockInterface>)object, variantBlockInterface);
            boolean bl = NewsPackageABTest.getShouldShowNewsPackages();
            return bl;
        }
    }

}

