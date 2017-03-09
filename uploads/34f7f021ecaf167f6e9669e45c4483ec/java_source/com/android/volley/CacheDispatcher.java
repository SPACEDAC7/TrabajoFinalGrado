/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.os.Process
 */
package com.android.volley;

import android.os.Process;
import com.android.volley.Cache;
import com.android.volley.NetworkResponse;
import com.android.volley.Request;
import com.android.volley.Response;
import com.android.volley.ResponseDelivery;
import com.android.volley.VolleyLog;
import java.util.Map;
import java.util.concurrent.BlockingQueue;

public class CacheDispatcher
extends Thread {
    private static final boolean DEBUG = VolleyLog.DEBUG;
    private final Cache mCache;
    private final BlockingQueue<Request<?>> mCacheQueue;
    private final ResponseDelivery mDelivery;
    private final BlockingQueue<Request<?>> mNetworkQueue;
    private volatile boolean mQuit = false;

    public CacheDispatcher(BlockingQueue<Request<?>> blockingQueue, BlockingQueue<Request<?>> blockingQueue2, Cache cache, ResponseDelivery responseDelivery) {
        this.mCacheQueue = blockingQueue;
        this.mNetworkQueue = blockingQueue2;
        this.mCache = cache;
        this.mDelivery = responseDelivery;
    }

    public void quit() {
        this.mQuit = true;
        this.interrupt();
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    @Override
    public void run() {
        if (DEBUG) {
            VolleyLog.v("start new dispatcher", new Object[0]);
        }
        Process.setThreadPriority((int)10);
        this.mCache.initialize();
        do {
            Request request;
            Cache.Entry entry;
            try {
                do {
                    request = this.mCacheQueue.take();
                    request.addMarker("cache-queue-take");
                    if (request.isCanceled()) {
                        request.finish("cache-discard-canceled");
                        continue;
                    }
                    entry = this.mCache.get(request.getCacheKey());
                    if (entry == null) {
                        request.addMarker("cache-miss");
                        this.mNetworkQueue.put(request);
                        continue;
                    }
                    break;
                } while (true);
            }
            catch (InterruptedException var1_2) {
                if (!this.mQuit) continue;
                return;
            }
            if (entry.isExpired()) {
                request.addMarker("cache-hit-expired");
                request.setCacheEntry(entry);
                this.mNetworkQueue.put(request);
                continue;
            }
            request.addMarker("cache-hit");
            Response response = request.parseNetworkResponse(new NetworkResponse(entry.data, entry.responseHeaders));
            request.addMarker("cache-hit-parsed");
            if (!entry.refreshNeeded()) {
                this.mDelivery.postResponse(request, response);
                continue;
            }
            request.addMarker("cache-hit-refresh-needed");
            request.setCacheEntry(entry);
            response.intermediate = true;
            this.mDelivery.postResponse(request, response, new Runnable(){

                @Override
                public void run() {
                    try {
                        CacheDispatcher.this.mNetworkQueue.put(request);
                        return;
                    }
                    catch (InterruptedException var1_1) {
                        return;
                    }
                }
            });
        } while (true);
    }

}

