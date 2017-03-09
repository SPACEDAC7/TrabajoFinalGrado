/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.content.Context
 *  android.graphics.Bitmap
 *  android.graphics.drawable.Drawable
 *  android.view.animation.Animation
 *  android.widget.ImageView
 */
package com.bumptech.glide;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.view.animation.Animation;
import android.widget.ImageView;
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
import com.bumptech.glide.load.model.ImageVideoWrapper;
import com.bumptech.glide.load.resource.bitmap.BitmapTransformation;
import com.bumptech.glide.load.resource.drawable.GlideDrawable;
import com.bumptech.glide.load.resource.gifbitmap.GifBitmapWrapper;
import com.bumptech.glide.load.resource.gifbitmap.GifBitmapWrapperTransformation;
import com.bumptech.glide.load.resource.transcode.ResourceTranscoder;
import com.bumptech.glide.manager.Lifecycle;
import com.bumptech.glide.manager.RequestTracker;
import com.bumptech.glide.provider.LoadProvider;
import com.bumptech.glide.request.RequestListener;
import com.bumptech.glide.request.animation.DrawableCrossFadeFactory;
import com.bumptech.glide.request.animation.GlideAnimationFactory;
import com.bumptech.glide.request.animation.ViewPropertyAnimation;
import com.bumptech.glide.request.target.Target;
import java.io.File;

