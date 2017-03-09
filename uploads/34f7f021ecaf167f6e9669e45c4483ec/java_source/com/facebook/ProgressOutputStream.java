/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.os.Handler
 */
package com.facebook;

import android.os.Handler;
import com.facebook.FacebookSdk;
import com.facebook.GraphRequest;
import com.facebook.GraphRequestBatch;
import com.facebook.RequestOutputStream;
import com.facebook.RequestProgress;
import java.io.FilterOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

class ProgressOutputStream
extends FilterOutputStream
implements RequestOutputStream {
    private long batchProgress;
    private RequestProgress currentRequestProgress;
    private long lastReportedProgress;
    private long maxProgress;
    private final Map<GraphRequest, RequestProgress> progressMap;
    private final GraphRequestBatch requests;
    private final long threshold;

    ProgressOutputStream(OutputStream outputStream, GraphRequestBatch graphRequestBatch, Map<GraphRequest, RequestProgress> map, long l2) {
        super(outputStream);
        this.requests = graphRequestBatch;
        this.progressMap = map;
        this.maxProgress = l2;
        this.threshold = FacebookSdk.getOnProgressThreshold();
    }

    private void addProgress(long l2) {
        if (this.currentRequestProgress != null) {
            this.currentRequestProgress.addProgress(l2);
        }
        this.batchProgress += l2;
        if (this.batchProgress >= this.lastReportedProgress + this.threshold || this.batchProgress >= this.maxProgress) {
            this.reportBatchProgress();
        }
    }

    private void reportBatchProgress() {
        if (this.batchProgress > this.lastReportedProgress) {
            Iterator<GraphRequestBatch.Callback> iterator = this.requests.getCallbacks().iterator();
            while (iterator.hasNext()) {
                GraphRequestBatch.Callback callback = iterator.next();
                if (!(callback instanceof GraphRequestBatch.OnProgressCallback)) continue;
                Handler handler = this.requests.getCallbackHandler();
                callback = (GraphRequestBatch.OnProgressCallback)callback;
                if (handler == null) {
                    callback.onBatchProgress(this.requests, this.batchProgress, this.maxProgress);
                    continue;
                }
                handler.post(new Runnable((GraphRequestBatch.OnProgressCallback)callback){
                    final /* synthetic */ GraphRequestBatch.OnProgressCallback val$progressCallback;

                    @Override
                    public void run() {
                        this.val$progressCallback.onBatchProgress(ProgressOutputStream.this.requests, ProgressOutputStream.this.batchProgress, ProgressOutputStream.this.maxProgress);
                    }
                });
            }
            this.lastReportedProgress = this.batchProgress;
        }
    }

    @Override
    public void close() throws IOException {
        super.close();
        Iterator<RequestProgress> iterator = this.progressMap.values().iterator();
        while (iterator.hasNext()) {
            iterator.next().reportProgress();
        }
        this.reportBatchProgress();
    }

    long getBatchProgress() {
        return this.batchProgress;
    }

    long getMaxProgress() {
        return this.maxProgress;
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    public void setCurrentRequest(GraphRequest object) {
        object = object != null ? this.progressMap.get(object) : null;
        this.currentRequestProgress = object;
    }

    @Override
    public void write(int n2) throws IOException {
        this.out.write(n2);
        this.addProgress(1);
    }

    @Override
    public void write(byte[] arrby) throws IOException {
        this.out.write(arrby);
        this.addProgress(arrby.length);
    }

    @Override
    public void write(byte[] arrby, int n2, int n3) throws IOException {
        this.out.write(arrby, n2, n3);
        this.addProgress(n3);
    }

}

