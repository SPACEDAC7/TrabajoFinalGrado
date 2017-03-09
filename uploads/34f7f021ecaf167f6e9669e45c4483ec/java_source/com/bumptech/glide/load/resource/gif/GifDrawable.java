/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.annotation.TargetApi
 *  android.content.Context
 *  android.content.res.Resources
 *  android.graphics.Bitmap
 *  android.graphics.Canvas
 *  android.graphics.ColorFilter
 *  android.graphics.Paint
 *  android.graphics.Rect
 *  android.graphics.drawable.Drawable
 *  android.graphics.drawable.Drawable$Callback
 *  android.graphics.drawable.Drawable$ConstantState
 *  android.os.Build
 *  android.os.Build$VERSION
 *  android.view.Gravity
 */
package com.bumptech.glide.load.resource.gif;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.view.Gravity;
import com.bumptech.glide.gifdecoder.GifDecoder;
import com.bumptech.glide.gifdecoder.GifHeader;
import com.bumptech.glide.load.Transformation;
import com.bumptech.glide.load.engine.bitmap_recycle.BitmapPool;
import com.bumptech.glide.load.resource.drawable.GlideDrawable;
import com.bumptech.glide.load.resource.gif.GifFrameLoader;

public class GifDrawable
extends GlideDrawable
implements GifFrameLoader.FrameCallback {
    private boolean applyGravity;
    private final GifDecoder decoder;
    private final Rect destRect = new Rect();
    private final GifFrameLoader frameLoader;
    private boolean isRecycled;
    private boolean isRunning;
    private boolean isStarted;
    private boolean isVisible = true;
    private int loopCount;
    private int maxLoopCount = -1;
    private final Paint paint;
    private final GifState state;

    public GifDrawable(Context context, GifDecoder.BitmapProvider bitmapProvider, BitmapPool bitmapPool, Transformation<Bitmap> transformation, int n2, int n3, GifHeader gifHeader, byte[] arrby, Bitmap bitmap) {
        this(new GifState(gifHeader, arrby, context, transformation, n2, n3, bitmapProvider, bitmapPool, bitmap));
    }

    GifDrawable(GifDecoder gifDecoder, GifFrameLoader gifFrameLoader, Bitmap bitmap, BitmapPool bitmapPool, Paint paint) {
        this.decoder = gifDecoder;
        this.frameLoader = gifFrameLoader;
        this.state = new GifState(null);
        this.paint = paint;
        this.state.bitmapPool = bitmapPool;
        this.state.firstFrame = bitmap;
    }

    GifDrawable(GifState gifState) {
        if (gifState == null) {
            throw new NullPointerException("GifState must not be null");
        }
        this.state = gifState;
        this.decoder = new GifDecoder(gifState.bitmapProvider);
        this.paint = new Paint();
        this.decoder.setData(gifState.gifHeader, gifState.data);
        this.frameLoader = new GifFrameLoader(gifState.context, this, this.decoder, gifState.targetWidth, gifState.targetHeight);
        this.frameLoader.setFrameTransformation(gifState.frameTransformation);
    }

    public GifDrawable(GifDrawable gifDrawable, Bitmap bitmap, Transformation<Bitmap> transformation) {
        this(new GifState(gifDrawable.state.gifHeader, gifDrawable.state.data, gifDrawable.state.context, transformation, gifDrawable.state.targetWidth, gifDrawable.state.targetHeight, gifDrawable.state.bitmapProvider, gifDrawable.state.bitmapPool, bitmap));
    }

    private void reset() {
        this.frameLoader.clear();
        this.invalidateSelf();
    }

    private void resetLoopCount() {
        this.loopCount = 0;
    }

    /*
     * Enabled aggressive block sorting
     */
    private void startRunning() {
        if (this.decoder.getFrameCount() == 1) {
            this.invalidateSelf();
            return;
        } else {
            if (this.isRunning) return;
            {
                this.isRunning = true;
                this.frameLoader.start();
                this.invalidateSelf();
                return;
            }
        }
    }

    private void stopRunning() {
        this.isRunning = false;
        this.frameLoader.stop();
    }

    /*
     * Enabled aggressive block sorting
     */
    public void draw(Canvas canvas) {
        Bitmap bitmap;
        if (this.isRecycled) {
            return;
        }
        if (this.applyGravity) {
            Gravity.apply((int)119, (int)this.getIntrinsicWidth(), (int)this.getIntrinsicHeight(), (Rect)this.getBounds(), (Rect)this.destRect);
            this.applyGravity = false;
        }
        if ((bitmap = this.frameLoader.getCurrentFrame()) == null) {
            bitmap = this.state.firstFrame;
        }
        canvas.drawBitmap(bitmap, null, this.destRect, this.paint);
    }

    public Drawable.ConstantState getConstantState() {
        return this.state;
    }

    public byte[] getData() {
        return this.state.data;
    }

    public GifDecoder getDecoder() {
        return this.decoder;
    }

    public Bitmap getFirstFrame() {
        return this.state.firstFrame;
    }

    public int getFrameCount() {
        return this.decoder.getFrameCount();
    }

    public Transformation<Bitmap> getFrameTransformation() {
        return this.state.frameTransformation;
    }

    public int getIntrinsicHeight() {
        return this.state.firstFrame.getHeight();
    }

    public int getIntrinsicWidth() {
        return this.state.firstFrame.getWidth();
    }

    public int getOpacity() {
        return -2;
    }

    @Override
    public boolean isAnimated() {
        return true;
    }

    boolean isRecycled() {
        return this.isRecycled;
    }

    public boolean isRunning() {
        return this.isRunning;
    }

    protected void onBoundsChange(Rect rect) {
        super.onBoundsChange(rect);
        this.applyGravity = true;
    }

    /*
     * Enabled aggressive block sorting
     */
    @TargetApi(value=11)
    @Override
    public void onFrameReady(int n2) {
        if (Build.VERSION.SDK_INT >= 11 && this.getCallback() == null) {
            this.stop();
            this.reset();
            return;
        } else {
            this.invalidateSelf();
            if (n2 == this.decoder.getFrameCount() - 1) {
                ++this.loopCount;
            }
            if (this.maxLoopCount == -1 || this.loopCount < this.maxLoopCount) return;
            {
                this.stop();
                return;
            }
        }
    }

    public void recycle() {
        this.isRecycled = true;
        this.state.bitmapPool.put(this.state.firstFrame);
        this.frameLoader.clear();
        this.frameLoader.stop();
    }

    public void setAlpha(int n2) {
        this.paint.setAlpha(n2);
    }

    public void setColorFilter(ColorFilter colorFilter) {
        this.paint.setColorFilter(colorFilter);
    }

    public void setFrameTransformation(Transformation<Bitmap> transformation, Bitmap bitmap) {
        if (bitmap == null) {
            throw new NullPointerException("The first frame of the GIF must not be null");
        }
        if (transformation == null) {
            throw new NullPointerException("The frame transformation must not be null");
        }
        this.state.frameTransformation = transformation;
        this.state.firstFrame = bitmap;
        this.frameLoader.setFrameTransformation(transformation);
    }

    void setIsRunning(boolean bl) {
        this.isRunning = bl;
    }

    @Override
    public void setLoopCount(int n2) {
        if (n2 <= 0 && n2 != -1 && n2 != 0) {
            throw new IllegalArgumentException("Loop count must be greater than 0, or equal to GlideDrawable.LOOP_FOREVER, or equal to GlideDrawable.LOOP_INTRINSIC");
        }
        if (n2 == 0) {
            this.maxLoopCount = this.decoder.getLoopCount();
            return;
        }
        this.maxLoopCount = n2;
    }

    /*
     * Enabled aggressive block sorting
     */
    public boolean setVisible(boolean bl, boolean bl2) {
        this.isVisible = bl;
        if (!bl) {
            this.stopRunning();
            return super.setVisible(bl, bl2);
        }
        if (!this.isStarted) return super.setVisible(bl, bl2);
        this.startRunning();
        return super.setVisible(bl, bl2);
    }

    public void start() {
        this.isStarted = true;
        this.resetLoopCount();
        if (this.isVisible) {
            this.startRunning();
        }
    }

    public void stop() {
        this.isStarted = false;
        this.stopRunning();
        if (Build.VERSION.SDK_INT < 11) {
            this.reset();
        }
    }

    static class GifState
    extends Drawable.ConstantState {
        private static final int GRAVITY = 119;
        BitmapPool bitmapPool;
        GifDecoder.BitmapProvider bitmapProvider;
        Context context;
        byte[] data;
        Bitmap firstFrame;
        Transformation<Bitmap> frameTransformation;
        GifHeader gifHeader;
        int targetHeight;
        int targetWidth;

        public GifState(GifHeader gifHeader, byte[] arrby, Context context, Transformation<Bitmap> transformation, int n2, int n3, GifDecoder.BitmapProvider bitmapProvider, BitmapPool bitmapPool, Bitmap bitmap) {
            if (bitmap == null) {
                throw new NullPointerException("The first frame of the GIF must not be null");
            }
            this.gifHeader = gifHeader;
            this.data = arrby;
            this.bitmapPool = bitmapPool;
            this.firstFrame = bitmap;
            this.context = context.getApplicationContext();
            this.frameTransformation = transformation;
            this.targetWidth = n2;
            this.targetHeight = n3;
            this.bitmapProvider = bitmapProvider;
        }

        public GifState(GifState gifState) {
            if (gifState != null) {
                this.gifHeader = gifState.gifHeader;
                this.data = gifState.data;
                this.context = gifState.context;
                this.frameTransformation = gifState.frameTransformation;
                this.targetWidth = gifState.targetWidth;
                this.targetHeight = gifState.targetHeight;
                this.bitmapProvider = gifState.bitmapProvider;
                this.bitmapPool = gifState.bitmapPool;
                this.firstFrame = gifState.firstFrame;
            }
        }

        public int getChangingConfigurations() {
            return 0;
        }

        public Drawable newDrawable() {
            return new GifDrawable(this);
        }

        public Drawable newDrawable(Resources resources) {
            return this.newDrawable();
        }
    }

}

