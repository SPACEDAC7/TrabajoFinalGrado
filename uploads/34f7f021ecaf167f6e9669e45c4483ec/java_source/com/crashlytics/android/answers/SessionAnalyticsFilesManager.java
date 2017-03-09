/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.content.Context
 *  io.fabric.sdk.android.services.common.CurrentTimeProvider
 *  io.fabric.sdk.android.services.events.EventTransform
 *  io.fabric.sdk.android.services.events.EventsFilesManager
 *  io.fabric.sdk.android.services.events.EventsStorage
 */
package com.crashlytics.android.answers;

import android.content.Context;
import com.crashlytics.android.answers.SessionEvent;
import com.crashlytics.android.answers.SessionEventTransform;
import io.fabric.sdk.android.services.common.CurrentTimeProvider;
import io.fabric.sdk.android.services.events.EventTransform;
import io.fabric.sdk.android.services.events.EventsFilesManager;
import io.fabric.sdk.android.services.events.EventsStorage;
import io.fabric.sdk.android.services.settings.AnalyticsSettingsData;
import java.io.IOException;
import java.util.UUID;

class SessionAnalyticsFilesManager
extends EventsFilesManager<SessionEvent> {
    private static final String SESSION_ANALYTICS_TO_SEND_FILE_EXTENSION = ".tap";
    private static final String SESSION_ANALYTICS_TO_SEND_FILE_PREFIX = "sa";
    private AnalyticsSettingsData analyticsSettingsData;

    SessionAnalyticsFilesManager(Context context, SessionEventTransform sessionEventTransform, CurrentTimeProvider currentTimeProvider, EventsStorage eventsStorage) throws IOException {
        super(context, (EventTransform)sessionEventTransform, currentTimeProvider, eventsStorage, 100);
    }

    protected String generateUniqueRollOverFileName() {
        UUID uUID = UUID.randomUUID();
        return "sa" + "_" + uUID.toString() + "_" + this.currentTimeProvider.getCurrentTimeMillis() + ".tap";
    }

    protected int getMaxByteSizePerFile() {
        if (this.analyticsSettingsData == null) {
            return super.getMaxByteSizePerFile();
        }
        return this.analyticsSettingsData.maxByteSizePerFile;
    }

    protected int getMaxFilesToKeep() {
        if (this.analyticsSettingsData == null) {
            return super.getMaxFilesToKeep();
        }
        return this.analyticsSettingsData.maxPendingSendFileCount;
    }

    void setAnalyticsSettingsData(AnalyticsSettingsData analyticsSettingsData) {
        this.analyticsSettingsData = analyticsSettingsData;
    }
}

