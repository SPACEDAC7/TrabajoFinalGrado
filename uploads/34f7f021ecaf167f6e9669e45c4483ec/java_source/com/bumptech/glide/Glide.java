/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.annotation.TargetApi
 *  android.app.Activity
 *  android.app.Fragment
 *  android.content.Context
 *  android.content.res.Resources
 *  android.graphics.Bitmap
 *  android.graphics.drawable.Drawable
 *  android.net.Uri
 *  android.os.Handler
 *  android.os.Looper
 *  android.os.ParcelFileDescriptor
 *  android.util.Log
 *  android.view.View
 *  android.widget.ImageView
 */
package com.bumptech.glide;

import android.annotation.TargetApi;
import android.app.Activity;
import android.app.Fragment;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import android.os.ParcelFileDescriptor;
import android.support.v4.app.FragmentActivity;
import android.util.Log;
import android.view.View;
import android.widget.ImageView;
import com.bumptech.glide.GlideBuilder;
import com.bumptech.glide.MemoryCategory;
import com.bumptech.glide.RequestManager;
import com.bumptech.glide.load.DecodeFormat;
import com.bumptech.glide.load.Transformation;
import com.bumptech.glide.load.engine.Engine;
import com.bumptech.glide.load.engine.bitmap_recycle.BitmapPool;
import com.bumptech.glide.load.engine.cache.MemoryCache;
import com.bumptech.glide.load.engine.prefill.BitmapPreFiller;
import com.bumptech.glide.load.engine.prefill.PreFillType;
import com.bumptech.glide.load.model.GenericLoaderFactory;
import com.bumptech.glide.load.model.GlideUrl;
import com.bumptech.glide.load.model.ImageVideoWrapper;
import com.bumptech.glide.load.model.ModelLoader;
import com.bumptech.glide.load.model.ModelLoaderFactory;
import com.bumptech.glide.load.model.file_descriptor.FileDescriptorFileLoader;
import com.bumptech.glide.load.model.file_descriptor.FileDescriptorResourceLoader;
import com.bumptech.glide.load.model.file_descriptor.FileDescriptorStringLoader;
import com.bumptech.glide.load.model.file_descriptor.FileDescriptorUriLoader;
import com.bumptech.glide.load.model.stream.HttpUrlGlideUrlLoader;
import com.bumptech.glide.load.model.stream.StreamByteArrayLoader;
import com.bumptech.glide.load.model.stream.StreamFileLoader;
import com.bumptech.glide.load.model.stream.StreamResourceLoader;
import com.bumptech.glide.load.model.stream.StreamStringLoader;
import com.bumptech.glide.load.model.stream.StreamUriLoader;
import com.bumptech.glide.load.model.stream.StreamUrlLoader;
import com.bumptech.glide.load.resource.bitmap.CenterCrop;
import com.bumptech.glide.load.resource.bitmap.FileDescriptorBitmapDataLoadProvider;
import com.bumptech.glide.load.resource.bitmap.FitCenter;
import com.bumptech.glide.load.resource.bitmap.GlideBitmapDrawable;
import com.bumptech.glide.load.resource.bitmap.ImageVideoDataLoadProvider;
import com.bumptech.glide.load.resource.bitmap.StreamBitmapDataLoadProvider;
import com.bumptech.glide.load.resource.drawable.GlideDrawable;
import com.bumptech.glide.load.resource.file.StreamFileDataLoadProvider;
import com.bumptech.glide.load.resource.gif.GifDrawable;
import com.bumptech.glide.load.resource.gif.GifDrawableLoadProvider;
import com.bumptech.glide.load.resource.gifbitmap.GifBitmapWrapper;
import com.bumptech.glide.load.resource.gifbitmap.GifBitmapWrapperTransformation;
import com.bumptech.glide.load.resource.gifbitmap.ImageVideoGifDrawableLoadProvider;
import com.bumptech.glide.load.resource.transcode.GifBitmapWrapperDrawableTranscoder;
import com.bumptech.glide.load.resource.transcode.GlideBitmapDrawableTranscoder;
import com.bumptech.glide.load.resource.transcode.ResourceTranscoder;
import com.bumptech.glide.load.resource.transcode.TranscoderRegistry;
import com.bumptech.glide.manager.RequestManagerRetriever;
import com.bumptech.glide.module.GlideModule;
import com.bumptech.glide.module.ManifestParser;
import com.bumptech.glide.provider.DataLoadProvider;
import com.bumptech.glide.provider.DataLoadProviderRegistry;
import com.bumptech.glide.request.FutureTarget;
import com.bumptech.glide.request.Request;
import com.bumptech.glide.request.animation.GlideAnimation;
import com.bumptech.glide.request.target.ImageViewTargetFactory;
import com.bumptech.glide.request.target.Target;
import com.bumptech.glide.request.target.ViewTarget;
import com.bumptech.glide.util.Util;
import java.io.File;
import java.io.InputStream;
import java.net.URL;
import java.util.Iterator;
import java.util.List;

