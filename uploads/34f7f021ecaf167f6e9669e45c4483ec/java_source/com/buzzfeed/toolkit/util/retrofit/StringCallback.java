/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  okhttp3.ResponseBody
 *  retrofit2.Response
 */
package com.buzzfeed.toolkit.util.retrofit;

import com.buzzfeed.toolkit.util.retrofit.SafeCallback;
import java.io.IOException;
import okhttp3.ResponseBody;
import retrofit2.Call;
import retrofit2.Response;

public abstract class StringCallback
extends SafeCallback<ResponseBody> {
    @Override
    protected void onSafeResponse(Call<ResponseBody> call, Response<ResponseBody> response) {
        try {
            this.onStringResponse(((ResponseBody)response.body()).string());
            return;
        }
        catch (IOException var2_3) {
            this.onFailure(call, var2_3);
            return;
        }
    }

    protected abstract void onStringResponse(String var1);
}

