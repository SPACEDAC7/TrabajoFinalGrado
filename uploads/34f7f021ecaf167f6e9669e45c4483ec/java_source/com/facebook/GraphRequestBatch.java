/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.os.Handler
 */
package com.facebook;

import android.os.Handler;
import com.facebook.GraphRequest;
import com.facebook.GraphRequestAsyncTask;
import com.facebook.GraphResponse;
import java.util.AbstractList;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.List;
import java.util.concurrent.atomic.AtomicInteger;

public class GraphRequestBatch
extends AbstractList<GraphRequest> {
    private static AtomicInteger idGenerator = new AtomicInteger();
    private String batchApplicationId;
    private Handler callbackHandler;
    private List<Callback> callbacks = new ArrayList<Callback>();
    private final String id = Integer.valueOf(idGenerator.incrementAndGet()).toString();
    private List<GraphRequest> requests = new ArrayList<GraphRequest>();
    private int timeoutInMilliseconds = 0;

    public GraphRequestBatch() {
        this.requests = new ArrayList<GraphRequest>();
    }

    public GraphRequestBatch(GraphRequestBatch graphRequestBatch) {
        this.requests = new ArrayList<GraphRequest>(graphRequestBatch);
        this.callbackHandler = graphRequestBatch.callbackHandler;
        this.timeoutInMilliseconds = graphRequestBatch.timeoutInMilliseconds;
        this.callbacks = new ArrayList<Callback>(graphRequestBatch.callbacks);
    }

    public GraphRequestBatch(Collection<GraphRequest> collection) {
        this.requests = new ArrayList<GraphRequest>(collection);
    }

    public /* varargs */ GraphRequestBatch(GraphRequest ... arrgraphRequest) {
        this.requests = Arrays.asList(arrgraphRequest);
    }

    @Override
    public final void add(int n2, GraphRequest graphRequest) {
        this.requests.add(n2, graphRequest);
    }

    @Override
    public final boolean add(GraphRequest graphRequest) {
        return this.requests.add(graphRequest);
    }

    public void addCallback(Callback callback) {
        if (!this.callbacks.contains(callback)) {
            this.callbacks.add(callback);
        }
    }

    @Override
    public final void clear() {
        this.requests.clear();
    }

    public final List<GraphResponse> executeAndWait() {
        return this.executeAndWaitImpl();
    }

    List<GraphResponse> executeAndWaitImpl() {
        return GraphRequest.executeBatchAndWait(this);
    }

    public final GraphRequestAsyncTask executeAsync() {
        return this.executeAsyncImpl();
    }

    GraphRequestAsyncTask executeAsyncImpl() {
        return GraphRequest.executeBatchAsync(this);
    }

    @Override
    public final GraphRequest get(int n2) {
        return this.requests.get(n2);
    }

    public final String getBatchApplicationId() {
        return this.batchApplicationId;
    }

    final Handler getCallbackHandler() {
        return this.callbackHandler;
    }

    final List<Callback> getCallbacks() {
        return this.callbacks;
    }

    final String getId() {
        return this.id;
    }

    final List<GraphRequest> getRequests() {
        return this.requests;
    }

    public int getTimeout() {
        return this.timeoutInMilliseconds;
    }

    @Override
    public final GraphRequest remove(int n2) {
        return this.requests.remove(n2);
    }

    public void removeCallback(Callback callback) {
        this.callbacks.remove(callback);
    }

    @Override
    public final GraphRequest set(int n2, GraphRequest graphRequest) {
        return this.requests.set(n2, graphRequest);
    }

    public final void setBatchApplicationId(String string2) {
        this.batchApplicationId = string2;
    }

    final void setCallbackHandler(Handler handler) {
        this.callbackHandler = handler;
    }

    public void setTimeout(int n2) {
        if (n2 < 0) {
            throw new IllegalArgumentException("Argument timeoutInMilliseconds must be >= 0.");
        }
        this.timeoutInMilliseconds = n2;
    }

    @Override
    public final int size() {
        return this.requests.size();
    }

    public static interface Callback {
        public void onBatchCompleted(GraphRequestBatch var1);
    }

    public static interface OnProgressCallback
    extends Callback {
        public void onBatchProgress(GraphRequestBatch var1, long var2, long var4);
    }

}

