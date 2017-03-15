/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.net.Uri
 *  android.os.Parcel
 *  android.os.Parcelable
 *  android.os.Parcelable$Creator
 *  android.text.TextUtils
 *  com.google.android.gms.auth.api.signin.GoogleSignInAccount$1
 *  com.google.android.gms.auth.api.signin.zza
 *  com.google.android.gms.common.internal.zzaa
 *  com.google.android.gms.common.util.zze
 *  com.google.android.gms.common.util.zzh
 *  org.json.JSONArray
 *  org.json.JSONException
 *  org.json.JSONObject
 */
package com.google.android.gms.auth.api.signin;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.text.TextUtils;
import com.google.android.gms.auth.api.signin.GoogleSignInAccount;
import com.google.android.gms.auth.api.signin.zza;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.zzaa;
import com.google.android.gms.common.util.zze;
import com.google.android.gms.common.util.zzh;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class GoogleSignInAccount
extends AbstractSafeParcelable
implements ReflectedParcelable {
    public static final Parcelable.Creator<GoogleSignInAccount> CREATOR = new zza();
    public static zze jf = zzh.zzayl();
    private static Comparator<Scope> jm = new /* Unavailable Anonymous Inner Class!! */;
    List<Scope> hR;
    private String iF;
    private String is;
    private String it;
    private String jg;
    private String jh;
    private Uri ji;
    private String jj;
    private long jk;
    private String jl;
    final int versionCode;
    private String zzboa;

    GoogleSignInAccount(int n2, String string2, String string3, String string4, String string5, Uri uri, String string6, long l2, String string7, List<Scope> list, String string8, String string9) {
        this.versionCode = n2;
        this.zzboa = string2;
        this.iF = string3;
        this.jg = string4;
        this.jh = string5;
        this.ji = uri;
        this.jj = string6;
        this.jk = l2;
        this.jl = string7;
        this.hR = list;
        this.is = string8;
        this.it = string9;
    }

    public static GoogleSignInAccount zza(@Nullable String string2, @Nullable String string3, @Nullable String string4, @Nullable String string5, @Nullable String string6, @Nullable String string7, @Nullable Uri uri, @Nullable Long l2, @NonNull String string8, @NonNull Set<Scope> set) {
        Long l3 = l2;
        if (l2 == null) {
            l3 = jf.currentTimeMillis() / 1000;
        }
        return new GoogleSignInAccount(3, string2, string3, string4, string5, uri, null, l3, zzaa.zzib((String)string8), new ArrayList<Scope>((Collection)zzaa.zzy(set)), string6, string7);
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    private JSONObject zzais() {
        JSONObject jSONObject = new JSONObject();
        try {
            if (this.getId() != null) {
                jSONObject.put("id", (Object)this.getId());
            }
            if (this.getIdToken() != null) {
                jSONObject.put("tokenId", (Object)this.getIdToken());
            }
            if (this.getEmail() != null) {
                jSONObject.put("email", (Object)this.getEmail());
            }
            if (this.getDisplayName() != null) {
                jSONObject.put("displayName", (Object)this.getDisplayName());
            }
            if (this.getGivenName() != null) {
                jSONObject.put("givenName", (Object)this.getGivenName());
            }
            if (this.getFamilyName() != null) {
                jSONObject.put("familyName", (Object)this.getFamilyName());
            }
            if (this.getPhotoUrl() != null) {
                jSONObject.put("photoUrl", (Object)this.getPhotoUrl().toString());
            }
            if (this.getServerAuthCode() != null) {
                jSONObject.put("serverAuthCode", (Object)this.getServerAuthCode());
            }
            jSONObject.put("expirationTime", this.jk);
            jSONObject.put("obfuscatedIdentifier", (Object)this.zzaip());
            JSONArray jSONArray = new JSONArray();
            Collections.sort(this.hR, jm);
            Iterator<Scope> iterator = this.hR.iterator();
            while (iterator.hasNext()) {
                jSONArray.put((Object)iterator.next().zzari());
            }
            jSONObject.put("grantedScopes", (Object)jSONArray);
            return jSONObject;
        }
        catch (JSONException var1_2) {
            throw new RuntimeException((Throwable)var1_2);
        }
    }

    /*
     * Enabled aggressive block sorting
     */
    @Nullable
    public static GoogleSignInAccount zzfz(@Nullable String string2) throws JSONException {
        if (TextUtils.isEmpty((CharSequence)string2)) {
            return null;
        }
        JSONObject jSONObject = new JSONObject(string2);
        string2 = jSONObject.optString("photoUrl", null);
        string2 = !TextUtils.isEmpty((CharSequence)string2) ? Uri.parse((String)string2) : null;
        long l2 = Long.parseLong(jSONObject.getString("expirationTime"));
        HashSet<Scope> hashSet = new HashSet<Scope>();
        JSONArray jSONArray = jSONObject.getJSONArray("grantedScopes");
        int n2 = jSONArray.length();
        int n3 = 0;
        while (n3 < n2) {
            hashSet.add(new Scope(jSONArray.getString(n3)));
            ++n3;
        }
        return GoogleSignInAccount.zza(jSONObject.optString("id"), jSONObject.optString("tokenId", null), jSONObject.optString("email", null), jSONObject.optString("displayName", null), jSONObject.optString("givenName", null), jSONObject.optString("familyName", null), (Uri)string2, l2, jSONObject.getString("obfuscatedIdentifier"), hashSet).zzga(jSONObject.optString("serverAuthCode", null));
    }

    public boolean equals(Object object) {
        if (!(object instanceof GoogleSignInAccount)) {
            return false;
        }
        return ((GoogleSignInAccount)object).zzaiq().equals(this.zzaiq());
    }

    @Nullable
    public String getDisplayName() {
        return this.jh;
    }

    @Nullable
    public String getEmail() {
        return this.jg;
    }

    @Nullable
    public String getFamilyName() {
        return this.it;
    }

    @Nullable
    public String getGivenName() {
        return this.is;
    }

    @NonNull
    public Set<Scope> getGrantedScopes() {
        return new HashSet<Scope>(this.hR);
    }

    @Nullable
    public String getId() {
        return this.zzboa;
    }

    @Nullable
    public String getIdToken() {
        return this.iF;
    }

    @Nullable
    public Uri getPhotoUrl() {
        return this.ji;
    }

    @Nullable
    public String getServerAuthCode() {
        return this.jj;
    }

    public int hashCode() {
        return this.zzaiq().hashCode();
    }

    public void writeToParcel(Parcel parcel, int n2) {
        zza.zza((GoogleSignInAccount)this, (Parcel)parcel, (int)n2);
    }

    public boolean zza() {
        if (jf.currentTimeMillis() / 1000 >= this.jk - 300) {
            return true;
        }
        return false;
    }

    public long zzaio() {
        return this.jk;
    }

    @NonNull
    public String zzaip() {
        return this.jl;
    }

    public String zzaiq() {
        return this.zzais().toString();
    }

    public String zzair() {
        JSONObject jSONObject = this.zzais();
        jSONObject.remove("serverAuthCode");
        return jSONObject.toString();
    }

    public GoogleSignInAccount zzga(String string2) {
        this.jj = string2;
        return this;
    }
}

