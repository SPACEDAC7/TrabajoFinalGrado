/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.content.Context
 *  android.os.Looper
 *  io.fabric.sdk.android.services.common.CurrentTimeProvider
 *  io.fabric.sdk.android.services.common.SystemCurrentTimeProvider
 *  io.fabric.sdk.android.services.events.EventsStorage
 *  io.fabric.sdk.android.services.events.GZIPQueueFileEventStorage
 *  io.fabric.sdk.android.services.persistence.FileStore
 */
package com.crashlytics.android.answers;

import android.content.Context;
import android.os.Looper;
import com.crashlytics.android.answers.SessionAnalyticsFilesManager;
import com.crashlytics.android.answers.SessionEventTransform;
import io.fabric.sdk.android.services.common.CurrentTimeProvider;
import io.fabric.sdk.android.services.common.SystemCurrentTimeProvider;
import io.fabric.sdk.android.services.events.EventsStorage;
import io.fabric.sdk.android.services.events.GZIPQueueFileEventStorage;
import io.fabric.sdk.android.services.persistence.FileStore;
import java.io.File;
import java.io.IOException;

class AnswersFilesManagerProvider {
    static final String SESSION_ANALYTICS_FILE_NAME = "session_analytics.tap";
    static final String SESSION_ANALYTICS_TO_SEND_DIR = "session_analytics_to_send";
    final Context context;
    final FileStore fileStore;

    public AnswersFilesManagerProvider(Context context, FileStore fileStore) {
        this.context = context;
        this.fileStore = fileStore;
    }

    public SessionAnalyticsFilesManager getAnalyticsFilesManager() throws IOException {
        if (Looper.myLooper() == Looper.getMainLooper()) {
            throw new IllegalStateException("AnswersFilesManagerProvider cannot be called on the main thread");
        }
        SessionEventTransform sessionEventTransform = new SessionEventTransform();
        SystemCurrentTimeProvider systemCurrentTimeProvider = new SystemCurrentTimeProvider();
        File file = this.fileStore.getFilesDir();
        file = new GZIPQueueFileEventStorage(this.context, file, "session_analytics.tap", "session_analytics_to_send");
        return new SessionAnalyticsFilesManager(this.context, sessionEventTransform, (CurrentTimeProvider)systemCurrentTimeProvider, (EventsStorage)file);
    }
}

