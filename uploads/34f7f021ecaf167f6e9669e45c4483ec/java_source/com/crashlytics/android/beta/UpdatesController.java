/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.content.Context
 *  io.fabric.sdk.android.services.common.CurrentTimeProvider
 *  io.fabric.sdk.android.services.network.HttpRequestFactory
 *  io.fabric.sdk.android.services.persistence.PreferenceStore
 *  io.fabric.sdk.android.services.settings.BetaSettingsData
 */
package com.crashlytics.android.beta;

import android.content.Context;
import com.crashlytics.android.beta.Beta;
import com.crashlytics.android.beta.BuildProperties;
import io.fabric.sdk.android.services.common.CurrentTimeProvider;
import io.fabric.sdk.android.services.common.IdManager;
import io.fabric.sdk.android.services.network.HttpRequestFactory;
import io.fabric.sdk.android.services.persistence.PreferenceStore;
import io.fabric.sdk.android.services.settings.BetaSettingsData;

interface UpdatesController {
    public void initialize(Context var1, Beta var2, IdManager var3, BetaSettingsData var4, BuildProperties var5, PreferenceStore var6, CurrentTimeProvider var7, HttpRequestFactory var8);

    public boolean isActivityLifecycleTriggered();
}

