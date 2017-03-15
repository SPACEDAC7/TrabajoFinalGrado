/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.content.Intent
 *  android.net.Uri
 *  android.os.Bundle
 *  android.text.TextUtils
 *  android.util.Log
 *  com.google.android.gms.plus.internal.model.people.PersonEntity
 *  com.google.android.gms.plus.internal.model.people.PersonEntity$ImageEntity
 *  com.google.android.gms.plus.model.people.Person
 */
package com.google.android.gms.plus;

import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Log;
import com.google.android.gms.plus.internal.model.people.PersonEntity;
import com.google.android.gms.plus.model.people.Person;

public final class PlusShare {
    public static final String EXTRA_CALL_TO_ACTION = "com.google.android.apps.plus.CALL_TO_ACTION";
    public static final String EXTRA_CONTENT_DEEP_LINK_ID = "com.google.android.apps.plus.CONTENT_DEEP_LINK_ID";
    public static final String EXTRA_CONTENT_DEEP_LINK_METADATA = "com.google.android.apps.plus.CONTENT_DEEP_LINK_METADATA";
    public static final String EXTRA_CONTENT_URL = "com.google.android.apps.plus.CONTENT_URL";
    public static final String EXTRA_IS_INTERACTIVE_POST = "com.google.android.apps.plus.GOOGLE_INTERACTIVE_POST";
    public static final String EXTRA_SENDER_ID = "com.google.android.apps.plus.SENDER_ID";
    public static final String KEY_CALL_TO_ACTION_DEEP_LINK_ID = "deepLinkId";
    public static final String KEY_CALL_TO_ACTION_LABEL = "label";
    public static final String KEY_CALL_TO_ACTION_URL = "url";
    public static final String KEY_CONTENT_DEEP_LINK_METADATA_DESCRIPTION = "description";
    public static final String KEY_CONTENT_DEEP_LINK_METADATA_THUMBNAIL_URL = "thumbnailUrl";
    public static final String KEY_CONTENT_DEEP_LINK_METADATA_TITLE = "title";
    public static final String PARAM_CONTENT_DEEP_LINK_ID = "deep_link_id";

    @Deprecated
    protected PlusShare() {
        throw new AssertionError();
    }

    public static Person createPerson(String string2, String string3) {
        if (TextUtils.isEmpty((CharSequence)string2)) {
            throw new IllegalArgumentException("MinimalPerson ID must not be empty.");
        }
        if (TextUtils.isEmpty((CharSequence)string3)) {
            throw new IllegalArgumentException("Display name must not be empty.");
        }
        return new PersonEntity(string3, string2, null, 0, null);
    }

    public static String getDeepLinkId(Intent intent) {
        String string2;
        String string3 = string2 = null;
        if (intent != null) {
            string3 = string2;
            if (intent.getData() != null) {
                string3 = intent.getData().getQueryParameter("deep_link_id");
            }
        }
        return string3;
    }

    public static Bundle zza(String string2, String string3, Uri uri) {
        Bundle bundle = new Bundle();
        bundle.putString("title", string2);
        bundle.putString("description", string3);
        if (uri != null) {
            bundle.putString("thumbnailUrl", uri.toString());
        }
        return bundle;
    }

    protected static boolean zznp(String string2) {
        if (TextUtils.isEmpty((CharSequence)string2)) {
            Log.e((String)"GooglePlusPlatform", (String)"The provided deep-link ID is empty.");
            return false;
        }
        if (string2.contains(" ")) {
            Log.e((String)"GooglePlusPlatform", (String)"Spaces are not allowed in deep-link IDs.");
            return false;
        }
        return true;
    }
}

