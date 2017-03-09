/*
 * Decompiled with CFR 0_115.
 */
package com.bumptech.glide.util;

import com.bumptech.glide.ListPreloader;
import java.util.Arrays;

public class FixedPreloadSizeProvider<T>
implements ListPreloader.PreloadSizeProvider<T> {
    private final int[] size;

    public FixedPreloadSizeProvider(int n2, int n3) {
        this.size = new int[]{n2, n3};
    }

    @Override
    public int[] getPreloadSize(T t2, int n2, int n3) {
        return Arrays.copyOf(this.size, this.size.length);
    }
}

