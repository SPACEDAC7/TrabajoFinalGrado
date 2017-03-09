/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.os.Looper
 *  android.os.MessageQueue
 *  android.os.MessageQueue$IdleHandler
 *  android.util.Log
 */
package com.bumptech.glide.load.engine;

import android.os.Looper;
import android.os.MessageQueue;
import android.util.Log;
import com.bumptech.glide.Priority;
import com.bumptech.glide.load.Encoder;
import com.bumptech.glide.load.Key;
import com.bumptech.glide.load.ResourceDecoder;
import com.bumptech.glide.load.ResourceEncoder;
import com.bumptech.glide.load.Transformation;
import com.bumptech.glide.load.data.DataFetcher;
import com.bumptech.glide.load.engine.DecodeJob;
import com.bumptech.glide.load.engine.DiskCacheStrategy;
import com.bumptech.glide.load.engine.EngineJob;
import com.bumptech.glide.load.engine.EngineJobListener;
import com.bumptech.glide.load.engine.EngineKey;
import com.bumptech.glide.load.engine.EngineKeyFactory;
import com.bumptech.glide.load.engine.EngineResource;
import com.bumptech.glide.load.engine.EngineRunnable;
import com.bumptech.glide.load.engine.Resource;
import com.bumptech.glide.load.engine.ResourceRecycler;
import com.bumptech.glide.load.engine.cache.DiskCache;
import com.bumptech.glide.load.engine.cache.DiskCacheAdapter;
import com.bumptech.glide.load.engine.cache.MemoryCache;
import com.bumptech.glide.load.resource.transcode.ResourceTranscoder;
import com.bumptech.glide.provider.DataLoadProvider;
import com.bumptech.glide.request.ResourceCallback;
import com.bumptech.glide.util.LogTime;
import com.bumptech.glide.util.Util;
import java.io.File;
import java.lang.ref.Reference;
import java.lang.ref.ReferenceQueue;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.ExecutorService;

