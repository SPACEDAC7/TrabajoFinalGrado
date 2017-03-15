/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.app.Activity
 *  android.app.PendingIntent
 *  android.content.Intent
 *  android.content.IntentSender
 *  android.content.IntentSender$SendIntentException
 *  android.os.Parcel
 *  android.os.Parcelable
 *  android.os.Parcelable$Creator
 *  com.google.android.gms.common.api.CommonStatusCodes
 *  com.google.android.gms.common.api.Result
 *  com.google.android.gms.common.api.zzg
 *  com.google.android.gms.common.internal.zzz
 *  com.google.android.gms.common.internal.zzz$zza
 */
package com.google.android.gms.common.api;

import android.app.Activity;
import android.app.PendingIntent;
import android.content.Intent;
import android.content.IntentSender;
import android.os.Parcel;
import android.os.Parcelable;
import android.support.annotation.Nullable;
import com.google.android.gms.common.api.CommonStatusCodes;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.zzg;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.zzz;

public final class Status
extends AbstractSafeParcelable
implements Result,
ReflectedParcelable {
    public static final Parcelable.Creator<Status> CREATOR;
    public static final Status xZ;
    public static final Status ya;
    public static final Status yb;
    public static final Status yc;
    public static final Status yd;
    public static final Status ye;
    public static final Status yf;
    private final PendingIntent mPendingIntent;
    final int mVersionCode;
    private final int uo;
    private final String wP;

    static {
        xZ = new Status(0);
        ya = new Status(14);
        yb = new Status(8);
        yc = new Status(15);
        yd = new Status(16);
        ye = new Status(17);
        yf = new Status(18);
        CREATOR = new zzg();
    }

    public Status(int n2) {
        this(n2, null);
    }

    Status(int n2, int n3, String string2, PendingIntent pendingIntent) {
        this.mVersionCode = n2;
        this.uo = n3;
        this.wP = string2;
        this.mPendingIntent = pendingIntent;
    }

    public Status(int n2, String string2) {
        this(1, n2, string2, null);
    }

    public Status(int n2, String string2, PendingIntent pendingIntent) {
        this(1, n2, string2, pendingIntent);
    }

    /*
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    public boolean equals(Object object) {
        if (!(object instanceof Status)) {
            return false;
        }
        object = (Status)object;
        if (this.mVersionCode != object.mVersionCode) return false;
        if (this.uo != object.uo) return false;
        if (!zzz.equal((Object)this.wP, (Object)object.wP)) return false;
        if (!zzz.equal((Object)this.mPendingIntent, (Object)object.mPendingIntent)) return false;
        return true;
    }

    public PendingIntent getResolution() {
        return this.mPendingIntent;
    }

    public Status getStatus() {
        return this;
    }

    public int getStatusCode() {
        return this.uo;
    }

    @Nullable
    public String getStatusMessage() {
        return this.wP;
    }

    public boolean hasResolution() {
        if (this.mPendingIntent != null) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        return zzz.hashCode((Object[])new Object[]{this.mVersionCode, this.uo, this.wP, this.mPendingIntent});
    }

    public boolean isCanceled() {
        if (this.uo == 16) {
            return true;
        }
        return false;
    }

    public boolean isInterrupted() {
        if (this.uo == 14) {
            return true;
        }
        return false;
    }

    public boolean isSuccess() {
        if (this.uo <= 0) {
            return true;
        }
        return false;
    }

    public void startResolutionForResult(Activity activity, int n2) throws IntentSender.SendIntentException {
        if (!this.hasResolution()) {
            return;
        }
        activity.startIntentSenderForResult(this.mPendingIntent.getIntentSender(), n2, null, 0, 0, 0);
    }

    public String toString() {
        return zzz.zzx((Object)this).zzg("statusCode", (Object)this.zzark()).zzg("resolution", (Object)this.mPendingIntent).toString();
    }

    public void writeToParcel(Parcel parcel, int n2) {
        zzg.zza((Status)this, (Parcel)parcel, (int)n2);
    }

    PendingIntent zzarj() {
        return this.mPendingIntent;
    }

    public String zzark() {
        if (this.wP != null) {
            return this.wP;
        }
        return CommonStatusCodes.getStatusCodeString((int)this.uo);
    }
}

