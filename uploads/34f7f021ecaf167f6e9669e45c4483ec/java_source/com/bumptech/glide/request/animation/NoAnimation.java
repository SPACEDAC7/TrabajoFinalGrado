/*
 * Decompiled with CFR 0_115.
 */
package com.bumptech.glide.request.animation;

import com.bumptech.glide.request.animation.GlideAnimation;
import com.bumptech.glide.request.animation.GlideAnimationFactory;

public class NoAnimation<R>
implements GlideAnimation<R> {
    private static final NoAnimation<?> NO_ANIMATION = new NoAnimation<R>();
    private static final GlideAnimationFactory<?> NO_ANIMATION_FACTORY = new NoAnimationFactory();

    public static <R> GlideAnimation<R> get() {
        return NO_ANIMATION;
    }

    public static <R> GlideAnimationFactory<R> getFactory() {
        return NO_ANIMATION_FACTORY;
    }

    @Override
    public boolean animate(Object object, GlideAnimation.ViewAdapter viewAdapter) {
        return false;
    }

    public static class NoAnimationFactory<R>
    implements GlideAnimationFactory<R> {
        @Override
        public GlideAnimation<R> build(boolean bl, boolean bl2) {
            return NO_ANIMATION;
        }
    }

}

