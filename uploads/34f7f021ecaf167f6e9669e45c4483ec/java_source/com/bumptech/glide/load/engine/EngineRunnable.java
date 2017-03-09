/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.util.Log
 */
package com.bumptech.glide.load.engine;

import android.util.Log;
import com.bumptech.glide.Priority;
import com.bumptech.glide.load.engine.DecodeJob;
import com.bumptech.glide.load.engine.Resource;
import com.bumptech.glide.load.engine.executor.Prioritized;
import com.bumptech.glide.request.ResourceCallback;

class EngineRunnable
implements Runnable,
Prioritized {
    private static final String TAG = "EngineRunnable";
    private final DecodeJob<?, ?, ?> decodeJob;
    private volatile boolean isCancelled;
    private final EngineRunnableManager manager;
    private final Priority priority;
    private Stage stage;

    public EngineRunnable(EngineRunnableManager engineRunnableManager, DecodeJob<?, ?, ?> decodeJob, Priority priority) {
        this.manager = engineRunnableManager;
        this.decodeJob = decodeJob;
        this.stage = Stage.CACHE;
        this.priority = priority;
    }

    private Resource<?> decode() throws Exception {
        if (this.isDecodingFromCache()) {
            return this.decodeFromCache();
        }
        return this.decodeFromSource();
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    private Resource<?> decodeFromCache() throws Exception {
        Resource resource;
        Resource resource2;
        block2 : {
            resource = null;
            try {
                resource2 = this.decodeJob.decodeResultFromCache();
            }
            catch (Exception var3_3) {
                resource2 = resource;
                if (!Log.isLoggable((String)"EngineRunnable", (int)3)) break block2;
                Log.d((String)"EngineRunnable", (String)("Exception decoding result from cache: " + var3_3));
                resource2 = resource;
            }
        }
        resource = resource2;
        if (resource2 != null) return resource;
        return this.decodeJob.decodeSourceFromCache();
    }

    private Resource<?> decodeFromSource() throws Exception {
        return this.decodeJob.decodeFromSource();
    }

    private boolean isDecodingFromCache() {
        if (this.stage == Stage.CACHE) {
            return true;
        }
        return false;
    }

    private void onLoadComplete(Resource resource) {
        this.manager.onResourceReady(resource);
    }

    private void onLoadFailed(Exception exception) {
        if (this.isDecodingFromCache()) {
            this.stage = Stage.SOURCE;
            this.manager.submitForSource(this);
            return;
        }
        this.manager.onException(exception);
    }

    public void cancel() {
        this.isCancelled = true;
        this.decodeJob.cancel();
    }

    @Override
    public int getPriority() {
        return this.priority.ordinal();
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     * Lifted jumps to return sites
     */
    @Override
    public void run() {
        Resource resource;
        Exception exception;
        block5 : {
            if (this.isCancelled) {
                return;
            }
            exception = null;
            resource = null;
            try {
                Resource resource2;
                resource = resource2 = this.decode();
            }
            catch (Exception var1_2) {
                if (!Log.isLoggable((String)"EngineRunnable", (int)2)) break block5;
                Log.v((String)"EngineRunnable", (String)"Exception decoding", (Throwable)var1_2);
            }
        }
        if (this.isCancelled) {
            if (resource == null) return;
            resource.recycle();
            return;
        }
        if (resource == null) {
            this.onLoadFailed(exception);
            return;
        }
        this.onLoadComplete(resource);
    }

    static interface EngineRunnableManager
    extends ResourceCallback {
        public void submitForSource(EngineRunnable var1);
    }

    private static enum Stage {
        CACHE,
        SOURCE;
        

        private Stage() {
        }
    }

}

