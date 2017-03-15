/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.annotation.TargetApi
 *  android.media.MediaCodec
 *  android.media.MediaCodec$CryptoInfo
 *  android.media.MediaExtractor
 */
package com.google.android.exoplayer;

import android.annotation.TargetApi;
import android.media.MediaCodec;
import android.media.MediaExtractor;
import com.google.android.exoplayer.util.Util;

public final class CryptoInfo {
    private final MediaCodec.CryptoInfo frameworkCryptoInfo;
    public byte[] iv;
    public byte[] key;
    public int mode;
    public int[] numBytesOfClearData;
    public int[] numBytesOfEncryptedData;
    public int numSubSamples;

    /*
     * Enabled aggressive block sorting
     */
    public CryptoInfo() {
        MediaCodec.CryptoInfo cryptoInfo = Util.SDK_INT >= 16 ? this.newFrameworkCryptoInfoV16() : null;
        this.frameworkCryptoInfo = cryptoInfo;
    }

    @TargetApi(value=16)
    private MediaCodec.CryptoInfo newFrameworkCryptoInfoV16() {
        return new MediaCodec.CryptoInfo();
    }

    @TargetApi(value=16)
    private void updateFrameworkCryptoInfoV16() {
        this.frameworkCryptoInfo.set(this.numSubSamples, this.numBytesOfClearData, this.numBytesOfEncryptedData, this.key, this.iv, this.mode);
    }

    @TargetApi(value=16)
    public MediaCodec.CryptoInfo getFrameworkCryptoInfoV16() {
        return this.frameworkCryptoInfo;
    }

    public void set(int n2, int[] arrn, int[] arrn2, byte[] arrby, byte[] arrby2, int n3) {
        this.numSubSamples = n2;
        this.numBytesOfClearData = arrn;
        this.numBytesOfEncryptedData = arrn2;
        this.key = arrby;
        this.iv = arrby2;
        this.mode = n3;
        if (Util.SDK_INT >= 16) {
            this.updateFrameworkCryptoInfoV16();
        }
    }

    @TargetApi(value=16)
    public void setFromExtractorV16(MediaExtractor mediaExtractor) {
        mediaExtractor.getSampleCryptoInfo(this.frameworkCryptoInfo);
        this.numSubSamples = this.frameworkCryptoInfo.numSubSamples;
        this.numBytesOfClearData = this.frameworkCryptoInfo.numBytesOfClearData;
        this.numBytesOfEncryptedData = this.frameworkCryptoInfo.numBytesOfEncryptedData;
        this.key = this.frameworkCryptoInfo.key;
        this.iv = this.frameworkCryptoInfo.iv;
        this.mode = this.frameworkCryptoInfo.mode;
    }
}

