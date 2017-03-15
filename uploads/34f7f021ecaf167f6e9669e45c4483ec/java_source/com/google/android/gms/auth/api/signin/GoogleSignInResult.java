/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  com.google.android.gms.common.api.Result
 */
package com.google.android.gms.auth.api.signin;

import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import com.google.android.gms.auth.api.signin.GoogleSignInAccount;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;

public class GoogleSignInResult
implements Result {
    private Status hv;
    private GoogleSignInAccount jx;

    public GoogleSignInResult(@Nullable GoogleSignInAccount googleSignInAccount, @NonNull Status status) {
        this.jx = googleSignInAccount;
        this.hv = status;
    }

    @Nullable
    public GoogleSignInAccount getSignInAccount() {
        return this.jx;
    }

    @NonNull
    public Status getStatus() {
        return this.hv;
    }

    public boolean isSuccess() {
        return this.hv.isSuccess();
    }
}

