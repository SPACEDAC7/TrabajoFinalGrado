/*
 * Decompiled with CFR 0_115.
 */
package com.bumptech.glide.load.resource;

import com.bumptech.glide.load.engine.Resource;

public class SimpleResource<T>
implements Resource<T> {
    protected final T data;

    public SimpleResource(T t2) {
        if (t2 == null) {
            throw new NullPointerException("Data must not be null");
        }
        this.data = t2;
    }

    @Override
    public final T get() {
        return this.data;
    }

    @Override
    public final int getSize() {
        return 1;
    }

    @Override
    public void recycle() {
    }
}

