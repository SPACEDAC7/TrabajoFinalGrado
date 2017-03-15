/*
 * Decompiled with CFR 0_115.
 */
package com.google.android.exoplayer.upstream;

public interface TransferListener {
    public void onBytesTransferred(int var1);

    public void onTransferEnd();

    public void onTransferStart();
}

