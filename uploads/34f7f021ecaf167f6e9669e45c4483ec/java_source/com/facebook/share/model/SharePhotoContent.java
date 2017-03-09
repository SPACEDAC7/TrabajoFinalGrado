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
import com.facebook.share.model.ShareContent;
import com.facebook.share.model.ShareModel;
import com.facebook.share.model.ShareModelBuilder;
import com.facebook.share.model.SharePhoto;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

public final class SharePhotoContent
extends ShareContent<SharePhotoContent, Builder> {
    public static final Parcelable.Creator<SharePhotoContent> CREATOR = new Parcelable.Creator<SharePhotoContent>(){

        public SharePhotoContent createFromParcel(Parcel parcel) {
            return new SharePhotoContent(parcel);
        }

        public SharePhotoContent[] newArray(int n2) {
            return new SharePhotoContent[n2];
        }
    };
    private final List<SharePhoto> photos;

    SharePhotoContent(Parcel parcel) {
        super(parcel);
        this.photos = Collections.unmodifiableList(SharePhoto.Builder.readListFrom(parcel));
    }

    private SharePhotoContent(Builder builder) {
        super(builder);
        this.photos = Collections.unmodifiableList(builder.photos);
    }

    @Override
    public int describeContents() {
        return 0;
    }

    @Nullable
    public List<SharePhoto> getPhotos() {
        return this.photos;
    }

    @Override
    public void writeToParcel(Parcel parcel, int n2) {
        super.writeToParcel(parcel, n2);
        SharePhoto.Builder.writeListTo(parcel, this.photos);
    }

    public static class Builder
    extends ShareContent.Builder<SharePhotoContent, Builder> {
        private final List<SharePhoto> photos = new ArrayList<SharePhoto>();

        public Builder addPhoto(@Nullable SharePhoto sharePhoto) {
            if (sharePhoto != null) {
                this.photos.add(new SharePhoto.Builder().readFrom(sharePhoto).build());
            }
            return this;
        }

        public Builder addPhotos(@Nullable List<SharePhoto> object) {
            if (object != null) {
                object = object.iterator();
                while (object.hasNext()) {
                    this.addPhoto((SharePhoto)object.next());
                }
            }
            return this;
        }

        @Override
        public SharePhotoContent build() {
            return new SharePhotoContent(this);
        }

        @Override
        public Builder readFrom(Parcel parcel) {
            return this.readFrom((SharePhotoContent)parcel.readParcelable(SharePhotoContent.class.getClassLoader()));
        }

        @Override
        public Builder readFrom(SharePhotoContent sharePhotoContent) {
            if (sharePhotoContent == null) {
                return this;
            }
            return ((Builder)super.readFrom(sharePhotoContent)).addPhotos(sharePhotoContent.getPhotos());
        }

        public Builder setPhotos(@Nullable List<SharePhoto> list) {
            this.photos.clear();
            this.addPhotos(list);
            return this;
        }
    }

}

