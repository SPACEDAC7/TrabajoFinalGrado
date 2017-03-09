/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.net.Uri
 *  android.net.Uri$Builder
 */
package com.buzzfeed.toolkit.tenderizer;

import android.net.Uri;
import android.support.annotation.NonNull;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

public class InterpolatedPound {
    private static final String POUND_PATH_SEGMENT = "p";

    /*
     * Enabled aggressive block sorting
     */
    public static Uri addInterpolatedPound(Uri uri, String iterator, boolean bl) {
        Uri.Builder builder = new Uri.Builder().authority(uri.getAuthority()).scheme(uri.getScheme()).fragment(uri.getFragment());
        if (!bl) {
            builder.appendEncodedPath("p");
            builder.appendEncodedPath(iterator);
        }
        boolean bl2 = false;
        if (InterpolatedPound.isInterpolatedPound(uri)) {
            bl2 = true;
        }
        for (int i2 = 0; i2 < uri.getPathSegments().size(); ++i2) {
            if (bl2 && i2 < 2) continue;
            builder.appendEncodedPath((String)uri.getPathSegments().get(i2));
        }
        iterator = uri.getQueryParameterNames().iterator();
        while (iterator.hasNext()) {
            String string2 = (String)iterator.next();
            builder.appendQueryParameter(string2, uri.getQueryParameter(string2));
        }
        return builder.build();
    }

    /*
     * Enabled aggressive block sorting
     */
    public static String getInterpolatedPoundId(@NonNull Uri object) {
        if (!InterpolatedPound.isInterpolatedPound(object = object.getPathSegments()) || object.size() < 2) {
            return null;
        }
        return (String)object.get(1);
    }

    public static boolean isInterpolatedPound(@NonNull Uri uri) {
        return InterpolatedPound.isInterpolatedPound(uri.getPathSegments());
    }

    private static boolean isInterpolatedPound(List<String> list) {
        if (list != null && list.size() > 0 && list.get(0).equals("p")) {
            return true;
        }
        return false;
    }

    public static Uri stripInterpolatedPound(Uri uri) {
        if (!InterpolatedPound.isInterpolatedPound(uri)) {
            return uri;
        }
        List list = uri.getPathSegments();
        uri = uri.buildUpon();
        uri.path("");
        for (int i2 = 2; i2 < list.size(); ++i2) {
            uri.appendEncodedPath((String)list.get(i2));
        }
        return uri.build();
    }
}

