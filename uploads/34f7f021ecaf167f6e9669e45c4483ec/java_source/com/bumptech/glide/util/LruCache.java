/*
 * Decompiled with CFR 0_115.
 */
package com.bumptech.glide.util;

import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Set;

public class LruCache<T, Y> {
    private final LinkedHashMap<T, Y> cache = new LinkedHashMap(100, 0.75f, true);
    private int currentSize = 0;
    private final int initialMaxSize;
    private int maxSize;

    public LruCache(int n2) {
        this.initialMaxSize = n2;
        this.maxSize = n2;
    }

    private void evict() {
        this.trimToSize(this.maxSize);
    }

    public void clearMemory() {
        this.trimToSize(0);
    }

    public boolean contains(T t2) {
        return this.cache.containsKey(t2);
    }

    public Y get(T t2) {
        return this.cache.get(t2);
    }

    public int getCurrentSize() {
        return this.currentSize;
    }

    public int getMaxSize() {
        return this.maxSize;
    }

    protected int getSize(Y y2) {
        return 1;
    }

    protected void onItemEvicted(T t2, Y y2) {
    }

    public Y put(T object, Y y2) {
        if (this.getSize(y2) >= this.maxSize) {
            this.onItemEvicted(object, y2);
            return null;
        }
        object = this.cache.put(object, y2);
        if (y2 != null) {
            this.currentSize += this.getSize(y2);
        }
        if (object != null) {
            this.currentSize -= this.getSize(object);
        }
        this.evict();
        return (Y)object;
    }

    public Y remove(T object) {
        if ((object = this.cache.remove(object)) != null) {
            this.currentSize -= this.getSize(object);
        }
        return (Y)object;
    }

    public void setSizeMultiplier(float f2) {
        if (f2 < 0.0f) {
            throw new IllegalArgumentException("Multiplier must be >= 0");
        }
        this.maxSize = Math.round((float)this.initialMaxSize * f2);
        this.evict();
    }

    protected void trimToSize(int n2) {
        while (this.currentSize > n2) {
            Map.Entry entry = this.cache.entrySet().iterator().next();
            Y y2 = entry.getValue();
            this.currentSize -= this.getSize(y2);
            entry = entry.getKey();
            this.cache.remove(entry);
            this.onItemEvicted(entry, y2);
        }
    }
}

