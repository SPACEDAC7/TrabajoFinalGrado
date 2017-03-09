/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.text.TextUtils
 *  okhttp3.OkHttpClient
 *  retrofit2.Converter
 *  retrofit2.Converter$Factory
 *  retrofit2.Retrofit$Builder
 *  retrofit2.converter.gson.GsonConverterFactory
 */
package com.buzzfeed.toolkit.networking;

import android.support.annotation.Nullable;
import android.text.TextUtils;
import com.buzzfeed.toolkit.networking.RetrofitClientBuilder;
import okhttp3.OkHttpClient;
import retrofit2.Converter;
import retrofit2.Retrofit;
import retrofit2.converter.gson.GsonConverterFactory;

public class RetrofitFactory {
    public static final String BUZZFEED_DOMAIN = "https://buzzfeed.com/";
    protected static Retrofit builder = new /* Unavailable Anonymous Inner Class!! */.addConverterFactory((Converter.Factory)GsonConverterFactory.create()).baseUrl("https://buzzfeed.com/");

    public static retrofit2.Retrofit with(RetrofitClientBuilder retrofitClientBuilder) {
        return RetrofitFactory.with(retrofitClientBuilder, null);
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    public static retrofit2.Retrofit with(RetrofitClientBuilder retrofitClientBuilder, @Nullable String string2) {
        retrofitClientBuilder = builder.client(retrofitClientBuilder.buildClient());
        if (!TextUtils.isEmpty((CharSequence)string2)) {
            do {
                return retrofitClientBuilder.baseUrl(string2).build();
                break;
            } while (true);
        }
        string2 = "https://buzzfeed.com/";
        return retrofitClientBuilder.baseUrl(string2).build();
    }
}

