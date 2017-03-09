/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.content.Context
 *  android.content.res.Configuration
 *  android.content.res.Resources
 *  okhttp3.Cache
 *  okhttp3.HttpUrl
 *  okhttp3.HttpUrl$Builder
 *  okhttp3.Interceptor
 *  okhttp3.Interceptor$Chain
 *  okhttp3.OkHttpClient
 *  okhttp3.OkHttpClient$Builder
 *  okhttp3.Request
 *  okhttp3.Request$Builder
 *  okhttp3.Response
 *  okhttp3.Response$Builder
 *  okhttp3.logging.HttpLoggingInterceptor
 */
package com.buzzfeed.toolkit.networking;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.support.annotation.NonNull;
import com.buzzfeed.toolkit.networking.NetworkConfig;
import com.buzzfeed.toolkit.util.DynamicHeaderInterceptor;
import com.buzzfeed.toolkit.util.GzipRequestInterceptor;
import com.buzzfeed.toolkit.util.LogUtil;
import com.buzzfeed.toolkit.util.NetworkUtil;
import com.buzzfeed.toolkit.util.RandomUserAgentInterceptor;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.List;
import java.util.Locale;
import java.util.Set;
import java.util.concurrent.TimeUnit;
import okhttp3.Cache;
import okhttp3.HttpUrl;
import okhttp3.Interceptor;
import okhttp3.OkHttpClient;
import okhttp3.Request;
import okhttp3.Response;
import okhttp3.logging.HttpLoggingInterceptor;

public class RetrofitClientBuilder {
    private static final String ACCEPT_LANGUAGE = "Accept-Language";
    private static final long CONNECT_TIMEOUT = 10;
    private static final String HEADER_CACHE_CONTROL = "Cache-Control";
    private static final int MAX_CACHE_SIZE = 10485760;
    private static final int MAX_OFFLINE_CACHE_EXPIRATION_TIME = 604800;
    private static final int MAX_ONLINE_CACHE_EXPIRATION_TIME = 300;
    private static final String PRAGMA = "Pragma";
    private static final long READ_TIMEOUT = 30;
    private static final String TAG = RetrofitClientBuilder.class.getSimpleName();
    private static final String UNSATISFIABLE_REQUEST_ONLY_IF_CACHED = "Unsatisfiable Request (only-if-cached)";
    private static final String USER_AGENT = "User-Agent";
    private boolean isCached = true;
    private boolean isGzipped = false;
    private Context mContext;
    private OkHttpClient mHttpClient;
    private List<Interceptor> mInterceptors = null;
    private boolean usesRandomAgent = false;

    public RetrofitClientBuilder(Context context) {
        this.mContext = context.getApplicationContext();
    }

    private void addCacheInterceptor(OkHttpClient.Builder builder) {
        builder.cache(this.getCache()).addInterceptor(this.provideOfflineCacheInterceptor()).addInterceptor(this.provideOnlineCacheInterceptor()).addNetworkInterceptor(this.provideCacheNetworkInterceptor());
    }

    private void addGzipInterceptor(OkHttpClient.Builder builder) {
        builder.addInterceptor((Interceptor)new GzipRequestInterceptor());
    }

    private void addInterceptors(OkHttpClient.Builder builder) {
        for (int i2 = 0; i2 < this.mInterceptors.size(); ++i2) {
            builder.addInterceptor(this.mInterceptors.get(i2));
        }
    }

    private Interceptor addLanguageHeader() {
        DynamicHeaderInterceptor dynamicHeaderInterceptor = new DynamicHeaderInterceptor();
        dynamicHeaderInterceptor.addHeader("Accept-Language", this.getPreferredLanguage());
        return dynamicHeaderInterceptor;
    }

    private Request createCacheOnServerResponseRequest(Request request) {
        return request.newBuilder().removeHeader("Cache-Control").header("Cache-Control", "public, max-age=300").build();
    }

    private boolean isCacheMiss(Response object) {
        int n2 = object.code();
        object = object.message();
        if (n2 == 504 && object != null && object.equals("Unsatisfiable Request (only-if-cached)")) {
            return true;
        }
        return false;
    }

    @NonNull
    private Interceptor provideCacheNetworkInterceptor() {
        return new Interceptor(){

            public Response intercept(Interceptor.Chain chain) throws IOException {
                chain = chain.proceed(chain.request());
                LogUtil.d(TAG, "Cache save url = " + (Object)chain.request().url());
                if (chain.code() == 304) {
                    LogUtil.d(TAG, "Server Response not modified, cache response used");
                }
                return chain.newBuilder().removeHeader("Pragma").removeHeader("Cache-Control").header("Cache-Control", "public, max-age=300").build();
            }
        };
    }

    @NonNull
    private Interceptor provideOfflineCacheInterceptor() {
        return new Interceptor(){

            public Response intercept(Interceptor.Chain chain) throws IOException {
                Request request = chain.request();
                Request.Builder builder = request.newBuilder();
                RetrofitClientBuilder.this.sortParamsForCachingSupport(request, builder);
                if (!RetrofitClientBuilder.this.isConnectedToNetwork()) {
                    request = builder.header("Cache-Control", "public, only-if-cached, max-stale=604800").build();
                }
                return chain.proceed(request);
            }
        };
    }

