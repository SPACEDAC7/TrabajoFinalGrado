/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  com.google.android.gms.auth.api.Auth$1
 *  com.google.android.gms.auth.api.Auth$2
 *  com.google.android.gms.auth.api.Auth$3
 *  com.google.android.gms.auth.api.Auth$AuthCredentialsOptions
 *  com.google.android.gms.auth.api.credentials.CredentialsApi
 *  com.google.android.gms.auth.api.credentials.internal.zze
 *  com.google.android.gms.auth.api.credentials.internal.zzg
 *  com.google.android.gms.auth.api.proxy.ProxyApi
 *  com.google.android.gms.auth.api.signin.internal.zzc
 *  com.google.android.gms.auth.api.signin.internal.zzd
 *  com.google.android.gms.auth.api.zza
 *  com.google.android.gms.auth.api.zzb
 *  com.google.android.gms.common.api.Api$ApiOptions$NoOptions
 *  com.google.android.gms.common.api.Api$zza
 *  com.google.android.gms.common.api.Api$zze
 *  com.google.android.gms.common.api.Api$zzf
 *  com.google.android.gms.internal.zzns
 *  com.google.android.gms.internal.zznt
 *  com.google.android.gms.internal.zznu
 *  com.google.android.gms.internal.zzoc
 */
package com.google.android.gms.auth.api;

import com.google.android.gms.auth.api.Auth;
import com.google.android.gms.auth.api.credentials.CredentialsApi;
import com.google.android.gms.auth.api.credentials.internal.zze;
import com.google.android.gms.auth.api.credentials.internal.zzg;
import com.google.android.gms.auth.api.proxy.ProxyApi;
import com.google.android.gms.auth.api.signin.GoogleSignInApi;
import com.google.android.gms.auth.api.signin.GoogleSignInOptions;
import com.google.android.gms.auth.api.signin.internal.zzc;
import com.google.android.gms.auth.api.signin.internal.zzd;
import com.google.android.gms.auth.api.zza;
import com.google.android.gms.auth.api.zzb;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.internal.zzns;
import com.google.android.gms.internal.zznt;
import com.google.android.gms.internal.zznu;
import com.google.android.gms.internal.zzoc;

/*
 * Illegal identifiers - consider using --renameillegalidents true
 */
public final class Auth {
    public static final Api<AuthCredentialsOptions> CREDENTIALS_API;
    public static final CredentialsApi CredentialsApi;
    public static final Api<GoogleSignInOptions> GOOGLE_SIGN_IN_API;
    public static final GoogleSignInApi GoogleSignInApi;
    public static final Api<zzb> PROXY_API;
    public static final ProxyApi ProxyApi;
    public static final Api.zzf<zzg> hX;
    public static final Api.zzf<zznu> hY;
    public static final Api.zzf<zzd> hZ;
    private static final Api.zza<zzg, AuthCredentialsOptions> ia;
    private static final Api.zza<zznu, Api.ApiOptions.NoOptions> ib;
    private static final Api.zza<zzd, GoogleSignInOptions> ic;
    public static final Api<Api.ApiOptions.NoOptions> ie;
    public static final zzns if;

    static {
        hX = new Api.zzf();
        hY = new Api.zzf();
        hZ = new Api.zzf();
        ia = new /* Unavailable Anonymous Inner Class!! */;
        ib = new /* Unavailable Anonymous Inner Class!! */;
        ic = new /* Unavailable Anonymous Inner Class!! */;
        PROXY_API = zza.API;
        CREDENTIALS_API = new Api<AuthCredentialsOptions>("Auth.CREDENTIALS_API", ia, hX);
        GOOGLE_SIGN_IN_API = new Api<GoogleSignInOptions>("Auth.GOOGLE_SIGN_IN_API", ic, hZ);
        ie = new Api<Api.ApiOptions.NoOptions>("Auth.ACCOUNT_STATUS_API", ib, hY);
        ProxyApi = new zzoc();
        CredentialsApi = new zze();
        if = new zznt();
        GoogleSignInApi = new zzc();
    }

    private Auth() {
    }
}

