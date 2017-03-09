/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.content.Context
 *  android.graphics.Bitmap
 *  android.graphics.BitmapShader
 *  android.graphics.ColorFilter
 *  android.graphics.Paint
 *  android.graphics.RectF
 *  android.graphics.Shader
 *  android.graphics.Shader$TileMode
 *  android.graphics.drawable.AnimationDrawable
 *  android.graphics.drawable.BitmapDrawable
 *  android.graphics.drawable.ClipDrawable
 *  android.graphics.drawable.Drawable
 *  android.graphics.drawable.LayerDrawable
 *  android.graphics.drawable.ShapeDrawable
 *  android.graphics.drawable.shapes.RoundRectShape
 *  android.graphics.drawable.shapes.Shape
 *  android.util.AttributeSet
 *  android.widget.ProgressBar
 */
package android.support.v7.widget;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapShader;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.RectF;
import android.graphics.Shader;
import android.graphics.drawable.AnimationDrawable;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.ClipDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import android.graphics.drawable.ShapeDrawable;
import android.graphics.drawable.shapes.RoundRectShape;
import android.graphics.drawable.shapes.Shape;
import android.support.v4.graphics.drawable.DrawableWrapper;
import android.support.v7.widget.TintTypedArray;
import android.util.AttributeSet;
import android.widget.ProgressBar;

class AppCompatProgressBarHelper {
    private static final int[] TINT_ATTRS = new int[]{16843067, 16843068};
    private Bitmap mSampleTile;
    private final ProgressBar mView;

    AppCompatProgressBarHelper(ProgressBar progressBar) {
        this.mView = progressBar;
    }

    private Shape getDrawableShape() {
        return new RoundRectShape(new float[]{5.0f, 5.0f, 5.0f, 5.0f, 5.0f, 5.0f, 5.0f, 5.0f}, null, null);
    }

    /*
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    private Drawable tileify(Drawable layerDrawable, boolean bl) {
        LayerDrawable layerDrawable2;
        LayerDrawable layerDrawable3;
        int n2;
        int n3;
        if (layerDrawable instanceof DrawableWrapper) {
            Drawable drawable2 = ((DrawableWrapper)layerDrawable).getWrappedDrawable();
            if (drawable2 == null) return layerDrawable;
            drawable2 = this.tileify(drawable2, bl);
            ((DrawableWrapper)layerDrawable).setWrappedDrawable(drawable2);
            return layerDrawable;
        }
        if (layerDrawable instanceof LayerDrawable) {
            layerDrawable3 = layerDrawable;
            n2 = layerDrawable3.getNumberOfLayers();
            layerDrawable = new Drawable[n2];
        } else {
            if (!(layerDrawable instanceof BitmapDrawable)) return layerDrawable;
            layerDrawable = (BitmapDrawable)layerDrawable;
            Bitmap bitmap = layerDrawable.getBitmap();
            if (this.mSampleTile == null) {
                this.mSampleTile = bitmap;
            }
            ShapeDrawable shapeDrawable = new ShapeDrawable(this.getDrawableShape());
            bitmap = new BitmapShader(bitmap, Shader.TileMode.REPEAT, Shader.TileMode.CLAMP);
            shapeDrawable.getPaint().setShader((Shader)bitmap);
            shapeDrawable.getPaint().setColorFilter(layerDrawable.getPaint().getColorFilter());
            layerDrawable = shapeDrawable;
            if (!bl) return layerDrawable;
            return new ClipDrawable((Drawable)shapeDrawable, 3, 1);
        }
        for (n3 = 0; n3 < n2; ++n3) {
            int n4 = layerDrawable3.getId(n3);
            layerDrawable2 = layerDrawable3.getDrawable(n3);
            bl = n4 == 16908301 || n4 == 16908303;
            layerDrawable[n3] = this.tileify((Drawable)layerDrawable2, bl);
        }
        layerDrawable2 = new LayerDrawable((Drawable[])layerDrawable);
        n3 = 0;
        do {
            layerDrawable = layerDrawable2;
            if (n3 >= n2) return layerDrawable;
            layerDrawable2.setId(n3, layerDrawable3.getId(n3));
            ++n3;
        } while (true);
    }

    private Drawable tileifyIndeterminate(Drawable drawable2) {
        Drawable drawable3 = drawable2;
        if (drawable2 instanceof AnimationDrawable) {
            drawable2 = (AnimationDrawable)drawable2;
            int n2 = drawable2.getNumberOfFrames();
            drawable3 = new AnimationDrawable();
            drawable3.setOneShot(drawable2.isOneShot());
            for (int i2 = 0; i2 < n2; ++i2) {
                Drawable drawable4 = this.tileify(drawable2.getFrame(i2), true);
                drawable4.setLevel(10000);
                drawable3.addFrame(drawable4, drawable2.getDuration(i2));
            }
            drawable3.setLevel(10000);
        }
        return drawable3;
    }

    Bitmap getSampleTime() {
        return this.mSampleTile;
    }

    void loadFromAttributes(AttributeSet object, int n2) {
        object = TintTypedArray.obtainStyledAttributes(this.mView.getContext(), (AttributeSet)object, TINT_ATTRS, n2, 0);
        Drawable drawable2 = object.getDrawableIfKnown(0);
        if (drawable2 != null) {
            this.mView.setIndeterminateDrawable(this.tileifyIndeterminate(drawable2));
        }
        if ((drawable2 = object.getDrawableIfKnown(1)) != null) {
            this.mView.setProgressDrawable(this.tileify(drawable2, false));
        }
        object.recycle();
    }
}

