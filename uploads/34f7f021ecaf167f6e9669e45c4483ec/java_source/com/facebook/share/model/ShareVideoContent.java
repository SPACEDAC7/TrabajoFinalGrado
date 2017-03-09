/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.graphics.Bitmap
 *  android.net.Uri
 *  android.os.Parcel
 *  android.os.Parcelable
 *  android.os.Parcelable$Creator
 */
package com.facebook.share.model;

import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import android.support.annotation.Nullable;
import com.facebook.share.model.ShareContent;
import com.facebook.share.model.ShareModel;
import com.facebook.share.model.ShareModelBuilder;
import com.facebook.share.model.SharePhoto;
import com.facebook.share.model.ShareVideo;

public final class ShareVideoContent
extends ShareContent<ShareVideoContent, Builder>
implements ShareModel {
    public static final Parcelable.Creator<ShareVideoContent> CREATOR = new Parcelable.Creator<ShareVideoContent>(){

        public ShareVideoContent createFromParcel(Parcel parcel) {
            return new ShareVideoContent(parcel);
        }

        public ShareVideoContent[] newArray(int n2) {
            return new ShareVideoContent[n2];
        }
    };
    private final String contentDescription;
    private final String contentTitle;
    private final SharePhoto previewPhoto;
    private final ShareVideo video;

    /*
     * Enabled aggressive block sorting
     */
    ShareVideoContent(Parcel parcel) {
        super(parcel);
        this.contentDescription = parcel.readString();
        this.contentTitle = parcel.readString();
        ShareModelBuilder shareModelBuilder = new SharePhoto.Builder().readFrom(parcel);
        this.previewPhoto = shareModelBuilder.getImageUrl() != null || shareModelBuilder.getBitmap() != null ? shareModelBuilder.build() : null;
        this.video = new ShareVideo.Builder().readFrom(parcel).build();
    }

    private ShareVideoContent(Builder builder) {
        super(builder);
        this.contentDescription = builder.contentDescription;
        this.contentTitle = builder.contentTitle;
        this.previewPhoto = builder.previewPhoto;
        this.video = builder.video;
    }

    @Override
    public int describeContents() {
        return 0;
    }

    @Nullable
    public String getContentDescription() {
        return this.contentDescription;
    }

    @Nullable
    public String getContentTitle() {
        return this.contentTitle;
    }

    @Nullable
    public SharePhoto getPreviewPhoto() {
        return this.previewPhoto;
    }

    @Nullable
    public ShareVideo getVideo() {
        return this.video;
    }

    @Override
    public void writeToParcel(Parcel parcel, int n2) {
        super.writeToParcel(parcel, n2);
        parcel.writeString(this.contentDescription);
        parcel.writeString(this.contentTitle);
        parcel.writeParcelable((Parcelable)this.previewPhoto, 0);
        parcel.writeParcelable((Parcelable)this.video, 0);
    }

    public static final class Builder
    extends ShareContent.Builder<ShareVideoContent, Builder> {
        private String contentDescription;
        private String contentTitle;
        private SharePhoto previewPhoto;
        private ShareVideo video;

        @Override
        public ShareVideoContent build() {
            return new ShareVideoContent(this);
        }

        @Override
        public Builder readFrom(Parcel parcel) {
            return this.readFrom((ShareVideoContent)parcel.readParcelable(ShareVideoContent.class.getClassLoader()));
        }

        @Override
        public Builder readFrom(ShareVideoContent shareVideoContent) {
            if (shareVideoContent == null) {
                return this;
            }
            return ((Builder)super.readFrom(shareVideoContent)).setContentDescription(shareVideoContent.getContentDescription()).setContentTitle(shareVideoContent.getContentTitle()).setPreviewPhoto(shareVideoContent.getPreviewPhoto()).setVideo(shareVideoContent.getVideo());
        }

        public Builder setContentDescription(@Nullable String string2) {
            this.contentDescription = string2;
            return this;
        }

        public Builder setContentTitle(@Nullable String string2) {
            this.contentTitle = string2;
            return this;
        }

        /*
         * Enabled aggressive block sorting
         */
        public Builder setPreviewPhoto(@Nullable SharePhoto sharePhoto) {
            sharePhoto = sharePhoto == null ? null : new SharePhoto.Builder().readFrom(sharePhoto).build();
            this.previewPhoto = sharePhoto;
            return this;
        }

        public Builder setVideo(@Nullable ShareVideo shareVideo) {
            if (shareVideo == null) {
                return this;
            }
            this.video = new ShareVideo.Builder().readFrom(shareVideo).build();
            return this;
        }
    }

}

