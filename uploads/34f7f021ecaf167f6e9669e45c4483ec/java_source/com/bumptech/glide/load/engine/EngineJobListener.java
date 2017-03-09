/*
 * Decompiled with CFR 0_115.
 */
package com.bumptech.glide.load.engine;

import com.bumptech.glide.load.Key;
import com.bumptech.glide.load.engine.EngineJob;
import com.bumptech.glide.load.engine.EngineResource;

interface EngineJobListener {
    public void onEngineJobCancelled(EngineJob var1, Key var2);

    public void onEngineJobComplete(Key var1, EngineResource<?> var2);
}

