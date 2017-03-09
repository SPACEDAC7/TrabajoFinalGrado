/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.net.Uri
 *  android.net.Uri$Builder
 *  android.text.TextUtils
 */
package com.buzzfeed.toolkit.util;

import android.net.Uri;
import android.support.annotation.Nullable;
import android.text.TextUtils;

public abstract class BaseUrlGenerator {
    public Uri.Builder mUriBuilder;

    protected void addParam(@Nullable String string2, @Nullable String string3) {
        if (TextUtils.isEmpty((CharSequence)string2) || TextUtils.isEmpty((CharSequence)string3)) {
            return;
        }
        this.mUriBuilder.appendQueryParameter(string2, string3);
    }

    protected void addPath(@Nullable String string2) {
        if (TextUtils.isEmpty((CharSequence)string2)) {
            return;
        }
        this.mUriBuilder.appendPath(string2);
    }

    public abstract String generateUrlString();

    protected String getFinalUrlString() {
        return Uri.decode((String)this.mUriBuilder.build().toString());
    }

    protected void initUrlString(String string2) {
        this.mUriBuilder = Uri.parse((String)string2).buildUpon();
    }
}

