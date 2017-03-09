/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.app.Activity
 *  android.app.Application
 *  android.app.Application$ActivityLifecycleCallbacks
 *  android.content.Context
 *  android.os.Bundle
 */
package com.buzzfeed.android.data;

import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.os.Bundle;
import com.buzzfeed.analytics.client.BuzzFeedTracker;
import com.buzzfeed.analytics.client.DustbusterClient;
import com.buzzfeed.android.data.EnvironmentConfig;
import com.buzzfeed.android.data.preferences.ABCacheTimeoutPreference;
import com.buzzfeed.android.data.preferences.ABExperimentServerPreference;
import com.buzzfeed.android.util.DiscriminatingTracker;
import com.buzzfeed.androidabframework.controller.ExperimentManager;
import com.buzzfeed.androidabframework.util.CodeTimer;
import com.buzzfeed.androidabframework.util.Environment;
import com.buzzfeed.androidabframework.util.ReturnCode;
import com.buzzfeed.toolkit.doorbell.Doorbell;
import com.buzzfeed.toolkit.util.LogUtil;

public class ActivityLifecycleListener
implements Application.ActivityLifecycleCallbacks {
    private static final String AB_EXPERIMENT_JSON = "ab_experiments.json";
    static final String TAG = LogUtil.makeLogTag(ActivityLifecycleListener.class);

    /*
     * Enabled aggressive block sorting
     */
    private static void initializeExperimentManager(Activity activity) {
        final String string2 = TAG + ".initializeExperimentManager";
        final CodeTimer codeTimer = new CodeTimer().start();
        String string3 = new Doorbell((Context)activity).getUserIdentifier();
        Environment environment = EnvironmentConfig.isProductionBuild() ? Environment.Production : new ABExperimentServerPreference((Context)activity).getValue();
        ExperimentManager.getInstance().setEnvironment((Context)activity, environment);
        long l2 = EnvironmentConfig.isProductionBuild() ? ABCacheTimeoutPreference.TimeOut.ONE_HOUR.milliseconds() : new ABCacheTimeoutPreference((Context)activity).getValue().milliseconds();
        ExperimentManager.getInstance().setCacheTTL(l2);
        ExperimentManager.getInstance().initialize((Context)activity, "ab_experiments.json", string3, new ExperimentManager.CallbackInterface(){

            @Override
            public void execute(ReturnCode returnCode, long l2) {
                LogUtil.i(string2, "Finished asynchronous A/B Experiments initialization (in " + codeTimer.getElapsedSeconds() + " secs)");
                if (l2 > 0) {
                    DustbusterClient.getInstance().trackABeagleExperimentRequest(l2);
                }
            }
        });
        LogUtil.i(string2, "Finished synchronous A/B Experiments initialization (in " + codeTimer.getElapsedSeconds() + " secs)");
    }

    public void onActivityCreated(Activity activity, Bundle bundle) {
        DiscriminatingTracker.getInstance().enable();
        ActivityLifecycleListener.initializeExperimentManager(activity);
    }

    public void onActivityDestroyed(Activity activity) {
    }

    public void onActivityPaused(Activity activity) {
        BuzzFeedTracker.onActivityPause();
        DustbusterClient.getInstance().pauseSession();
    }

    public void onActivityResumed(Activity activity) {
        BuzzFeedTracker.onActivityResume();
        DustbusterClient.getInstance().resumeSession(activity.getApplicationContext());
    }

    public void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
    }

    public void onActivityStarted(Activity activity) {
        BuzzFeedTracker.onActivityStart(activity);
    }

    public void onActivityStopped(Activity activity) {
        BuzzFeedTracker.onActivityStop(activity);
        ExperimentManager.getInstance().onStop((Context)activity);
    }

}

