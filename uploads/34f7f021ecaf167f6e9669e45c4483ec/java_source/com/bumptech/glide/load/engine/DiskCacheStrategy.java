/*
 * Decompiled with CFR 0_115.
 */
package com.bumptech.glide.load.engine;

public enum DiskCacheStrategy {
    ALL(true, true),
    NONE(false, false),
    SOURCE(true, false),
    RESULT(false, true);
    
    private final boolean cacheResult;
    private final boolean cacheSource;

    private DiskCacheStrategy(boolean bl, boolean bl2) {
        this.cacheSource = bl;
        this.cacheResult = bl2;
    }

    public boolean cacheResult() {
        return this.cacheResult;
    }

    public boolean cacheSource() {
        return this.cacheSource;
    }
}

