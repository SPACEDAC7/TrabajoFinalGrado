/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.content.Context
 *  com.google.gson.Gson
 *  okhttp3.OkHttpClient
 *  retrofit2.Converter
 *  retrofit2.Converter$Factory
 *  retrofit2.Retrofit$Builder
 *  retrofit2.converter.gson.GsonConverterFactory
 */
package com.buzzfeed.toolkit.networking.helpers;

import android.content.Context;
import com.buzzfeed.toolkit.content.WeaverItem;
import com.buzzfeed.toolkit.networking.Environment;
import com.buzzfeed.toolkit.networking.RetrofitClientBuilder;
import com.buzzfeed.toolkit.networking.helpers.BaseServiceHelper;
import com.buzzfeed.toolkit.util.retrofit.SafeCall;
import com.buzzfeed.toolkit.util.retrofit.SafeCallback;
import com.buzzfeed.toolkit.weaver.constant.WeaverConfig;
import com.buzzfeed.toolkit.weaver.model.WeaverResponse;
import com.google.gson.Gson;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import okhttp3.OkHttpClient;
import retrofit2.Call;
import retrofit2.Converter;
import retrofit2.Retrofit;
import retrofit2.converter.gson.GsonConverterFactory;
import retrofit2.http.GET;
import retrofit2.http.Path;
import retrofit2.http.QueryMap;

public class WeaverServiceHelper
extends BaseServiceHelper<WeaverService> {
    public WeaverServiceHelper(Context context, Environment environment) {
        super(context, environment);
    }

    @Override
    protected WeaverService createService(retrofit2.Retrofit retrofit) {
        return (WeaverService)retrofit.create(WeaverService.class);
    }

    public SafeCall<WeaverResponse> loadFeeds(String object, Map<String, String> map, SafeCallback<WeaverResponse> safeCallback) {
        object = new SafeCall<WeaverResponse>(((WeaverService)this.getService()).loadFeeds((String)object, map));
        object.safeEnqueue(safeCallback);
        return object;
    }

    public SafeCall<WeaverResponse> loadShowsList(Map<String, String> object, SafeCallback<WeaverResponse> safeCallback) {
        object = new SafeCall<WeaverResponse>(((WeaverService)this.getService()).loadShowsList((Map<String, String>)object));
        object.safeEnqueue(safeCallback);
        return object;
    }

    @Override
    protected retrofit2.Retrofit onCreateRetrofit(RetrofitClientBuilder retrofitClientBuilder) {
        return new /* Unavailable Anonymous Inner Class!! */.client(retrofitClientBuilder.buildClient()).baseUrl(WeaverConfig.WEAVER_URL).addConverterFactory((Converter.Factory)GsonConverterFactory.create((Gson)WeaverItem.getGson())).build();
    }

    public static final class QueryParamsBuilder {
        private static final String DEFAULT_CLIENT_TYPE = "android";
        private static final String KEY_CLIENT_ID = "client_id";
        private static final String KEY_CLIENT_TYPE = "client_type";
        private static final String KEY_COUNTRY = "country";
        private static final String KEY_LANGUAGE = "lang";
        private static final String KEY_NO_CACHE = "no_cache";
        private static final String KEY_PAGE = "page";
        private HashMap<String, String> mParamMap = new HashMap();

        public Map<String, String> build() {
            this.mParamMap.put("client_type", "android");
            return Collections.unmodifiableMap(this.mParamMap);
        }

        public QueryParamsBuilder clientId(String string2) {
            this.mParamMap.put("client_id", string2);
            return this;
        }

        public QueryParamsBuilder country(String string2) {
            this.mParamMap.put("country", string2);
            return this;
        }

        public QueryParamsBuilder language(String string2) {
            this.mParamMap.put("lang", string2);
            return this;
        }

        public QueryParamsBuilder noCache(boolean bl) {
            if (bl) {
                this.mParamMap.put("no_cache", String.valueOf(true));
            }
            return this;
        }

        public QueryParamsBuilder page(String string2) {
            this.mParamMap.put("page", string2);
            return this;
        }
    }

    static interface WeaverService {
        @GET(value="v1/feeds/{feed}")
        public Call<WeaverResponse> loadFeeds(@Path(value="feed") String var1, @QueryMap Map<String, String> var2);

        @GET(value="v1/lists/shows")
        public Call<WeaverResponse> loadShowsList(@QueryMap Map<String, String> var1);
    }

}