public class Glide {
    private static final String TAG = "Glide";
    private static volatile Glide glide;
    private final CenterCrop bitmapCenterCrop;
    private final FitCenter bitmapFitCenter;
    private final BitmapPool bitmapPool;
    private final BitmapPreFiller bitmapPreFiller;
    private final DataLoadProviderRegistry dataLoadProviderRegistry;
    private final DecodeFormat decodeFormat;
    private final GifBitmapWrapperTransformation drawableCenterCrop;
    private final GifBitmapWrapperTransformation drawableFitCenter;
    private final Engine engine;
    private final ImageViewTargetFactory imageViewTargetFactory = new ImageViewTargetFactory();
    private final GenericLoaderFactory loaderFactory;
    private final Handler mainHandler;
    private final MemoryCache memoryCache;
    private final TranscoderRegistry transcoderRegistry = new TranscoderRegistry();

    Glide(Engine object, MemoryCache object2, BitmapPool bitmapPool, Context context, DecodeFormat decodeFormat) {
        this.engine = object;
        this.bitmapPool = bitmapPool;
        this.memoryCache = object2;
        this.decodeFormat = decodeFormat;
        this.loaderFactory = new GenericLoaderFactory(context);
        this.mainHandler = new Handler(Looper.getMainLooper());
        this.bitmapPreFiller = new BitmapPreFiller((MemoryCache)object2, bitmapPool, decodeFormat);
        this.dataLoadProviderRegistry = new DataLoadProviderRegistry();
        object = new StreamBitmapDataLoadProvider(bitmapPool, decodeFormat);
        this.dataLoadProviderRegistry.register(InputStream.class, Bitmap.class, object);
        object2 = new FileDescriptorBitmapDataLoadProvider(bitmapPool, decodeFormat);
        this.dataLoadProviderRegistry.register(ParcelFileDescriptor.class, Bitmap.class, object2);
        object = new ImageVideoDataLoadProvider((DataLoadProvider<InputStream, Bitmap>)object, (DataLoadProvider<ParcelFileDescriptor, Bitmap>)object2);
        this.dataLoadProviderRegistry.register(ImageVideoWrapper.class, Bitmap.class, object);
        object2 = new GifDrawableLoadProvider(context, bitmapPool);
        this.dataLoadProviderRegistry.register(InputStream.class, GifDrawable.class, object2);
        this.dataLoadProviderRegistry.register(ImageVideoWrapper.class, GifBitmapWrapper.class, new ImageVideoGifDrawableLoadProvider((DataLoadProvider<ImageVideoWrapper, Bitmap>)object, (DataLoadProvider<InputStream, GifDrawable>)object2, bitmapPool));
        this.dataLoadProviderRegistry.register(InputStream.class, File.class, new StreamFileDataLoadProvider());
        this.register(File.class, ParcelFileDescriptor.class, new FileDescriptorFileLoader.Factory());
        this.register(File.class, InputStream.class, new StreamFileLoader.Factory());
        this.register(Integer.TYPE, ParcelFileDescriptor.class, new FileDescriptorResourceLoader.Factory());
        this.register(Integer.TYPE, InputStream.class, new StreamResourceLoader.Factory());
        this.register(Integer.class, ParcelFileDescriptor.class, new FileDescriptorResourceLoader.Factory());
        this.register(Integer.class, InputStream.class, new StreamResourceLoader.Factory());
        this.register(String.class, ParcelFileDescriptor.class, new FileDescriptorStringLoader.Factory());
        this.register(String.class, InputStream.class, new StreamStringLoader.Factory());
        this.register(Uri.class, ParcelFileDescriptor.class, new FileDescriptorUriLoader.Factory());
        this.register(Uri.class, InputStream.class, new StreamUriLoader.Factory());
        this.register(URL.class, InputStream.class, new StreamUrlLoader.Factory());
        this.register(GlideUrl.class, InputStream.class, new HttpUrlGlideUrlLoader.Factory());
        this.register(byte[].class, InputStream.class, new StreamByteArrayLoader.Factory());
        this.transcoderRegistry.register(Bitmap.class, GlideBitmapDrawable.class, new GlideBitmapDrawableTranscoder(context.getResources(), bitmapPool));
        this.transcoderRegistry.register(GifBitmapWrapper.class, GlideDrawable.class, new GifBitmapWrapperDrawableTranscoder(new GlideBitmapDrawableTranscoder(context.getResources(), bitmapPool)));
        this.bitmapCenterCrop = new CenterCrop(bitmapPool);
        this.drawableCenterCrop = new GifBitmapWrapperTransformation(bitmapPool, this.bitmapCenterCrop);
        this.bitmapFitCenter = new FitCenter(bitmapPool);
        this.drawableFitCenter = new GifBitmapWrapperTransformation(bitmapPool, this.bitmapFitCenter);
    }

