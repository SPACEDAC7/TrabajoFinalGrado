/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  com.google.android.gms.analytics.zze
 *  com.google.android.gms.analytics.zzf
 *  com.google.android.gms.analytics.zzi
 *  com.google.android.gms.analytics.zzk
 *  com.google.android.gms.common.internal.zzaa
 *  com.google.android.gms.common.util.zze
 */
package com.google.android.gms.analytics;

import com.google.android.gms.analytics.zze;
import com.google.android.gms.analytics.zzf;
import com.google.android.gms.analytics.zzi;
import com.google.android.gms.analytics.zzk;
import com.google.android.gms.common.internal.zzaa;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public abstract class zzh<T extends zzh> {
    private final zzi bg;
    protected final zze bh;
    private final List<zzf> bi;

    protected zzh(zzi zzi2, com.google.android.gms.common.util.zze zze2) {
        zzaa.zzy((Object)zzi2);
        this.bg = zzi2;
        this.bi = new ArrayList<zzf>();
        zzi2 = new zze(this, zze2);
        zzi2.zzzs();
        this.bh = zzi2;
    }

    protected void zza(zze zze2) {
    }

    protected void zzd(zze zze2) {
        Iterator<zzf> iterator = this.bi.iterator();
        while (iterator.hasNext()) {
            iterator.next().zza(this, zze2);
        }
    }

    public zze zzyu() {
        zze zze2 = this.bh.zzzi();
        this.zzd(zze2);
        return zze2;
    }

    protected zzi zzzq() {
        return this.bg;
    }

    public zze zzzt() {
        return this.bh;
    }

    public List<zzk> zzzu() {
        return this.bh.zzzk();
    }
}