public class Engine
implements EngineJobListener,
MemoryCache.ResourceRemovedListener,
EngineResource.ResourceListener {
    private static final String TAG = "Engine";
    private final Map<Key, WeakReference<EngineResource<?>>> activeResources;
    private final MemoryCache cache;
    private final LazyDiskCacheProvider diskCacheProvider;
    private final EngineJobFactory engineJobFactory;
    private final Map<Key, EngineJob> jobs;
    private final EngineKeyFactory keyFactory;
    private final ResourceRecycler resourceRecycler;
    private ReferenceQueue<EngineResource<?>> resourceReferenceQueue;

    public Engine(MemoryCache memoryCache, DiskCache.Factory factory, ExecutorService executorService, ExecutorService executorService2) {
        this(memoryCache, factory, executorService, executorService2, null, null, null, null, null);
    }

    Engine(MemoryCache memoryCache, DiskCache.Factory object, ExecutorService executorService, ExecutorService executorService2, Map<Key, EngineJob> map, EngineKeyFactory engineKeyFactory, Map<Key, WeakReference<EngineResource<?>>> map2, EngineJobFactory engineJobFactory, ResourceRecycler resourceRecycler) {
        this.cache = memoryCache;
        this.diskCacheProvider = new LazyDiskCacheProvider((DiskCache.Factory)object);
        object = map2;
        if (map2 == null) {
            object = new HashMap();
        }
        this.activeResources = object;
        object = engineKeyFactory;
        if (engineKeyFactory == null) {
            object = new EngineKeyFactory();
        }
        this.keyFactory = object;
        object = map;
        if (map == null) {
            object = new HashMap<Key, EngineJob>();
        }
        this.jobs = object;
        object = engineJobFactory;
        if (engineJobFactory == null) {
            object = new EngineJobFactory(executorService, executorService2, this);
        }
        this.engineJobFactory = object;
        object = resourceRecycler;
        if (resourceRecycler == null) {
            object = new ResourceRecycler();
        }
        this.resourceRecycler = object;
        memoryCache.setResourceRemovedListener(this);
    }

    private EngineResource<?> getEngineResourceFromCache(Key object) {
        if ((object = this.cache.remove((Key)object)) == null) {
            return null;
        }
        if (object instanceof EngineResource) {
            return (EngineResource)object;
        }
        return new EngineResource(object, true);
    }

    private ReferenceQueue<EngineResource<?>> getReferenceQueue() {
        if (this.resourceReferenceQueue == null) {
            this.resourceReferenceQueue = new ReferenceQueue();
            Looper.myQueue().addIdleHandler((MessageQueue.IdleHandler)new RefQueueIdleHandler(this.activeResources, this.resourceReferenceQueue));
        }
        return this.resourceReferenceQueue;
    }

    /*
     * Enabled aggressive block sorting
     */
    private EngineResource<?> loadFromActiveResources(Key key, boolean bl) {
        Object object;
        if (!bl || (object = this.activeResources.get(key)) == null) {
            return null;
        }
        if ((object = object.get()) != null) {
            object.acquire();
            return object;
        }
        this.activeResources.remove(key);
        return object;
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    private EngineResource<?> loadFromCache(Key key, boolean bl) {
        EngineResource engineResource;
        if (!bl) {
            return null;
        }
        EngineResource engineResource2 = engineResource = this.getEngineResourceFromCache(key);
        if (engineResource == null) return engineResource2;
        engineResource.acquire();
        this.activeResources.put(key, new ResourceWeakReference(key, engineResource, this.getReferenceQueue()));
        return engineResource;
    }

    private static void logWithTimeAndKey(String string2, long l2, Key key) {
        Log.v((String)"Engine", (String)(string2 + " in " + LogTime.getElapsedMillis(l2) + "ms, key: " + key));
    }

    public void clearDiskCache() {
        this.diskCacheProvider.getDiskCache().clear();
    }

    public <T, Z, R> LoadStatus load(Key key, int n2, int n3, DataFetcher<T> object, DataLoadProvider<T, Z> dataLoadProvider, Transformation<Z> transformation, ResourceTranscoder<Z, R> resourceTranscoder, Priority priority, boolean bl, DiskCacheStrategy diskCacheStrategy, ResourceCallback resourceCallback) {
        Util.assertMainThread();
        long l2 = LogTime.getLogTime();
        Object object2 = object.getId();
        key = this.keyFactory.buildKey((String)object2, key, n2, n3, dataLoadProvider.getCacheDecoder(), dataLoadProvider.getSourceDecoder(), transformation, dataLoadProvider.getEncoder(), resourceTranscoder, dataLoadProvider.getSourceEncoder());
        object2 = this.loadFromCache(key, bl);
        if (object2 != null) {
            resourceCallback.onResourceReady(object2);
            if (Log.isLoggable((String)"Engine", (int)2)) {
                Engine.logWithTimeAndKey("Loaded resource from cache", l2, key);
            }
            return null;
        }
        object2 = this.loadFromActiveResources(key, bl);
        if (object2 != null) {
            resourceCallback.onResourceReady(object2);
            if (Log.isLoggable((String)"Engine", (int)2)) {
                Engine.logWithTimeAndKey("Loaded resource from active resources", l2, key);
            }
            return null;
        }
        object2 = this.jobs.get(key);
        if (object2 != null) {
            object2.addCallback(resourceCallback);
            if (Log.isLoggable((String)"Engine", (int)2)) {
                Engine.logWithTimeAndKey("Added to existing load", l2, key);
            }
            return new LoadStatus(resourceCallback, (EngineJob)object2);
        }
        object2 = this.engineJobFactory.build(key, bl);
        object = new EngineRunnable((EngineRunnable.EngineRunnableManager)object2, new DecodeJob<T, Z, R>((EngineKey)key, n2, n3, (DataFetcher<T>)object, dataLoadProvider, transformation, resourceTranscoder, this.diskCacheProvider, diskCacheStrategy, priority), priority);
        this.jobs.put(key, (EngineJob)object2);
        object2.addCallback(resourceCallback);
        object2.start((EngineRunnable)object);
        if (Log.isLoggable((String)"Engine", (int)2)) {
            Engine.logWithTimeAndKey("Started new load", l2, key);
        }
        return new LoadStatus(resourceCallback, (EngineJob)object2);
    }

    @Override
    public void onEngineJobCancelled(EngineJob engineJob, Key key) {
        Util.assertMainThread();
        if (engineJob.equals(this.jobs.get(key))) {
            this.jobs.remove(key);
        }
    }

    @Override
    public void onEngineJobComplete(Key key, EngineResource<?> engineResource) {
        Util.assertMainThread();
        if (engineResource != null) {
            engineResource.setResourceListener(key, this);
            if (engineResource.isCacheable()) {
                this.activeResources.put(key, new ResourceWeakReference(key, engineResource, this.getReferenceQueue()));
            }
        }
        this.jobs.remove(key);
    }

    public void onResourceReleased(Key key, EngineResource engineResource) {
        Util.assertMainThread();
        this.activeResources.remove(key);
        if (engineResource.isCacheable()) {
            this.cache.put(key, engineResource);
            return;
        }
        this.resourceRecycler.recycle(engineResource);
    }

    @Override
    public void onResourceRemoved(Resource<?> resource) {
        Util.assertMainThread();
        this.resourceRecycler.recycle(resource);
    }

    public void release(Resource resource) {
        Util.assertMainThread();
        if (resource instanceof EngineResource) {
            ((EngineResource)resource).release();
            return;
        }
        throw new IllegalArgumentException("Cannot release anything but an EngineResource");
    }

    static class EngineJobFactory {
        private final ExecutorService diskCacheService;
        private final EngineJobListener listener;
        private final ExecutorService sourceService;

        public EngineJobFactory(ExecutorService executorService, ExecutorService executorService2, EngineJobListener engineJobListener) {
            this.diskCacheService = executorService;
            this.sourceService = executorService2;
            this.listener = engineJobListener;
        }

        public EngineJob build(Key key, boolean bl) {
            return new EngineJob(key, this.diskCacheService, this.sourceService, bl, this.listener);
        }
    }

    private static class LazyDiskCacheProvider
    implements DecodeJob.DiskCacheProvider {
        private volatile DiskCache diskCache;
        private final DiskCache.Factory factory;

        public LazyDiskCacheProvider(DiskCache.Factory factory) {
            this.factory = factory;
        }

        /*
         * Enabled aggressive block sorting
         * Enabled unnecessary exception pruning
         * Enabled aggressive exception aggregation
         */
        @Override
        public DiskCache getDiskCache() {
            if (this.diskCache == null) {
                synchronized (this) {
                    if (this.diskCache == null) {
                        this.diskCache = this.factory.build();
                    }
                    if (this.diskCache == null) {
                        this.diskCache = new DiskCacheAdapter();
                    }
                }
            }
            return this.diskCache;
        }
    }

    public static class LoadStatus {
        private final ResourceCallback cb;
        private final EngineJob engineJob;

        public LoadStatus(ResourceCallback resourceCallback, EngineJob engineJob) {
            this.cb = resourceCallback;
            this.engineJob = engineJob;
        }

        public void cancel() {
            this.engineJob.removeCallback(this.cb);
        }
    }

    private static class RefQueueIdleHandler
    implements MessageQueue.IdleHandler {
        private final Map<Key, WeakReference<EngineResource<?>>> activeResources;
        private final ReferenceQueue<EngineResource<?>> queue;

        public RefQueueIdleHandler(Map<Key, WeakReference<EngineResource<?>>> map, ReferenceQueue<EngineResource<?>> referenceQueue) {
            this.activeResources = map;
            this.queue = referenceQueue;
        }

        public boolean queueIdle() {
            ResourceWeakReference resourceWeakReference = (ResourceWeakReference)this.queue.poll();
            if (resourceWeakReference != null) {
                this.activeResources.remove(resourceWeakReference.key);
            }
            return true;
        }
    }

    private static class ResourceWeakReference
    extends WeakReference<EngineResource<?>> {
        private final Key key;

        public ResourceWeakReference(Key key, EngineResource<?> engineResource, ReferenceQueue<? super EngineResource<?>> referenceQueue) {
            super(engineResource, referenceQueue);
            this.key = key;
        }
    }

}