public class DrawableRequestBuilder<ModelType>
extends GenericRequestBuilder<ModelType, ImageVideoWrapper, GifBitmapWrapper, GlideDrawable>
implements BitmapOptions,
DrawableOptions {
    DrawableRequestBuilder(Context context, Class<ModelType> class_, LoadProvider<ModelType, ImageVideoWrapper, GifBitmapWrapper, GlideDrawable> loadProvider, Glide glide, RequestTracker requestTracker, Lifecycle lifecycle) {
        super(context, class_, loadProvider, GlideDrawable.class, glide, requestTracker, lifecycle);
        this.crossFade();
    }

    public DrawableRequestBuilder<ModelType> animate(int n2) {
        super.animate(n2);
        return this;
    }

    @Deprecated
    public DrawableRequestBuilder<ModelType> animate(Animation animation) {
        super.animate(animation);
        return this;
    }

    public DrawableRequestBuilder<ModelType> animate(ViewPropertyAnimation.Animator animator2) {
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

    public /* varargs */ DrawableRequestBuilder<ModelType> bitmapTransform(Transformation<Bitmap> ... arrtransformation) {
        Transformation[] arrtransformation2 = new GifBitmapWrapperTransformation[arrtransformation.length];
        for (int i2 = 0; i2 < arrtransformation.length; ++i2) {
            arrtransformation2[i2] = new GifBitmapWrapperTransformation(this.glide.getBitmapPool(), arrtransformation[i2]);
        }
        return this.transform(arrtransformation2);
    }

    public DrawableRequestBuilder<ModelType> cacheDecoder(ResourceDecoder<File, GifBitmapWrapper> resourceDecoder) {
        super.cacheDecoder(resourceDecoder);
        return this;
    }

    public DrawableRequestBuilder<ModelType> centerCrop() {
        return this.transform(new Transformation[]{this.glide.getDrawableCenterCrop()});
    }

    @Override
    public DrawableRequestBuilder<ModelType> clone() {
        return (DrawableRequestBuilder)super.clone();
    }

    public final DrawableRequestBuilder<ModelType> crossFade() {
        super.animate(new DrawableCrossFadeFactory());
        return this;
    }

    public DrawableRequestBuilder<ModelType> crossFade(int n2) {
        super.animate(new DrawableCrossFadeFactory(n2));
        return this;
    }

    public DrawableRequestBuilder<ModelType> crossFade(int n2, int n3) {
        super.animate(new DrawableCrossFadeFactory(this.context, n2, n3));
        return this;
    }

    @Deprecated
    public DrawableRequestBuilder<ModelType> crossFade(Animation animation, int n2) {
        super.animate(new DrawableCrossFadeFactory(animation, n2));
        return this;
    }

    public DrawableRequestBuilder<ModelType> decoder(ResourceDecoder<ImageVideoWrapper, GifBitmapWrapper> resourceDecoder) {
        super.decoder(resourceDecoder);
        return this;
    }

    public DrawableRequestBuilder<ModelType> diskCacheStrategy(DiskCacheStrategy diskCacheStrategy) {
        super.diskCacheStrategy(diskCacheStrategy);
        return this;
    }

    public DrawableRequestBuilder<ModelType> dontAnimate() {
        super.dontAnimate();
        return this;
    }

    public DrawableRequestBuilder<ModelType> dontTransform() {
        super.dontTransform();
        return this;
    }

    public DrawableRequestBuilder<ModelType> encoder(ResourceEncoder<GifBitmapWrapper> resourceEncoder) {
        super.encoder(resourceEncoder);
        return this;
    }

    public DrawableRequestBuilder<ModelType> error(int n2) {
        super.error(n2);
        return this;
    }

    public DrawableRequestBuilder<ModelType> error(Drawable drawable2) {
        super.error(drawable2);
        return this;
    }

    public DrawableRequestBuilder<ModelType> fallback(int n2) {
        super.fallback(n2);
        return this;
    }

    public DrawableRequestBuilder<ModelType> fallback(Drawable drawable2) {
        super.fallback(drawable2);
        return this;
    }

    public DrawableRequestBuilder<ModelType> fitCenter() {
        return this.transform(new Transformation[]{this.glide.getDrawableFitCenter()});
    }

    @Override
    public Target<GlideDrawable> into(ImageView imageView) {
        return super.into(imageView);
    }

    public DrawableRequestBuilder<ModelType> listener(RequestListener<? super ModelType, GlideDrawable> requestListener) {
        super.listener(requestListener);
        return this;
    }

    public DrawableRequestBuilder<ModelType> load(ModelType ModelType) {
        super.load(ModelType);
        return this;
    }

    public DrawableRequestBuilder<ModelType> override(int n2, int n3) {
        super.override(n2, n3);
        return this;
    }

    public DrawableRequestBuilder<ModelType> placeholder(int n2) {
        super.placeholder(n2);
        return this;
    }

    public DrawableRequestBuilder<ModelType> placeholder(Drawable drawable2) {
        super.placeholder(drawable2);
        return this;
    }

    public DrawableRequestBuilder<ModelType> priority(Priority priority) {
        super.priority(priority);
        return this;
    }

    public DrawableRequestBuilder<ModelType> signature(Key key) {
        super.signature(key);
        return this;
    }

    public DrawableRequestBuilder<ModelType> sizeMultiplier(float f2) {
        super.sizeMultiplier(f2);
        return this;
    }

    public DrawableRequestBuilder<ModelType> skipMemoryCache(boolean bl) {
        super.skipMemoryCache(bl);
        return this;
    }

    public DrawableRequestBuilder<ModelType> sourceEncoder(Encoder<ImageVideoWrapper> encoder) {
        super.sourceEncoder(encoder);
        return this;
    }

    public DrawableRequestBuilder<ModelType> thumbnail(float f2) {
        super.thumbnail(f2);
        return this;
    }

    public DrawableRequestBuilder<ModelType> thumbnail(DrawableRequestBuilder<?> drawableRequestBuilder) {
        super.thumbnail(drawableRequestBuilder);
        return this;
    }

    public DrawableRequestBuilder<ModelType> thumbnail(GenericRequestBuilder<?, ?, ?, GlideDrawable> genericRequestBuilder) {
        super.thumbnail(genericRequestBuilder);
        return this;
    }

    public DrawableRequestBuilder<ModelType> transcoder(ResourceTranscoder<GifBitmapWrapper, GlideDrawable> resourceTranscoder) {
        super.transcoder(resourceTranscoder);
        return this;
    }

    public /* varargs */ DrawableRequestBuilder<ModelType> transform(Transformation<GifBitmapWrapper> ... arrtransformation) {
        super.transform(arrtransformation);
        return this;
    }

    public /* varargs */ DrawableRequestBuilder<ModelType> transform(BitmapTransformation ... arrbitmapTransformation) {
        return this.bitmapTransform(arrbitmapTransformation);
    }
}

