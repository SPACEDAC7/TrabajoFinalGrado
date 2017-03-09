/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.content.res.Resources
 *  android.graphics.drawable.Drawable
 */
package android.support.v4.graphics.drawable;

import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.v4.graphics.drawable.DrawableWrapperGingerbread;
import android.support.v4.graphics.drawable.DrawableWrapperHoneycomb;

class DrawableWrapperKitKat
extends DrawableWrapperHoneycomb {
    DrawableWrapperKitKat(Drawable drawable2) {
        super(drawable2);
    }

    DrawableWrapperKitKat(DrawableWrapperGingerbread.DrawableWrapperState drawableWrapperState, Resources resources) {
        super(drawableWrapperState, resources);
    }

    public boolean isAutoMirrored() {
        return this.mDrawable.isAutoMirrored();
    }

    @NonNull
    @Override
    DrawableWrapperGingerbread.DrawableWrapperState mutateConstantState() {
        return new DrawableWrapperStateKitKat(this.mState, null);
    }

    public void setAutoMirrored(boolean bl) {
        this.mDrawable.setAutoMirrored(bl);
    }

    private static class DrawableWrapperStateKitKat
    extends DrawableWrapperGingerbread.DrawableWrapperState {
        DrawableWrapperStateKitKat(@Nullable DrawableWrapperGingerbread.DrawableWrapperState drawableWrapperState, @Nullable Resources resources) {
            super(drawableWrapperState, resources);
        }

        @Override
        public Drawable newDrawable(@Nullable Resources resources) {
            return new DrawableWrapperKitKat(this, resources);
        }
    }

}

