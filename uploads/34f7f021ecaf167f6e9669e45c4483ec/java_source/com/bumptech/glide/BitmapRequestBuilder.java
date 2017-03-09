/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.graphics.Bitmap
 *  android.graphics.drawable.Drawable
 *  android.os.ParcelFileDescriptor
 *  android.view.animation.Animation
 *  android.widget.ImageView
 */
package com.bumptech.glide;

import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.os.ParcelFileDescriptor;
import android.view.animation.Animation;
import android.widget.ImageView;
import com.bumptech.glide.BitmapOptions;
import com.bumptech.glide.GenericRequestBuilder;
import com.bumptech.glide.Glide;
import com.bumptech.glide.Priority;
import com.bumptech.glide.load.DecodeFormat;
import com.bumptech.glide.load.Encoder;
import com.bumptech.glide.load.Key;
import com.bumptech.glide.load.ResourceDecoder;
import com.bumptech.glide.load.ResourceEncoder;
import com.bumptech.glide.load.Transformation;
import com.bumptech.glide.load.engine.DiskCacheStrategy;
import com.bumptech.glide.load.engine.bitmap_recycle.BitmapPool;
import com.bumptech.glide.load.model.ImageVideoWrapper;
import com.bumptech.glide.load.resource.bitmap.BitmapTransformation;
import com.bumptech.glide.load.resource.bitmap.CenterCrop;
import com.bumptech.glide.load.resource.bitmap.Downsampler;
import com.bumptech.glide.load.resource.bitmap.FileDescriptorBitmapDecoder;
import com.bumptech.glide.load.resource.bitmap.FitCenter;
import com.bumptech.glide.load.resource.bitmap.ImageVideoBitmapDecoder;
import com.bumptech.glide.load.resource.bitmap.StreamBitmapDecoder;
import com.bumptech.glide.load.resource.bitmap.VideoBitmapDecoder;
import com.bumptech.glide.load.resource.file.FileToStreamDecoder;
import com.bumptech.glide.load.resource.transcode.ResourceTranscoder;
import com.bumptech.glide.provider.LoadProvider;
import com.bumptech.glide.request.RequestListener;
import com.bumptech.glide.request.animation.ViewPropertyAnimation;
import com.bumptech.glide.request.target.Target;
import java.io.File;
import java.io.InputStream;

