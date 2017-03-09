/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.content.Context
 *  android.graphics.Bitmap
 *  android.graphics.drawable.Drawable
 *  android.view.animation.Animation
 */
package com.bumptech.glide;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.view.animation.Animation;
import com.bumptech.glide.BitmapOptions;
import com.bumptech.glide.DrawableOptions;
import com.bumptech.glide.GenericRequestBuilder;
import com.bumptech.glide.Glide;
import com.bumptech.glide.Priority;
import com.bumptech.glide.load.Encoder;
import com.bumptech.glide.load.Key;
import com.bumptech.glide.load.ResourceDecoder;
import com.bumptech.glide.load.ResourceEncoder;
import com.bumptech.glide.load.Transformation;
import com.bumptech.glide.load.engine.DiskCacheStrategy;
import com.bumptech.glide.load.engine.bitmap_recycle.BitmapPool;
import com.bumptech.glide.load.resource.bitmap.BitmapTransformation;
import com.bumptech.glide.load.resource.bitmap.CenterCrop;
import com.bumptech.glide.load.resource.bitmap.FitCenter;
import com.bumptech.glide.load.resource.gif.GifDrawable;
import com.bumptech.glide.load.resource.gif.GifDrawableTransformation;
import com.bumptech.glide.load.resource.transcode.ResourceTranscoder;
import com.bumptech.glide.provider.LoadProvider;
import com.bumptech.glide.request.RequestListener;
import com.bumptech.glide.request.animation.DrawableCrossFadeFactory;
import com.bumptech.glide.request.animation.GlideAnimationFactory;
import com.bumptech.glide.request.animation.ViewPropertyAnimation;
import java.io.File;
import java.io.InputStream;