    @NonNull
    private Interceptor provideOnlineCacheInterceptor() {
        return new Interceptor(){

            public Response intercept(Interceptor.Chain chain) throws IOException {
                Request request = chain.request();
                Request.Builder builder = request.newBuilder();
                RetrofitClientBuilder.this.sortParamsForCachingSupport(request, builder);
                if (RetrofitClientBuilder.this.isConnectedToNetwork()) {
                    builder = builder.header("Cache-Control", "public, only-if-cached, max-stale=300").build();
                    LogUtil.d(TAG, "Cache look-up url = " + (Object)builder.url());
                    Response response = chain.proceed((Request)builder);
                    boolean bl = RetrofitClientBuilder.this.isCacheMiss(response);
                    LogUtil.d(TAG, "Response is not Cached or Expired = " + bl);
                    builder = response;
                    if (!response.isSuccessful()) {
                        builder = response;
                        if (bl) {
                            builder = request.url().newBuilder().removeAllQueryParameters("no_cache").build();
                            builder = request.newBuilder().url((HttpUrl)builder).build();
                            builder = chain.proceed(RetrofitClientBuilder.this.createCacheOnServerResponseRequest((Request)builder));
                        }
                    }
                    return builder;
                }
                return chain.proceed(builder.build());
            }
        };
    }

    private void setDefaultUserAgent(OkHttpClient.Builder builder) {
        DynamicHeaderInterceptor dynamicHeaderInterceptor = new DynamicHeaderInterceptor();
        dynamicHeaderInterceptor.addHeader("User-Agent", this.getDefaultUserAgent());
        builder.addInterceptor((Interceptor)dynamicHeaderInterceptor);
    }

    private void setNetworkTimeout(OkHttpClient.Builder builder) {
        builder.readTimeout(30, TimeUnit.SECONDS).connectTimeout(10, TimeUnit.SECONDS);
    }

    private void setRandomUserAgent(OkHttpClient.Builder builder) {
        builder.addInterceptor((Interceptor)new RandomUserAgentInterceptor());
    }

    private void setUserAgentHeader(OkHttpClient.Builder builder) {
        if (this.usesRandomAgent) {
            this.setRandomUserAgent(builder);
            return;
        }
        this.setDefaultUserAgent(builder);
    }

    private void sortParamsForCachingSupport(Request request, Request.Builder builder) {
        if (request.method().equals("GET")) {
            this.sortQueryParams(request, builder);
        }
    }

    private void sortQueryParams(Request request, Request.Builder builder) {
        if ((request = request.url()).querySize() == 0) {
            return;
        }
        ArrayList arrayList = new ArrayList(request.queryParameterNames());
        Collections.sort(arrayList);
        HttpUrl.Builder builder2 = request.newBuilder();
        for (int i2 = 0; i2 < arrayList.size(); ++i2) {
            String string2 = (String)arrayList.get(i2);
            builder2.removeAllQueryParameters(string2);
            builder2.addQueryParameter(string2, request.queryParameter(string2));
        }
        builder.url(builder2.build());
    }

    public RetrofitClientBuilder addInterceptor(Interceptor interceptor) {
        if (this.mInterceptors == null) {
            this.mInterceptors = new ArrayList<Interceptor>();
        }
        this.mInterceptors.add(interceptor);
        return this;
    }

    public OkHttpClient buildClient() {
        OkHttpClient.Builder builder = new OkHttpClient.Builder().addInterceptor(this.addLanguageHeader()).addInterceptor((Interceptor)NetworkConfig.getInstance().getHttpLoggingInterceptor());
        if (this.isGzipped) {
            this.addGzipInterceptor(builder);
        }
        if (this.isCached) {
            this.addCacheInterceptor(builder);
        }
        if (this.hasInterceptors()) {
            this.addInterceptors(builder);
        }
        this.setUserAgentHeader(builder);
        this.setNetworkTimeout(builder);
        this.mHttpClient = builder.build();
        return this.mHttpClient;
    }

    @NonNull
    Cache getCache() {
        return new Cache(this.mContext.getCacheDir(), 0xA00000);
    }

    protected String getDefaultUserAgent() {
        return NetworkUtil.getDefaultUserAgent(this.mContext);
    }

    protected String getPreferredLanguage() {
        return this.mContext.getResources().getConfiguration().locale.getLanguage();
    }

    public RetrofitClientBuilder gzip() {
        this.isGzipped = true;
        return this;
    }

    protected boolean hasInterceptors() {
        if (this.mInterceptors != null && !this.mInterceptors.isEmpty()) {
            return true;
        }
        return false;
    }

    boolean isConnectedToNetwork() {
        return NetworkUtil.isConnectedToNetwork(this.mContext);
    }

    public RetrofitClientBuilder noCache() {
        this.isCached = false;
        return this;
    }

    public void useRandomUserAgent() {
        this.usesRandomAgent = true;
    }

}

