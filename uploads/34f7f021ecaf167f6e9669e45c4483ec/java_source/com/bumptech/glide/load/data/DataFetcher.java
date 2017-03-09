/*
 * Decompiled with CFR 0_115.
 */
package com.bumptech.glide.load.data;

import com.bumptech.glide.Priority;

public interface DataFetcher<T> {
    public void cancel();

    public void cleanup();

    public String getId();

    public T loadData(Priority var1) throws Exception;
}

