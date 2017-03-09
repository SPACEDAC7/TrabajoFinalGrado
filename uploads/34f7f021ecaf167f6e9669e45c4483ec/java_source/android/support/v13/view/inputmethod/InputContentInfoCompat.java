/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.content.ClipDescription
 *  android.net.Uri
 */
package android.support.v13.view.inputmethod;

import android.content.ClipDescription;
import android.net.Uri;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.v13.view.inputmethod.InputContentInfoCompatApi25;
import android.support.v4.os.BuildCompat;

public final class InputContentInfoCompat {
    private final InputContentInfoCompatImpl mImpl;

    public InputContentInfoCompat(@NonNull Uri uri, @NonNull ClipDescription clipDescription, @Nullable Uri uri2) {
        if (BuildCompat.isAtLeastNMR1()) {
            this.mImpl = new Api25InputContentInfoCompatImpl(uri, clipDescription, uri2);
            return;
        }
        this.mImpl = new BaseInputContentInfoCompatImpl(uri, clipDescription, uri2);
    }

    private InputContentInfoCompat(@NonNull InputContentInfoCompatImpl inputContentInfoCompatImpl) {
        this.mImpl = inputContentInfoCompatImpl;
    }

    /*
     * Enabled aggressive block sorting
     */
    @Nullable
    public static InputContentInfoCompat wrap(@Nullable Object object) {
        if (object == null || !BuildCompat.isAtLeastNMR1()) {
            return null;
        }
        return new InputContentInfoCompat(new Api25InputContentInfoCompatImpl(object));
    }

    @NonNull
    public Uri getContentUri() {
        return this.mImpl.getContentUri();
    }

    @NonNull
    public ClipDescription getDescription() {
        return this.mImpl.getDescription();
    }

    @Nullable
    public Uri getLinkUri() {
        return this.mImpl.getLinkUri();
    }

    public void releasePermission() {
        this.mImpl.releasePermission();
    }

    public void requestPermission() {
        this.mImpl.requestPermission();
    }

    @Nullable
    public Object unwrap() {
        return this.mImpl.getInputContentInfo();
    }

    private static final class Api25InputContentInfoCompatImpl
    implements InputContentInfoCompatImpl {
        @NonNull
        final Object mObject;

        public Api25InputContentInfoCompatImpl(@NonNull Uri uri, @NonNull ClipDescription clipDescription, @Nullable Uri uri2) {
            this.mObject = InputContentInfoCompatApi25.create(uri, clipDescription, uri2);
        }

        public Api25InputContentInfoCompatImpl(@NonNull Object object) {
            this.mObject = object;
        }

        @NonNull
        @Override
        public Uri getContentUri() {
            return InputContentInfoCompatApi25.getContentUri(this.mObject);
        }

        @NonNull
        @Override
        public ClipDescription getDescription() {
            return InputContentInfoCompatApi25.getDescription(this.mObject);
        }

        @Nullable
        @Override
        public Object getInputContentInfo() {
            return this.mObject;
        }

        @Nullable
        @Override
        public Uri getLinkUri() {
            return InputContentInfoCompatApi25.getLinkUri(this.mObject);
        }

        @Override
        public void releasePermission() {
            InputContentInfoCompatApi25.releasePermission(this.mObject);
        }

        @Override
        public void requestPermission() {
            InputContentInfoCompatApi25.requestPermission(this.mObject);
        }
    }

    private static final class BaseInputContentInfoCompatImpl
    implements InputContentInfoCompatImpl {
        @NonNull
        private final Uri mContentUri;
        @NonNull
        private final ClipDescription mDescription;
        @Nullable
        private final Uri mLinkUri;

        public BaseInputContentInfoCompatImpl(@NonNull Uri uri, @NonNull ClipDescription clipDescription, @Nullable Uri uri2) {
            this.mContentUri = uri;
            this.mDescription = clipDescription;
            this.mLinkUri = uri2;
        }

        @NonNull
        @Override
        public Uri getContentUri() {
            return this.mContentUri;
        }

        @NonNull
        @Override
        public ClipDescription getDescription() {
            return this.mDescription;
        }

        @Nullable
        @Override
        public Object getInputContentInfo() {
            return null;
        }

        @Nullable
        @Override
        public Uri getLinkUri() {
            return this.mLinkUri;
        }

        @Override
        public void releasePermission() {
        }

        @Override
        public void requestPermission() {
        }
    }

    private static interface InputContentInfoCompatImpl {
        @NonNull
        public Uri getContentUri();

        @NonNull
        public ClipDescription getDescription();

        @Nullable
        public Object getInputContentInfo();

        @Nullable
        public Uri getLinkUri();

        public void releasePermission();

        public void requestPermission();
    }

}

