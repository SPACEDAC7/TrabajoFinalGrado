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

public final class AppGroupCreationContent
implements ShareModel {
    private final String description;
    private final String name;
    private AppGroupPrivacy privacy;

    AppGroupCreationContent(Parcel parcel) {
        this.name = parcel.readString();
        this.description = parcel.readString();
        this.privacy = AppGroupPrivacy.valueOf(parcel.readString());
    }

    private AppGroupCreationContent(Builder builder) {
        this.name = builder.name;
        this.description = builder.description;
        this.privacy = builder.privacy;
    }

    public int describeContents() {
        return 0;
    }

    public AppGroupPrivacy getAppGroupPrivacy() {
        return this.privacy;
    }

    public String getDescription() {
        return this.description;
    }

    public String getName() {
        return this.name;
    }

    public void writeToParcel(Parcel parcel, int n2) {
        parcel.writeString(this.name);
        parcel.writeString(this.description);
        parcel.writeString(this.privacy.toString());
    }

    public static enum AppGroupPrivacy {
        Open,
        Closed;
        

        private AppGroupPrivacy() {
        }
    }

    public static class Builder
    implements ShareModelBuilder<AppGroupCreationContent, Builder> {
        private String description;
        private String name;
        private AppGroupPrivacy privacy;

        @Override
        public AppGroupCreationContent build() {
            return new AppGroupCreationContent(this);
        }

        @Override
        public Builder readFrom(Parcel parcel) {
            return this.readFrom((AppGroupCreationContent)parcel.readParcelable(AppGroupCreationContent.class.getClassLoader()));
        }

        @Override
        public Builder readFrom(AppGroupCreationContent appGroupCreationContent) {
            if (appGroupCreationContent == null) {
                return this;
            }
            return this.setName(appGroupCreationContent.getName()).setDescription(appGroupCreationContent.getDescription()).setAppGroupPrivacy(appGroupCreationContent.getAppGroupPrivacy());
        }

        public Builder setAppGroupPrivacy(AppGroupPrivacy appGroupPrivacy) {
            this.privacy = appGroupPrivacy;
            return this;
        }

        public Builder setDescription(String string2) {
            this.description = string2;
            return this;
        }

        public Builder setName(String string2) {
            this.name = string2;
            return this;
        }
    }

}

