/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.content.Context
 *  android.content.res.Resources
 *  android.graphics.drawable.Drawable
 *  android.util.Log
 */
package com.bumptech.glide.request;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.util.Log;
import com.bumptech.glide.Priority;
import com.bumptech.glide.load.Encoder;
import com.bumptech.glide.load.Key;
import com.bumptech.glide.load.ResourceDecoder;
import com.bumptech.glide.load.ResourceEncoder;
import com.bumptech.glide.load.Transformation;
import com.bumptech.glide.load.data.DataFetcher;
import com.bumptech.glide.load.engine.DiskCacheStrategy;
import com.bumptech.glide.load.engine.Engine;
import com.bumptech.glide.load.engine.Resource;
import com.bumptech.glide.load.model.ModelLoader;
import com.bumptech.glide.load.resource.transcode.ResourceTranscoder;
import com.bumptech.glide.provider.DataLoadProvider;
import com.bumptech.glide.provider.LoadProvider;
import com.bumptech.glide.request.Request;
import com.bumptech.glide.request.RequestCoordinator;
import com.bumptech.glide.request.RequestListener;
import com.bumptech.glide.request.ResourceCallback;
import com.bumptech.glide.request.animation.GlideAnimation;
import com.bumptech.glide.request.animation.GlideAnimationFactory;
import com.bumptech.glide.request.target.SizeReadyCallback;
import com.bumptech.glide.request.target.Target;
import com.bumptech.glide.util.LogTime;
import com.bumptech.glide.util.Util;
import java.io.File;
import java.util.Queue;

