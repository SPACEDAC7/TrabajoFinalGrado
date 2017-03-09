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
import com.facebook.share.model.ShareModel;
import com.facebook.share.model.ShareModelBuilder;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public final class SharePhoto
implements ShareModel {
    public static final Parcelable.Creator<SharePhoto> CREATOR = new Parcelable.Creator<SharePhoto>(){

        public SharePhoto createFromParcel(Parcel parcel) {
            return new SharePhoto(parcel);
        }

        public SharePhoto[] newArray(int n2) {
            return new SharePhoto[n2];
        }
    };
    private final Bitmap bitmap;
    private final Uri imageUrl;
    private final boolean userGenerated;

    /*
     * Enabled aggressive block sorting
     */
    SharePhoto(Parcel parcel) {
        this.bitmap = (Bitmap)parcel.readParcelable(Bitmap.class.getClassLoader());
        this.imageUrl = (Uri)parcel.readParcelable(Uri.class.getClassLoader());
        boolean bl = parcel.readByte() != 0;
        this.userGenerated = bl;
    }

    private SharePhoto(Builder builder) {
        this.bitmap = builder.bitmap;
        this.imageUrl = builder.imageUrl;
        this.userGenerated = builder.userGenerated;
    }

    public int describeContents() {
        return 0;
    }

    @Nullable
    public Bitmap getBitmap() {
        return this.bitmap;
    }

    @Nullable
    public Uri getImageUrl() {
        return this.imageUrl;
    }

    public boolean getUserGenerated() {
        return this.userGenerated;
    }

    public void writeToParcel(Parcel parcel, int n2) {
        n2 = 0;
        parcel.writeParcelable((Parcelable)this.bitmap, 0);
        parcel.writeParcelable((Parcelable)this.imageUrl, 0);
        if (this.userGenerated) {
            n2 = 1;
        }
        parcel.writeByte((byte)n2);
    }

    public static final class Builder
    implements ShareModelBuilder<SharePhoto, Builder> {
        private Bitmap bitmap;
        private Uri imageUrl;
        private boolean userGenerated;

        public static List<SharePhoto> readListFrom(Parcel parcel) {
            ArrayList<SharePhoto> arrayList = new ArrayList<SharePhoto>();
            parcel.readTypedList(arrayList, SharePhoto.CREATOR);
            return arrayList;
        }

        public static void writeListTo(Parcel parcel, List<SharePhoto> object) {
            ArrayList<SharePhoto> arrayList = new ArrayList<SharePhoto>();
            object = object.iterator();
            while (object.hasNext()) {
                arrayList.add((SharePhoto)object.next());
            }
            parcel.writeTypedList(arrayList);
        }

        @Override
        public SharePhoto build() {
            return new SharePhoto(this);
        }

        Bitmap getBitmap() {
            return this.bitmap;
        }

        Uri getImageUrl() {
            return this.imageUrl;
        }

        @Override
        public Builder readFrom(Parcel parcel) {
            return this.readFrom((SharePhoto)parcel.readParcelable(SharePhoto.class.getClassLoader()));
        }

        @Override
        public Builder readFrom(SharePhoto sharePhoto) {
            if (sharePhoto == null) {
                return this;
            }
            return this.setBitmap(sharePhoto.getBitmap()).setImageUrl(sharePhoto.getImageUrl()).setUserGenerated(sharePhoto.getUserGenerated());
        }

        public Builder setBitmap(@Nullable Bitmap bitmap) {
            this.bitmap = bitmap;
            return this;
        }

        public Builder setImageUrl(@Nullable Uri uri) {
            this.imageUrl = uri;
            return this;
        }

        public Builder setUserGenerated(boolean bl) {
            this.userGenerated = bl;
            return this;
        }
    }

}

