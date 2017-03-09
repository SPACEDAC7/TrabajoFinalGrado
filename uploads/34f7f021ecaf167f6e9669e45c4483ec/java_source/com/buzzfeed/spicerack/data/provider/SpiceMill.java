/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.content.Context
 *  okhttp3.ResponseBody
 *  retrofit2.Response
 */
package com.buzzfeed.spicerack.data.provider;

import android.content.Context;
import com.buzzfeed.spicerack.data.constant.Environment;
import com.buzzfeed.spicerack.data.model.subbuzz.SpiceItem;
import com.buzzfeed.toolkit.networking.helpers.SpicyServiceHelper;
import com.buzzfeed.toolkit.util.HttpErrorParser;
import com.buzzfeed.toolkit.util.LogUtil;
import com.buzzfeed.toolkit.util.retrofit.SafeCall;
import com.buzzfeed.toolkit.util.retrofit.SafeCallback;
import com.buzzfeed.toolkit.util.retrofit.StringCallback;
import okhttp3.ResponseBody;
import retrofit2.Call;
import retrofit2.Response;

public class SpiceMill {
    private static final String TAG = SpiceMill.class.getSimpleName();
    private final Context mContext;
    private SafeCall<ResponseBody> mSpicesRequest;
    private final SpicyServiceHelper mSpicyServiceHelper;

    public SpiceMill(Context context) {
        this.mContext = context;
        this.mSpicyServiceHelper = new SpicyServiceHelper(context, Environment.getBFUserAgent());
    }

    private void executeRequest(String string2, final SpiceMillListener spiceMillListener) {
        if (this.mSpicesRequest == null) {
            this.mSpicesRequest = this.mSpicyServiceHelper.getSpiceContentByUrl(string2, new StringCallback(){

                @Override
                protected void onCallCanceled() {
                    super.onCallCanceled();
                    LogUtil.d(TAG, "Network Request Canceled");
                    SpiceMill.this.mSpicesRequest = null;
                }

                @Override
                public void onFailure(Call<ResponseBody> call, Throwable throwable) {
                    LogUtil.e(TAG, "Network Request Failure", throwable);
                    spiceMillListener.onError();
                    SpiceMill.this.mSpicesRequest = null;
                }

                @Override
                protected void onNetworkError(Call<ResponseBody> object, Response<ResponseBody> response) {
                    object = HttpErrorParser.createExceptionOnHttpError(response.code());
                    LogUtil.e(TAG, "Network Error: ", (Throwable)object);
                    spiceMillListener.onError();
                    SpiceMill.this.mSpicesRequest = null;
                }

                @Override
                public void onStringResponse(String object) {
                    object = SpiceItem.fromJson((String)object);
                    spiceMillListener.onSuccess((SpiceItem)object);
                    SpiceMill.this.mSpicesRequest = null;
                }
            });
        }
    }

    public void cancelRequests() {
        if (this.mSpicesRequest != null) {
            this.mSpicesRequest.cancel();
        }
    }

    public Context getContext() {
        return this.mContext;
    }

    public void getSpicesById(String string2, final SpiceMillListener spiceMillListener) {
        if (this.mSpicesRequest == null) {
            this.mSpicesRequest = this.mSpicyServiceHelper.getSpiceContentById(Environment.getSpiceUrl(string2), new StringCallback(){

                @Override
                protected void onCallCanceled() {
                    super.onCallCanceled();
                    LogUtil.d(TAG, "Network Request Canceled");
                    SpiceMill.this.mSpicesRequest = null;
                }

                @Override
                public void onFailure(Call<ResponseBody> call, Throwable throwable) {
                    spiceMillListener.onError();
                    SpiceMill.this.mSpicesRequest = null;
                }

                @Override
                protected void onNetworkError(Call<ResponseBody> object, Response<ResponseBody> response) {
                    object = HttpErrorParser.createExceptionOnHttpError(response.code());
                    LogUtil.e(TAG, "Network Error: ", (Throwable)object);
                    spiceMillListener.onError();
                    SpiceMill.this.mSpicesRequest = null;
                }

                @Override
                public void onStringResponse(String object) {
                    object = SpiceItem.fromJson((String)object);
                    spiceMillListener.onSuccess((SpiceItem)object);
                    SpiceMill.this.mSpicesRequest = null;
                }
            });
        }
    }

    public void getSpicesByUrl(String string2, SpiceMillListener spiceMillListener) {
        this.executeRequest(Environment.getSpiceUrlFromUrl(string2), spiceMillListener);
    }

    public static interface SpiceMillListener {
        public void onError();

        public void onSuccess(SpiceItem var1);
    }

}

