/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.content.Context
 *  android.graphics.drawable.Drawable
 *  android.graphics.drawable.RippleDrawable
 *  android.os.Build
 *  android.os.Build$VERSION
 *  android.util.AttributeSet
 *  android.widget.ImageView
 */
package android.support.v7.widget;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.RippleDrawable;
import android.os.Build;
import android.support.annotation.RestrictTo;
import android.support.v7.appcompat.R;
import android.support.v7.content.res.AppCompatResources;
import android.support.v7.widget.DrawableUtils;
import android.support.v7.widget.TintTypedArray;
import android.util.AttributeSet;
import android.widget.ImageView;

@RestrictTo(value={RestrictTo.Scope.GROUP_ID})
public class AppCompatImageHelper {
    private final ImageView mView;

    public AppCompatImageHelper(ImageView imageView) {
        this.mView = imageView;
    }

    boolean hasOverlappingRendering() {
        Drawable drawable2 = this.mView.getBackground();
        if (Build.VERSION.SDK_INT >= 21 && drawable2 instanceof RippleDrawable) {
            return false;
        }
        return true;
    }

    public void loadFromAttributes(AttributeSet object, int n2) {
        Object object2;
        Drawable drawable2;
        Object object3;
        block10 : {
            Drawable drawable3;
            TintTypedArray tintTypedArray = null;
            object2 = null;
            object3 = tintTypedArray;
            try {
                drawable2 = drawable3 = this.mView.getDrawable();
                if (drawable3 != null) break block10;
                object3 = tintTypedArray;
            }
            catch (Throwable var1_2) {
                if (object3 != null) {
                    object3.recycle();
                }
                throw var1_2;
            }
            object3 = object = TintTypedArray.obtainStyledAttributes(this.mView.getContext(), (AttributeSet)object, R.styleable.AppCompatImageView, n2, 0);
            n2 = object.getResourceId(R.styleable.AppCompatImageView_srcCompat, -1);
            object2 = object;
            drawable2 = drawable3;
            if (n2 == -1) break block10;
            object3 = object;
            drawable3 = AppCompatResources.getDrawable(this.mView.getContext(), n2);
            object2 = object;
            drawable2 = drawable3;
            if (drawable3 == null) break block10;
            object3 = object;
            this.mView.setImageDrawable(drawable3);
            drawable2 = drawable3;
            object2 = object;
        }
        if (drawable2 != null) {
            object3 = object2;
            DrawableUtils.fixDrawable(drawable2);
        }
        if (object2 != null) {
            object2.recycle();
        }
    }

    public void setImageResource(int n2) {
        if (n2 != 0) {
            Drawable drawable2 = AppCompatResources.getDrawable(this.mView.getContext(), n2);
            if (drawable2 != null) {
                DrawableUtils.fixDrawable(drawable2);
            }
            this.mView.setImageDrawable(drawable2);
            return;
        }
        this.mView.setImageDrawable(null);
    }
}

