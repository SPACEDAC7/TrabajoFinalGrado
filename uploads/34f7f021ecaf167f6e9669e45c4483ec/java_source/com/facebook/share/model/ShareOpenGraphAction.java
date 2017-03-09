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
import android.support.annotation.Nullable;
import com.facebook.share.model.ShareModel;
import com.facebook.share.model.ShareModelBuilder;
import com.facebook.share.model.ShareOpenGraphValueContainer;

public final class ShareOpenGraphAction
extends ShareOpenGraphValueContainer<ShareOpenGraphAction, Builder> {
    public static final Parcelable.Creator<ShareOpenGraphAction> CREATOR = new Parcelable.Creator<ShareOpenGraphAction>(){

        public ShareOpenGraphAction createFromParcel(Parcel parcel) {
            return new ShareOpenGraphAction(parcel);
        }

        public ShareOpenGraphAction[] newArray(int n2) {
            return new ShareOpenGraphAction[n2];
        }
    };

    ShareOpenGraphAction(Parcel parcel) {
        super(parcel);
    }

    private ShareOpenGraphAction(Builder builder) {
        super(builder);
    }

    @Nullable
    public String getActionType() {
        return this.getString("og:type");
    }

    public static final class Builder
    extends ShareOpenGraphValueContainer.Builder<ShareOpenGraphAction, Builder> {
        private static final String ACTION_TYPE_KEY = "og:type";

        @Override
        public ShareOpenGraphAction build() {
            return new ShareOpenGraphAction(this);
        }

        @Override
        public Builder readFrom(Parcel parcel) {
            return this.readFrom((ShareOpenGraphAction)parcel.readParcelable(ShareOpenGraphAction.class.getClassLoader()));
        }

        @Override
        public Builder readFrom(ShareOpenGraphAction shareOpenGraphAction) {
            if (shareOpenGraphAction == null) {
                return this;
            }
            return ((Builder)super.readFrom(shareOpenGraphAction)).setActionType(shareOpenGraphAction.getActionType());
        }

        public Builder setActionType(String string2) {
            this.putString("og:type", string2);
            return this;
        }
    }

}

