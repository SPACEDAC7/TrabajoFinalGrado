/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.util.Base64
 *  okhttp3.Interceptor
 *  okhttp3.Interceptor$Chain
 *  okhttp3.OkHttpClient
 *  okhttp3.OkHttpClient$Builder
 *  okhttp3.Request
 *  okhttp3.Request$Builder
 *  okhttp3.Response
 *  okhttp3.ResponseBody
 *  okhttp3.logging.HttpLoggingInterceptor
 *  retrofit2.Converter
 *  retrofit2.Converter$Factory
 *  retrofit2.Retrofit$Builder
 *  retrofit2.converter.gson.GsonConverterFactory
 */
package com.buzzfeed.toolkit.networking.urbanairship;

import android.util.Base64;
import com.buzzfeed.toolkit.networking.NetworkConfig;
import com.buzzfeed.toolkit.networking.urbanairship.UAPostNotificationBody;
import java.io.IOException;
import okhttp3.Interceptor;
import okhttp3.OkHttpClient;
import okhttp3.Request;
import okhttp3.Response;
import okhttp3.ResponseBody;
import okhttp3.logging.HttpLoggingInterceptor;
import retrofit2.Call;
import retrofit2.Callback;
import retrofit2.Converter;
import retrofit2.Retrofit;
import retrofit2.converter.gson.GsonConverterFactory;
import retrofit2.http.Body;
import retrofit2.http.Headers;
import retrofit2.http.POST;

public class UAApiHelper {
    private static final String BASE_URL = "https://go.urbanairship.com/";
    private static final String TAG = "UAApiHelper";
    private UAApiService mService;

    public UAApiHelper(String string2, String string3) {
        this.mService = this.createService(string2, string3);
    }

    private UAApiService createService(String string2, String string3) {
        string2 = new OkHttpClient.Builder().addInterceptor((Interceptor)new AuthInterceptor(string2, string3)).addInterceptor((Interceptor)NetworkConfig.getInstance().getHttpLoggingInterceptor()).build();
        return (UAApiService)new /* Unavailable Anonymous Inner Class!! */.baseUrl("https://go.urbanairship.com/").client((OkHttpClient)string2).addConverterFactory((Converter.Factory)GsonConverterFactory.create()).build().create(UAApiService.class);
    }

    public void postNotification(UAPostNotificationBody uAPostNotificationBody, Callback<ResponseBody> callback) {
        this.mService.postNotification(uAPostNotificationBody).enqueue(callback);
    }

    private class AuthInterceptor
    implements Interceptor {
        private String mPassword;
        private String mUser;

        AuthInterceptor(String string2, String string3) {
            this.mUser = string2;
            this.mPassword = string3;
        }

        private String encodeCredentialsForBasicAuthorization() {
            String string2 = this.mUser + ":" + this.mPassword;
            return "Basic " + Base64.encodeToString((byte[])string2.getBytes(), (int)2);
        }

        public Response intercept(Interceptor.Chain chain) throws IOException {
            return chain.proceed(chain.request().newBuilder().addHeader("Authorization", this.encodeCredentialsForBasicAuthorization()).build());
        }
    }

    private static interface UAApiService {
        @Headers(value={"Content-Type: application/json", "Accept: application/vnd.urbanairship+json; version=3"})
        @POST(value="/api/push")
        public Call<ResponseBody> postNotification(@Body UAPostNotificationBody var1);
    }

}

