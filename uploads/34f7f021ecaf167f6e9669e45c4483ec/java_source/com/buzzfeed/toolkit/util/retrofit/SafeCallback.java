/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  retrofit2.Response
 */
package com.buzzfeed.toolkit.util.retrofit;

import android.support.annotation.CallSuper;
import retrofit2.Call;
import retrofit2.Callback;
import retrofit2.Response;

public abstract class SafeCallback<T>
implements Callback<T> {
    protected void onCallCanceled() {
    }

    protected abstract void onNetworkError(Call<T> var1, Response<T> var2);

    @CallSuper
    @Override
    public void onResponse(Call<T> call, Response<T> response) {
        if (!response.isSuccessful()) {
            this.onNetworkError(call, response);
            return;
        }
        this.onSafeResponse(call, response);
    }

    protected abstract void onSafeResponse(Call<T> var1, Response<T> var2);
}

