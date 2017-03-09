/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.os.Handler
 *  android.os.Looper
 */
package com.android.volley;

import android.os.Handler;
import android.os.Looper;
import com.android.volley.Cache;
import com.android.volley.CacheDispatcher;
import com.android.volley.ExecutorDelivery;
import com.android.volley.Network;
import com.android.volley.NetworkDispatcher;
import com.android.volley.Request;
import com.android.volley.ResponseDelivery;
import com.android.volley.VolleyLog;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Queue;
import java.util.Set;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.PriorityBlockingQueue;
import java.util.concurrent.atomic.AtomicInteger;

public class RequestQueue {
    private static final int DEFAULT_NETWORK_THREAD_POOL_SIZE = 4;
    private final Cache mCache;
    private CacheDispatcher mCacheDispatcher;
    private final PriorityBlockingQueue<Request<?>> mCacheQueue = new PriorityBlockingQueue();
    private final Set<Request<?>> mCurrentRequests = new HashSet();
    private final ResponseDelivery mDelivery;
    private NetworkDispatcher[] mDispatchers;
    private List<RequestFinishedListener> mFinishedListeners = new ArrayList<RequestFinishedListener>();
    private final Network mNetwork;
    private final PriorityBlockingQueue<Request<?>> mNetworkQueue = new PriorityBlockingQueue();
    private AtomicInteger mSequenceGenerator = new AtomicInteger();
    private final Map<String, Queue<Request<?>>> mWaitingRequests = new HashMap();

    public RequestQueue(Cache cache, Network network) {
        this(cache, network, 4);
    }

    public RequestQueue(Cache cache, Network network, int n2) {
        this(cache, network, n2, new ExecutorDelivery(new Handler(Looper.getMainLooper())));
    }

    public RequestQueue(Cache cache, Network network, int n2, ResponseDelivery responseDelivery) {
        this.mCache = cache;
        this.mNetwork = network;
        this.mDispatchers = new NetworkDispatcher[n2];
        this.mDelivery = responseDelivery;
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    public <T> Request<T> add(Request<T> request) {
        request.setRequestQueue(this);
        Collection collection = this.mCurrentRequests;
        synchronized (collection) {
            this.mCurrentRequests.add(request);
        }
        request.setSequence(this.getSequenceNumber());
        request.addMarker("add-to-queue");
        if (!request.shouldCache()) {
            this.mNetworkQueue.add(request);
            return request;
        }
        Map map = this.mWaitingRequests;
        synchronized (map) {
            String string2 = request.getCacheKey();
            if (this.mWaitingRequests.containsKey(string2)) {
                Queue queue;
                collection = queue = this.mWaitingRequests.get(string2);
                if (queue == null) {
                    collection = new LinkedList();
                }
                collection.add(request);
                this.mWaitingRequests.put(string2, collection);
                if (VolleyLog.DEBUG) {
                    VolleyLog.v("Request for cacheKey=%s is in flight, putting on hold.", string2);
                }
            } else {
                this.mWaitingRequests.put(string2, null);
                this.mCacheQueue.add(request);
            }
            return request;
        }
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    public <T> void addRequestFinishedListener(RequestFinishedListener<T> requestFinishedListener) {
        List<RequestFinishedListener> list = this.mFinishedListeners;
        synchronized (list) {
            this.mFinishedListeners.add(requestFinishedListener);
            return;
        }
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    public void cancelAll(RequestFilter requestFilter) {
        Set set = this.mCurrentRequests;
        synchronized (set) {
            Iterator iterator = this.mCurrentRequests.iterator();
            while (iterator.hasNext()) {
                Request request = iterator.next();
                if (!requestFilter.apply(request)) continue;
                request.cancel();
            }
            return;
        }
    }

    public void cancelAll(final Object object) {
        if (object == null) {
            throw new IllegalArgumentException("Cannot cancelAll with a null tag");
        }
        this.cancelAll(new RequestFilter(){

            @Override
            public boolean apply(Request<?> request) {
                if (request.getTag() == object) {
                    return true;
                }
                return false;
            }
        });
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     * Converted monitor instructions to comments
     * Lifted jumps to return sites
     */
    <T> void finish(Request<T> object) {
        Object object2 = this.mCurrentRequests;
        // MONITORENTER : object2
        this.mCurrentRequests.remove(object);
        // MONITOREXIT : object2
        object2 = this.mFinishedListeners;
        // MONITORENTER : object2
        Object object3 = this.mFinishedListeners.iterator();
        while (object3.hasNext()) {
            object3.next().onRequestFinished(object);
        }
        // MONITOREXIT : object2
        if (!object.shouldCache()) return;
        object2 = this.mWaitingRequests;
        // MONITORENTER : object2
        object = object.getCacheKey();
        object3 = this.mWaitingRequests.remove(object);
        if (object3 != null) {
            if (VolleyLog.DEBUG) {
                VolleyLog.v("Releasing %d waiting requests for cacheKey=%s.", object3.size(), object);
            }
            this.mCacheQueue.addAll(object3);
        }
        // MONITOREXIT : object2
    }

    public Cache getCache() {
        return this.mCache;
    }

    public int getSequenceNumber() {
        return this.mSequenceGenerator.incrementAndGet();
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    public <T> void removeRequestFinishedListener(RequestFinishedListener<T> requestFinishedListener) {
        List<RequestFinishedListener> list = this.mFinishedListeners;
        synchronized (list) {
            this.mFinishedListeners.remove(requestFinishedListener);
            return;
        }
    }

    public void start() {
        this.stop();
        this.mCacheDispatcher = new CacheDispatcher(this.mCacheQueue, this.mNetworkQueue, this.mCache, this.mDelivery);
        this.mCacheDispatcher.start();
        for (int i2 = 0; i2 < this.mDispatchers.length; ++i2) {
            NetworkDispatcher networkDispatcher;
            this.mDispatchers[i2] = networkDispatcher = new NetworkDispatcher(this.mNetworkQueue, this.mNetwork, this.mCache, this.mDelivery);
            networkDispatcher.start();
        }
    }

    public void stop() {
        if (this.mCacheDispatcher != null) {
            this.mCacheDispatcher.quit();
        }
        for (int i2 = 0; i2 < this.mDispatchers.length; ++i2) {
            if (this.mDispatchers[i2] == null) continue;
            this.mDispatchers[i2].quit();
        }
    }

    public static interface RequestFilter {
        public boolean apply(Request<?> var1);
    }

    public static interface RequestFinishedListener<T> {
        public void onRequestFinished(Request<T> var1);
    }

}

