/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.content.Context
 *  android.view.animation.Animation
 *  android.view.animation.AnimationUtils
 */
package com.bumptech.glide.request.animation;

import android.content.Context;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import com.bumptech.glide.request.animation.GlideAnimation;
import com.bumptech.glide.request.animation.GlideAnimationFactory;
import com.bumptech.glide.request.animation.NoAnimation;
import com.bumptech.glide.request.animation.ViewAnimation;

public class ViewAnimationFactory<R>
implements GlideAnimationFactory<R> {
    private final ViewAnimation.AnimationFactory animationFactory;
    private GlideAnimation<R> glideAnimation;

    public ViewAnimationFactory(Context context, int n2) {
        this(new ResourceAnimationFactory(context, n2));
    }

    public ViewAnimationFactory(Animation animation) {
        this(new ConcreteAnimationFactory(animation));
    }

    ViewAnimationFactory(ViewAnimation.AnimationFactory animationFactory) {
        this.animationFactory = animationFactory;
    }

    @Override
    public GlideAnimation<R> build(boolean bl, boolean bl2) {
        if (bl || !bl2) {
            return NoAnimation.get();
        }
        if (this.glideAnimation == null) {
            this.glideAnimation = new ViewAnimation(this.animationFactory);
        }
        return this.glideAnimation;
    }

    private static class ConcreteAnimationFactory
    implements ViewAnimation.AnimationFactory {
        private final Animation animation;

        public ConcreteAnimationFactory(Animation animation) {
            this.animation = animation;
        }

        @Override
        public Animation build() {
            return this.animation;
        }
    }

    private static class ResourceAnimationFactory
    implements ViewAnimation.AnimationFactory {
        private final int animationId;
        private final Context context;

        public ResourceAnimationFactory(Context context, int n2) {
            this.context = context.getApplicationContext();
            this.animationId = n2;
        }

        @Override
        public Animation build() {
            return AnimationUtils.loadAnimation((Context)this.context, (int)this.animationId);
        }
    }

}

