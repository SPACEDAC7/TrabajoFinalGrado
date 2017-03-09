/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.content.Context
 */
package com.bumptech.glide.load.model;

import android.content.Context;
import com.bumptech.glide.load.model.GenericLoaderFactory;
import com.bumptech.glide.load.model.ModelLoader;

public interface ModelLoaderFactory<T, Y> {
    public ModelLoader<T, Y> build(Context var1, GenericLoaderFactory var2);

    public void teardown();
}

