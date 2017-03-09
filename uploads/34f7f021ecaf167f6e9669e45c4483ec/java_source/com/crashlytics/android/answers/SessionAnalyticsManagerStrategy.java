/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  io.fabric.sdk.android.services.events.FileRollOverManager
 */
package com.crashlytics.android.answers;

import com.crashlytics.android.answers.SessionEvent;
import io.fabric.sdk.android.services.events.FileRollOverManager;
import io.fabric.sdk.android.services.settings.AnalyticsSettingsData;

interface SessionAnalyticsManagerStrategy
extends FileRollOverManager {
    public void deleteAllEvents();

    public void processEvent(SessionEvent.Builder var1);

    public void sendEvents();

    public void setAnalyticsSettingsData(AnalyticsSettingsData var1, String var2);
}

