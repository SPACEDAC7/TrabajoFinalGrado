/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.net.Uri
 *  android.os.Parcel
 *  android.os.Parcelable
 *  android.os.Parcelable$Creator
 */
package com.facebook.share.model;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import android.support.annotation.Nullable;
import com.facebook.share.model.ShareModel;
import com.facebook.share.model.ShareModelBuilder;

public final class ShareVideo
implements ShareModel {
    public static final Parcelable.Creator<ShareVideo> CREATOR = new Parcelable.Creator<ShareVideo>(){

        public ShareVideo createFromParcel(Parcel parcel) {
            return new ShareVideo(parcel);
        }

        public ShareVideo[] newArray(int n2) {
            return new ShareVideo[n2];
        }
    };
    private final Uri localUrl;

    ShareVideo(Parcel parcel) {
        this.localUrl = (Uri)parcel.readParcelable(Uri.class.getClassLoader());
    }

    private ShareVideo(Builder builder) {
        this.localUrl = builder.localUrl;
    }

    public int describeContents() {
        return 0;
    }

    @Nullable
    public Uri getLocalUrl() {
        return this.localUrl;
    }

    public void writeToParcel(Parcel parcel, int n2) {
        parcel.writeParcelable((Parcelable)this.localUrl, 0);
    }

    public static final class Builder
    implements ShareModelBuilder<ShareVideo, Builder> {
        private Uri localUrl;

        @Override
        public ShareVideo build() {
            return new ShareVideo(this);
        }

        @Override
        public Builder readFrom(Parcel parcel) {
            return this.readFrom((ShareVideo)parcel.readParcelable(ShareVideo.class.getClassLoader()));
        }

        @Override
        public Builder readFrom(ShareVideo shareVideo) {
            if (shareVideo == null) {
                return this;
            }
            return this.setLocalUrl(shareVideo.getLocalUrl());
        }

        public Builder setLocalUrl(@Nullable Uri uri) {
            this.localUrl = uri;
            return this;
        }
    }

}

