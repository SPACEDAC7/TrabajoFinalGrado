/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.os.Parcel
 *  android.os.Parcelable
 *  android.os.Parcelable$Creator
 */
package com.facebook.share.model;

import android.os.Parcel;
import android.os.Parcelable;
import com.facebook.share.model.ShareModelBuilder;
import com.facebook.share.model.ShareOpenGraphValueContainer;

public final class ShareOpenGraphObject
extends ShareOpenGraphValueContainer<ShareOpenGraphObject, Builder> {
    public static final Parcelable.Creator<ShareOpenGraphObject> CREATOR = new Parcelable.Creator<ShareOpenGraphObject>(){

        public ShareOpenGraphObject createFromParcel(Parcel parcel) {
            return new ShareOpenGraphObject(parcel);
        }

        public ShareOpenGraphObject[] newArray(int n2) {
            return new ShareOpenGraphObject[n2];
        }
    };

    ShareOpenGraphObject(Parcel parcel) {
        super(parcel);
    }

    private ShareOpenGraphObject(Builder builder) {
        super(builder);
    }

    public static final class Builder
    extends ShareOpenGraphValueContainer.Builder<ShareOpenGraphObject, Builder> {
        public Builder() {
            this.putBoolean("fbsdk:create_object", true);
        }

        @Override
        public ShareOpenGraphObject build() {
            return new ShareOpenGraphObject(this);
        }

        @Override
        public Builder readFrom(Parcel parcel) {
            return (Builder)this.readFrom((ShareOpenGraphObject)parcel.readParcelable(ShareOpenGraphObject.class.getClassLoader()));
        }
    }

}

