/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.net.Uri
 */
package com.facebook.messenger;

import android.net.Uri;
import com.facebook.messenger.ShareToMessengerParams;

public class ShareToMessengerParamsBuilder {
    private Uri mExternalUri;
    private String mMetaData;
    private final String mMimeType;
    private final Uri mUri;

    ShareToMessengerParamsBuilder(Uri uri, String string2) {
        this.mUri = uri;
        this.mMimeType = string2;
    }

    public ShareToMessengerParams build() {
        return new ShareToMessengerParams(this);
    }

    public Uri getExternalUri() {
        return this.mExternalUri;
    }

    public String getMetaData() {
        return this.mMetaData;
    }

    public String getMimeType() {
        return this.mMimeType;
    }

    public Uri getUri() {
        return this.mUri;
    }

    public ShareToMessengerParamsBuilder setExternalUri(Uri uri) {
        this.mExternalUri = uri;
        return this;
    }

    public ShareToMessengerParamsBuilder setMetaData(String string2) {
        this.mMetaData = string2;
        return this;
    }
}

