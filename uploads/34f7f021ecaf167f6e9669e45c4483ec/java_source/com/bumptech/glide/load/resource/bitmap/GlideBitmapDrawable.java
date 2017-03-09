/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.content.res.Resources
 *  android.graphics.Bitmap
 *  android.graphics.Canvas
 *  android.graphics.ColorFilter
 *  android.graphics.Paint
 *  android.graphics.Rect
 *  android.graphics.drawable.Drawable
 *  android.graphics.drawable.Drawable$ConstantState
 *  android.util.DisplayMetrics
 *  android.view.Gravity
 */
package com.bumptech.glide.load.resource.bitmap;

import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.util.DisplayMetrics;
import android.view.Gravity;
import com.bumptech.glide.load.resource.drawable.GlideDrawable;

public class GlideBitmapDrawable
extends GlideDrawable {
    private boolean applyGravity;
    private final Rect destRect = new Rect();
    private int height;
    private boolean mutated;
    private BitmapState state;
    private int width;

    public GlideBitmapDrawable(Resources resources, Bitmap bitmap) {
        this(resources, new BitmapState(bitmap));
    }

    /*
     * Enabled aggressive block sorting
     */
    GlideBitmapDrawable(Resources resources, BitmapState bitmapState) {
        int n2;
        if (bitmapState == null) {
            throw new NullPointerException("BitmapState must not be null");
        }
        this.state = bitmapState;
        if (resources != null) {
            n2 = resources.getDisplayMetrics().densityDpi;
            if (n2 == 0) {
                n2 = 160;
            }
            bitmapState.targetDensity = n2;
        } else {
            n2 = bitmapState.targetDensity;
        }
        this.width = bitmapState.bitmap.getScaledWidth(n2);
        this.height = bitmapState.bitmap.getScaledHeight(n2);
    }

    public void draw(Canvas canvas) {
        if (this.applyGravity) {
            Gravity.apply((int)119, (int)this.width, (int)this.height, (Rect)this.getBounds(), (Rect)this.destRect);
            this.applyGravity = false;
        }
        canvas.drawBitmap(this.state.bitmap, null, this.destRect, this.state.paint);
    }

    public Bitmap getBitmap() {
        return this.state.bitmap;
    }

    public Drawable.ConstantState getConstantState() {
        return this.state;
    }

    public int getIntrinsicHeight() {
        return this.height;
    }

    public int getIntrinsicWidth() {
        return this.width;
    }

    public int getOpacity() {
        Bitmap bitmap = this.state.bitmap;
        if (bitmap == null || bitmap.hasAlpha() || this.state.paint.getAlpha() < 255) {
            return -3;
        }
        return -1;
    }

    @Override
    public boolean isAnimated() {
        return false;
    }

    public boolean isRunning() {
        return false;
    }

    public Drawable mutate() {
        if (!this.mutated && super.mutate() == this) {
            this.state = new BitmapState(this.state);
            this.mutated = true;
        }
        return this;
    }

    protected void onBoundsChange(Rect rect) {
        super.onBoundsChange(rect);
        this.applyGravity = true;
    }

    public void setAlpha(int n2) {
        if (this.state.paint.getAlpha() != n2) {
            this.state.setAlpha(n2);
            this.invalidateSelf();
        }
    }

    public void setColorFilter(ColorFilter colorFilter) {
        this.state.setColorFilter(colorFilter);
        this.invalidateSelf();
    }

    @Override
    public void setLoopCount(int n2) {
    }

    public void start() {
    }

    public void stop() {
    }

    static class BitmapState
    extends Drawable.ConstantState {
        private static final Paint DEFAULT_PAINT = new Paint(6);
        private static final int DEFAULT_PAINT_FLAGS = 6;
        private static final int GRAVITY = 119;
        final Bitmap bitmap;
        Paint paint = DEFAULT_PAINT;
        int targetDensity;

        public BitmapState(Bitmap bitmap) {
            this.bitmap = bitmap;
        }

        BitmapState(BitmapState bitmapState) {
            this(bitmapState.bitmap);
            this.targetDensity = bitmapState.targetDensity;
        }

        public int getChangingConfigurations() {
            return 0;
        }

        void mutatePaint() {
            if (DEFAULT_PAINT == this.paint) {
                this.paint = new Paint(6);
            }
        }

        public Drawable newDrawable() {
            return new GlideBitmapDrawable(null, this);
        }

        public Drawable newDrawable(Resources resources) {
            return new GlideBitmapDrawable(resources, this);
        }

        void setAlpha(int n2) {
            this.mutatePaint();
            this.paint.setAlpha(n2);
        }

        void setColorFilter(ColorFilter colorFilter) {
            this.mutatePaint();
            this.paint.setColorFilter(colorFilter);
        }
    }

}

