/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.content.Context
 *  okhttp3.ResponseBody
 */
package com.buzzfeed.toolkit.networking.helpers;

import android.content.Context;
import com.buzzfeed.toolkit.networking.Environment;
import com.buzzfeed.toolkit.networking.RetrofitClientBuilder;
import com.buzzfeed.toolkit.networking.RetrofitFactory;
import com.buzzfeed.toolkit.networking.helpers.BaseServiceHelper;
import com.buzzfeed.toolkit.util.retrofit.SafeCall;
import com.buzzfeed.toolkit.util.retrofit.SafeCallback;
import java.util.Map;
import okhttp3.ResponseBody;
import retrofit2.Call;
import retrofit2.Retrofit;
import retrofit2.http.GET;
import retrofit2.http.QueryMap;

public class LegacyMenuServiceHelper
extends BaseServiceHelper<MenuService> {
    public LegacyMenuServiceHelper(Context context, Environment environment) {
        super(context, environment);
    }

    @Override
    protected MenuService createService(Retrofit retrofit) {
        return (MenuService)retrofit.create(MenuService.class);
    }

    public SafeCall<ResponseBody> loadMenulist(Map<String, String> map, SafeCallback<ResponseBody> safeCallback) {
        return this.enqueueSafeRequest(((MenuService)this.getService()).loadMenulist(map), safeCallback);
    }

    @Override
    protected Retrofit onCreateRetrofit(RetrofitClientBuilder retrofitClientBuilder) {
        return RetrofitFactory.with(retrofitClientBuilder, this.mEnvironment.BASE_STATIC_URL);
    }

    static interface MenuService {
        @GET(value="static/mobile/js/feed.js")
        public Call<ResponseBody> loadMenulist(@QueryMap Map<String, String> var1);
    }

}

