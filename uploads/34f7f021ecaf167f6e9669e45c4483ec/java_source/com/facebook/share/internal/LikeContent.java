/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.os.Parcel
 *  android.os.Parcelable
 */
package com.facebook.share.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.facebook.share.model.ShareModel;
import com.facebook.share.model.ShareModelBuilder;
import com.facebook.share.widget.LikeView;

public class LikeContent
implements ShareModel {
    private final String objectId;
    private final LikeView.ObjectType objectType;

    LikeContent(Parcel parcel) {
        this.objectId = parcel.readString();
        this.objectType = LikeView.ObjectType.fromInt(parcel.readInt());
    }

    private LikeContent(Builder builder) {
        this.objectId = builder.objectId;
        this.objectType = builder.objectType;
    }

    public int describeContents() {
        return 0;
    }

    public String getObjectId() {
        return this.objectId;
    }

    public LikeView.ObjectType getObjectType() {
        return this.objectType;
    }

    public void writeToParcel(Parcel parcel, int n2) {
        parcel.writeString(this.objectId);
        parcel.writeInt(this.objectType.getValue());
    }

    public static class Builder
    implements ShareModelBuilder<LikeContent, Builder> {
        private String objectId;
        private LikeView.ObjectType objectType = LikeView.ObjectType.UNKNOWN;

        @Override
        public LikeContent build() {
            return new LikeContent(this);
        }

        @Override
        public Builder readFrom(Parcel parcel) {
            return this.readFrom((LikeContent)parcel.readParcelable(LikeContent.class.getClassLoader()));
        }

        @Override
        public Builder readFrom(LikeContent likeContent) {
            if (likeContent == null) {
                return this;
            }
            return this.setObjectId(likeContent.getObjectId()).setObjectType(likeContent.getObjectType());
        }

        public Builder setObjectId(String string2) {
            this.objectId = string2;
            return this;
        }

        public Builder setObjectType(LikeView.ObjectType objectType) {
            LikeView.ObjectType objectType2 = objectType;
            if (objectType == null) {
                objectType2 = LikeView.ObjectType.UNKNOWN;
            }
            this.objectType = objectType2;
            return this;
        }
    }

}

