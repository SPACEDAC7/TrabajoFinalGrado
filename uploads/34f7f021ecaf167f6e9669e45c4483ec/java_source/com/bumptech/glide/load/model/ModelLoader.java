/*
 * Decompiled with CFR 0_115.
 */
package com.bumptech.glide.load.model;

import com.bumptech.glide.load.data.DataFetcher;

public interface ModelLoader<T, Y> {
    public DataFetcher<Y> getResourceFetcher(T var1, int var2, int var3);
}

