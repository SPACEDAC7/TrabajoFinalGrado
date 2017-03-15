/*
 * Decompiled with CFR 0_115.
 */
package com.google.android.exoplayer;

import com.google.android.exoplayer.upstream.Allocator;

public interface LoadControl {
    public Allocator getAllocator();

    public void register(Object var1, int var2);

    public void trimAllocator();

    public void unregister(Object var1);

    public boolean update(Object var1, long var2, long var4, boolean var6);
}

