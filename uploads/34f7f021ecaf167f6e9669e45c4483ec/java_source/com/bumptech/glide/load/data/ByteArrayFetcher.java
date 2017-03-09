/*
 * Decompiled with CFR 0_115.
 */
package com.bumptech.glide.load.data;

import com.bumptech.glide.Priority;
import com.bumptech.glide.load.data.DataFetcher;
import java.io.ByteArrayInputStream;
import java.io.InputStream;

public class ByteArrayFetcher
implements DataFetcher<InputStream> {
    private final byte[] bytes;
    private final String id;

    public ByteArrayFetcher(byte[] arrby, String string2) {
        this.bytes = arrby;
        this.id = string2;
    }

    @Override
    public void cancel() {
    }

    @Override
    public void cleanup() {
    }

    @Override
    public String getId() {
        return this.id;
    }

    @Override
    public InputStream loadData(Priority priority) {
        return new ByteArrayInputStream(this.bytes);
    }
}

