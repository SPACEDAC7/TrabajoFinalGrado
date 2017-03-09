/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.os.Bundle
 *  android.os.Parcel
 *  android.os.Parcelable
 */
package com.facebook.share.model;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.support.annotation.Nullable;
import com.facebook.share.model.ShareModel;
import com.facebook.share.model.ShareModelBuilder;
import com.facebook.share.model.ShareOpenGraphObject;
import com.facebook.share.model.SharePhoto;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Set;

public abstract class ShareOpenGraphValueContainer<P extends ShareOpenGraphValueContainer, E extends Builder>
implements ShareModel {
    private final Bundle bundle;

    ShareOpenGraphValueContainer(Parcel parcel) {
        this.bundle = parcel.readBundle(Builder.class.getClassLoader());
    }

    protected ShareOpenGraphValueContainer(Builder<P, E> builder) {
        this.bundle = (Bundle)builder.bundle.clone();
    }

    public int describeContents() {
        return 0;
    }

    @Nullable
    public Object get(String string2) {
        return this.bundle.get(string2);
    }

    public boolean getBoolean(String string2, boolean bl) {
        return this.bundle.getBoolean(string2, bl);
    }

    @Nullable
    public boolean[] getBooleanArray(String string2) {
        return this.bundle.getBooleanArray(string2);
    }

    public Bundle getBundle() {
        return (Bundle)this.bundle.clone();
    }

    public double getDouble(String string2, double d2) {
        return this.bundle.getDouble(string2, d2);
    }

    @Nullable
    public double[] getDoubleArray(String string2) {
        return this.bundle.getDoubleArray(string2);
    }

    public int getInt(String string2, int n2) {
        return this.bundle.getInt(string2, n2);
    }

    @Nullable
    public int[] getIntArray(String string2) {
        return this.bundle.getIntArray(string2);
    }

    public long getLong(String string2, long l2) {
        return this.bundle.getLong(string2, l2);
    }

    @Nullable
    public long[] getLongArray(String string2) {
        return this.bundle.getLongArray(string2);
    }

    public ShareOpenGraphObject getObject(String object) {
        if ((object = this.bundle.get((String)object)) instanceof ShareOpenGraphObject) {
            return (ShareOpenGraphObject)object;
        }
        return null;
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    @Nullable
    public ArrayList<ShareOpenGraphObject> getObjectArrayList(String parcelable) {
        if ((parcelable = this.bundle.getParcelableArrayList((String)parcelable)) == null) {
            return null;
        }
        Parcelable parcelable2 = new Parcelable();
        Iterator iterator = parcelable.iterator();
        do {
            parcelable = parcelable2;
            if (!iterator.hasNext()) return parcelable;
            parcelable = (Parcelable)iterator.next();
            if (!(parcelable instanceof ShareOpenGraphObject)) continue;
            parcelable2.add((ShareOpenGraphObject)parcelable);
        } while (true);
    }

    @Nullable
    public SharePhoto getPhoto(String string2) {
        if ((string2 = this.bundle.getParcelable(string2)) instanceof SharePhoto) {
            return (SharePhoto)((Object)string2);
        }
        return null;
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    @Nullable
    public ArrayList<SharePhoto> getPhotoArrayList(String parcelable) {
        if ((parcelable = this.bundle.getParcelableArrayList((String)parcelable)) == null) {
            return null;
        }
        Parcelable parcelable2 = new Parcelable();
        Iterator iterator = parcelable.iterator();
        do {
            parcelable = parcelable2;
            if (!iterator.hasNext()) return parcelable;
            parcelable = (Parcelable)iterator.next();
            if (!(parcelable instanceof SharePhoto)) continue;
            parcelable2.add((SharePhoto)parcelable);
        } while (true);
    }

    @Nullable
    public String getString(String string2) {
        return this.bundle.getString(string2);
    }

    @Nullable
    public ArrayList<String> getStringArrayList(String string2) {
        return this.bundle.getStringArrayList(string2);
    }

    public Set<String> keySet() {
        return this.bundle.keySet();
    }

    public void writeToParcel(Parcel parcel, int n2) {
        parcel.writeBundle(this.bundle);
    }

    public static abstract class Builder<P extends ShareOpenGraphValueContainer, E extends Builder>
    implements ShareModelBuilder<P, E> {
        private Bundle bundle = new Bundle();

        public E putBoolean(String string2, boolean bl) {
            this.bundle.putBoolean(string2, bl);
            return (E)this;
        }

        public E putBooleanArray(String string2, @Nullable boolean[] arrbl) {
            this.bundle.putBooleanArray(string2, arrbl);
            return (E)this;
        }

        public E putDouble(String string2, double d2) {
            this.bundle.putDouble(string2, d2);
            return (E)this;
        }

        public E putDoubleArray(String string2, @Nullable double[] arrd) {
            this.bundle.putDoubleArray(string2, arrd);
            return (E)this;
        }

        public E putInt(String string2, int n2) {
            this.bundle.putInt(string2, n2);
            return (E)this;
        }

        public E putIntArray(String string2, @Nullable int[] arrn) {
            this.bundle.putIntArray(string2, arrn);
            return (E)this;
        }

        public E putLong(String string2, long l2) {
            this.bundle.putLong(string2, l2);
            return (E)this;
        }

        public E putLongArray(String string2, @Nullable long[] arrl) {
            this.bundle.putLongArray(string2, arrl);
            return (E)this;
        }

        public E putObject(String string2, @Nullable ShareOpenGraphObject shareOpenGraphObject) {
            this.bundle.putParcelable(string2, (Parcelable)shareOpenGraphObject);
            return (E)this;
        }

        public E putObjectArrayList(String string2, @Nullable ArrayList<ShareOpenGraphObject> arrayList) {
            this.bundle.putParcelableArrayList(string2, arrayList);
            return (E)this;
        }

        public E putPhoto(String string2, @Nullable SharePhoto sharePhoto) {
            this.bundle.putParcelable(string2, (Parcelable)sharePhoto);
            return (E)this;
        }

        public E putPhotoArrayList(String string2, @Nullable ArrayList<SharePhoto> arrayList) {
            this.bundle.putParcelableArrayList(string2, arrayList);
            return (E)this;
        }

        public E putString(String string2, @Nullable String string3) {
            this.bundle.putString(string2, string3);
            return (E)this;
        }

        public E putStringArrayList(String string2, @Nullable ArrayList<String> arrayList) {
            this.bundle.putStringArrayList(string2, arrayList);
            return (E)this;
        }

        @Override
        public E readFrom(P p2) {
            if (p2 != null) {
                this.bundle.putAll(p2.getBundle());
            }
            return (E)this;
        }
    }

}

