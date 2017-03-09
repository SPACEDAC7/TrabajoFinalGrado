/*
 * Decompiled with CFR 0_115.
 */
package com.bumptech.glide.request;

import com.bumptech.glide.load.engine.Resource;

public interface ResourceCallback {
    public void onException(Exception var1);

    public void onResourceReady(Resource<?> var1);
}