public final class GenericRequest<A, T, Z, R>
implements Request,
SizeReadyCallback,
ResourceCallback {
    private static final Queue<GenericRequest<?, ?, ?, ?>> REQUEST_POOL = Util.createQueue(0);
    private static final String TAG = "GenericRequest";
    private static final double TO_MEGABYTE = 9.5367431640625E-7;
    private GlideAnimationFactory<R> animationFactory;
    private Context context;
    private DiskCacheStrategy diskCacheStrategy;
    private Engine engine;
    private Drawable errorDrawable;
    private int errorResourceId;
    private Drawable fallbackDrawable;
    private int fallbackResourceId;
    private boolean isMemoryCacheable;
    private LoadProvider<A, T, Z, R> loadProvider;
    private Engine.LoadStatus loadStatus;
    private boolean loadedFromMemoryCache;
    private A model;
    private int overrideHeight;
    private int overrideWidth;
    private Drawable placeholderDrawable;
    private int placeholderResourceId;
    private Priority priority;
    private RequestCoordinator requestCoordinator;
    private RequestListener<? super A, R> requestListener;
    private Resource<?> resource;
    private Key signature;
    private float sizeMultiplier;
    private long startTime;
    private Status status;
    private final String tag;
    private Target<R> target;
    private Class<R> transcodeClass;
    private Transformation<Z> transformation;

    private GenericRequest() {
        this.tag = String.valueOf(this.hashCode());
    }

    private boolean canNotifyStatusChanged() {
        if (this.requestCoordinator == null || this.requestCoordinator.canNotifyStatusChanged(this)) {
            return true;
        }
        return false;
    }

    private boolean canSetResource() {
        if (this.requestCoordinator == null || this.requestCoordinator.canSetImage(this)) {
            return true;
        }
        return false;
    }

    private static void check(String charSequence, Object object, String string2) {
        if (object == null) {
            charSequence = new StringBuilder((String)charSequence);
            charSequence.append(" must not be null");
            if (string2 != null) {
                charSequence.append(", ");
                charSequence.append(string2);
            }
            throw new NullPointerException(charSequence.toString());
        }
    }

    private Drawable getErrorDrawable() {
        if (this.errorDrawable == null && this.errorResourceId > 0) {
            this.errorDrawable = this.context.getResources().getDrawable(this.errorResourceId);
        }
        return this.errorDrawable;
    }

    private Drawable getFallbackDrawable() {
        if (this.fallbackDrawable == null && this.fallbackResourceId > 0) {
            this.fallbackDrawable = this.context.getResources().getDrawable(this.fallbackResourceId);
        }
        return this.fallbackDrawable;
    }

    private Drawable getPlaceholderDrawable() {
        if (this.placeholderDrawable == null && this.placeholderResourceId > 0) {
            this.placeholderDrawable = this.context.getResources().getDrawable(this.placeholderResourceId);
        }
        return this.placeholderDrawable;
    }

    /*
     * Enabled aggressive block sorting
     */
    private void init(LoadProvider<A, T, Z, R> loadProvider, A a2, Key key, Context context, Priority priority, Target<R> target, float f2, Drawable drawable2, int n2, Drawable drawable3, int n3, Drawable drawable4, int n4, RequestListener<? super A, R> requestListener, RequestCoordinator requestCoordinator, Engine engine, Transformation<Z> transformation, Class<R> class_, boolean bl, GlideAnimationFactory<R> glideAnimationFactory, int n5, int n6, DiskCacheStrategy diskCacheStrategy) {
        this.loadProvider = loadProvider;
        this.model = a2;
        this.signature = key;
        this.fallbackDrawable = drawable4;
        this.fallbackResourceId = n4;
        this.context = context.getApplicationContext();
        this.priority = priority;
        this.target = target;
        this.sizeMultiplier = f2;
        this.placeholderDrawable = drawable2;
        this.placeholderResourceId = n2;
        this.errorDrawable = drawable3;
        this.errorResourceId = n3;
        this.requestListener = requestListener;
        this.requestCoordinator = requestCoordinator;
        this.engine = engine;
        this.transformation = transformation;
        this.transcodeClass = class_;
        this.isMemoryCacheable = bl;
        this.animationFactory = glideAnimationFactory;
        this.overrideWidth = n5;
        this.overrideHeight = n6;
        this.diskCacheStrategy = diskCacheStrategy;
        this.status = Status.PENDING;
        if (a2 != null) {
            GenericRequest.check("ModelLoader", loadProvider.getModelLoader(), "try .using(ModelLoader)");
            GenericRequest.check("Transcoder", loadProvider.getTranscoder(), "try .as*(Class).transcode(ResourceTranscoder)");
            GenericRequest.check("Transformation", transformation, "try .transform(UnitTransformation.get())");
            if (diskCacheStrategy.cacheSource()) {
                GenericRequest.check("SourceEncoder", loadProvider.getSourceEncoder(), "try .sourceEncoder(Encoder) or .diskCacheStrategy(NONE/RESULT)");
            } else {
                GenericRequest.check("SourceDecoder", loadProvider.getSourceDecoder(), "try .decoder/.imageDecoder/.videoDecoder(ResourceDecoder) or .diskCacheStrategy(ALL/SOURCE)");
            }
            if (diskCacheStrategy.cacheSource() || diskCacheStrategy.cacheResult()) {
                GenericRequest.check("CacheDecoder", loadProvider.getCacheDecoder(), "try .cacheDecoder(ResouceDecoder) or .diskCacheStrategy(NONE)");
            }
            if (diskCacheStrategy.cacheResult()) {
                GenericRequest.check("Encoder", loadProvider.getEncoder(), "try .encode(ResourceEncoder) or .diskCacheStrategy(NONE/SOURCE)");
            }
        }
    }

    private boolean isFirstReadyResource() {
        if (this.requestCoordinator == null || !this.requestCoordinator.isAnyResourceSet()) {
            return true;
        }
        return false;
    }

    private void logV(String string2) {
        Log.v((String)"GenericRequest", (String)(string2 + " this: " + this.tag));
    }

    private void notifyLoadSuccess() {
        if (this.requestCoordinator != null) {
            this.requestCoordinator.onRequestSuccess(this);
        }
    }

    public static <A, T, Z, R> GenericRequest<A, T, Z, R> obtain(LoadProvider<A, T, Z, R> loadProvider, A a2, Key key, Context context, Priority priority, Target<R> target, float f2, Drawable drawable2, int n2, Drawable drawable3, int n3, Drawable drawable4, int n4, RequestListener<? super A, R> requestListener, RequestCoordinator requestCoordinator, Engine engine, Transformation<Z> transformation, Class<R> class_, boolean bl, GlideAnimationFactory<R> glideAnimationFactory, int n5, int n6, DiskCacheStrategy diskCacheStrategy) {
        GenericRequest genericRequest;
        GenericRequest genericRequest2 = genericRequest = REQUEST_POOL.poll();
        if (genericRequest == null) {
            genericRequest2 = new GenericRequest<A, T, Z, R>();
        }
        genericRequest2.init(loadProvider, a2, key, context, priority, target, f2, drawable2, n2, drawable3, n3, drawable4, n4, requestListener, requestCoordinator, engine, transformation, class_, bl, glideAnimationFactory, n5, n6, diskCacheStrategy);
        return genericRequest2;
    }

    private void onResourceReady(Resource<?> resource, R r2) {
        boolean bl = this.isFirstReadyResource();
        this.status = Status.COMPLETE;
        this.resource = resource;
        if (this.requestListener == null || !this.requestListener.onResourceReady(r2, this.model, this.target, this.loadedFromMemoryCache, bl)) {
            GlideAnimation<R> glideAnimation = this.animationFactory.build(this.loadedFromMemoryCache, bl);
            this.target.onResourceReady(r2, glideAnimation);
        }
        this.notifyLoadSuccess();
        if (Log.isLoggable((String)"GenericRequest", (int)2)) {
            this.logV("Resource ready in " + LogTime.getElapsedMillis(this.startTime) + " size: " + (double)resource.getSize() * 9.5367431640625E-7 + " fromCache: " + this.loadedFromMemoryCache);
        }
    }

    private void releaseResource(Resource resource) {
        this.engine.release(resource);
        this.resource = null;
    }

    /*
     * Enabled aggressive block sorting
     */
    private void setErrorPlaceholder(Exception exception) {
        if (!this.canNotifyStatusChanged()) {
            return;
        }
        Drawable drawable2 = this.model == null ? this.getFallbackDrawable() : null;
        Drawable drawable3 = drawable2;
        if (drawable2 == null) {
            drawable3 = this.getErrorDrawable();
        }
        drawable2 = drawable3;
        if (drawable3 == null) {
            drawable2 = this.getPlaceholderDrawable();
        }
        this.target.onLoadFailed(exception, drawable2);
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    public void begin() {
        this.startTime = LogTime.getLogTime();
        if (this.model == null) {
            this.onException(null);
            return;
        } else {
            this.status = Status.WAITING_FOR_SIZE;
            if (Util.isValidDimensions(this.overrideWidth, this.overrideHeight)) {
                this.onSizeReady(this.overrideWidth, this.overrideHeight);
            } else {
                this.target.getSize(this);
            }
            if (!this.isComplete() && !this.isFailed() && this.canNotifyStatusChanged()) {
                this.target.onLoadStarted(this.getPlaceholderDrawable());
            }
            if (!Log.isLoggable((String)"GenericRequest", (int)2)) return;
            {
                this.logV("finished run method in " + LogTime.getElapsedMillis(this.startTime));
                return;
            }
        }
    }

    void cancel() {
        this.status = Status.CANCELLED;
        if (this.loadStatus != null) {
            this.loadStatus.cancel();
            this.loadStatus = null;
        }
    }

    @Override
    public void clear() {
        Util.assertMainThread();
        if (this.status == Status.CLEARED) {
            return;
        }
        this.cancel();
        if (this.resource != null) {
            this.releaseResource(this.resource);
        }
        if (this.canNotifyStatusChanged()) {
            this.target.onLoadCleared(this.getPlaceholderDrawable());
        }
        this.status = Status.CLEARED;
    }

    @Override
    public boolean isCancelled() {
        if (this.status == Status.CANCELLED || this.status == Status.CLEARED) {
            return true;
        }
        return false;
    }

    @Override
    public boolean isComplete() {
        if (this.status == Status.COMPLETE) {
            return true;
        }
        return false;
    }

    @Override
    public boolean isFailed() {
        if (this.status == Status.FAILED) {
            return true;
        }
        return false;
    }

    @Override
    public boolean isPaused() {
        if (this.status == Status.PAUSED) {
            return true;
        }
        return false;
    }

    @Override
    public boolean isResourceSet() {
        return this.isComplete();
    }

    @Override
    public boolean isRunning() {
        if (this.status == Status.RUNNING || this.status == Status.WAITING_FOR_SIZE) {
            return true;
        }
        return false;
    }

    @Override
    public void onException(Exception exception) {
        if (Log.isLoggable((String)"GenericRequest", (int)3)) {
            Log.d((String)"GenericRequest", (String)"load failed", (Throwable)exception);
        }
        this.status = Status.FAILED;
        if (this.requestListener == null || !this.requestListener.onException(exception, this.model, this.target, this.isFirstReadyResource())) {
            this.setErrorPlaceholder(exception);
        }
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    public void onResourceReady(Resource<?> object) {
        if (object == null) {
            this.onException(new Exception("Expected to receive a Resource<R> with an object of " + this.transcodeClass + " inside, but instead got null."));
            return;
        }
        Object z2 = object.get();
        if (z2 == null || !this.transcodeClass.isAssignableFrom(z2.getClass())) {
            this.releaseResource((Resource)object);
            StringBuilder stringBuilder = new StringBuilder().append("Expected to receive an object of ").append(this.transcodeClass).append(" but instead got ");
            Class class_ = z2 != null ? z2.getClass() : "";
            class_ = stringBuilder.append(class_).append("{").append(z2).append("}").append(" inside Resource{").append(object).append("}.");
            object = z2 != null ? "" : " To indicate failure return a null Resource object, rather than a Resource object containing null data.";
            this.onException(new Exception(class_.append((String)object).toString()));
            return;
        }
        if (!this.canSetResource()) {
            this.releaseResource((Resource)object);
            this.status = Status.COMPLETE;
            return;
        }
        this.onResourceReady(object, (R)z2);
    }

    /*
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    @Override
    public void onSizeReady(int n2, int n3) {
        if (Log.isLoggable((String)"GenericRequest", (int)2)) {
            this.logV("Got onSizeReady in " + LogTime.getElapsedMillis(this.startTime));
        }
        if (this.status != Status.WAITING_FOR_SIZE) {
            return;
        }
        this.status = Status.RUNNING;
        n2 = Math.round(this.sizeMultiplier * (float)n2);
        n3 = Math.round(this.sizeMultiplier * (float)n3);
        DataFetcher<T> dataFetcher = this.loadProvider.getModelLoader().getResourceFetcher(this.model, n2, n3);
        if (dataFetcher == null) {
            this.onException(new Exception("Failed to load model: '" + this.model + "'"));
            return;
        }
        ResourceTranscoder<Z, R> resourceTranscoder = this.loadProvider.getTranscoder();
        if (Log.isLoggable((String)"GenericRequest", (int)2)) {
            this.logV("finished setup for calling load in " + LogTime.getElapsedMillis(this.startTime));
        }
        this.loadedFromMemoryCache = true;
        this.loadStatus = this.engine.load(this.signature, n2, n3, dataFetcher, this.loadProvider, this.transformation, resourceTranscoder, this.priority, this.isMemoryCacheable, this.diskCacheStrategy, this);
        boolean bl = this.resource != null;
        this.loadedFromMemoryCache = bl;
        if (!Log.isLoggable((String)"GenericRequest", (int)2)) return;
        this.logV("finished onSizeReady in " + LogTime.getElapsedMillis(this.startTime));
    }

    @Override
    public void pause() {
        this.clear();
        this.status = Status.PAUSED;
    }

    @Override
    public void recycle() {
        this.loadProvider = null;
        this.model = null;
        this.context = null;
        this.target = null;
        this.placeholderDrawable = null;
        this.errorDrawable = null;
        this.fallbackDrawable = null;
        this.requestListener = null;
        this.requestCoordinator = null;
        this.transformation = null;
        this.animationFactory = null;
        this.loadedFromMemoryCache = false;
        this.loadStatus = null;
        REQUEST_POOL.offer(this);
    }

    private static enum Status {
        PENDING,
        RUNNING,
        WAITING_FOR_SIZE,
        COMPLETE,
        FAILED,
        CANCELLED,
        CLEARED,
        PAUSED;
        

        private Status() {
        }
    }

}

