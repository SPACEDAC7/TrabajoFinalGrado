/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.os.Handler
 */
package com.facebook;

import android.os.Handler;
import com.facebook.GraphRequest;
import com.facebook.RequestOutputStream;
import com.facebook.RequestProgress;
import java.io.OutputStream;
import java.util.HashMap;
import java.util.Map;

class ProgressNoopOutputStream
extends OutputStream
implements RequestOutputStream {
    private int batchMax;
    private final Handler callbackHandler;
    private GraphRequest currentRequest;
    private RequestProgress currentRequestProgress;
    private final Map<GraphRequest, RequestProgress> progressMap = new HashMap<GraphRequest, RequestProgress>();

    ProgressNoopOutputStream(Handler handler) {
        this.callbackHandler = handler;
    }

    void addProgress(long l2) {
        if (this.currentRequestProgress == null) {
            this.currentRequestProgress = new RequestProgress(this.callbackHandler, this.currentRequest);
            this.progressMap.put(this.currentRequest, this.currentRequestProgress);
        }
        this.currentRequestProgress.addToMax(l2);
        this.batchMax = (int)((long)this.batchMax + l2);
    }

    int getMaxProgress() {
        return this.batchMax;
    }

    Map<GraphRequest, RequestProgress> getProgressMap() {
        return this.progressMap;
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    public void setCurrentRequest(GraphRequest object) {
        this.currentRequest = object;
        object = object != null ? this.progressMap.get(object) : null;
        this.currentRequestProgress = object;
    }

    @Override
    public void write(int n2) {
        this.addProgress(1);
    }

    @Override
    public void write(byte[] arrby) {
        this.addProgress(arrby.length);
    }

    @Override
    public void write(byte[] arrby, int n2, int n3) {
        this.addProgress(n3);
    }
}