public class BitmapRequestBuilder<ModelType, TranscodeType>
extends GenericRequestBuilder<ModelType, ImageVideoWrapper, Bitmap, TranscodeType>
implements BitmapOptions {
    private final BitmapPool bitmapPool;
    private DecodeFormat decodeFormat;
    private Downsampler downsampler = Downsampler.AT_LEAST;
    private ResourceDecoder<InputStream, Bitmap> imageDecoder;
    private ResourceDecoder<ParcelFileDescriptor, Bitmap> videoDecoder;

    BitmapRequestBuilder(LoadProvider<ModelType, ImageVideoWrapper, Bitmap, TranscodeType> loadProvider, Class<TranscodeType> class_, GenericRequestBuilder<ModelType, ?, ?, ?> genericRequestBuilder) {
        super(loadProvider, class_, genericRequestBuilder);
        this.bitmapPool = genericRequestBuilder.glide.getBitmapPool();
        this.decodeFormat = genericRequestBuilder.glide.getDecodeFormat();
        this.imageDecoder = new StreamBitmapDecoder(this.bitmapPool, this.decodeFormat);
        this.videoDecoder = new FileDescriptorBitmapDecoder(this.bitmapPool, this.decodeFormat);
    }

    private BitmapRequestBuilder<ModelType, TranscodeType> downsample(Downsampler downsampler) {
        this.downsampler = downsampler;
        this.imageDecoder = new StreamBitmapDecoder(downsampler, this.bitmapPool, this.decodeFormat);
        super.decoder(new ImageVideoBitmapDecoder(this.imageDecoder, this.videoDecoder));
        return this;
    }

    public BitmapRequestBuilder<ModelType, TranscodeType> animate(int n2) {
        super.animate(n2);
        return this;
    }

    @Deprecated
    public BitmapRequestBuilder<ModelType, TranscodeType> animate(Animation animation) {
        super.animate(animation);
        return this;
    }

    public BitmapRequestBuilder<ModelType, TranscodeType> animate(ViewPropertyAnimation.Animator animator2) {
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

    public BitmapRequestBuilder<ModelType, TranscodeType> approximate() {
        return this.downsample(Downsampler.AT_LEAST);
    }

    public BitmapRequestBuilder<ModelType, TranscodeType> asIs() {
        return this.downsample(Downsampler.NONE);
    }

    public BitmapRequestBuilder<ModelType, TranscodeType> atMost() {
        return this.downsample(Downsampler.AT_MOST);
    }

    public BitmapRequestBuilder<ModelType, TranscodeType> cacheDecoder(ResourceDecoder<File, Bitmap> resourceDecoder) {
        super.cacheDecoder(resourceDecoder);
        return this;
    }

    public BitmapRequestBuilder<ModelType, TranscodeType> centerCrop() {
        return this.transform(new BitmapTransformation[]{this.glide.getBitmapCenterCrop()});
    }

    @Override
    public BitmapRequestBuilder<ModelType, TranscodeType> clone() {
        return (BitmapRequestBuilder)super.clone();
    }

    public BitmapRequestBuilder<ModelType, TranscodeType> decoder(ResourceDecoder<ImageVideoWrapper, Bitmap> resourceDecoder) {
        super.decoder(resourceDecoder);
        return this;
    }

    public BitmapRequestBuilder<ModelType, TranscodeType> diskCacheStrategy(DiskCacheStrategy diskCacheStrategy) {
        super.diskCacheStrategy(diskCacheStrategy);
        return this;
    }

    public BitmapRequestBuilder<ModelType, TranscodeType> dontAnimate() {
        super.dontAnimate();
        return this;
    }

    public BitmapRequestBuilder<ModelType, TranscodeType> dontTransform() {
        super.dontTransform();
        return this;
    }

    public BitmapRequestBuilder<ModelType, TranscodeType> encoder(ResourceEncoder<Bitmap> resourceEncoder) {
        super.encoder(resourceEncoder);
        return this;
    }

    public BitmapRequestBuilder<ModelType, TranscodeType> error(int n2) {
        super.error(n2);
        return this;
    }

    public BitmapRequestBuilder<ModelType, TranscodeType> error(Drawable drawable2) {
        super.error(drawable2);
        return this;
    }

    public BitmapRequestBuilder<ModelType, TranscodeType> fallback(int n2) {
        super.fallback(n2);
        return this;
    }

    public BitmapRequestBuilder<ModelType, TranscodeType> fallback(Drawable drawable2) {
        super.fallback(drawable2);
        return this;
    }

    public BitmapRequestBuilder<ModelType, TranscodeType> fitCenter() {
        return this.transform(new BitmapTransformation[]{this.glide.getBitmapFitCenter()});
    }

    public BitmapRequestBuilder<ModelType, TranscodeType> format(DecodeFormat decodeFormat) {
        this.decodeFormat = decodeFormat;
        this.imageDecoder = new StreamBitmapDecoder(this.downsampler, this.bitmapPool, decodeFormat);
        this.videoDecoder = new FileDescriptorBitmapDecoder(new VideoBitmapDecoder(), this.bitmapPool, decodeFormat);
        super.cacheDecoder(new FileToStreamDecoder(new StreamBitmapDecoder(this.downsampler, this.bitmapPool, decodeFormat)));
        super.decoder(new ImageVideoBitmapDecoder(this.imageDecoder, this.videoDecoder));
        return this;
    }

    public BitmapRequestBuilder<ModelType, TranscodeType> imageDecoder(ResourceDecoder<InputStream, Bitmap> resourceDecoder) {
        this.imageDecoder = resourceDecoder;
        super.decoder(new ImageVideoBitmapDecoder(resourceDecoder, this.videoDecoder));
        return this;
    }

    @Override
    public Target<TranscodeType> into(ImageView imageView) {
        return super.into(imageView);
    }

    public BitmapRequestBuilder<ModelType, TranscodeType> listener(RequestListener<? super ModelType, TranscodeType> requestListener) {
        super.listener(requestListener);
        return this;
    }

    public BitmapRequestBuilder<ModelType, TranscodeType> load(ModelType ModelType) {
        super.load(ModelType);
        return this;
    }

    public BitmapRequestBuilder<ModelType, TranscodeType> override(int n2, int n3) {
        super.override(n2, n3);
        return this;
    }

    public BitmapRequestBuilder<ModelType, TranscodeType> placeholder(int n2) {
        super.placeholder(n2);
        return this;
    }

    public BitmapRequestBuilder<ModelType, TranscodeType> placeholder(Drawable drawable2) {
        super.placeholder(drawable2);
        return this;
    }

    public BitmapRequestBuilder<ModelType, TranscodeType> priority(Priority priority) {
        super.priority(priority);
        return this;
    }

    public BitmapRequestBuilder<ModelType, TranscodeType> signature(Key key) {
        super.signature(key);
        return this;
    }

    public BitmapRequestBuilder<ModelType, TranscodeType> sizeMultiplier(float f2) {
        super.sizeMultiplier(f2);
        return this;
    }

    public BitmapRequestBuilder<ModelType, TranscodeType> skipMemoryCache(boolean bl) {
        super.skipMemoryCache(bl);
        return this;
    }

    public BitmapRequestBuilder<ModelType, TranscodeType> sourceEncoder(Encoder<ImageVideoWrapper> encoder) {
        super.sourceEncoder(encoder);
        return this;
    }

    public BitmapRequestBuilder<ModelType, TranscodeType> thumbnail(float f2) {
        super.thumbnail(f2);
        return this;
    }

    public BitmapRequestBuilder<ModelType, TranscodeType> thumbnail(BitmapRequestBuilder<?, TranscodeType> bitmapRequestBuilder) {
        super.thumbnail(bitmapRequestBuilder);
        return this;
    }

    public BitmapRequestBuilder<ModelType, TranscodeType> thumbnail(GenericRequestBuilder<?, ?, ?, TranscodeType> genericRequestBuilder) {
        super.thumbnail(genericRequestBuilder);
        return this;
    }

    public BitmapRequestBuilder<ModelType, TranscodeType> transcoder(ResourceTranscoder<Bitmap, TranscodeType> resourceTranscoder) {
        super.transcoder(resourceTranscoder);
        return this;
    }

    public /* varargs */ BitmapRequestBuilder<ModelType, TranscodeType> transform(Transformation<Bitmap> ... arrtransformation) {
        super.transform(arrtransformation);
        return this;
    }

    public /* varargs */ BitmapRequestBuilder<ModelType, TranscodeType> transform(BitmapTransformation ... arrbitmapTransformation) {
        super.transform(arrbitmapTransformation);
        return this;
    }

    public BitmapRequestBuilder<ModelType, TranscodeType> videoDecoder(ResourceDecoder<ParcelFileDescriptor, Bitmap> resourceDecoder) {
        this.videoDecoder = resourceDecoder;
        super.decoder(new ImageVideoBitmapDecoder(this.imageDecoder, resourceDecoder));
        return this;
    }
}

