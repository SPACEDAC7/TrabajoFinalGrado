/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.net.Uri
 *  android.text.TextUtils
 *  com.google.android.gms.analytics.internal.zza
 *  com.google.android.gms.analytics.internal.zzf
 *  com.google.android.gms.analytics.internal.zzk
 *  com.google.android.gms.analytics.internal.zzn
 *  com.google.android.gms.analytics.internal.zzu
 *  com.google.android.gms.analytics.zzb
 *  com.google.android.gms.analytics.zze
 *  com.google.android.gms.analytics.zzg
 *  com.google.android.gms.analytics.zzi
 *  com.google.android.gms.analytics.zzk
 *  com.google.android.gms.common.internal.zzaa
 *  com.google.android.gms.common.util.zze
 *  com.google.android.gms.internal.zzms
 *  com.google.android.gms.internal.zzmx
 *  com.google.android.gms.internal.zznb
 */
package com.google.android.gms.analytics;

import android.net.Uri;
import android.text.TextUtils;
import com.google.android.gms.analytics.internal.zzf;
import com.google.android.gms.analytics.internal.zzk;
import com.google.android.gms.analytics.internal.zzn;
import com.google.android.gms.analytics.internal.zzu;
import com.google.android.gms.analytics.zzb;
import com.google.android.gms.analytics.zze;
import com.google.android.gms.analytics.zzg;
import com.google.android.gms.analytics.zzh;
import com.google.android.gms.analytics.zzi;
import com.google.android.gms.common.internal.zzaa;
import com.google.android.gms.internal.zzms;
import com.google.android.gms.internal.zzmx;
import com.google.android.gms.internal.zznb;
import java.util.List;
import java.util.ListIterator;

public class zza
extends zzh<zza> {
    private final zzf ao;
    private boolean ap;

    public zza(zzf zzf2) {
        super(zzf2.zzacc(), zzf2.zzabz());
        this.ao = zzf2;
    }

    public void enableAdvertisingIdCollection(boolean bl) {
        this.ap = bl;
    }

    @Override
    protected void zza(zze zze2) {
        if (TextUtils.isEmpty((CharSequence)(zze2 = (zznb)zze2.zzb((Class)zznb.class)).zzze())) {
            zze2.setClientId(this.ao.zzacq().zzady());
        }
        if (this.ap && TextUtils.isEmpty((CharSequence)zze2.zzabb())) {
            com.google.android.gms.analytics.internal.zza zza2 = this.ao.zzacp();
            zze2.zzei(zza2.zzabn());
            zze2.zzas(zza2.zzabc());
        }
    }

    public void zzdr(String string2) {
        zzaa.zzib((String)string2);
        this.zzds(string2);
        this.zzzu().add((com.google.android.gms.analytics.zzk)new zzb(this.ao, string2));
    }

    public void zzds(String string2) {
        string2 = zzb.zzdt((String)string2);
        ListIterator<com.google.android.gms.analytics.zzk> listIterator = this.zzzu().listIterator();
        while (listIterator.hasNext()) {
            if (!string2.equals((Object)listIterator.next().zzyx())) continue;
            listIterator.remove();
        }
    }

    zzf zzyt() {
        return this.ao;
    }

    @Override
    public zze zzyu() {
        zze zze2 = this.zzzt().zzzi();
        zze2.zza((zzg)this.ao.zzach().zzadg());
        zze2.zza((zzg)this.ao.zzaci().zzafl());
        this.zzd(zze2);
        return zze2;
    }
}

