/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.os.Handler
 *  android.os.Handler$Callback
 *  android.os.Looper
 *  android.os.Message
 */
package com.bumptech.glide.load.engine;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import com.bumptech.glide.load.Key;
import com.bumptech.glide.load.engine.EngineJobListener;
import com.bumptech.glide.load.engine.EngineResource;
import com.bumptech.glide.load.engine.EngineRunnable;
import com.bumptech.glide.load.engine.Resource;
import com.bumptech.glide.request.ResourceCallback;
import com.bumptech.glide.util.Util;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Future;

class EngineJob
implements EngineRunnable.EngineRunnableManager {
    private static final EngineResourceFactory DEFAULT_FACTORY = new EngineResourceFactory();
    private static final Handler MAIN_THREAD_HANDLER = new Handler(Looper.getMainLooper(), (Handler.Callback)new MainThreadCallback());
    private static final int MSG_COMPLETE = 1;
    private static final int MSG_EXCEPTION = 2;
    private final List<ResourceCallback> cbs = new ArrayList<ResourceCallback>();
    private final ExecutorService diskCacheService;
    private EngineResource<?> engineResource;
    private final EngineResourceFactory engineResourceFactory;
    private EngineRunnable engineRunnable;
    private Exception exception;
    private volatile Future<?> future;
    private boolean hasException;
    private boolean hasResource;
    private Set<ResourceCallback> ignoredCallbacks;
    private final boolean isCacheable;
    private boolean isCancelled;
    private final Key key;
    private final EngineJobListener listener;
    private Resource<?> resource;
    private final ExecutorService sourceService;

    public EngineJob(Key key, ExecutorService executorService, ExecutorService executorService2, boolean bl, EngineJobListener engineJobListener) {
        this(key, executorService, executorService2, bl, engineJobListener, DEFAULT_FACTORY);
    }

    public EngineJob(Key key, ExecutorService executorService, ExecutorService executorService2, boolean bl, EngineJobListener engineJobListener, EngineResourceFactory engineResourceFactory) {
        this.key = key;
        this.diskCacheService = executorService;
        this.sourceService = executorService2;
        this.isCacheable = bl;
        this.listener = engineJobListener;
        this.engineResourceFactory = engineResourceFactory;
    }

    private void addIgnoredCallback(ResourceCallback resourceCallback) {
        if (this.ignoredCallbacks == null) {
            this.ignoredCallbacks = new HashSet<ResourceCallback>();
        }
        this.ignoredCallbacks.add(resourceCallback);
    }

    /*
     * Enabled aggressive block sorting
     */
    private void handleExceptionOnMainThread() {
        if (!this.isCancelled) {
            if (this.cbs.isEmpty()) {
                throw new IllegalStateException("Received an exception without any callbacks to notify");
            }
            this.hasException = true;
            this.listener.onEngineJobComplete(this.key, null);
            for (ResourceCallback resourceCallback : this.cbs) {
                if (this.isInIgnoredCallbacks(resourceCallback)) continue;
                resourceCallback.onException(this.exception);
            }
        }
    }

    private void handleResultOnMainThread() {
        if (this.isCancelled) {
            this.resource.recycle();
            return;
        }
        if (this.cbs.isEmpty()) {
            throw new IllegalStateException("Received a resource without any callbacks to notify");
        }
        this.engineResource = this.engineResourceFactory.build(this.resource, this.isCacheable);
        this.hasResource = true;
        this.engineResource.acquire();
        this.listener.onEngineJobComplete(this.key, this.engineResource);
        for (ResourceCallback resourceCallback : this.cbs) {
            if (this.isInIgnoredCallbacks(resourceCallback)) continue;
            this.engineResource.acquire();
            resourceCallback.onResourceReady(this.engineResource);
        }
        this.engineResource.release();
    }

    private boolean isInIgnoredCallbacks(ResourceCallback resourceCallback) {
        if (this.ignoredCallbacks != null && this.ignoredCallbacks.contains(resourceCallback)) {
            return true;
        }
        return false;
    }

    public void addCallback(ResourceCallback resourceCallback) {
        Util.assertMainThread();
        if (this.hasResource) {
            resourceCallback.onResourceReady(this.engineResource);
            return;
        }
        if (this.hasException) {
            resourceCallback.onException(this.exception);
            return;
        }
        this.cbs.add(resourceCallback);
    }

    void cancel() {
        if (this.hasException || this.hasResource || this.isCancelled) {
            return;
        }
        this.engineRunnable.cancel();
        Future future = this.future;
        if (future != null) {
            future.cancel(true);
        }
        this.isCancelled = true;
        this.listener.onEngineJobCancelled(this, this.key);
    }

    boolean isCancelled() {
        return this.isCancelled;
    }

    @Override
    public void onException(Exception exception) {
        this.exception = exception;
        MAIN_THREAD_HANDLER.obtainMessage(2, (Object)this).sendToTarget();
    }

    @Override
    public void onResourceReady(Resource<?> resource) {
        this.resource = resource;
        MAIN_THREAD_HANDLER.obtainMessage(1, (Object)this).sendToTarget();
    }

    /*
     * Enabled aggressive block sorting
     */
    public void removeCallback(ResourceCallback resourceCallback) {
        Util.assertMainThread();
        if (this.hasResource || this.hasException) {
            this.addIgnoredCallback(resourceCallback);
            return;
        } else {
            this.cbs.remove(resourceCallback);
            if (!this.cbs.isEmpty()) return;
            {
                this.cancel();
                return;
            }
        }
    }

    public void start(EngineRunnable engineRunnable) {
        this.engineRunnable = engineRunnable;
        this.future = this.diskCacheService.submit(engineRunnable);
    }

    @Override
    public void submitForSource(EngineRunnable engineRunnable) {
        this.future = this.sourceService.submit(engineRunnable);
    }

    static class EngineResourceFactory {
        EngineResourceFactory() {
        }

        public <R> EngineResource<R> build(Resource<R> resource, boolean bl) {
            return new EngineResource<R>(resource, bl);
        }
    }

    private static class MainThreadCallback
    implements Handler.Callback {
        private MainThreadCallback() {
        }

        public boolean handleMessage(Message message) {
            if (1 == message.what || 2 == message.what) {
                EngineJob engineJob = (EngineJob)message.obj;
                if (1 == message.what) {
                    engineJob.handleResultOnMainThread();
                    return true;
                }
                engineJob.handleExceptionOnMainThread();
                return true;
            }
            return false;
        }
    }

}

