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
 *  com.google.android.gms.common.internal.zzz
 *  com.google.android.gms.common.internal.zzz$zza
 *  com.google.android.gms.common.zzb
 */
package com.google.android.gms.common;

import android.app.Activity;
import android.app.PendingIntent;
import android.content.Intent;
import android.content.IntentSender;
import android.os.Parcel;
import android.os.Parcelable;
import android.support.annotation.Nullable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.zzz;
import com.google.android.gms.common.zzb;

public final class ConnectionResult
extends AbstractSafeParcelable {
    public static final int API_UNAVAILABLE = 16;
    public static final int CANCELED = 13;
    public static final Parcelable.Creator<ConnectionResult> CREATOR;
    public static final int DEVELOPER_ERROR = 10;
    @Deprecated
    public static final int DRIVE_EXTERNAL_STORAGE_REQUIRED = 1500;
    public static final int INTERNAL_ERROR = 8;
    public static final int INTERRUPTED = 15;
    public static final int INVALID_ACCOUNT = 5;
    public static final int LICENSE_CHECK_FAILED = 11;
    public static final int NETWORK_ERROR = 7;
    public static final int RESOLUTION_REQUIRED = 6;
    public static final int RESTRICTED_PROFILE = 20;
    public static final int SERVICE_DISABLED = 3;
    public static final int SERVICE_INVALID = 9;
    public static final int SERVICE_MISSING = 1;
    public static final int SERVICE_MISSING_PERMISSION = 19;
    public static final int SERVICE_UPDATING = 18;
    public static final int SERVICE_VERSION_UPDATE_REQUIRED = 2;
    public static final int SIGN_IN_FAILED = 17;
    public static final int SIGN_IN_REQUIRED = 4;
    public static final int SUCCESS = 0;
    public static final int TIMEOUT = 14;
    public static final ConnectionResult wO;
    private final PendingIntent mPendingIntent;
    final int mVersionCode;
    private final int uo;
    private final String wP;

    static {
        wO = new ConnectionResult(0);
        CREATOR = new zzb();
    }

    public ConnectionResult(int n2) {
        this(n2, null, null);
    }

    ConnectionResult(int n2, int n3, PendingIntent pendingIntent, String string2) {
        this.mVersionCode = n2;
        this.uo = n3;
        this.mPendingIntent = pendingIntent;
        this.wP = string2;
    }

    public ConnectionResult(int n2, PendingIntent pendingIntent) {
        this(n2, pendingIntent, null);
    }

    public ConnectionResult(int n2, PendingIntent pendingIntent, String string2) {
        this(1, n2, pendingIntent, string2);
    }

    static String getStatusString(int n2) {
        switch (n2) {
            default: {
                return new StringBuilder(31).append("UNKNOWN_ERROR_CODE(").append(n2).append(")").toString();
            }
            case 0: {
                return "SUCCESS";
            }
            case 1: {
                return "SERVICE_MISSING";
            }
            case 2: {
                return "SERVICE_VERSION_UPDATE_REQUIRED";
            }
            case 3: {
                return "SERVICE_DISABLED";
            }
            case 4: {
                return "SIGN_IN_REQUIRED";
            }
            case 5: {
                return "INVALID_ACCOUNT";
            }
            case 6: {
                return "RESOLUTION_REQUIRED";
            }
            case 7: {
                return "NETWORK_ERROR";
            }
            case 8: {
                return "INTERNAL_ERROR";
            }
            case 9: {
                return "SERVICE_INVALID";
            }
            case 10: {
                return "DEVELOPER_ERROR";
            }
            case 11: {
                return "LICENSE_CHECK_FAILED";
            }
            case 13: {
                return "CANCELED";
            }
            case 14: {
                return "TIMEOUT";
            }
            case 15: {
                return "INTERRUPTED";
            }
            case 16: {
                return "API_UNAVAILABLE";
            }
            case 17: {
                return "SIGN_IN_FAILED";
            }
            case 18: {
                return "SERVICE_UPDATING";
            }
            case 19: {
                return "SERVICE_MISSING_PERMISSION";
            }
            case 20: {
                return "RESTRICTED_PROFILE";
            }
            case 21: {
                return "API_VERSION_UPDATE_REQUIRED";
            }
            case 1500: {
                return "DRIVE_EXTERNAL_STORAGE_REQUIRED";
            }
            case 99: {
                return "UNFINISHED";
            }
            case -1: 
        }
        return "UNKNOWN";
    }

    /*
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    public boolean equals(Object object) {
        if (object == this) {
            return true;
        }
        if (!(object instanceof ConnectionResult)) {
            return false;
        }
        object = (ConnectionResult)object;
        if (this.uo != object.uo) return false;
        if (!zzz.equal((Object)this.mPendingIntent, (Object)object.mPendingIntent)) return false;
        if (zzz.equal((Object)this.wP, (Object)object.wP)) return true;
        return false;
    }

    public int getErrorCode() {
        return this.uo;
    }

    @Nullable
    public String getErrorMessage() {
        return this.wP;
    }

    @Nullable
    public PendingIntent getResolution() {
        return this.mPendingIntent;
    }

    public boolean hasResolution() {
        if (this.uo != 0 && this.mPendingIntent != null) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        return zzz.hashCode((Object[])new Object[]{this.uo, this.mPendingIntent, this.wP});
    }

    public boolean isSuccess() {
        if (this.uo == 0) {
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
        return zzz.zzx((Object)this).zzg("statusCode", (Object)ConnectionResult.getStatusString(this.uo)).zzg("resolution", (Object)this.mPendingIntent).zzg("message", (Object)this.wP).toString();
    }

    public void writeToParcel(Parcel parcel, int n2) {
        zzb.zza((ConnectionResult)this, (Parcel)parcel, (int)n2);
    }
}

