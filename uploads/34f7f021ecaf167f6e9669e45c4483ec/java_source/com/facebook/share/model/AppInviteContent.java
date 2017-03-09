/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.os.Parcel
 *  android.os.Parcelable
 */
package com.facebook.share.model;

import android.os.Parcel;
import android.os.Parcelable;
import com.facebook.share.model.ShareModel;
import com.facebook.share.model.ShareModelBuilder;

public final class AppInviteContent
implements ShareModel {
    private final String applinkUrl;
    private final String previewImageUrl;

    AppInviteContent(Parcel parcel) {
        this.applinkUrl = parcel.readString();
        this.previewImageUrl = parcel.readString();
    }

    private AppInviteContent(Builder builder) {
        this.applinkUrl = builder.applinkUrl;
        this.previewImageUrl = builder.previewImageUrl;
    }

    public int describeContents() {
        return 0;
    }

    public String getApplinkUrl() {
        return this.applinkUrl;
    }

    public String getPreviewImageUrl() {
        return this.previewImageUrl;
    }

    public void writeToParcel(Parcel parcel, int n2) {
        parcel.writeString(this.applinkUrl);
        parcel.writeString(this.previewImageUrl);
    }

    public static class Builder
    implements ShareModelBuilder<AppInviteContent, Builder> {
        private String applinkUrl;
        private String previewImageUrl;

        @Override
        public AppInviteContent build() {
            return new AppInviteContent(this);
        }

        @Override
        public Builder readFrom(Parcel parcel) {
            return this.readFrom((AppInviteContent)parcel.readParcelable(AppInviteContent.class.getClassLoader()));
        }

        @Override
        public Builder readFrom(AppInviteContent appInviteContent) {
            if (appInviteContent == null) {
                return this;
            }
            return this.setApplinkUrl(appInviteContent.getApplinkUrl()).setPreviewImageUrl(appInviteContent.getPreviewImageUrl());
        }

        public Builder setApplinkUrl(String string2) {
            this.applinkUrl = string2;
            return this;
        }

        public Builder setPreviewImageUrl(String string2) {
            this.previewImageUrl = string2;
            return this;
        }
    }

}

