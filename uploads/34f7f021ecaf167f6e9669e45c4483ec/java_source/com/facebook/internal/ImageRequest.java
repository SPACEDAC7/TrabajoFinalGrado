/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.content.Context
 *  android.net.Uri
 *  android.net.Uri$Builder
 */
package com.facebook.internal;

import android.content.Context;
import android.net.Uri;
import com.facebook.internal.ImageResponse;
import com.facebook.internal.Validate;
import java.util.Locale;

public class ImageRequest {
    private static final String AUTHORITY = "graph.facebook.com";
    private static final String HEIGHT_PARAM = "height";
    private static final String MIGRATION_PARAM = "migration_overrides";
    private static final String MIGRATION_VALUE = "{october_2012:true}";
    private static final String PATH = "%s/picture";
    private static final String SCHEME = "https";
    public static final int UNSPECIFIED_DIMENSION = 0;
    private static final String WIDTH_PARAM = "width";
    private boolean allowCachedRedirects;
    private Callback callback;
    private Object callerTag;
    private Context context;
    private Uri imageUri;

    /*
     * Enabled aggressive block sorting
     */
    private ImageRequest(Builder object) {
        this.context = ((Builder)object).context;
        this.imageUri = ((Builder)object).imageUrl;
        this.callback = ((Builder)object).callback;
        this.allowCachedRedirects = ((Builder)object).allowCachedRedirects;
        object = ((Builder)object).callerTag == null ? new Object() : ((Builder)object).callerTag;
        this.callerTag = object;
    }

    public static Uri getProfilePictureUri(String string2, int n2, int n3) {
        Validate.notNullOrEmpty(string2, "userId");
        n2 = Math.max(n2, 0);
        n3 = Math.max(n3, 0);
        if (n2 == 0 && n3 == 0) {
            throw new IllegalArgumentException("Either width or height must be greater than 0");
        }
        string2 = new Uri.Builder().scheme("https").authority("graph.facebook.com").path(String.format(Locale.US, "%s/picture", string2));
        if (n3 != 0) {
            string2.appendQueryParameter("height", String.valueOf(n3));
        }
        if (n2 != 0) {
            string2.appendQueryParameter("width", String.valueOf(n2));
        }
        string2.appendQueryParameter("migration_overrides", "{october_2012:true}");
        return string2.build();
    }

    public Callback getCallback() {
        return this.callback;
    }

    public Object getCallerTag() {
        return this.callerTag;
    }

    public Context getContext() {
        return this.context;
    }

    public Uri getImageUri() {
        return this.imageUri;
    }

    public boolean isCachedRedirectAllowed() {
        return this.allowCachedRedirects;
    }

    public static class Builder {
        private boolean allowCachedRedirects;
        private Callback callback;
        private Object callerTag;
        private Context context;
        private Uri imageUrl;

        public Builder(Context context, Uri uri) {
            Validate.notNull((Object)uri, "imageUri");
            this.context = context;
            this.imageUrl = uri;
        }

        public ImageRequest build() {
            return new ImageRequest(this);
        }

        public Builder setAllowCachedRedirects(boolean bl) {
            this.allowCachedRedirects = bl;
            return this;
        }

        public Builder setCallback(Callback callback) {
            this.callback = callback;
            return this;
        }

        public Builder setCallerTag(Object object) {
            this.callerTag = object;
            return this;
        }
    }

    public static interface Callback {
        public void onCompleted(ImageResponse var1);
    }

}

