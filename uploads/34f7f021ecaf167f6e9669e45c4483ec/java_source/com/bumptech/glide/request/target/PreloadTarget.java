/*
 * Decompiled with CFR 0_115.
 */
package com.bumptech.glide.request.target;

import com.bumptech.glide.Glide;
import com.bumptech.glide.request.animation.GlideAnimation;
import com.bumptech.glide.request.target.SimpleTarget;

public final class PreloadTarget<Z>
extends SimpleTarget<Z> {
    private PreloadTarget(int n2, int n3) {
        super(n2, n3);
    }

    public static <Z> PreloadTarget<Z> obtain(int n2, int n3) {
        return new PreloadTarget<Z>(n2, n3);
    }

    @Override
    public void onResourceReady(Z z2, GlideAnimation<? super Z> glideAnimation) {
        Glide.clear(this);
    }
}

