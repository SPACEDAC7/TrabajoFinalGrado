/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.view.View
 */
package com.bumptech.glide.util;

import android.view.View;
import com.bumptech.glide.ListPreloader;
import com.bumptech.glide.request.animation.GlideAnimation;
import com.bumptech.glide.request.target.SizeReadyCallback;
import com.bumptech.glide.request.target.ViewTarget;
import java.util.Arrays;

public class ViewPreloadSizeProvider<T>
implements ListPreloader.PreloadSizeProvider<T>,
SizeReadyCallback {
    private int[] size;
    private SizeViewTarget viewTarget;

    public ViewPreloadSizeProvider() {
    }

    public ViewPreloadSizeProvider(View view) {
        this.setView(view);
    }

    @Override
    public int[] getPreloadSize(T t2, int n2, int n3) {
        if (this.size == null) {
            return null;
        }
        return Arrays.copyOf(this.size, this.size.length);
    }

    @Override
    public void onSizeReady(int n2, int n3) {
        this.size = new int[]{n2, n3};
        this.viewTarget = null;
    }

    public void setView(View view) {
        if (this.size != null || this.viewTarget != null) {
            return;
        }
        this.viewTarget = new SizeViewTarget(view, this);
    }

    private static final class SizeViewTarget
    extends ViewTarget<View, Object> {
        public SizeViewTarget(View view, SizeReadyCallback sizeReadyCallback) {
            super(view);
            this.getSize(sizeReadyCallback);
        }

        @Override
        public void onResourceReady(Object object, GlideAnimation glideAnimation) {
        }
    }

}

