/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.os.Parcel
 *  android.os.Parcelable
 *  android.os.Parcelable$Creator
 *  android.util.SparseArray
 */
package android.support.design.internal;

import android.os.Parcel;
import android.os.Parcelable;
import android.support.annotation.RestrictTo;
import android.support.v4.os.ParcelableCompat;
import android.support.v4.os.ParcelableCompatCreatorCallbacks;
import android.util.SparseArray;

@RestrictTo(value={RestrictTo.Scope.GROUP_ID})
public class ParcelableSparseArray
extends SparseArray<Parcelable>
implements Parcelable {
    public static final Parcelable.Creator<ParcelableSparseArray> CREATOR = ParcelableCompat.newCreator(new ParcelableCompatCreatorCallbacks<ParcelableSparseArray>(){

        @Override
        public ParcelableSparseArray createFromParcel(Parcel parcel, ClassLoader classLoader) {
            return new ParcelableSparseArray(parcel, classLoader);
        }

        public ParcelableSparseArray[] newArray(int n2) {
            return new ParcelableSparseArray[n2];
        }
    });

    public ParcelableSparseArray() {
    }

    public ParcelableSparseArray(Parcel arrparcelable, ClassLoader classLoader) {
        int n2 = arrparcelable.readInt();
        int[] arrn = new int[n2];
        arrparcelable.readIntArray(arrn);
        arrparcelable = arrparcelable.readParcelableArray(classLoader);
        for (int i2 = 0; i2 < n2; ++i2) {
            this.put(arrn[i2], (Object)arrparcelable[i2]);
        }
    }

    public int describeContents() {
        return 0;
    }

    public void writeToParcel(Parcel parcel, int n2) {
        int n3 = this.size();
        int[] arrn = new int[n3];
        Parcelable[] arrparcelable = new Parcelable[n3];
        for (int i2 = 0; i2 < n3; ++i2) {
            arrn[i2] = this.keyAt(i2);
            arrparcelable[i2] = (Parcelable)this.valueAt(i2);
        }
        parcel.writeInt(n3);
        parcel.writeIntArray(arrn);
        parcel.writeParcelableArray(arrparcelable, n2);
    }

}

