/*
 * Decompiled with CFR 0_115.
 */
package com.bumptech.glide.request.animation;

import com.bumptech.glide.request.animation.GlideAnimation;
import com.bumptech.glide.request.animation.GlideAnimationFactory;
import com.bumptech.glide.request.animation.NoAnimation;
import com.bumptech.glide.request.animation.ViewPropertyAnimation;

public class ViewPropertyAnimationFactory<R>
implements GlideAnimationFactory<R> {
    private ViewPropertyAnimation<R> animation;
    private final ViewPropertyAnimation.Animator animator;

    public ViewPropertyAnimationFactory(ViewPropertyAnimation.Animator animator2) {
        this.animator = animator2;
    }

    @Override
    public GlideAnimation<R> build(boolean bl, boolean bl2) {
        if (bl || !bl2) {
            return NoAnimation.get();
        }
        if (this.animation == null) {
            this.animation = new ViewPropertyAnimation(this.animator);
        }
        return this.animation;
    }
}