public class GifRequestBuilder<ModelType>
extends GenericRequestBuilder<ModelType, InputStream, GifDrawable, GifDrawable>
implements BitmapOptions,
DrawableOptions {
    GifRequestBuilder(LoadProvider<ModelType, InputStream, GifDrawable, GifDrawable> loadProvider, Class<GifDrawable> class_, GenericRequestBuilder<ModelType, ?, ?, ?> genericRequestBuilder) {
        super(loadProvider, class_, genericRequestBuilder);
    }

    private GifDrawableTransformation[] toGifTransformations(Transformation<Bitmap>[] arrtransformation) {
        GifDrawableTransformation[] arrgifDrawableTransformation = new GifDrawableTransformation[arrtransformation.length];
        for (int i2 = 0; i2 < arrtransformation.length; ++i2) {
            arrgifDrawableTransformation[i2] = new GifDrawableTransformation(arrtransformation[i2], this.glide.getBitmapPool());
        }
        return arrgifDrawableTransformation;
    }

    public GifRequestBuilder<ModelType> animate(int n2) {
        super.animate(n2);
        return this;
    }

    @Deprecated
    public GifRequestBuilder<ModelType> animate(Animation animation) {
        super.animate(animation);
        return this;
    }

    public GifRequestBuilder<ModelType> animate(ViewPropertyAnimation.Animator animator2) {
        super.animate(animator2);
        return this;
    }

    @Override
    void applyCenterCrop() {
        this.centerCrop();
    }

    @Override
    void applyFitCenter() {
        this.fitCenter();
    }

    public GifRequestBuilder<ModelType> cacheDecoder(ResourceDecoder<File, GifDrawable> resourceDecoder) {
        super.cacheDecoder(resourceDecoder);
        return this;
    }

    public GifRequestBuilder<ModelType> centerCrop() {
        return this.transformFrame(new BitmapTransformation[]{this.glide.getBitmapCenterCrop()});
    }

    @Override
    public GifRequestBuilder<ModelType> clone() {
        return (GifRequestBuilder)super.clone();
    }

    public GifRequestBuilder<ModelType> crossFade() {
        super.animate(new DrawableCrossFadeFactory());
        return this;
    }

    public GifRequestBuilder<ModelType> crossFade(int n2) {
        super.animate(new DrawableCrossFadeFactory(n2));
        return this;
    }

    public GifRequestBuilder<ModelType> crossFade(int n2, int n3) {
        super.animate(new DrawableCrossFadeFactory(this.context, n2, n3));
        return this;
    }

    @Deprecated
    public GifRequestBuilder<ModelType> crossFade(Animation animation, int n2) {
        super.animate(new DrawableCrossFadeFactory(animation, n2));
        return this;
    }

    public GifRequestBuilder<ModelType> decoder(ResourceDecoder<InputStream, GifDrawable> resourceDecoder) {
        super.decoder(resourceDecoder);
        return this;
    }

    public GifRequestBuilder<ModelType> diskCacheStrategy(DiskCacheStrategy diskCacheStrategy) {
        super.diskCacheStrategy(diskCacheStrategy);
        return this;
    }

    public GifRequestBuilder<ModelType> dontAnimate() {
        super.dontAnimate();
        return this;
    }

    public GifRequestBuilder<ModelType> dontTransform() {
        super.dontTransform();
        return this;
    }

    public GifRequestBuilder<ModelType> encoder(ResourceEncoder<GifDrawable> resourceEncoder) {
        super.encoder(resourceEncoder);
        return this;
    }

    public GifRequestBuilder<ModelType> error(int n2) {
        super.error(n2);
        return this;
    }

    public GifRequestBuilder<ModelType> error(Drawable drawable2) {
        super.error(drawable2);
        return this;
    }

    public GifRequestBuilder<ModelType> fallback(int n2) {
        super.fallback(n2);
        return this;
    }

    public GifRequestBuilder<ModelType> fallback(Drawable drawable2) {
        super.fallback(drawable2);
        return this;
    }

    public GifRequestBuilder<ModelType> fitCenter() {
        return this.transformFrame(new BitmapTransformation[]{this.glide.getBitmapFitCenter()});
    }

    public GifRequestBuilder<ModelType> listener(RequestListener<? super ModelType, GifDrawable> requestListener) {
        super.listener(requestListener);
        return this;
    }

    public GifRequestBuilder<ModelType> load(ModelType ModelType) {
        super.load(ModelType);
        return this;
    }

    public GifRequestBuilder<ModelType> override(int n2, int n3) {
        super.override(n2, n3);
        return this;
    }

    public GifRequestBuilder<ModelType> placeholder(int n2) {
        super.placeholder(n2);
        return this;
    }

    public GifRequestBuilder<ModelType> placeholder(Drawable drawable2) {
        super.placeholder(drawable2);
        return this;
    }

    public GifRequestBuilder<ModelType> priority(Priority priority) {
        super.priority(priority);
        return this;
    }

    public GifRequestBuilder<ModelType> signature(Key key) {
        super.signature(key);
        return this;
    }

    public GifRequestBuilder<ModelType> sizeMultiplier(float f2) {
        super.sizeMultiplier(f2);
        return this;
    }

    public GifRequestBuilder<ModelType> skipMemoryCache(boolean bl) {
        super.skipMemoryCache(bl);
        return this;
    }

    public GifRequestBuilder<ModelType> sourceEncoder(Encoder<InputStream> encoder) {
        super.sourceEncoder(encoder);
        return this;
    }

    public GifRequestBuilder<ModelType> thumbnail(float f2) {
        super.thumbnail(f2);
        return this;
    }

    public GifRequestBuilder<ModelType> thumbnail(GenericRequestBuilder<?, ?, ?, GifDrawable> genericRequestBuilder) {
        super.thumbnail(genericRequestBuilder);
        return this;
    }

    public GifRequestBuilder<ModelType> thumbnail(GifRequestBuilder<?> gifRequestBuilder) {
        super.thumbnail(gifRequestBuilder);
        return this;
    }

    public GifRequestBuilder<ModelType> transcoder(ResourceTranscoder<GifDrawable, GifDrawable> resourceTranscoder) {
        super.transcoder(resourceTranscoder);
        return this;
    }

    public /* varargs */ GifRequestBuilder<ModelType> transform(Transformation<GifDrawable> ... arrtransformation) {
        super.transform(arrtransformation);
        return this;
    }

    public /* varargs */ GifRequestBuilder<ModelType> transformFrame(Transformation<Bitmap> ... arrtransformation) {
        return this.transform((Transformation[])this.toGifTransformations(arrtransformation));
    }

    public /* varargs */ GifRequestBuilder<ModelType> transformFrame(BitmapTransformation ... arrbitmapTransformation) {
        return this.transform((Transformation[])this.toGifTransformations(arrbitmapTransformation));
    }
}

