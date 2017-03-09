/*
 * Decompiled with CFR 0_115.
 */
package com.bumptech.glide.request;

import com.bumptech.glide.request.target.Target;
import java.util.concurrent.Future;

public interface FutureTarget<R>
extends Future<R>,
Target<R> {
    public void clear();
}

