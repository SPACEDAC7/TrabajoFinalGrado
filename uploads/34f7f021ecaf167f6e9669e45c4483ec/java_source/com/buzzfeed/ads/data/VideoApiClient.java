/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.content.Context
 *  com.google.gson.Gson
 *  okhttp3.ResponseBody
 *  retrofit2.Response
 */
package com.buzzfeed.ads.data;

import android.content.Context;
import com.buzzfeed.ads.data.VideoResponse;
import com.buzzfeed.ads.data.VideoServiceHelper;
import com.buzzfeed.toolkit.util.HttpErrorParser;
import com.buzzfeed.toolkit.util.LogUtil;
import com.buzzfeed.toolkit.util.retrofit.SafeCall;
import com.buzzfeed.toolkit.util.retrofit.SafeCallback;
import com.buzzfeed.toolkit.util.retrofit.StringCallback;
import com.google.gson.Gson;
import okhttp3.ResponseBody;
import retrofit2.Call;
import retrofit2.Response;

public class VideoApiClient {
    private static final String PRODUCTION = "http://videoapp-api-ng.buzzfeed.com/v2/videos/";
    private static final String STAGE = "http://videoapp-api-stage.buzzfeed.com/v2/videos/";
    private static final String TAG = VideoApiClient.class.getSimpleName();

    public static void getVideo(ResponseListener object, Context object2, int n2) {
        object2 = new VideoServiceHelper((Context)object2);
        object = new StringCallback((ResponseListener)object){
            final /* synthetic */ ResponseListener val$listener;

            @Override
            public void onFailure(Call<ResponseBody> call, Throwable throwable) {
                LogUtil.e(TAG, throwable.getMessage());
            }

            @Override
            protected void onNetworkError(Call<ResponseBody> object, Response<ResponseBody> response) {
                object = HttpErrorParser.createExceptionOnHttpError(response.code());
                LogUtil.e(TAG, "Network Response Error: " + response.code(), (Throwable)object);
                this.val$listener.onErrorResponse(object.getMessage());
            }

            @Override
            public void onStringResponse(String string2) {
                VideoApiClient.parseResponse(this.val$listener, string2);
            }
        };
        object2.loadAdUrl("http://videoapp-api-ng.buzzfeed.com/v2/videos/" + n2, (SafeCallback<ResponseBody>)object);
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    static void parseResponse(ResponseListener responseListener, String object) {
        try {
            object = (VideoResponse)new Gson().fromJson((String)object, (Class)VideoResponse.class);
            if (object != null) {
                responseListener.onResponse((VideoResponse)object);
                return;
            }
            responseListener.onErrorResponse("Error parsing video response");
            return;
        }
        catch (Exception var1_2) {
            responseListener.onErrorResponse(var1_2.getMessage());
            return;
        }
    }

    public static interface ResponseListener {
        public void onErrorResponse(String var1);

        public void onResponse(VideoResponse var1);
    }

}