    public static <T> ModelLoader<T, ParcelFileDescriptor> buildFileDescriptorModelLoader(Class<T> class_, Context context) {
        return Glide.buildModelLoader(class_, ParcelFileDescriptor.class, context);
    }

    public static <T> ModelLoader<T, ParcelFileDescriptor> buildFileDescriptorModelLoader(T t2, Context context) {
        return Glide.buildModelLoader(t2, ParcelFileDescriptor.class, context);
    }

    public static <T, Y> ModelLoader<T, Y> buildModelLoader(Class<T> class_, Class<Y> class_2, Context context) {
        if (class_ == null) {
            if (Log.isLoggable((String)"Glide", (int)3)) {
                Log.d((String)"Glide", (String)"Unable to load null model, setting placeholder only");
            }
            return null;
        }
        return Glide.get(context).getLoaderFactory().buildModelLoader(class_, class_2);
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    public static <T, Y> ModelLoader<T, Y> buildModelLoader(T class_, Class<Y> class_2, Context context) {
        if (class_ != null) {
            class_ = class_.getClass();
            do {
                return Glide.buildModelLoader(class_, class_2, context);
                break;
            } while (true);
        }
        class_ = null;
        return Glide.buildModelLoader(class_, class_2, context);
    }

    public static <T> ModelLoader<T, InputStream> buildStreamModelLoader(Class<T> class_, Context context) {
        return Glide.buildModelLoader(class_, InputStream.class, context);
    }

    public static <T> ModelLoader<T, InputStream> buildStreamModelLoader(T t2, Context context) {
        return Glide.buildModelLoader(t2, InputStream.class, context);
    }

    public static void clear(View view) {
        Glide.clear(new ClearTarget(view));
    }

    public static void clear(FutureTarget<?> futureTarget) {
        futureTarget.clear();
    }

    public static void clear(Target<?> target) {
        Util.assertMainThread();
        Request request = target.getRequest();
        if (request != null) {
            request.clear();
            target.setRequest(null);
        }
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    public static Glide get(Context context) {
        if (glide == null) {
            synchronized (Glide.class) {
                if (glide == null) {
                    context = context.getApplicationContext();
                    Object object = new ManifestParser(context).parse();
                    GlideBuilder glideBuilder = new GlideBuilder(context);
                    Iterator<GlideModule> iterator = object.iterator();
                    while (iterator.hasNext()) {
                        iterator.next().applyOptions(context, glideBuilder);
                    }
                    glide = glideBuilder.createGlide();
                    object = object.iterator();
                    while (object.hasNext()) {
                        ((GlideModule)object.next()).registerComponents(context, glide);
                    }
                }
            }
        }
        return glide;
    }

    private GenericLoaderFactory getLoaderFactory() {
        return this.loaderFactory;
    }

    public static File getPhotoCacheDir(Context context) {
        return Glide.getPhotoCacheDir(context, "image_manager_disk_cache");
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    public static File getPhotoCacheDir(Context object, String object2) {
        if ((object = object.getCacheDir()) != null) {
            object = object2 = new File((File)object, (String)object2);
            if (object2.mkdirs()) return object;
            if (!object2.exists()) return null;
            object = object2;
            if (object2.isDirectory()) return object;
            return null;
        }
        if (!Log.isLoggable((String)"Glide", (int)6)) return null;
        Log.e((String)"Glide", (String)"default disk cache dir is null");
        return null;
    }

    @Deprecated
    public static boolean isSetup() {
        if (glide != null) {
            return true;
        }
        return false;
    }

    @Deprecated
    public static void setup(GlideBuilder glideBuilder) {
        if (Glide.isSetup()) {
            throw new IllegalArgumentException("Glide is already setup, check with isSetup() first");
        }
        glide = glideBuilder.createGlide();
    }

    static void tearDown() {
        glide = null;
    }

    public static RequestManager with(Activity activity) {
        return RequestManagerRetriever.get().get(activity);
    }

    @TargetApi(value=11)
    public static RequestManager with(Fragment fragment) {
        return RequestManagerRetriever.get().get(fragment);
    }

    public static RequestManager with(Context context) {
        return RequestManagerRetriever.get().get(context);
    }

    public static RequestManager with(android.support.v4.app.Fragment fragment) {
        return RequestManagerRetriever.get().get(fragment);
    }

    public static RequestManager with(FragmentActivity fragmentActivity) {
        return RequestManagerRetriever.get().get(fragmentActivity);
    }

    <T, Z> DataLoadProvider<T, Z> buildDataProvider(Class<T> class_, Class<Z> class_2) {
        return this.dataLoadProviderRegistry.get(class_, class_2);
    }

    <R> Target<R> buildImageViewTarget(ImageView imageView, Class<R> class_) {
        return this.imageViewTargetFactory.buildTarget(imageView, class_);
    }

    <Z, R> ResourceTranscoder<Z, R> buildTranscoder(Class<Z> class_, Class<R> class_2) {
        return this.transcoderRegistry.get(class_, class_2);
    }

    public void clearDiskCache() {
        Util.assertBackgroundThread();
        this.getEngine().clearDiskCache();
    }

    public void clearMemory() {
        Util.assertMainThread();
        this.memoryCache.clearMemory();
        this.bitmapPool.clearMemory();
    }

    CenterCrop getBitmapCenterCrop() {
        return this.bitmapCenterCrop;
    }

    FitCenter getBitmapFitCenter() {
        return this.bitmapFitCenter;
    }

    public BitmapPool getBitmapPool() {
        return this.bitmapPool;
    }

    DecodeFormat getDecodeFormat() {
        return this.decodeFormat;
    }

    GifBitmapWrapperTransformation getDrawableCenterCrop() {
        return this.drawableCenterCrop;
    }

    GifBitmapWrapperTransformation getDrawableFitCenter() {
        return this.drawableFitCenter;
    }

    Engine getEngine() {
        return this.engine;
    }

    Handler getMainHandler() {
        return this.mainHandler;
    }

    public /* varargs */ void preFillBitmapPool(PreFillType.Builder ... arrbuilder) {
        this.bitmapPreFiller.preFill(arrbuilder);
    }

    public <T, Y> void register(Class<T> object, Class<Y> class_, ModelLoaderFactory<T, Y> modelLoaderFactory) {
        if ((object = this.loaderFactory.register(object, class_, modelLoaderFactory)) != null) {
            object.teardown();
        }
    }

    public void setMemoryCategory(MemoryCategory memoryCategory) {
        Util.assertMainThread();
        this.memoryCache.setSizeMultiplier(memoryCategory.getMultiplier());
        this.bitmapPool.setSizeMultiplier(memoryCategory.getMultiplier());
    }

    public void trimMemory(int n2) {
        Util.assertMainThread();
        this.memoryCache.trimMemory(n2);
        this.bitmapPool.trimMemory(n2);
    }

    @Deprecated
    public <T, Y> void unregister(Class<T> object, Class<Y> class_) {
        if ((object = this.loaderFactory.unregister(object, class_)) != null) {
            object.teardown();
        }
    }

    private static class ClearTarget
    extends ViewTarget<View, Object> {
        public ClearTarget(View view) {
            super(view);
        }

        @Override
        public void onLoadCleared(Drawable drawable2) {
        }

        @Override
        public void onLoadFailed(Exception exception, Drawable drawable2) {
        }

        @Override
        public void onLoadStarted(Drawable drawable2) {
        }

        @Override
        public void onResourceReady(Object object, GlideAnimation<? super Object> glideAnimation) {
        }
    }

}

