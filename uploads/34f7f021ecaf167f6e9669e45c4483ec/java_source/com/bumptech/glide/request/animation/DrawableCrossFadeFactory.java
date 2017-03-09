/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.content.Context
 *  android.graphics.drawable.Drawable
 *  android.view.animation.AlphaAnimation
 *  android.view.animation.Animation
 */
package com.bumptech.glide.request.animation;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.view.animation.AlphaAnimation;
import android.view.animation.Animation;
import com.bumptech.glide.request.animation.DrawableCrossFadeViewAnimation;
import com.bumptech.glide.request.animation.GlideAnimation;
import com.bumptech.glide.request.animation.GlideAnimationFactory;
import com.bumptech.glide.request.animation.NoAnimation;
import com.bumptech.glide.request.animation.ViewAnimation;
import com.bumptech.glide.request.animation.ViewAnimationFactory;

public class DrawableCrossFadeFactory<T extends Drawable>
implements GlideAnimationFactory<T> {
    private static final int DEFAULT_DURATION_MS = 300;
    private final ViewAnimationFactory<T> animationFactory;
    private final int duration;
    private DrawableCrossFadeViewAnimation<T> firstResourceAnimation;
    private DrawableCrossFadeViewAnimation<T> secondResourceAnimation;

    public DrawableCrossFadeFactory() {
        this(300);
    }

    public DrawableCrossFadeFactory(int n2) {
        this(new ViewAnimationFactory(new DefaultAnimationFactory(n2)), n2);
    }

    public DrawableCrossFadeFactory(Context context, int n2, int n3) {
        this(new ViewAnimationFactory(context, n2), n3);
    }

    public DrawableCrossFadeFactory(Animation animation, int n2) {
        this(new ViewAnimationFactory(animation), n2);
    }

    DrawableCrossFadeFactory(ViewAnimationFactory<T> viewAnimationFactory, int n2) {
        this.animationFactory = viewAnimationFactory;
        this.duration = n2;
    }

    private GlideAnimation<T> getFirstResourceAnimation() {
        if (this.firstResourceAnimation == null) {
            this.firstResourceAnimation = new DrawableCrossFadeViewAnimation<T>(this.animationFactory.build(false, true), this.duration);
        }
        return this.firstResourceAnimation;
    }

    private GlideAnimation<T> getSecondResourceAnimation() {
        if (this.secondResourceAnimation == null) {
            this.secondResourceAnimation = new DrawableCrossFadeViewAnimation<T>(this.animationFactory.build(false, false), this.duration);
        }
        return this.secondResourceAnimation;
    }

    @Override
    public GlideAnimation<T> build(boolean bl, boolean bl2) {
        if (bl) {
            return NoAnimation.get();
        }
        if (bl2) {
            return this.getFirstResourceAnimation();
        }
        return this.getSecondResourceAnimation();
    }

    private static class DefaultAnimationFactory
    implements ViewAnimation.AnimationFactory {
        private final int duration;

        DefaultAnimationFactory(int n2) {
            this.duration = n2;
        }

        @Override
        public Animation build() {
            AlphaAnimation alphaAnimation = new AlphaAnimation(0.0f, 1.0f);
            alphaAnimation.setDuration((long)this.duration);
            return alphaAnimation;
        }
    }

}

