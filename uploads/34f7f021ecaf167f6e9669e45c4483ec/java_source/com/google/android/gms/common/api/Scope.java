/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.os.Parcel
 *  android.os.Parcelable
 *  android.os.Parcelable$Creator
 *  com.google.android.gms.common.api.zzf
 *  com.google.android.gms.common.internal.zzaa
 */
package com.google.android.gms.common.api;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.api.zzf;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.zzaa;

public final class Scope
extends AbstractSafeParcelable
implements ReflectedParcelable {
    public static final Parcelable.Creator<Scope> CREATOR = new zzf();
    final int mVersionCode;
    private final String xY;

    Scope(int n2, String string2) {
        zzaa.zzh((String)string2, (Object)"scopeUri must not be null or empty");
        this.mVersionCode = n2;
        this.xY = string2;
    }

    public Scope(String string2) {
        this(1, string2);
    }

    public boolean equals(Object object) {
        if (this == object) {
            return true;
        }
        if (!(object instanceof Scope)) {
            return false;
        }
        return this.xY.equals(((Scope)object).xY);
    }

    public int hashCode() {
        return this.xY.hashCode();
    }

    public String toString() {
        return this.xY;
    }

    public void writeToParcel(Parcel parcel, int n2) {
        zzf.zza((Scope)this, (Parcel)parcel, (int)n2);
    }

    public String zzari() {
        return this.xY;
    }
}

