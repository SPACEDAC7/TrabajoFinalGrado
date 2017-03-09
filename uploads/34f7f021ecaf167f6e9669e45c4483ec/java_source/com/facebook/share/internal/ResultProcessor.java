/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.os.Bundle
 */
package com.facebook.share.internal;

import android.os.Bundle;
import com.facebook.FacebookCallback;
import com.facebook.FacebookException;
import com.facebook.internal.AppCall;

public abstract class ResultProcessor {
    private FacebookCallback appCallback;

    public ResultProcessor(FacebookCallback facebookCallback) {
        this.appCallback = facebookCallback;
    }

    public void onCancel(AppCall appCall) {
        if (this.appCallback != null) {
            this.appCallback.onCancel();
        }
    }

    public void onError(AppCall appCall, FacebookException facebookException) {
        if (this.appCallback != null) {
            this.appCallback.onError(facebookException);
        }
    }

    public abstract void onSuccess(AppCall var1, Bundle var2);
}

