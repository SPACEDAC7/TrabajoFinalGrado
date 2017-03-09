/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.net.Uri
 */
package com.bumptech.glide.load.model;

import android.net.Uri;
import java.util.List;

final class AssetUriParser {
    private static final String ASSET_PATH_SEGMENT = "android_asset";
    private static final String ASSET_PREFIX = "file:///android_asset/";
    private static final int ASSET_PREFIX_LENGTH = "file:///android_asset/".length();

    private AssetUriParser() {
    }

    public static boolean isAssetUri(Uri uri) {
        boolean bl;
        boolean bl2 = bl = false;
        if ("file".equals(uri.getScheme())) {
            bl2 = bl;
            if (!uri.getPathSegments().isEmpty()) {
                bl2 = bl;
                if ("android_asset".equals(uri.getPathSegments().get(0))) {
                    bl2 = true;
                }
            }
        }
        return bl2;
    }

    public static String toAssetPath(Uri uri) {
        return uri.toString().substring(ASSET_PREFIX_LENGTH);
    }
}

