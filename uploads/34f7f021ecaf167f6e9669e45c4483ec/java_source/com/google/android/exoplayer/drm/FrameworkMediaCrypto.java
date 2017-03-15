/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.annotation.TargetApi
 *  android.media.MediaCrypto
 */
package com.google.android.exoplayer.drm;

import android.annotation.TargetApi;
import android.media.MediaCrypto;
import com.google.android.exoplayer.drm.ExoMediaCrypto;
import com.google.android.exoplayer.util.Assertions;

@TargetApi(value=16)
public final class FrameworkMediaCrypto
implements ExoMediaCrypto {
    private final MediaCrypto mediaCrypto;

    FrameworkMediaCrypto(MediaCrypto mediaCrypto) {
        this.mediaCrypto = Assertions.checkNotNull(mediaCrypto);
    }

    public MediaCrypto getWrappedMediaCrypto() {
        return this.mediaCrypto;
    }

    @Override
    public boolean requiresSecureDecoderComponent(String string2) {
        return this.mediaCrypto.requiresSecureDecoderComponent(string2);
    }
}

