/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.view.View
 */
package com.bumptech.glide.request.animation;

import android.view.View;
import com.bumptech.glide.request.animation.GlideAnimation;

public class ViewPropertyAnimation<R>
implements GlideAnimation<R> {
    private final Animator animator;

    public ViewPropertyAnimation(Animator animator2) {
        this.animator = animator2;
    }

    @Override
    public boolean animate(R r2, GlideAnimation.ViewAdapter viewAdapter) {
        if (viewAdapter.getView() != null) {
            this.animator.animate(viewAdapter.getView());
        }
        return false;
    }

    public static interface Animator {
        public void animate(View var1);
    }

}

