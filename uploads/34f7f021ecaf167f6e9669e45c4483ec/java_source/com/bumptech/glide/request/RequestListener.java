/*
 * Decompiled with CFR 0_115.
 */
package com.bumptech.glide.request;

import com.bumptech.glide.request.target.Target;

public interface RequestListener<T, R> {
    public boolean onException(Exception var1, T var2, Target<R> var3, boolean var4);

    public boolean onResourceReady(R var1, T var2, Target<R> var3, boolean var4, boolean var5);
}

