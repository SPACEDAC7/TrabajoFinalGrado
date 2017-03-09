/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.content.Context
 *  okhttp3.ResponseBody
 */
package com.buzzfeed.toolkit.networking.helpers;

import android.content.Context;
import android.support.annotation.CallSuper;
import android.support.annotation.NonNull;
import com.buzzfeed.toolkit.networking.Environment;
import com.buzzfeed.toolkit.networking.RetrofitClientBuilder;
import com.buzzfeed.toolkit.networking.RetrofitFactory;
import com.buzzfeed.toolkit.util.retrofit.SafeCall;
import com.buzzfeed.toolkit.util.retrofit.SafeCallback;
import okhttp3.ResponseBody;
import retrofit2.Call;
import retrofit2.Retrofit;

public abstract class BaseServiceHelper<T> {
    static final String API_CLIENT = "api_client";
    static final String API_CLIENT_VALUE = "android";
    public static final String HEADER_CONTENT_TYPE_APPLICATION_JSON_CHARSET_UTF_8 = "Content-Type: application/json;charset=utf-8";
    public static final String KEY_CONTRIBUTION_JSON_ERROR = "error";
    public static final String KEY_CONTRIBUTION_JSON_SUCCESS = "success";
    public static final String USER_AGENT = "User-agent";
    private boolean isCached = true;
    private boolean isGzipped = false;
    protected Environment mEnvironment;
    private Retrofit mRetrofit;
    protected RetrofitClientBuilder mRetrofitClient;

    public BaseServiceHelper(Context context) {
        this(context, null);
    }

    public BaseServiceHelper(Context context, Environment environment) {
        this.mRetrofitClient = new RetrofitClientBuilder(context);
        this.mEnvironment = environment;
    }

    @NonNull
    protected SafeCall<ResponseBody> createSafeRequest(Call<ResponseBody> call) {
        return new SafeCall<ResponseBody>(call);
    }

    protected abstract T createService(Retrofit var1);

    @NonNull
    protected SafeCall<ResponseBody> enqueueSafeRequest(Call<ResponseBody> object, SafeCallback<ResponseBody> safeCallback) {
        object = new SafeCall<ResponseBody>((Call<ResponseBody>)object);
        object.safeEnqueue(safeCallback);
        return object;
    }

    @CallSuper
    @NonNull
    protected T getService() {
        if (this.mRetrofit != null) {
            return this.createService(this.mRetrofit);
        }
        if (!this.isCached) {
            this.mRetrofitClient.noCache();
        }
        if (this.isGzipped) {
            this.mRetrofitClient.gzip();
        }
        this.mRetrofit = this.onCreateRetrofit(this.mRetrofitClient);
        return this.createService(this.mRetrofit);
    }

    public final void gzip() {
        this.isGzipped = true;
    }

    public final void noCache() {
        this.isCached = false;
    }

    protected Retrofit onCreateRetrofit(RetrofitClientBuilder retrofitClientBuilder) {
        if (this.mEnvironment != null) {
            return RetrofitFactory.with(retrofitClientBuilder, this.mEnvironment.BASE_SERVICE_URL);
        }
        return RetrofitFactory.with(retrofitClientBuilder);
    }
}

