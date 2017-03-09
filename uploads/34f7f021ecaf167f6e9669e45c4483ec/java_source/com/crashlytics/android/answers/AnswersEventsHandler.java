/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.content.Context
 *  io.fabric.sdk.android.services.events.EventsStorageListener
 *  io.fabric.sdk.android.services.network.HttpRequestFactory
 */
package com.crashlytics.android.answers;

import android.content.Context;
import com.crashlytics.android.answers.AnswersFilesManagerProvider;
import com.crashlytics.android.answers.DisabledSessionAnalyticsManagerStrategy;
import com.crashlytics.android.answers.EnabledSessionAnalyticsManagerStrategy;
import com.crashlytics.android.answers.SessionAnalyticsFilesManager;
import com.crashlytics.android.answers.SessionAnalyticsManagerStrategy;
import com.crashlytics.android.answers.SessionEvent;
import com.crashlytics.android.answers.SessionEventMetadata;
import com.crashlytics.android.answers.SessionMetadataCollector;
import io.fabric.sdk.android.Fabric;
import io.fabric.sdk.android.Kit;
import io.fabric.sdk.android.services.events.EventsStorageListener;
import io.fabric.sdk.android.services.network.HttpRequestFactory;
import io.fabric.sdk.android.services.settings.AnalyticsSettingsData;
import java.util.concurrent.Future;
import java.util.concurrent.ScheduledExecutorService;

class AnswersEventsHandler
implements EventsStorageListener {
    private final Context context;
    final ScheduledExecutorService executor;
    private final AnswersFilesManagerProvider filesManagerProvider;
    private final Kit kit;
    private final SessionMetadataCollector metadataCollector;
    private final HttpRequestFactory requestFactory;
    SessionAnalyticsManagerStrategy strategy = new DisabledSessionAnalyticsManagerStrategy();

    public AnswersEventsHandler(Kit kit, Context context, AnswersFilesManagerProvider answersFilesManagerProvider, SessionMetadataCollector sessionMetadataCollector, HttpRequestFactory httpRequestFactory, ScheduledExecutorService scheduledExecutorService) {
        this.kit = kit;
        this.context = context;
        this.filesManagerProvider = answersFilesManagerProvider;
        this.metadataCollector = sessionMetadataCollector;
        this.requestFactory = httpRequestFactory;
        this.executor = scheduledExecutorService;
    }

    private void executeAsync(Runnable runnable) {
        try {
            this.executor.submit(runnable);
            return;
        }
        catch (Exception var1_2) {
            Fabric.getLogger().e("Answers", "Failed to submit events task", (Throwable)var1_2);
            return;
        }
    }

    private void executeSync(Runnable runnable) {
        try {
            this.executor.submit(runnable).get();
            return;
        }
        catch (Exception var1_2) {
            Fabric.getLogger().e("Answers", "Failed to run events task", (Throwable)var1_2);
            return;
        }
    }

    public void disable() {
        this.executeAsync(new Runnable(){

            @Override
            public void run() {
                try {
                    SessionAnalyticsManagerStrategy sessionAnalyticsManagerStrategy = AnswersEventsHandler.this.strategy;
                    AnswersEventsHandler.this.strategy = new DisabledSessionAnalyticsManagerStrategy();
                    sessionAnalyticsManagerStrategy.deleteAllEvents();
                    return;
                }
                catch (Exception var1_2) {
                    Fabric.getLogger().e("Answers", "Failed to disable events", (Throwable)var1_2);
                    return;
                }
            }
        });
    }

    public void enable() {
        this.executeAsync(new Runnable(){

            @Override
            public void run() {
                try {
                    SessionEventMetadata sessionEventMetadata = AnswersEventsHandler.this.metadataCollector.getMetadata();
                    SessionAnalyticsFilesManager sessionAnalyticsFilesManager = AnswersEventsHandler.this.filesManagerProvider.getAnalyticsFilesManager();
                    sessionAnalyticsFilesManager.registerRollOverListener((EventsStorageListener)AnswersEventsHandler.this);
                    AnswersEventsHandler.this.strategy = new EnabledSessionAnalyticsManagerStrategy(AnswersEventsHandler.this.kit, AnswersEventsHandler.this.context, AnswersEventsHandler.this.executor, sessionAnalyticsFilesManager, AnswersEventsHandler.this.requestFactory, sessionEventMetadata);
                    return;
                }
                catch (Exception var1_2) {
                    Fabric.getLogger().e("Answers", "Failed to enable events", (Throwable)var1_2);
                    return;
                }
            }
        });
    }

    public void flushEvents() {
        this.executeAsync(new Runnable(){

            @Override
            public void run() {
                try {
                    AnswersEventsHandler.this.strategy.rollFileOver();
                    return;
                }
                catch (Exception var1_1) {
                    Fabric.getLogger().e("Answers", "Failed to flush events", (Throwable)var1_1);
                    return;
                }
            }
        });
    }

    public void onRollOver(String string2) {
        this.executeAsync(new Runnable(){

            @Override
            public void run() {
                try {
                    AnswersEventsHandler.this.strategy.sendEvents();
                    return;
                }
                catch (Exception var1_1) {
                    Fabric.getLogger().e("Answers", "Failed to send events files", (Throwable)var1_1);
                    return;
                }
            }
        });
    }

    void processEvent(SessionEvent.Builder object, boolean bl, boolean bl2) {
        object = new Runnable((SessionEvent.Builder)object, bl2){
            final /* synthetic */ SessionEvent.Builder val$eventBuilder;
            final /* synthetic */ boolean val$flush;

            @Override
            public void run() {
                try {
                    AnswersEventsHandler.this.strategy.processEvent(this.val$eventBuilder);
                    if (this.val$flush) {
                        AnswersEventsHandler.this.strategy.rollFileOver();
                    }
                    return;
                }
                catch (Exception var1_1) {
                    Fabric.getLogger().e("Answers", "Failed to process event", (Throwable)var1_1);
                    return;
                }
            }
        };
        if (bl) {
            this.executeSync((Runnable)object);
            return;
        }
        this.executeAsync((Runnable)object);
    }

    public void processEventAsync(SessionEvent.Builder builder) {
        this.processEvent(builder, false, false);
    }

    public void processEventAsyncAndFlush(SessionEvent.Builder builder) {
        this.processEvent(builder, false, true);
    }

    public void processEventSync(SessionEvent.Builder builder) {
        this.processEvent(builder, true, false);
    }

    public void setAnalyticsSettingsData(final AnalyticsSettingsData analyticsSettingsData, final String string2) {
        this.executeAsync(new Runnable(){

            @Override
            public void run() {
                try {
                    AnswersEventsHandler.this.strategy.setAnalyticsSettingsData(analyticsSettingsData, string2);
                    return;
                }
                catch (Exception var1_1) {
                    Fabric.getLogger().e("Answers", "Failed to set analytics settings data", (Throwable)var1_1);
                    return;
                }
            }
        });
    }

}

