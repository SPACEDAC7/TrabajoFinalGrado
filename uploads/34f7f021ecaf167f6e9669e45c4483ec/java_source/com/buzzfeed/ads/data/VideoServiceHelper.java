/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.content.Context
 *  okhttp3.ResponseBody
 */
package com.buzzfeed.ads.data;

import android.content.Context;
import android.support.annotation.NonNull;
import com.buzzfeed.toolkit.networking.helpers.BaseServiceHelper;
import com.buzzfeed.toolkit.util.retrofit.SafeCall;
import com.buzzfeed.toolkit.util.retrofit.SafeCallback;
import okhttp3.ResponseBody;
import retrofit2.Call;
import retrofit2.Retrofit;
import retrofit2.http.GET;
import retrofit2.http.Url;

public class VideoServiceHelper
extends BaseServiceHelper<AdService> {
    public VideoServiceHelper(Context context) {
        super(context);
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

    public static interface AdService {
        @GET
        public Call<ResponseBody> loadAdUrl(@Url String var1);
    }

}

