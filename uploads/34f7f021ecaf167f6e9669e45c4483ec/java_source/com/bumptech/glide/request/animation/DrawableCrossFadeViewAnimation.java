/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.graphics.drawable.Drawable
 *  android.graphics.drawable.TransitionDrawable
 */
package com.bumptech.glide.request.animation;

import android.graphics.drawable.Drawable;
import android.graphics.drawable.TransitionDrawable;
import com.bumptech.glide.request.animation.GlideAnimation;

public class DrawableCrossFadeViewAnimation<T extends Drawable>
implements GlideAnimation<T> {
    private final GlideAnimation<T> defaultAnimation;
    private final int duration;

    public DrawableCrossFadeViewAnimation(GlideAnimation<T> glideAnimation, int n2) {
        this.defaultAnimation = glideAnimation;
        this.duration = n2;
    }

    @Override
    public boolean animate(T object, GlideAnimation.ViewAdapter viewAdapter) {
        Drawable drawable2 = viewAdapter.getCurrentDrawable();
        if (drawable2 != null) {
            object = new TransitionDrawable(new Drawable[]{drawable2, object});
            object.setCrossFadeEnabled(true);
            object.startTransition(this.duration);
            viewAdapter.setDrawable((Drawable)object);
            return true;
        }
        this.defaultAnimation.animate(object, viewAdapter);
        return false;
    }
}

