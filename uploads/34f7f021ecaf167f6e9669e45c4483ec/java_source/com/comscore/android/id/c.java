/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.os.IBinder
 *  android.os.IInterface
 *  android.os.Parcel
 */
package com.comscore.android.id;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;

final class c
implements IInterface {
    private IBinder a;

    public c(IBinder iBinder) {
        this.a = iBinder;
    }

    public IBinder asBinder() {
        return this.a;
    }

    public String getId() {
        Parcel parcel = Parcel.obtain();
        Parcel parcel2 = Parcel.obtain();
        try {
            parcel.writeInterfaceToken("com.google.android.gms.ads.identifier.internal.IAdvertisingIdService");
            this.a.transact(1, parcel, parcel2, 0);
            parcel2.readException();
            String string2 = parcel2.readString();
            return string2;
        }
        finally {
            parcel2.recycle();
            parcel.recycle();
        }
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    public boolean isLimitAdTrackingEnabled(boolean bl) {
        boolean bl2 = true;
        Parcel parcel = Parcel.obtain();
        Parcel parcel2 = Parcel.obtain();
        try {
            parcel.writeInterfaceToken("com.google.android.gms.ads.identifier.internal.IAdvertisingIdService");
            int n2 = bl ? 1 : 0;
            parcel.writeInt(n2);
            this.a.transact(2, parcel, parcel2, 0);
            parcel2.readException();
            n2 = parcel2.readInt();
            bl = n2 != 0 ? bl2 : false;
            return bl;
        }
        finally {
            parcel2.recycle();
            parcel.recycle();
        }
    }
}

