/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.net.Uri
 *  android.os.Parcel
 *  android.os.Parcelable
 */
package com.facebook.share.model;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import android.support.annotation.Nullable;
import com.facebook.share.model.ShareModel;
import com.facebook.share.model.ShareModelBuilder;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public abstract class ShareContent<P extends ShareContent, E extends Builder>
implements ShareModel {
    private final Uri contentUrl;
    private final List<String> peopleIds;
    private final String placeId;
    private final String ref;

    ShareContent(Parcel parcel) {
        this.contentUrl = (Uri)parcel.readParcelable(Uri.class.getClassLoader());
        this.peopleIds = this.readUnmodifiableStringList(parcel);
        this.placeId = parcel.readString();
        this.ref = parcel.readString();
    }

    protected ShareContent(Builder builder) {
        this.contentUrl = builder.contentUrl;
        this.peopleIds = builder.peopleIds;
        this.placeId = builder.placeId;
        this.ref = builder.ref;
    }

    private List<String> readUnmodifiableStringList(Parcel parcel) {
        ArrayList arrayList = new ArrayList();
        parcel.readStringList(arrayList);
        if (arrayList.size() == 0) {
            return null;
        }
        return Collections.unmodifiableList(arrayList);
    }

    public int describeContents() {
        return 0;
    }

    @Nullable
    public Uri getContentUrl() {
        return this.contentUrl;
    }

    @Nullable
    public List<String> getPeopleIds() {
        return this.peopleIds;
    }

    @Nullable
    public String getPlaceId() {
        return this.placeId;
    }

    @Nullable
    public String getRef() {
        return this.ref;
    }

    public void writeToParcel(Parcel parcel, int n2) {
        parcel.writeParcelable((Parcelable)this.contentUrl, 0);
        parcel.writeStringList(this.peopleIds);
        parcel.writeString(this.placeId);
        parcel.writeString(this.ref);
    }

    public static abstract class Builder<P extends ShareContent, E extends Builder>
    implements ShareModelBuilder<P, E> {
        private Uri contentUrl;
        private List<String> peopleIds;
        private String placeId;
        private String ref;

        @Override
        public E readFrom(P p2) {
            if (p2 == null) {
                return (E)this;
            }
            return this.setContentUrl(p2.getContentUrl()).setPeopleIds(p2.getPeopleIds()).setPlaceId(p2.getPlaceId()).setRef(p2.getRef());
        }

        public E setContentUrl(@Nullable Uri uri) {
            this.contentUrl = uri;
            return (E)this;
        }

        /*
         * Enabled aggressive block sorting
         */
        public E setPeopleIds(@Nullable List<String> list) {
            list = list == null ? null : Collections.unmodifiableList(list);
            this.peopleIds = list;
            return (E)this;
        }

        public E setPlaceId(@Nullable String string2) {
            this.placeId = string2;
            return (E)this;
        }

        public E setRef(@Nullable String string2) {
            this.ref = string2;
            return (E)this;
        }
    }

}

