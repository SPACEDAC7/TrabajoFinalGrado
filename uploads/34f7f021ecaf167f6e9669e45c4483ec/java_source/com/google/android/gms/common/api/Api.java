/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  com.google.android.gms.common.api.Api$zza
 *  com.google.android.gms.common.api.Api$zzc
 *  com.google.android.gms.common.api.Api$zzd
 *  com.google.android.gms.common.api.Api$zze
 *  com.google.android.gms.common.api.Api$zzf
 *  com.google.android.gms.common.api.Api$zzh
 *  com.google.android.gms.common.api.Api$zzi
 *  com.google.android.gms.common.internal.zzaa
 */
package com.google.android.gms.common.api;

import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.internal.zzaa;

public final class Api<O extends ApiOptions> {
    private final String mName;
    private final zza<?, O> xk;
    private final zzh<?, O> xl;
    private final zzf<?> xm;
    private final zzi<?> xn;

    public <C extends zze> Api(String string2, zza<C, O> zza2, zzf<C> zzf2) {
        zzaa.zzb(zza2, (Object)"Cannot construct an Api with a null ClientBuilder");
        zzaa.zzb(zzf2, (Object)"Cannot construct an Api with a null ClientKey");
        this.mName = string2;
        this.xk = zza2;
        this.xl = null;
        this.xm = zzf2;
        this.xn = null;
    }

    public String getName() {
        return this.mName;
    }

    public zzd<?, O> zzaqs() {
        if (this.zzaqw()) {
            return null;
        }
        return this.xk;
    }

    /*
     * Enabled aggressive block sorting
     */
    public zza<?, O> zzaqt() {
        boolean bl = this.xk != null;
        zzaa.zza((boolean)bl, (Object)"This API was constructed with a SimpleClientBuilder. Use getSimpleClientBuilder");
        return this.xk;
    }

    public zzh<?, O> zzaqu() {
        zzaa.zza((boolean)false, (Object)"This API was constructed with a ClientBuilder. Use getClientBuilder");
        return null;
    }

    public zzc<?> zzaqv() {
        if (this.xm != null) {
            return this.xm;
        }
        throw new IllegalStateException("This API was constructed with null client keys. This should not be possible.");
    }

    public boolean zzaqw() {
        return false;
    }

    public static interface ApiOptions {

        public static interface HasOptions
        extends ApiOptions {
        }

        public static interface NotRequiredOptions
        extends ApiOptions {
        }

        public static interface Optional
        extends HasOptions,
        NotRequiredOptions {
        }

    }

}

