/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.os.Handler
 *  retrofit2.Response
 */
package com.buzzfeed.toolkit.util.retrofit;

import android.os.Handler;
import android.support.annotation.CallSuper;
import com.buzzfeed.toolkit.util.retrofit.SafeCallback;
import retrofit2.Call;
import retrofit2.Callback;
import retrofit2.Response;

public abstract class RetryCallback<T>
extends SafeCallback<T> {
    private static final double RETRY_DELAY = 300.0;
    protected int mAttemptCount = 0;
    private Handler mHandler;
    protected int mRetryCount = 3;

    public RetryCallback(Handler handler) {
        this.mHandler = handler;
    }

    private void retry(Call<T> call) {
        call.clone().enqueue(this);
    }

    void handleRetry(final Call<T> call, Throwable throwable) {
        ++this.mAttemptCount;
        if (this.mAttemptCount <= this.mRetryCount) {
            int n2 = (int)(300.0 * Math.pow(2.0, Math.max(0, this.mAttemptCount - 1)));
            this.mHandler.postDelayed(new Runnable(){

                @Override
                public void run() {
                    RetryCallback.this.retry(call);
                }
            }, (long)n2);
            return;
        }
        this.onFailedAfterRetry(throwable);
    }

    public abstract void onFailedAfterRetry(Throwable var1);

    @CallSuper
    @Override
    public void onFailure(Call<T> call, Throwable throwable) {
        this.handleRetry(call, throwable);
    }

    @Override
    protected void onNetworkError(Call<T> call, Response<T> response) {
        this.handleRetry(call, new Exception("Network Error: " + response.code()));
    }

    @CallSuper
    @Override
    public void onResponse(Call<T> call, Response<T> response) {
        super.onResponse(call, response);
    }

    public void setRetryCount(int n2) {
        this.mRetryCount = n2;
    }

}

