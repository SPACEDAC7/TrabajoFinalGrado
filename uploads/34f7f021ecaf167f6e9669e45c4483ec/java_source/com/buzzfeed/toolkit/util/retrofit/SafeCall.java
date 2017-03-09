/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  okhttp3.Request
 *  retrofit2.Response
 */
package com.buzzfeed.toolkit.util.retrofit;

import android.support.annotation.NonNull;
import com.buzzfeed.toolkit.util.HttpErrorParser;
import com.buzzfeed.toolkit.util.HttpException;
import com.buzzfeed.toolkit.util.retrofit.SafeCallback;
import java.io.IOException;
import okhttp3.Request;
import retrofit2.Call;
import retrofit2.Callback;
import retrofit2.Response;

public final class SafeCall<T> {
    public static final String CANCELED = "Canceled";
    private final Call<T> mDelegate;

    public SafeCall(Call<T> call) {
        this.mDelegate = call;
    }

    private void enqueue(Callback<T> callback) {
        this.mDelegate.enqueue(callback);
    }

    public void cancel() {
        this.mDelegate.cancel();
    }

    public SafeCall<T> clone() {
        return new SafeCall<T>(this.mDelegate.clone());
    }

    public Response<T> execute() throws HttpException, IOException {
        Response<T> response = this.mDelegate.execute();
        if (response.isSuccessful()) {
            return response;
        }
        throw HttpErrorParser.createExceptionOnHttpError(response.code());
    }

    public boolean isCanceled() {
        return this.mDelegate.isCanceled();
    }

    public boolean isExecuted() {
        return this.mDelegate.isExecuted();
    }

    public Request request() {
        return this.mDelegate.request();
    }

    public void safeEnqueue(@NonNull SafeCallback<T> safeCallback) {
        this.enqueue(new InternalWrappedCallbacks<T>(safeCallback));
    }

    private static class InternalWrappedCallbacks<T>
    implements Callback<T> {
        private SafeCallback<T> mSafeCallback;

        InternalWrappedCallbacks(SafeCallback<T> safeCallback) {
            this.mSafeCallback = safeCallback;
        }

        private void clearCallbacks() {
            this.mSafeCallback = null;
        }

        /*
         * Enabled aggressive block sorting
         */
        @Override
        public void onFailure(Call<T> call, Throwable throwable) {
            if (call.isCanceled()) {
                this.mSafeCallback.onCallCanceled();
            } else {
                this.mSafeCallback.onFailure(call, throwable);
            }
            this.clearCallbacks();
        }

        @Override
        public void onResponse(Call<T> call, Response<T> response) {
            this.mSafeCallback.onResponse(call, response);
            this.clearCallbacks();
        }
    }

}

