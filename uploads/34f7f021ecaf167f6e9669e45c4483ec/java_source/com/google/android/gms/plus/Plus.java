/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  com.google.android.gms.common.api.Api$zza
 *  com.google.android.gms.common.api.Api$zzb
 *  com.google.android.gms.common.api.Api$zze
 *  com.google.android.gms.common.api.Api$zzf
 *  com.google.android.gms.common.api.Result
 *  com.google.android.gms.common.internal.zzaa
 *  com.google.android.gms.internal.zzqo
 *  com.google.android.gms.internal.zzqo$zza
 *  com.google.android.gms.internal.zzwu
 *  com.google.android.gms.internal.zzwv
 *  com.google.android.gms.internal.zzww
 *  com.google.android.gms.internal.zzwx
 *  com.google.android.gms.plus.Account
 *  com.google.android.gms.plus.People
 *  com.google.android.gms.plus.Plus$1
 *  com.google.android.gms.plus.Plus$PlusOptions
 *  com.google.android.gms.plus.internal.zze
 *  com.google.android.gms.plus.zza
 *  com.google.android.gms.plus.zzb
 */
package com.google.android.gms.plus;

import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.internal.zzaa;
import com.google.android.gms.internal.zzqo;
import com.google.android.gms.internal.zzwu;
import com.google.android.gms.internal.zzwv;
import com.google.android.gms.internal.zzww;
import com.google.android.gms.internal.zzwx;
import com.google.android.gms.plus.Account;
import com.google.android.gms.plus.People;
import com.google.android.gms.plus.Plus;
import com.google.android.gms.plus.internal.zze;
import com.google.android.gms.plus.zza;
import com.google.android.gms.plus.zzb;

@Deprecated
public final class Plus {
    @Deprecated
    public static final Api<> API;
    @Deprecated
    public static final Account AccountApi;
    @Deprecated
    public static final People PeopleApi;
    public static final Scope SCOPE_PLUS_LOGIN;
    public static final Scope SCOPE_PLUS_PROFILE;
    @Deprecated
    public static final zzb aAJ;
    public static final zza aAK;
    public static final Api.zzf<zze> hg;
    static final Api.zza<zze, > hh;

    static {
        hg = new Api.zzf();
        hh = new 1();
        API = new Api<>("Plus.API", hh, hg);
        SCOPE_PLUS_LOGIN = new Scope("https://www.googleapis.com/auth/plus.login");
        SCOPE_PLUS_PROFILE = new Scope("https://www.googleapis.com/auth/plus.me");
        PeopleApi = new zzwx();
        AccountApi = new zzwu();
        aAJ = new zzww();
        aAK = new zzwv();
    }

    private Plus() {
    }

    /*
     * Enabled aggressive block sorting
     */
    public static zze zzf(GoogleApiClient googleApiClient, boolean bl) {
        boolean bl2 = googleApiClient != null;
        zzaa.zzb((boolean)bl2, (Object)"GoogleApiClient parameter is required.");
        zzaa.zza((boolean)googleApiClient.isConnected(), (Object)"GoogleApiClient must be connected.");
        zzaa.zza((boolean)googleApiClient.zza(API), (Object)"GoogleApiClient is not configured to use the Plus.API Api. Pass this into GoogleApiClient.Builder#addApi() to use this feature.");
        bl2 = googleApiClient.hasConnectedApi(API);
        if (bl && !bl2) {
            throw new IllegalStateException("GoogleApiClient has an optional Plus.API and is not connected to Plus. Use GoogleApiClient.hasConnectedApi(Plus.API) to guard this call.");
        }
        if (bl2) {
            return (zze)googleApiClient.zza(hg);
        }
        return null;
    }
}

