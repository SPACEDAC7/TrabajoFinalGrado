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

class RequestProgress {
    private final Handler callbackHandler;
    private long lastReportedProgress;
    private long maxProgress;
    private long progress;
    private final GraphRequest request;
    private final long threshold;

    RequestProgress(Handler handler, GraphRequest graphRequest) {
        this.request = graphRequest;
        this.callbackHandler = handler;
        this.threshold = FacebookSdk.getOnProgressThreshold();
    }

    void addProgress(long l2) {
        this.progress += l2;
        if (this.progress >= this.lastReportedProgress + this.threshold || this.progress >= this.maxProgress) {
            this.reportProgress();
        }
    }

    void addToMax(long l2) {
        this.maxProgress += l2;
    }

    long getMaxProgress() {
        return this.maxProgress;
    }

    long getProgress() {
        return this.progress;
    }

    /*
     * Enabled aggressive block sorting
     */
    void reportProgress() {
        if (this.progress > this.lastReportedProgress) {
            GraphRequest.Callback callback = this.request.getCallback();
            if (this.maxProgress > 0 && callback instanceof GraphRequest.OnProgressCallback) {
                long l2 = this.progress;
                long l3 = this.maxProgress;
                callback = (GraphRequest.OnProgressCallback)callback;
                if (this.callbackHandler == null) {
                    callback.onProgress(l2, l3);
                } else {
                    this.callbackHandler.post(new Runnable((GraphRequest.OnProgressCallback)callback, l2, l3){
                        final /* synthetic */ GraphRequest.OnProgressCallback val$callbackCopy;
                        final /* synthetic */ long val$currentCopy;
                        final /* synthetic */ long val$maxProgressCopy;

                        @Override
                        public void run() {
                            this.val$callbackCopy.onProgress(this.val$currentCopy, this.val$maxProgressCopy);
                        }
                    });
                }
                this.lastReportedProgress = this.progress;
            }
        }
    }

}

