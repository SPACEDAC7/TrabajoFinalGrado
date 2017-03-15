/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.accounts.Account
 *  android.os.Parcel
 *  android.os.Parcelable
 *  android.os.Parcelable$Creator
 *  android.text.TextUtils
 *  com.google.android.gms.auth.api.signin.GoogleSignInOptions$1
 *  com.google.android.gms.auth.api.signin.internal.zze
 *  com.google.android.gms.auth.api.signin.zzb
 *  com.google.android.gms.common.internal.zzaa
 *  org.json.JSONArray
 *  org.json.JSONException
 *  org.json.JSONObject
 */
package com.google.android.gms.auth.api.signin;

import android.accounts.Account;
import android.os.Parcel;
import android.os.Parcelable;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.text.TextUtils;
import com.google.android.gms.auth.api.signin.GoogleSignInOptions;
import com.google.android.gms.auth.api.signin.internal.zze;
import com.google.android.gms.auth.api.signin.zzb;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.zzaa;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class GoogleSignInOptions
extends AbstractSafeParcelable
implements Api.ApiOptions.Optional,
ReflectedParcelable {
    public static final Parcelable.Creator<GoogleSignInOptions> CREATOR;
    public static final GoogleSignInOptions DEFAULT_SIGN_IN;
    private static Comparator<Scope> jm;
    public static final Scope jn;
    public static final Scope jo;
    public static final Scope jp;
    private Account gj;
    private final ArrayList<Scope> jq;
    private boolean jr;
    private final boolean js;
    private final boolean jt;
    private String ju;
    private String jv;
    final int versionCode;

    static {
        jn = new Scope("profile");
        jo = new Scope("email");
        jp = new Scope("openid");
        DEFAULT_SIGN_IN = new Builder().requestId().requestProfile().build();
        CREATOR = new zzb();
        jm = new /* Unavailable Anonymous Inner Class!! */;
    }

    GoogleSignInOptions(int n2, ArrayList<Scope> arrayList, Account account, boolean bl, boolean bl2, boolean bl3, String string2, String string3) {
        this.versionCode = n2;
        this.jq = arrayList;
        this.gj = account;
        this.jr = bl;
        this.js = bl2;
        this.jt = bl3;
        this.ju = string2;
        this.jv = string3;
    }

    private GoogleSignInOptions(Set<Scope> set, Account account, boolean bl, boolean bl2, boolean bl3, String string2, String string3) {
        this(2, new ArrayList<Scope>(set), account, bl, bl2, bl3, string2, string3);
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    private JSONObject zzais() {
        JSONObject jSONObject = new JSONObject();
        try {
            JSONArray jSONArray = new JSONArray();
            Collections.sort(this.jq, jm);
            Iterator<Scope> iterator = this.jq.iterator();
            while (iterator.hasNext()) {
                jSONArray.put((Object)iterator.next().zzari());
            }
            jSONObject.put("scopes", (Object)jSONArray);
            if (this.gj != null) {
                jSONObject.put("accountName", (Object)this.gj.name);
            }
            jSONObject.put("idTokenRequested", this.jr);
            jSONObject.put("forceCodeForRefreshToken", this.jt);
            jSONObject.put("serverAuthRequested", this.js);
            if (!TextUtils.isEmpty((CharSequence)this.ju)) {
                jSONObject.put("serverClientId", (Object)this.ju);
            }
            if (!TextUtils.isEmpty((CharSequence)this.jv)) {
                jSONObject.put("hostedDomain", (Object)this.jv);
            }
            return jSONObject;
        }
        catch (JSONException var1_2) {
            throw new RuntimeException((Throwable)var1_2);
        }
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    @Nullable
    public static GoogleSignInOptions zzgb(@Nullable String string2) throws JSONException {
        if (TextUtils.isEmpty((CharSequence)string2)) {
            return null;
        }
        JSONObject jSONObject = new JSONObject(string2);
        HashSet<Scope> hashSet = new HashSet<Scope>();
        string2 = jSONObject.getJSONArray("scopes");
        int n2 = string2.length();
        for (int i2 = 0; i2 < n2; ++i2) {
            hashSet.add(new Scope(string2.getString(i2)));
        }
        string2 = jSONObject.optString("accountName", null);
        if (!TextUtils.isEmpty((CharSequence)string2)) {
            string2 = new Account(string2, "com.google");
            do {
                return new GoogleSignInOptions(hashSet, (Account)string2, jSONObject.getBoolean("idTokenRequested"), jSONObject.getBoolean("serverAuthRequested"), jSONObject.getBoolean("forceCodeForRefreshToken"), jSONObject.optString("serverClientId", null), jSONObject.optString("hostedDomain", null));
                break;
            } while (true);
        }
        string2 = null;
        return new GoogleSignInOptions(hashSet, (Account)string2, jSONObject.getBoolean("idTokenRequested"), jSONObject.getBoolean("serverAuthRequested"), jSONObject.getBoolean("forceCodeForRefreshToken"), jSONObject.optString("serverClientId", null), jSONObject.optString("hostedDomain", null));
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     * Lifted jumps to return sites
     */
    public boolean equals(Object object) {
        if (object == null) {
            return false;
        }
        try {
            object = (GoogleSignInOptions)object;
            if (this.jq.size() != object.zzait().size()) return false;
            if (!this.jq.containsAll(object.zzait())) return false;
            if (this.gj == null) {
                if (object.getAccount() != null) return false;
            } else if (!this.gj.equals((Object)object.getAccount())) return false;
            if (TextUtils.isEmpty((CharSequence)this.ju)) {
                if (!TextUtils.isEmpty((CharSequence)object.zzaix())) return false;
            } else {
                boolean bl = this.ju.equals(object.zzaix());
                if (!bl) return false;
            }
            if (this.jt != object.zzaiw()) return false;
            if (this.jr != object.zzaiu()) return false;
            if (this.js != object.zzaiv()) return false;
            return true;
        }
        catch (ClassCastException classCastException) {
            return false;
        }
    }

    public Account getAccount() {
        return this.gj;
    }

    public Scope[] getScopeArray() {
        return this.jq.toArray(new Scope[this.jq.size()]);
    }

    public int hashCode() {
        ArrayList<String> arrayList = new ArrayList<String>();
        Iterator<Scope> iterator = this.jq.iterator();
        while (iterator.hasNext()) {
            arrayList.add(iterator.next().zzari());
        }
        Collections.sort(arrayList);
        return new zze().zzq(arrayList).zzq((Object)this.gj).zzq((Object)this.ju).zzbe(this.jt).zzbe(this.jr).zzbe(this.js).zzajf();
    }

    public void writeToParcel(Parcel parcel, int n2) {
        zzb.zza((GoogleSignInOptions)this, (Parcel)parcel, (int)n2);
    }

    public String zzaiq() {
        return this.zzais().toString();
    }

    public ArrayList<Scope> zzait() {
        return new ArrayList<Scope>(this.jq);
    }

    public boolean zzaiu() {
        return this.jr;
    }

    public boolean zzaiv() {
        return this.js;
    }

    public boolean zzaiw() {
        return this.jt;
    }

    public String zzaix() {
        return this.ju;
    }

    public String zzaiy() {
        return this.jv;
    }

    public static final class Builder {
        private Account gj;
        private boolean jr;
        private boolean js;
        private boolean jt;
        private String ju;
        private String jv;
        private Set<Scope> jw = new HashSet<Scope>();

        public Builder() {
        }

        public Builder(@NonNull GoogleSignInOptions googleSignInOptions) {
            zzaa.zzy((Object)googleSignInOptions);
            this.jw = new HashSet<Scope>(googleSignInOptions.jq);
            this.js = googleSignInOptions.js;
            this.jt = googleSignInOptions.jt;
            this.jr = googleSignInOptions.jr;
            this.ju = googleSignInOptions.ju;
            this.gj = googleSignInOptions.gj;
            this.jv = googleSignInOptions.jv;
        }

        /*
         * Enabled aggressive block sorting
         */
        private String zzgc(String string2) {
            zzaa.zzib((String)string2);
            boolean bl = this.ju == null || this.ju.equals(string2);
            zzaa.zzb((boolean)bl, (Object)"two different server client ids provided");
            return string2;
        }

        public GoogleSignInOptions build() {
            if (this.jr && (this.gj == null || !this.jw.isEmpty())) {
                this.requestId();
            }
            return new GoogleSignInOptions(this.jw, this.gj, this.jr, this.js, this.jt, this.ju, this.jv);
        }

        public Builder requestEmail() {
            this.jw.add(GoogleSignInOptions.jo);
            return this;
        }

        public Builder requestId() {
            this.jw.add(GoogleSignInOptions.jp);
            return this;
        }

        public Builder requestIdToken(String string2) {
            this.jr = true;
            this.ju = this.zzgc(string2);
            return this;
        }

        public Builder requestProfile() {
            this.jw.add(GoogleSignInOptions.jn);
            return this;
        }

        public /* varargs */ Builder requestScopes(Scope scope, Scope ... arrscope) {
            this.jw.add(scope);
            this.jw.addAll(Arrays.asList(arrscope));
            return this;
        }

        public Builder requestServerAuthCode(String string2) {
            return this.requestServerAuthCode(string2, false);
        }

        public Builder requestServerAuthCode(String string2, boolean bl) {
            this.js = true;
            this.ju = this.zzgc(string2);
            this.jt = bl;
            return this;
        }

        public Builder setAccountName(String string2) {
            this.gj = new Account(zzaa.zzib((String)string2), "com.google");
            return this;
        }

        public Builder setHostedDomain(String string2) {
            this.jv = zzaa.zzib((String)string2);
            return this;
        }
    }

}

