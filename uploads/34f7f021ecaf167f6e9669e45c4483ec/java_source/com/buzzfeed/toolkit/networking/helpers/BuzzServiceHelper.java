/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.content.Context
 *  okhttp3.ResponseBody
 */
package com.buzzfeed.toolkit.networking.helpers;

import android.content.Context;
import com.buzzfeed.toolkit.networking.helpers.BaseServiceHelper;
import com.buzzfeed.toolkit.util.retrofit.SafeCall;
import com.buzzfeed.toolkit.util.retrofit.SafeCallback;
import okhttp3.ResponseBody;
import retrofit2.Call;
import retrofit2.Retrofit;
import retrofit2.http.FormUrlEncoded;
import retrofit2.http.POST;
import retrofit2.http.Url;

public class BuzzServiceHelper
extends BaseServiceHelper<BuzzService> {
    public BuzzServiceHelper(Context context) {
        super(context);
    }

    @Override
    protected BuzzService createService(Retrofit retrofit) {
        return (BuzzService)retrofit.create(BuzzService.class);
    }

    public SafeCall<ResponseBody> getBuzzWithUrl(@Url String string2, SafeCallback<ResponseBody> safeCallback) {
        return this.enqueueSafeRequest(((BuzzService)this.getService()).getBuzzWithUrl(string2), safeCallback);
    }

    public static interface BuzzService {
        @FormUrlEncoded
        @POST
        public Call<ResponseBody> getBuzzWithUrl(@Url String var1);
    }

}

