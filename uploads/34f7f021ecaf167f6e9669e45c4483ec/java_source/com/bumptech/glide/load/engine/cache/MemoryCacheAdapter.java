/*
 * Decompiled with CFR 0_115.
 */
package com.bumptech.glide.load.engine.cache;

import com.bumptech.glide.load.Key;
import com.bumptech.glide.load.engine.Resource;
import com.bumptech.glide.load.engine.cache.MemoryCache;

public class MemoryCacheAdapter
implements MemoryCache {
    private MemoryCache.ResourceRemovedListener listener;

    @Override
    public void clearMemory() {
    }

    @Override
    public int getCurrentSize() {
        return 0;
    }

    @Override
    public int getMaxSize() {
        return 0;
    }

    @Override
    public Resource<?> put(Key key, Resource<?> resource) {
        this.listener.onResourceRemoved(resource);
        return null;
    }

    @Override
    public Resource<?> remove(Key key) {
        return null;
    }

    @Override
    public void setResourceRemovedListener(MemoryCache.ResourceRemovedListener resourceRemovedListener) {
        this.listener = resourceRemovedListener;
    }

    @Override
    public void setSizeMultiplier(float f2) {
    }

    @Override
    public void trimMemory(int n2) {
    }
}

