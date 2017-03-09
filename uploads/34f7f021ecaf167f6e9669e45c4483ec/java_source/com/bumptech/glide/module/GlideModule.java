/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.content.Context
 */
package com.bumptech.glide.module;

import android.content.Context;
import com.bumptech.glide.Glide;
import com.bumptech.glide.GlideBuilder;

public interface GlideModule {
    public void applyOptions(Context var1, GlideBuilder var2);

    public void registerComponents(Context var1, Glide var2);
}

