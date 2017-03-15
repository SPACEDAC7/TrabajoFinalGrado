/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.annotation.TargetApi
 *  android.net.TrafficStats
 *  android.os.Build
 *  android.os.Build$VERSION
 *  android.os.Process
 *  android.os.SystemClock
 */
package com.android.volley;

import android.annotation.TargetApi;
import android.net.TrafficStats;
import android.os.Build;
import android.os.Process;
import android.os.SystemClock;
import com.android.volley.Cache;
import com.android.volley.Network;
import com.android.volley.NetworkResponse;
import com.android.volley.Request;
import com.android.volley.Response;
import com.android.volley.ResponseDelivery;
import com.android.volley.VolleyError;
import com.android.volley.VolleyLog;
import java.util.concurrent.BlockingQueue;

public class NetworkDispatcher
extends Thread {
    private final Cache mCache;
    private final ResponseDelivery mDelivery;
    private final Network mNetwork;
    private final BlockingQueue<Request<?>> mQueue;
    private volatile boolean mQuit = false;

    public NetworkDispatcher(BlockingQueue<Request<?>> blockingQueue, Network network, Cache cache, ResponseDelivery responseDelivery) {
        this.mQueue = blockingQueue;
        this.mNetwork = network;
        this.mCache = cache;
        this.mDelivery = responseDelivery;
    }

    @TargetApi(value=14)
    private void addTrafficStatsTag(Request<?> request) {
        if (Build.VERSION.SDK_INT >= 14) {
            TrafficStats.setThreadStatsTag((int)request.getTrafficStatsTag());
        }
    }

    private void parseAndDeliverNetworkError(Request<?> request, VolleyError volleyError) {
        volleyError = request.parseNetworkError(volleyError);
        this.mDelivery.postError(request, volleyError);
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
        Process.setThreadPriority((int)10);
        do {
            Response response;
            Request request;
            long l2;
            block11 : {
                l2 = SystemClock.elapsedRealtime();
                try {
                    request = this.mQueue.take();
                }
                catch (InterruptedException var1_2) {
                    if (!this.mQuit) continue;
                    return;
                }
                request.addMarker("network-queue-take");
                if (request.isCanceled()) {
                    request.finish("network-discard-cancelled");
                }
                this.addTrafficStatsTag(request);
                response = this.mNetwork.performRequest(request);
                request.addMarker("network-http-complete");
                if (!response.notModified || !request.hasHadResponseDelivered()) break block11;
                request.finish("not-modified");
                continue;
            }
            try {
                response = request.parseNetworkResponse((NetworkResponse)((Object)response));
                request.addMarker("network-parse-complete");
                if (request.shouldCache() && response.cacheEntry != null) {
                    this.mCache.put(request.getCacheKey(), response.cacheEntry);
                    request.addMarker("network-cache-written");
                }
                request.markDelivered();
                this.mDelivery.postResponse(request, response);
                continue;
            }
            catch (VolleyError var2_4) {
                var2_4.setNetworkTimeMs(SystemClock.elapsedRealtime() - l2);
                this.parseAndDeliverNetworkError(request, var2_4);
            }
            catch (Exception var2_5) {
                VolleyLog.e(var2_5, "Unhandled exception %s", var2_5.toString());
                response = new VolleyError(var2_5);
                response.setNetworkTimeMs(SystemClock.elapsedRealtime() - l2);
                this.mDelivery.postError(request, (VolleyError)((Object)response));
                continue;
            }
            break;
        } while (true);
    }
}

