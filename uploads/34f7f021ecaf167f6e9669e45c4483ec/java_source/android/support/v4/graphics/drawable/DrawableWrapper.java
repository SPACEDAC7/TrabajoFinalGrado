/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.graphics.drawable.Drawable
 */
package android.support.v4.graphics.drawable;

import android.graphics.drawable.Drawable;
import android.support.annotation.RestrictTo;

@RestrictTo(value={RestrictTo.Scope.GROUP_ID})
public interface DrawableWrapper {
    public Drawable getWrappedDrawable();

    public void setWrappedDrawable(Drawable var1);
}

