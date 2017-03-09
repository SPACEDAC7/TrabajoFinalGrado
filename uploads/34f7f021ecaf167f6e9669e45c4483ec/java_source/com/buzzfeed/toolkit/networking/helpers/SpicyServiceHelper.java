/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.content.Context
 *  okhttp3.Interceptor
 *  okhttp3.ResponseBody
 */
package com.buzzfeed.toolkit.networking.helpers;

import android.content.Context;
import com.buzzfeed.toolkit.networking.RetrofitClientBuilder;
import com.buzzfeed.toolkit.networking.helpers.BaseServiceHelper;
import com.buzzfeed.toolkit.util.DynamicHeaderInterceptor;
import com.buzzfeed.toolkit.util.retrofit.SafeCall;
import com.buzzfeed.toolkit.util.retrofit.SafeCallback;
import okhttp3.Interceptor;
import okhttp3.ResponseBody;
import retrofit2.Call;
import retrofit2.Retrofit;
import retrofit2.http.GET;
import retrofit2.http.Headers;
import retrofit2.http.Url;

public class SpicyServiceHelper
extends BaseServiceHelper<SpicyService> {
    public SpicyServiceHelper(Context context) {
        super(context);
    }

    public SpicyServiceHelper(Context object, String string2) {
        super((Context)object);
        object = new DynamicHeaderInterceptor();
        object.addHeader("User-agent", string2);
        this.mRetrofitClient.addInterceptor((Interceptor)object);
    }

    @Override
    protected SpicyService createService(Retrofit retrofit) {
        return (SpicyService)retrofit.create(SpicyService.class);
    }

    public SafeCall<ResponseBody> getSpiceContentById(@Url String string2, SafeCallback<ResponseBody> safeCallback) {
        return this.enqueueSafeRequest(((SpicyService)this.getService()).getSpiceContentById(string2), safeCallback);
    }

    public SafeCall<ResponseBody> getSpiceContentByUrl(@Url String string2, SafeCallback<ResponseBody> safeCallback) {
        return this.enqueueSafeRequest(((SpicyService)this.getService()).getSpiceContentByUrl(string2), safeCallback);
    }

    public SafeCall<ResponseBody> getWebResourceResponseFromCache(@Url String string2) {
        return this.createSafeRequest(((SpicyService)this.getService()).getWebResourceResponseFromCache(string2));
    }

    public static interface SpicyService {
        @GET
        @Headers(value={"Content-Type: application/json;charset=utf-8"})
        public Call<ResponseBody> getSpiceContentById(@Url String var1);

        @GET
        @Headers(value={"Content-Type: application/json;charset=utf-8"})
        public Call<ResponseBody> getSpiceContentByUrl(@Url String var1);

        @GET
        public Call<ResponseBody> getWebResourceResponseFromCache(@Url String var1);
    }

}

