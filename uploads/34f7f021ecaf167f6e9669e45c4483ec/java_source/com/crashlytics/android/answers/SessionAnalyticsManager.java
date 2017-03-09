/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.app.Activity
 *  android.content.Context
 *  android.os.Looper
 *  io.fabric.sdk.android.ActivityLifecycleManager
 *  io.fabric.sdk.android.ActivityLifecycleManager$Callbacks
 *  io.fabric.sdk.android.Logger
 *  io.fabric.sdk.android.services.common.ExecutorUtils
 *  io.fabric.sdk.android.services.network.DefaultHttpRequestFactory
 *  io.fabric.sdk.android.services.network.HttpRequestFactory
 *  io.fabric.sdk.android.services.persistence.FileStore
 *  io.fabric.sdk.android.services.persistence.FileStoreImpl
 */
package com.crashlytics.android.answers;

import android.app.Activity;
import android.content.Context;
import android.os.Looper;
import com.crashlytics.android.answers.AnswersEventsHandler;
import com.crashlytics.android.answers.AnswersFilesManagerProvider;
import com.crashlytics.android.answers.AnswersLifecycleCallbacks;
import com.crashlytics.android.answers.AnswersPreferenceManager;
import com.crashlytics.android.answers.BackgroundManager;
import com.crashlytics.android.answers.CustomEvent;
import com.crashlytics.android.answers.PredefinedEvent;
import com.crashlytics.android.answers.SessionEvent;
import com.crashlytics.android.answers.SessionMetadataCollector;
import io.fabric.sdk.android.ActivityLifecycleManager;
import io.fabric.sdk.android.Fabric;
import io.fabric.sdk.android.Kit;
import io.fabric.sdk.android.Logger;
import io.fabric.sdk.android.services.common.ExecutorUtils;
import io.fabric.sdk.android.services.common.IdManager;
import io.fabric.sdk.android.services.network.DefaultHttpRequestFactory;
import io.fabric.sdk.android.services.network.HttpRequestFactory;
import io.fabric.sdk.android.services.persistence.FileStore;
import io.fabric.sdk.android.services.persistence.FileStoreImpl;
import io.fabric.sdk.android.services.settings.AnalyticsSettingsData;
import java.util.concurrent.ScheduledExecutorService;

class SessionAnalyticsManager
implements BackgroundManager.Listener {
    static final String EXECUTOR_SERVICE = "Answers Events Handler";
    static final long FIRST_LAUNCH_INTERVAL_IN_MS = 3600000;
    static final String ON_CRASH_ERROR_MSG = "onCrash called from main thread!!!";
    final BackgroundManager backgroundManager;
    final AnswersEventsHandler eventsHandler;
    private final long installedAt;
    final ActivityLifecycleManager lifecycleManager;
    final AnswersPreferenceManager preferenceManager;

    SessionAnalyticsManager(AnswersEventsHandler answersEventsHandler, ActivityLifecycleManager activityLifecycleManager, BackgroundManager backgroundManager, AnswersPreferenceManager answersPreferenceManager, long l2) {
        this.eventsHandler = answersEventsHandler;
        this.lifecycleManager = activityLifecycleManager;
        this.backgroundManager = backgroundManager;
        this.preferenceManager = answersPreferenceManager;
        this.installedAt = l2;
    }

    public static SessionAnalyticsManager build(Kit kit, Context context, IdManager object, String object2, String string2, long l2) {
        object = new SessionMetadataCollector(context, (IdManager)object, (String)object2, string2);
        object2 = new AnswersFilesManagerProvider(context, (FileStore)new FileStoreImpl(kit));
        string2 = new DefaultHttpRequestFactory(Fabric.getLogger());
        ActivityLifecycleManager activityLifecycleManager = new ActivityLifecycleManager(context);
        ScheduledExecutorService scheduledExecutorService = ExecutorUtils.buildSingleThreadScheduledExecutorService((String)"Answers Events Handler");
        BackgroundManager backgroundManager = new BackgroundManager(scheduledExecutorService);
        return new SessionAnalyticsManager(new AnswersEventsHandler(kit, context, (AnswersFilesManagerProvider)object2, (SessionMetadataCollector)object, (HttpRequestFactory)string2, scheduledExecutorService), activityLifecycleManager, backgroundManager, AnswersPreferenceManager.build(context), l2);
    }

    public void disable() {
        this.lifecycleManager.resetCallbacks();
        this.eventsHandler.disable();
    }

    public void enable() {
        this.eventsHandler.enable();
        this.lifecycleManager.registerCallbacks((ActivityLifecycleManager.Callbacks)new AnswersLifecycleCallbacks(this, this.backgroundManager));
        this.backgroundManager.registerListener(this);
        if (this.isFirstLaunch(this.installedAt)) {
            this.onInstall();
            this.preferenceManager.setAnalyticsLaunched();
        }
    }

    boolean installedRecently(long l2) {
        if (System.currentTimeMillis() - l2 < 3600000) {
            return true;
        }
        return false;
    }

    boolean isFirstLaunch(long l2) {
        if (!this.preferenceManager.hasAnalyticsLaunched() && this.installedRecently(l2)) {
            return true;
        }
        return false;
    }

    @Override
    public void onBackground() {
        Fabric.getLogger().d("Answers", "Flush events when app is backgrounded");
        this.eventsHandler.flushEvents();
    }

    public void onCrash(String string2) {
        if (Looper.myLooper() == Looper.getMainLooper()) {
            throw new IllegalStateException("onCrash called from main thread!!!");
        }
        Fabric.getLogger().d("Answers", "Logged crash");
        this.eventsHandler.processEventSync(SessionEvent.crashEventBuilder(string2));
    }

    public void onCustom(CustomEvent customEvent) {
        Fabric.getLogger().d("Answers", "Logged custom event: " + customEvent);
        this.eventsHandler.processEventAsync(SessionEvent.customEventBuilder(customEvent));
    }

    public void onError(String string2) {
    }

    public void onInstall() {
        Fabric.getLogger().d("Answers", "Logged install");
        this.eventsHandler.processEventAsyncAndFlush(SessionEvent.installEventBuilder());
    }

    public void onLifecycle(Activity activity, SessionEvent.Type type) {
        Fabric.getLogger().d("Answers", "Logged lifecycle event: " + type.name());
        this.eventsHandler.processEventAsync(SessionEvent.lifecycleEventBuilder(type, activity));
    }

    public void onPredefined(PredefinedEvent predefinedEvent) {
        Fabric.getLogger().d("Answers", "Logged predefined event: " + predefinedEvent);
        this.eventsHandler.processEventAsync(SessionEvent.predefinedEventBuilder(predefinedEvent));
    }

    public void setAnalyticsSettingsData(AnalyticsSettingsData analyticsSettingsData, String string2) {
        this.backgroundManager.setFlushOnBackground(analyticsSettingsData.flushOnBackground);
        this.eventsHandler.setAnalyticsSettingsData(analyticsSettingsData, string2);
    }
}

