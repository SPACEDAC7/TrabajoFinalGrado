/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.content.ClipDescription
 *  android.net.Uri
 *  android.view.inputmethod.InputContentInfo
 */
package android.support.v13.view.inputmethod;

import android.content.ClipDescription;
import android.net.Uri;
import android.view.inputmethod.InputContentInfo;

final class InputContentInfoCompatApi25 {
    InputContentInfoCompatApi25() {
    }

    public static Object create(Uri uri, ClipDescription clipDescription, Uri uri2) {
        return new InputContentInfo(uri, clipDescription, uri2);
    }

    public static Uri getContentUri(Object object) {
        return ((InputContentInfo)object).getContentUri();
    }

    public static ClipDescription getDescription(Object object) {
        return ((InputContentInfo)object).getDescription();
    }

    public static Uri getLinkUri(Object object) {
        return ((InputContentInfo)object).getLinkUri();
    }

    public static void releasePermission(Object object) {
        ((InputContentInfo)object).requestPermission();
    }

    public static void requestPermission(Object object) {
        ((InputContentInfo)object).requestPermission();
    }
}

