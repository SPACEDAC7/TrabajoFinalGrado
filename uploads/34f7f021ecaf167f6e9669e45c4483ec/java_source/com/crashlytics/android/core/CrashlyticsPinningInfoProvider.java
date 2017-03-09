/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  io.fabric.sdk.android.services.network.PinningInfoProvider
 */
package com.crashlytics.android.core;

import com.crashlytics.android.core.PinningInfoProvider;
import java.io.InputStream;

class CrashlyticsPinningInfoProvider
implements io.fabric.sdk.android.services.network.PinningInfoProvider {
    private final PinningInfoProvider pinningInfo;

    public CrashlyticsPinningInfoProvider(PinningInfoProvider pinningInfoProvider) {
        this.pinningInfo = pinningInfoProvider;
    }

    public String getKeyStorePassword() {
        return this.pinningInfo.getKeyStorePassword();
    }

    public InputStream getKeyStoreStream() {
        return this.pinningInfo.getKeyStoreStream();
    }

    public long getPinCreationTimeInMillis() {
        return -1;
    }

    public String[] getPins() {
        return this.pinningInfo.getPins();
    }
}

