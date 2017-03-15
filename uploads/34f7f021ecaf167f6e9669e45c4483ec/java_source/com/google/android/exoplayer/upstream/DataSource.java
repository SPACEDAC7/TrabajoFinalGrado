/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  com.google.android.exoplayer.upstream.DataSpec
 */
package com.google.android.exoplayer.upstream;

import com.google.android.exoplayer.upstream.DataSpec;
import java.io.IOException;

public interface DataSource {
    public void close() throws IOException;

    public long open(DataSpec var1) throws IOException;

    public int read(byte[] var1, int var2, int var3) throws IOException;
}

