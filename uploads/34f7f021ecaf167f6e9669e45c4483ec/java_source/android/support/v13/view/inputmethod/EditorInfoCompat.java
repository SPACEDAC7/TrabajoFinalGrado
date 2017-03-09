/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.os.Bundle
 *  android.view.inputmethod.EditorInfo
 */
package android.support.v13.view.inputmethod;

import android.os.Bundle;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.v13.view.inputmethod.EditorInfoCompatApi25;
import android.support.v4.os.BuildCompat;
import android.view.inputmethod.EditorInfo;

public final class EditorInfoCompat {
    private static final String[] EMPTY_STRING_ARRAY = new String[0];
    private static final EditorInfoCompatImpl IMPL = BuildCompat.isAtLeastNMR1() ? new Api25EditorInfoCompatImpl() : new BaseEditorInfoCompatImpl();

    @NonNull
    public static String[] getContentMimeTypes(EditorInfo editorInfo) {
        return IMPL.getContentMimeTypes(editorInfo);
    }

    public static void setContentMimeTypes(@NonNull EditorInfo editorInfo, @Nullable String[] arrstring) {
        IMPL.setContentMimeTypes(editorInfo, arrstring);
    }

    private static final class Api25EditorInfoCompatImpl
    implements EditorInfoCompatImpl {
        private Api25EditorInfoCompatImpl() {
        }

        @NonNull
        @Override
        public String[] getContentMimeTypes(@NonNull EditorInfo arrstring) {
            if ((arrstring = EditorInfoCompatApi25.getContentMimeTypes((EditorInfo)arrstring)) != null) {
                return arrstring;
            }
            return EMPTY_STRING_ARRAY;
        }

        @Override
        public void setContentMimeTypes(@NonNull EditorInfo editorInfo, @Nullable String[] arrstring) {
            EditorInfoCompatApi25.setContentMimeTypes(editorInfo, arrstring);
        }
    }

    private static final class BaseEditorInfoCompatImpl
    implements EditorInfoCompatImpl {
        private static String CONTENT_MIME_TYPES_KEY = "android.support.v13.view.inputmethod.EditorInfoCompat.CONTENT_MIME_TYPES";

        private BaseEditorInfoCompatImpl() {
        }

        /*
         * Enabled force condition propagation
         * Lifted jumps to return sites
         */
        @NonNull
        @Override
        public String[] getContentMimeTypes(@NonNull EditorInfo arrstring) {
            String[] arrstring2;
            if (arrstring.extras == null) {
                return EMPTY_STRING_ARRAY;
            }
            arrstring = arrstring2 = arrstring.extras.getStringArray(CONTENT_MIME_TYPES_KEY);
            if (arrstring2 != null) return arrstring;
            return EMPTY_STRING_ARRAY;
        }

        @Override
        public void setContentMimeTypes(@NonNull EditorInfo editorInfo, @Nullable String[] arrstring) {
            if (editorInfo.extras == null) {
                editorInfo.extras = new Bundle();
            }
            editorInfo.extras.putStringArray(CONTENT_MIME_TYPES_KEY, arrstring);
        }
    }

    private static interface EditorInfoCompatImpl {
        @NonNull
        public String[] getContentMimeTypes(@NonNull EditorInfo var1);

        public void setContentMimeTypes(@NonNull EditorInfo var1, @Nullable String[] var2);
    }

}

