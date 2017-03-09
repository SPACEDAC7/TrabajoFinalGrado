/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.graphics.drawable.Drawable
 *  android.graphics.drawable.Drawable$ConstantState
 */
package com.bumptech.glide.load.resource.drawable;

import android.graphics.drawable.Drawable;
import com.bumptech.glide.load.engine.Resource;

public abstract class DrawableResource<T extends Drawable>
implements Resource<T> {
    protected final T drawable;

    public DrawableResource(T t2) {
        if (t2 == null) {
            throw new NullPointerException("Drawable must not be null!");
        }
        this.drawable = t2;
    }

    @Override
    public final T get() {
        return (T)this.drawable.getConstantState().newDrawable();
    }
}

