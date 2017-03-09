/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.content.Context
 *  android.net.Uri
 *  android.os.Handler
 *  android.os.Looper
 *  android.os.ParcelFileDescriptor
 */
package com.bumptech.glide;

import android.content.Context;
import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import android.os.ParcelFileDescriptor;
import com.bumptech.glide.DrawableTypeRequest;
import com.bumptech.glide.GenericRequestBuilder;
import com.bumptech.glide.GenericTranscodeRequest;
import com.bumptech.glide.Glide;
import com.bumptech.glide.load.Key;
import com.bumptech.glide.load.engine.DiskCacheStrategy;
import com.bumptech.glide.load.model.ModelLoader;
import com.bumptech.glide.load.model.file_descriptor.FileDescriptorModelLoader;
import com.bumptech.glide.load.model.stream.MediaStoreStreamLoader;
import com.bumptech.glide.load.model.stream.StreamByteArrayLoader;
import com.bumptech.glide.load.model.stream.StreamModelLoader;
import com.bumptech.glide.manager.ConnectivityMonitor;
import com.bumptech.glide.manager.ConnectivityMonitorFactory;
import com.bumptech.glide.manager.Lifecycle;
import com.bumptech.glide.manager.LifecycleListener;
import com.bumptech.glide.manager.RequestManagerTreeNode;
import com.bumptech.glide.manager.RequestTracker;
import com.bumptech.glide.signature.ApplicationVersionSignature;
import com.bumptech.glide.signature.MediaStoreSignature;
import com.bumptech.glide.signature.StringSignature;
import com.bumptech.glide.util.Util;
import java.io.File;
import java.io.InputStream;
import java.net.URL;
import java.util.Iterator;
import java.util.Set;
import java.util.UUID;

