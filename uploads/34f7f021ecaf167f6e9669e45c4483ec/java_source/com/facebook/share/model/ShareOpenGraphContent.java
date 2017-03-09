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
import com.facebook.share.model.ShareOpenGraphAction;

public final class ShareOpenGraphContent
extends ShareContent<ShareOpenGraphContent, Builder> {
    public static final Parcelable.Creator<ShareOpenGraphContent> CREATOR = new Parcelable.Creator<ShareOpenGraphContent>(){

        public ShareOpenGraphContent createFromParcel(Parcel parcel) {
            return new ShareOpenGraphContent(parcel);
        }

        public ShareOpenGraphContent[] newArray(int n2) {
            return new ShareOpenGraphContent[n2];
        }
    };
    private final ShareOpenGraphAction action;
    private final String previewPropertyName;

    ShareOpenGraphContent(Parcel parcel) {
        super(parcel);
        this.action = new ShareOpenGraphAction.Builder().readFrom(parcel).build();
        this.previewPropertyName = parcel.readString();
    }

    private ShareOpenGraphContent(Builder builder) {
        super(builder);
        this.action = builder.action;
        this.previewPropertyName = builder.previewPropertyName;
    }

    @Override
    public int describeContents() {
        return 0;
    }

    @Nullable
    public ShareOpenGraphAction getAction() {
        return this.action;
    }

    @Nullable
    public String getPreviewPropertyName() {
        return this.previewPropertyName;
    }

    @Override
    public void writeToParcel(Parcel parcel, int n2) {
        super.writeToParcel(parcel, n2);
        parcel.writeParcelable((Parcelable)this.action, 0);
        parcel.writeString(this.previewPropertyName);
    }

    public static final class Builder
    extends ShareContent.Builder<ShareOpenGraphContent, Builder> {
        private ShareOpenGraphAction action;
        private String previewPropertyName;

        @Override
        public ShareOpenGraphContent build() {
            return new ShareOpenGraphContent(this);
        }

        @Override
        public Builder readFrom(Parcel parcel) {
            return this.readFrom((ShareOpenGraphContent)parcel.readParcelable(ShareOpenGraphContent.class.getClassLoader()));
        }

        @Override
        public Builder readFrom(ShareOpenGraphContent shareOpenGraphContent) {
            if (shareOpenGraphContent == null) {
                return this;
            }
            return ((Builder)super.readFrom(shareOpenGraphContent)).setAction(shareOpenGraphContent.getAction()).setPreviewPropertyName(shareOpenGraphContent.getPreviewPropertyName());
        }

        /*
         * Enabled aggressive block sorting
         */
        public Builder setAction(@Nullable ShareOpenGraphAction shareOpenGraphAction) {
            shareOpenGraphAction = shareOpenGraphAction == null ? null : new ShareOpenGraphAction.Builder().readFrom(shareOpenGraphAction).build();
            this.action = shareOpenGraphAction;
            return this;
        }

        public Builder setPreviewPropertyName(@Nullable String string2) {
            this.previewPropertyName = string2;
            return this;
        }
    }

}

