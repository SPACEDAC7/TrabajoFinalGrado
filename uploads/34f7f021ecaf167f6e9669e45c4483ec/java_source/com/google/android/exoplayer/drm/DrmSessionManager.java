/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.annotation.TargetApi
 */
package com.google.android.exoplayer.drm;

import android.annotation.TargetApi;
import com.google.android.exoplayer.drm.DrmInitData;
import com.google.android.exoplayer.drm.ExoMediaCrypto;

@TargetApi(value=16)
public interface DrmSessionManager<T extends ExoMediaCrypto> {
    public static final int STATE_CLOSED = 1;
    public static final int STATE_ERROR = 0;
    public static final int STATE_OPENED = 3;
    public static final int STATE_OPENED_WITH_KEYS = 4;
    public static final int STATE_OPENING = 2;

    public void close();

    public Exception getError();

    public T getMediaCrypto();

    public int getState();

    public void open(DrmInitData var1);

    public boolean requiresSecureDecoderComponent(String var1);
}

