/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.graphics.drawable.Drawable
 *  android.view.View
 *  android.widget.ImageView
 */
package com.bumptech.glide.request.target;

import android.graphics.drawable.Drawable;
import android.view.View;
import android.widget.ImageView;
import com.bumptech.glide.request.animation.GlideAnimation;
import com.bumptech.glide.request.target.ViewTarget;

public abstract class ImageViewTarget<Z>
extends ViewTarget<ImageView, Z>
implements GlideAnimation.ViewAdapter {
    public ImageViewTarget(ImageView imageView) {
        super(imageView);
    }

    @Override
    public Drawable getCurrentDrawable() {
        return ((ImageView)this.view).getDrawable();
    }

    @Override
    public void onLoadCleared(Drawable drawable2) {
        ((ImageView)this.view).setImageDrawable(drawable2);
    }

    @Override
    public void onLoadFailed(Exception exception, Drawable drawable2) {
        ((ImageView)this.view).setImageDrawable(drawable2);
    }

    @Override
    public void onLoadStarted(Drawable drawable2) {
        ((ImageView)this.view).setImageDrawable(drawable2);
    }

    @Override
    public void onResourceReady(Z z2, GlideAnimation<? super Z> glideAnimation) {
        if (glideAnimation == null || !glideAnimation.animate(z2, this)) {
            this.setResource(z2);
        }
    }

    @Override
    public void setDrawable(Drawable drawable2) {
        ((ImageView)this.view).setImageDrawable(drawable2);
    }

    protected abstract void setResource(Z var1);
}

