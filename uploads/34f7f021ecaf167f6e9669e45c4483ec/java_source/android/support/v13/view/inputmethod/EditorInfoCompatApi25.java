/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.view.inputmethod.EditorInfo
 */
package android.support.v13.view.inputmethod;

import android.view.inputmethod.EditorInfo;

final class EditorInfoCompatApi25 {
    EditorInfoCompatApi25() {
    }

    public static String[] getContentMimeTypes(EditorInfo editorInfo) {
        return editorInfo.contentMimeTypes;
    }

    public static void setContentMimeTypes(EditorInfo editorInfo, String[] arrstring) {
        editorInfo.contentMimeTypes = arrstring;
    }
}

