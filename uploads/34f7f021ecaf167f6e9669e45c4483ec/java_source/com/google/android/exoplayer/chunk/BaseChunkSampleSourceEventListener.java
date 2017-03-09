/*
 * Decompiled with CFR 0_115.
 */
package com.google.android.exoplayer.chunk;

import com.google.android.exoplayer.chunk.Format;
import java.io.IOException;

public interface BaseChunkSampleSourceEventListener {
    public void onDownstreamFormatChanged(int var1, Format var2, int var3, long var4);

    public void onLoadCanceled(int var1, long var2);

    public void onLoadCompleted(int var1, long var2, int var4, int var5, Format var6, long var7, long var9, long var11, long var13);

    public void onLoadError(int var1, IOException var2);

    public void onLoadStarted(int var1, long var2, int var4, int var5, Format var6, long var7, long var9);

    public void onUpstreamDiscarded(int var1, long var2, long var4);
}

