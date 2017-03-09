/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.graphics.drawable.Drawable
 */
package com.bumptech.glide.request.target;

import android.graphics.drawable.Drawable;
import com.bumptech.glide.request.Request;
import com.bumptech.glide.request.target.Target;

public abstract class BaseTarget<Z>
implements Target<Z> {
    private Request request;

    @Override
    public Request getRequest() {
        return this.request;
    }

    @Override
    public void onDestroy() {
    }

    @Override
    public void onLoadCleared(Drawable drawable2) {
    }

    @Override
    public void onLoadFailed(Exception exception, Drawable drawable2) {
    }

    @Override
    public void onLoadStarted(Drawable drawable2) {
    }

    @Override
    public void onStart() {
    }

    @Override
    public void onStop() {
    }

    @Override
    public void setRequest(Request request) {
        this.request = request;
    }
}

