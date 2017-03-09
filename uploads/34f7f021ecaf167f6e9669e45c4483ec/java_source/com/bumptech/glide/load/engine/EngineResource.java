/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.os.Looper
 */
package com.bumptech.glide.load.engine;

import android.os.Looper;
import com.bumptech.glide.load.Key;
import com.bumptech.glide.load.engine.Resource;

class EngineResource<Z>
implements Resource<Z> {
    private int acquired;
    private final boolean isCacheable;
    private boolean isRecycled;
    private Key key;
    private ResourceListener listener;
    private final Resource<Z> resource;

    EngineResource(Resource<Z> resource, boolean bl) {
        if (resource == null) {
            throw new NullPointerException("Wrapped resource must not be null");
        }
        this.resource = resource;
        this.isCacheable = bl;
    }

    void acquire() {
        if (this.isRecycled) {
            throw new IllegalStateException("Cannot acquire a recycled resource");
        }
        if (!Looper.getMainLooper().equals((Object)Looper.myLooper())) {
            throw new IllegalThreadStateException("Must call acquire on the main thread");
        }
        ++this.acquired;
    }

    @Override
    public Z get() {
        return this.resource.get();
    }

    @Override
    public int getSize() {
        return this.resource.getSize();
    }

    boolean isCacheable() {
        return this.isCacheable;
    }

    @Override
    public void recycle() {
        if (this.acquired > 0) {
            throw new IllegalStateException("Cannot recycle a resource while it is still acquired");
        }
        if (this.isRecycled) {
            throw new IllegalStateException("Cannot recycle a resource that has already been recycled");
        }
        this.isRecycled = true;
        this.resource.recycle();
    }

    void release() {
        int n2;
        if (this.acquired <= 0) {
            throw new IllegalStateException("Cannot release a recycled or not yet acquired resource");
        }
        if (!Looper.getMainLooper().equals((Object)Looper.myLooper())) {
            throw new IllegalThreadStateException("Must call release on the main thread");
        }
        this.acquired = n2 = this.acquired - 1;
        if (n2 == 0) {
            this.listener.onResourceReleased(this.key, this);
        }
    }

    void setResourceListener(Key key, ResourceListener resourceListener) {
        this.key = key;
        this.listener = resourceListener;
    }

    static interface ResourceListener {
        public void onResourceReleased(Key var1, EngineResource<?> var2);
    }

}

