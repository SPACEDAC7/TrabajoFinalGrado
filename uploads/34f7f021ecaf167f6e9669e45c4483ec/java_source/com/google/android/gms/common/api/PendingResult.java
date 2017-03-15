/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  com.google.android.gms.common.api.PendingResult$zza
 *  com.google.android.gms.common.api.Result
 *  com.google.android.gms.common.api.ResultCallback
 *  com.google.android.gms.common.api.ResultTransform
 *  com.google.android.gms.common.api.TransformedResult
 */
package com.google.android.gms.common.api;

import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.ResultCallback;
import com.google.android.gms.common.api.ResultTransform;
import com.google.android.gms.common.api.TransformedResult;
import java.util.concurrent.TimeUnit;

public abstract class PendingResult<R extends Result> {
    @NonNull
    public abstract R await();

    @NonNull
    public abstract R await(long var1, @NonNull TimeUnit var3);

    public abstract void cancel();

    public abstract boolean isCanceled();

    public abstract void setResultCallback(@NonNull ResultCallback<? super R> var1);

    public abstract void setResultCallback(@NonNull ResultCallback<? super R> var1, long var2, @NonNull TimeUnit var4);

    @NonNull
    public <S extends Result> TransformedResult<S> then(@NonNull ResultTransform<? super R, ? extends S> resultTransform) {
        throw new UnsupportedOperationException();
    }

    public void zza(@NonNull zza zza2) {
        throw new UnsupportedOperationException();
    }

    @Nullable
    public Integer zzarh() {
        throw new UnsupportedOperationException();
    }
}

