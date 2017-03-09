/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.view.View
 *  android.view.animation.Animation
 */
package com.bumptech.glide.request.animation;

import android.view.View;
import android.view.animation.Animation;
import com.bumptech.glide.request.animation.GlideAnimation;

public class ViewAnimation<R>
implements GlideAnimation<R> {
    private final AnimationFactory animationFactory;

    ViewAnimation(AnimationFactory animationFactory) {
        this.animationFactory = animationFactory;
    }

    @Override
    public boolean animate(R object, GlideAnimation.ViewAdapter viewAdapter) {
        object = viewAdapter.getView();
        if (object != null) {
            object.clearAnimation();
            object.startAnimation(this.animationFactory.build());
        }
        return false;
    }

    static interface AnimationFactory {
        public Animation build();
    }

}