public class RequestManager
implements LifecycleListener {
    private final Context context;
    private final Glide glide;
    private final Lifecycle lifecycle;
    private DefaultOptions options;
    private final OptionsApplier optionsApplier;
    private final RequestTracker requestTracker;
    private final RequestManagerTreeNode treeNode;

    public RequestManager(Context context, Lifecycle lifecycle, RequestManagerTreeNode requestManagerTreeNode) {
        this(context, lifecycle, requestManagerTreeNode, new RequestTracker(), new ConnectivityMonitorFactory());
    }

    /*
     * Enabled aggressive block sorting
     */
    RequestManager(Context object, final Lifecycle lifecycle, RequestManagerTreeNode requestManagerTreeNode, RequestTracker requestTracker, ConnectivityMonitorFactory connectivityMonitorFactory) {
        this.context = object.getApplicationContext();
        this.lifecycle = lifecycle;
        this.treeNode = requestManagerTreeNode;
        this.requestTracker = requestTracker;
        this.glide = Glide.get((Context)object);
        this.optionsApplier = new OptionsApplier();
        object = connectivityMonitorFactory.build((Context)object, new RequestManagerConnectivityListener(requestTracker));
        if (Util.isOnBackgroundThread()) {
            new Handler(Looper.getMainLooper()).post(new Runnable(){

                @Override
                public void run() {
                    lifecycle.addListener(RequestManager.this);
                }
            });
        } else {
            lifecycle.addListener(this);
        }
        lifecycle.addListener((LifecycleListener)object);
    }

    private static <T> Class<T> getSafeClass(T t2) {
        if (t2 != null) {
            return t2.getClass();
        }
        return null;
    }

    private <T> DrawableTypeRequest<T> loadGeneric(Class<T> class_) {
        ModelLoader<Class<T>, InputStream> modelLoader = Glide.buildStreamModelLoader(class_, this.context);
        ModelLoader<Class<T>, ParcelFileDescriptor> modelLoader2 = Glide.buildFileDescriptorModelLoader(class_, this.context);
        if (class_ != null && modelLoader == null && modelLoader2 == null) {
            throw new IllegalArgumentException("Unknown type " + class_ + ". You must provide a Model of a type for" + " which there is a registered ModelLoader, if you are using a custom model, you must first call" + " Glide#register with a ModelLoaderFactory for your custom model class");
        }
        return this.optionsApplier.apply(new DrawableTypeRequest<Class<T>>(class_, modelLoader, modelLoader2, this.context, this.glide, this.requestTracker, this.lifecycle, this.optionsApplier));
    }

    public <T> DrawableTypeRequest<T> from(Class<T> class_) {
        return this.loadGeneric(class_);
    }

    public DrawableTypeRequest<byte[]> fromBytes() {
        return (DrawableTypeRequest)this.loadGeneric(byte[].class).signature(new StringSignature(UUID.randomUUID().toString())).diskCacheStrategy(DiskCacheStrategy.NONE).skipMemoryCache(true);
    }

    public DrawableTypeRequest<File> fromFile() {
        return this.loadGeneric(File.class);
    }

    public DrawableTypeRequest<Uri> fromMediaStore() {
        MediaStoreStreamLoader mediaStoreStreamLoader = Glide.buildStreamModelLoader(Uri.class, this.context);
        mediaStoreStreamLoader = new MediaStoreStreamLoader(this.context, mediaStoreStreamLoader);
        ModelLoader<reference, ParcelFileDescriptor> modelLoader = Glide.buildFileDescriptorModelLoader(Uri.class, this.context);
        return this.optionsApplier.apply(new DrawableTypeRequest<reference>(Uri.class, mediaStoreStreamLoader, modelLoader, this.context, this.glide, this.requestTracker, this.lifecycle, this.optionsApplier));
    }

    public DrawableTypeRequest<Integer> fromResource() {
        return (DrawableTypeRequest)this.loadGeneric(Integer.class).signature(ApplicationVersionSignature.obtain(this.context));
    }

    public DrawableTypeRequest<String> fromString() {
        return this.loadGeneric(String.class);
    }

    public DrawableTypeRequest<Uri> fromUri() {
        return this.loadGeneric(Uri.class);
    }

    @Deprecated
    public DrawableTypeRequest<URL> fromUrl() {
        return this.loadGeneric(URL.class);
    }

    public boolean isPaused() {
        Util.assertMainThread();
        return this.requestTracker.isPaused();
    }

    public DrawableTypeRequest<Uri> load(Uri uri) {
        return (DrawableTypeRequest)this.fromUri().load((Object)uri);
    }

    public DrawableTypeRequest<File> load(File file) {
        return (DrawableTypeRequest)this.fromFile().load((Object)file);
    }

    public DrawableTypeRequest<Integer> load(Integer n2) {
        return (DrawableTypeRequest)this.fromResource().load((Object)n2);
    }

    public <T> DrawableTypeRequest<T> load(T t2) {
        return (DrawableTypeRequest)this.loadGeneric(RequestManager.getSafeClass(t2)).load((Object)t2);
    }

    public DrawableTypeRequest<String> load(String string2) {
        return (DrawableTypeRequest)this.fromString().load((Object)string2);
    }

    @Deprecated
    public DrawableTypeRequest<URL> load(URL uRL) {
        return (DrawableTypeRequest)this.fromUrl().load((Object)uRL);
    }

    public DrawableTypeRequest<byte[]> load(byte[] arrby) {
        return (DrawableTypeRequest)this.fromBytes().load((Object)arrby);
    }

    @Deprecated
    public DrawableTypeRequest<byte[]> load(byte[] arrby, String string2) {
        return (DrawableTypeRequest)this.load(arrby).signature(new StringSignature(string2));
    }

    public DrawableTypeRequest<Uri> loadFromMediaStore(Uri uri) {
        return (DrawableTypeRequest)this.fromMediaStore().load((Object)uri);
    }

    @Deprecated
    public DrawableTypeRequest<Uri> loadFromMediaStore(Uri uri, String object, long l2, int n2) {
        object = new MediaStoreSignature((String)object, l2, n2);
        return (DrawableTypeRequest)this.loadFromMediaStore(uri).signature((Key)object);
    }

    @Override
    public void onDestroy() {
        this.requestTracker.clearRequests();
    }

    public void onLowMemory() {
        this.glide.clearMemory();
    }

    @Override
    public void onStart() {
        this.resumeRequests();
    }

    @Override
    public void onStop() {
        this.pauseRequests();
    }

    public void onTrimMemory(int n2) {
        this.glide.trimMemory(n2);
    }

    public void pauseRequests() {
        Util.assertMainThread();
        this.requestTracker.pauseRequests();
    }

    public void pauseRequestsRecursive() {
        Util.assertMainThread();
        this.pauseRequests();
        Iterator<RequestManager> iterator = this.treeNode.getDescendants().iterator();
        while (iterator.hasNext()) {
            iterator.next().pauseRequests();
        }
    }

    public void resumeRequests() {
        Util.assertMainThread();
        this.requestTracker.resumeRequests();
    }

    public void resumeRequestsRecursive() {
        Util.assertMainThread();
        this.resumeRequests();
        Iterator<RequestManager> iterator = this.treeNode.getDescendants().iterator();
        while (iterator.hasNext()) {
            iterator.next().resumeRequests();
        }
    }

    public void setDefaultOptions(DefaultOptions defaultOptions) {
        this.options = defaultOptions;
    }

    public <A, T> GenericModelRequest<A, T> using(ModelLoader<A, T> modelLoader, Class<T> class_) {
        return new GenericModelRequest<A, T>(modelLoader, class_);
    }

    public ImageModelRequest<byte[]> using(StreamByteArrayLoader streamByteArrayLoader) {
        return new ImageModelRequest<byte[]>(streamByteArrayLoader);
    }

    public <T> ImageModelRequest<T> using(StreamModelLoader<T> streamModelLoader) {
        return new ImageModelRequest(streamModelLoader);
    }

    public <T> VideoModelRequest<T> using(FileDescriptorModelLoader<T> fileDescriptorModelLoader) {
        return new VideoModelRequest(fileDescriptorModelLoader);
    }

    public static interface DefaultOptions {
        public <T> void apply(GenericRequestBuilder<T, ?, ?, ?> var1);
    }

    public final class GenericModelRequest<A, T> {
        private final Class<T> dataClass;
        private final ModelLoader<A, T> modelLoader;

        GenericModelRequest(ModelLoader<A, T> modelLoader, Class<T> class_) {
            this.modelLoader = modelLoader;
            this.dataClass = class_;
        }

        public GenericModelRequest<A, T> from(Class<A> class_) {
            return new GenericTypeRequest(this, class_);
        }

        public GenericModelRequest<A, T> load(A a2) {
            return new GenericTypeRequest(this, a2);
        }

        public final class GenericTypeRequest {
            private final A model;
            private final Class<A> modelClass;
            private final boolean providedModel;
            final /* synthetic */ GenericModelRequest this$1;

            GenericTypeRequest(GenericModelRequest genericModelRequest, Class<A> class_) {
                this.this$1 = genericModelRequest;
                this.providedModel = false;
                this.model = null;
                this.modelClass = class_;
            }

            GenericTypeRequest(GenericModelRequest genericModelRequest, A a2) {
                this.this$1 = genericModelRequest;
                this.providedModel = true;
                this.model = a2;
                this.modelClass = RequestManager.getSafeClass(a2);
            }

            public <Z> GenericTranscodeRequest<A, T, Z> as(Class<Z> object) {
                object = this.this$1.RequestManager.this.optionsApplier.apply(new GenericTranscodeRequest(this.this$1.RequestManager.this.context, this.this$1.RequestManager.this.glide, this.modelClass, this.this$1.modelLoader, this.this$1.dataClass, (Class<Z>)object, this.this$1.RequestManager.this.requestTracker, this.this$1.RequestManager.this.lifecycle, this.this$1.RequestManager.this.optionsApplier));
                if (this.providedModel) {
                    object.load(this.model);
                }
                return object;
            }
        }

    }

    public final class ImageModelRequest<T> {
        private final ModelLoader<T, InputStream> loader;

        ImageModelRequest(ModelLoader<T, InputStream> modelLoader) {
            this.loader = modelLoader;
        }

        public DrawableTypeRequest<T> from(Class<T> class_) {
            return RequestManager.this.optionsApplier.apply(new DrawableTypeRequest<T>(class_, this.loader, null, RequestManager.this.context, RequestManager.this.glide, RequestManager.this.requestTracker, RequestManager.this.lifecycle, RequestManager.this.optionsApplier));
        }

        public DrawableTypeRequest<T> load(T t2) {
            return (DrawableTypeRequest)this.from(RequestManager.getSafeClass(t2)).load((Object)t2);
        }
    }

    class OptionsApplier {
        OptionsApplier() {
        }

        public <A, X extends GenericRequestBuilder<A, ?, ?, ?>> X apply(X x2) {
            if (RequestManager.this.options != null) {
                RequestManager.this.options.apply(x2);
            }
            return x2;
        }
    }

    private static class RequestManagerConnectivityListener
    implements ConnectivityMonitor.ConnectivityListener {
        private final RequestTracker requestTracker;

        public RequestManagerConnectivityListener(RequestTracker requestTracker) {
            this.requestTracker = requestTracker;
        }

        @Override
        public void onConnectivityChanged(boolean bl) {
            if (bl) {
                this.requestTracker.restartRequests();
            }
        }
    }

    public final class VideoModelRequest<T> {
        private final ModelLoader<T, ParcelFileDescriptor> loader;

        VideoModelRequest(ModelLoader<T, ParcelFileDescriptor> modelLoader) {
            this.loader = modelLoader;
        }

        public DrawableTypeRequest<T> load(T t2) {
            return (DrawableTypeRequest)RequestManager.this.optionsApplier.apply(new DrawableTypeRequest<T>(RequestManager.getSafeClass(t2), null, this.loader, RequestManager.this.context, RequestManager.this.glide, RequestManager.this.requestTracker, RequestManager.this.lifecycle, RequestManager.this.optionsApplier)).load((Object)t2);
        }
    }

}

