/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.content.Context
 *  okhttp3.ResponseBody
 */
package com.buzzfeed.toolkit.networking.helpers;

import android.content.Context;
import android.support.annotation.NonNull;
import com.buzzfeed.toolkit.networking.RetrofitClientBuilder;
import com.buzzfeed.toolkit.networking.helpers.BaseServiceHelper;
import com.buzzfeed.toolkit.util.retrofit.SafeCall;
import com.buzzfeed.toolkit.util.retrofit.SafeCallback;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import okhttp3.ResponseBody;
import retrofit2.Call;
import retrofit2.Retrofit;
import retrofit2.http.GET;
import retrofit2.http.QueryMap;
import retrofit2.http.Url;

public class AdServiceHelper
extends BaseServiceHelper<AdService> {
    public AdServiceHelper(Context context) {
        super(context);
        this.mRetrofitClient.useRandomUserAgent();
        this.noCache();
    }

    @NonNull
    @Override
    protected AdService createService(Retrofit retrofit) {
        return (AdService)retrofit.create(AdService.class);
    }

    public SafeCall<ResponseBody> loadAdUrl(@Url String string2, SafeCallback<ResponseBody> safeCallback) {
        return this.enqueueSafeRequest(((AdService)this.getService()).loadAdUrl(string2), safeCallback);
    }

    public SafeCall<ResponseBody> trackAdUrls(@Url String string2, @QueryMap Map<String, String> map, SafeCallback<ResponseBody> safeCallback) {
        return this.enqueueSafeRequest(((AdService)this.getService()).trackAdUrls(string2, map), safeCallback);
    }

    static interface AdService {
        @GET
        public Call<ResponseBody> loadAdUrl(@Url String var1);

        @GET
        public Call<ResponseBody> trackAdUrls(@Url String var1, @QueryMap Map<String, String> var2);
    }

    public static final class AdTrackParamsBuilder {
        private static final String REFERER = "Referer";
        private HashMap<String, String> mParamMap = new HashMap();

        public Map<String, String> build() {
            return Collections.unmodifiableMap(this.mParamMap);
        }

        public AdTrackParamsBuilder referer(String string2) {
            this.mParamMap.put("Referer", string2);
            return this;
        }
    }

}

