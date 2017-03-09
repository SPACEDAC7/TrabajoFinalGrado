/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.view.animation.Animation
 */
package com.bumptech.glide;

import android.view.animation.Animation;
import com.bumptech.glide.GenericRequestBuilder;

interface DrawableOptions {
    public GenericRequestBuilder<?, ?, ?, ?> crossFade();

    public GenericRequestBuilder<?, ?, ?, ?> crossFade(int var1);

    public GenericRequestBuilder<?, ?, ?, ?> crossFade(int var1, int var2);

    @Deprecated
    public GenericRequestBuilder<?, ?, ?, ?> crossFade(Animation var1, int var2);
}

