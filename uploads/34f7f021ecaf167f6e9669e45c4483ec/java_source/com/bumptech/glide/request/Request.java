/*
 * Decompiled with CFR 0_115.
 */
package com.bumptech.glide.request;

public interface Request {
    public void begin();

    public void clear();

    public boolean isCancelled();

    public boolean isComplete();

    public boolean isFailed();

    public boolean isPaused();

    public boolean isResourceSet();

    public boolean isRunning();

    public void pause();

    public void recycle();
}

