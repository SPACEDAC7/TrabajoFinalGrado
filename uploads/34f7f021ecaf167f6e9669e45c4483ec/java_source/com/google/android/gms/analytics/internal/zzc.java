/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.content.Context
 *  android.text.TextUtils
 *  android.util.Log
 *  com.google.android.gms.analytics.internal.zza
 *  com.google.android.gms.analytics.internal.zzaf
 *  com.google.android.gms.analytics.internal.zzai
 *  com.google.android.gms.analytics.internal.zzap
 *  com.google.android.gms.analytics.internal.zzb
 *  com.google.android.gms.analytics.internal.zzf
 *  com.google.android.gms.analytics.internal.zzk
 *  com.google.android.gms.analytics.internal.zzn
 *  com.google.android.gms.analytics.internal.zzr
 *  com.google.android.gms.analytics.internal.zzu
 *  com.google.android.gms.analytics.internal.zzv
 *  com.google.android.gms.analytics.internal.zzy
 *  com.google.android.gms.analytics.internal.zzy$zza
 *  com.google.android.gms.analytics.zzi
 *  com.google.android.gms.common.internal.zzaa
 *  com.google.android.gms.common.util.zze
 */
package com.google.android.gms.analytics.internal;

import android.content.Context;
import android.text.TextUtils;
import android.util.Log;
import com.google.android.gms.analytics.GoogleAnalytics;
import com.google.android.gms.analytics.internal.zza;
import com.google.android.gms.analytics.internal.zzaf;
import com.google.android.gms.analytics.internal.zzai;
import com.google.android.gms.analytics.internal.zzap;
import com.google.android.gms.analytics.internal.zzb;
import com.google.android.gms.analytics.internal.zzf;
import com.google.android.gms.analytics.internal.zzk;
import com.google.android.gms.analytics.internal.zzn;
import com.google.android.gms.analytics.internal.zzr;
import com.google.android.gms.analytics.internal.zzu;
import com.google.android.gms.analytics.internal.zzv;
import com.google.android.gms.analytics.internal.zzy;
import com.google.android.gms.analytics.zzi;
import com.google.android.gms.common.internal.zzaa;
import com.google.android.gms.common.util.zze;

public class zzc {
    private final zzf cQ;

    protected zzc(zzf zzf2) {
        zzaa.zzy((Object)zzf2);
        this.cQ = zzf2;
    }

    /*
     * Enabled aggressive block sorting
     */
    private void zza(int n2, String string2, Object object, Object object2, Object object3) {
        Object object4 = null;
        if (this.cQ != null && (object4 = this.cQ.zzacm()) != null) {
            object4.zza(n2, string2, object, object2, object3);
            return;
        } else {
            object4 = (String)zzy.en.get();
            if (!Log.isLoggable((String)object4, (int)n2)) return;
            {
                Log.println((int)n2, (String)object4, (String)zzc.zzc(string2, object, object2, object3));
                return;
            }
        }
    }

    protected static String zzc(String object, Object object2, Object object3, Object object4) {
        String string2 = object;
        if (object == null) {
            string2 = "";
        }
        String string3 = zzc.zzk(object2);
        object3 = zzc.zzk(object3);
        object4 = zzc.zzk(object4);
        StringBuilder stringBuilder = new StringBuilder();
        object = "";
        if (!TextUtils.isEmpty((CharSequence)string2)) {
            stringBuilder.append(string2);
            object = ": ";
        }
        object2 = object;
        if (!TextUtils.isEmpty((CharSequence)string3)) {
            stringBuilder.append((String)object);
            stringBuilder.append(string3);
            object2 = ", ";
        }
        object = object2;
        if (!TextUtils.isEmpty((CharSequence)object3)) {
            stringBuilder.append((String)object2);
            stringBuilder.append((String)object3);
            object = ", ";
        }
        if (!TextUtils.isEmpty((CharSequence)object4)) {
            stringBuilder.append((String)object);
            stringBuilder.append((String)object4);
        }
        return stringBuilder.toString();
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    private static String zzk(Object object) {
        if (object == null) {
            return "";
        }
        if (object instanceof String) {
            return (String)object;
        }
        if (object instanceof Boolean) {
            if (object != Boolean.TRUE) return "false";
            return "true";
        }
        if (!(object instanceof Throwable)) return object.toString();
        return ((Throwable)object).toString();
    }

    protected Context getContext() {
        return this.cQ.getContext();
    }

    public void zza(String string2, Object object) {
        this.zza(2, string2, object, null, null);
    }

    public void zza(String string2, Object object, Object object2) {
        this.zza(2, string2, object, object2, null);
    }

    public void zza(String string2, Object object, Object object2, Object object3) {
        this.zza(3, string2, object, object2, object3);
    }

    public zzf zzabx() {
        return this.cQ;
    }

    protected void zzaby() {
        this.zzacb();
    }

    protected zze zzabz() {
        return this.cQ.zzabz();
    }

    protected zzaf zzaca() {
        return this.cQ.zzaca();
    }

    protected zzr zzacb() {
        return this.cQ.zzacb();
    }

    protected zzi zzacc() {
        return this.cQ.zzacc();
    }

    protected zzv zzacd() {
        return this.cQ.zzacd();
    }

    protected zzai zzace() {
        return this.cQ.zzace();
    }

    protected zzn zzacf() {
        return this.cQ.zzacq();
    }

    protected zza zzacg() {
        return this.cQ.zzacp();
    }

    protected zzk zzach() {
        return this.cQ.zzach();
    }

    protected zzu zzaci() {
        return this.cQ.zzaci();
    }

    public void zzb(String string2, Object object) {
        this.zza(3, string2, object, null, null);
    }

    public void zzb(String string2, Object object, Object object2) {
        this.zza(3, string2, object, object2, null);
    }

    public void zzb(String string2, Object object, Object object2, Object object3) {
        this.zza(5, string2, object, object2, object3);
    }

    public void zzc(String string2, Object object) {
        this.zza(4, string2, object, null, null);
    }

    public void zzc(String string2, Object object, Object object2) {
        this.zza(5, string2, object, object2, null);
    }

    public void zzd(String string2, Object object) {
        this.zza(5, string2, object, null, null);
    }

    public void zzd(String string2, Object object, Object object2) {
        this.zza(6, string2, object, object2, null);
    }

    public void zze(String string2, Object object) {
        this.zza(6, string2, object, null, null);
    }

    public void zzes(String string2) {
        this.zza(2, string2, null, null, null);
    }

    public void zzet(String string2) {
        this.zza(3, string2, null, null, null);
    }

    public void zzeu(String string2) {
        this.zza(4, string2, null, null, null);
    }

    public void zzev(String string2) {
        this.zza(5, string2, null, null, null);
    }

    public void zzew(String string2) {
        this.zza(6, string2, null, null, null);
    }

    public boolean zzvo() {
        return Log.isLoggable((String)((String)zzy.en.get()), (int)2);
    }

    public GoogleAnalytics zzza() {
        return this.cQ.zzacn();
    }

    protected zzb zzzg() {
        return this.cQ.zzzg();
    }

    protected zzap zzzh() {
        return this.cQ.zzzh();
    }

    protected void zzzx() {
        this.cQ.zzzx();
    }
}

