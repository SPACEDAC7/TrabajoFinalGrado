/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.content.ClipDescription
 *  android.net.Uri
 *  android.os.Bundle
 *  android.os.Parcelable
 *  android.os.ResultReceiver
 *  android.text.TextUtils
 *  android.view.inputmethod.EditorInfo
 *  android.view.inputmethod.InputConnection
 *  android.view.inputmethod.InputConnectionWrapper
 */
package android.support.v13.view.inputmethod;

import android.content.ClipDescription;
import android.net.Uri;
import android.os.Bundle;
import android.os.Parcelable;
import android.os.ResultReceiver;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.v13.view.inputmethod.EditorInfoCompat;
import android.support.v13.view.inputmethod.InputConnectionCompatApi25;
import android.support.v13.view.inputmethod.InputContentInfoCompat;
import android.support.v4.os.BuildCompat;
import android.text.TextUtils;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import android.view.inputmethod.InputConnectionWrapper;

public final class InputConnectionCompat {
    private static final InputConnectionCompatImpl IMPL = BuildCompat.isAtLeastNMR1() ? new Api25InputContentInfoCompatImpl() : new BaseInputContentInfoCompatImpl();
    public static int INPUT_CONTENT_GRANT_READ_URI_PERMISSION = 1;

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    public static boolean commitContent(@NonNull InputConnection inputConnection, @NonNull EditorInfo arrstring, @NonNull InputContentInfoCompat inputContentInfoCompat, int n2, @Nullable Bundle bundle) {
        ClipDescription clipDescription = inputContentInfoCompat.getDescription();
        boolean bl = false;
        arrstring = EditorInfoCompat.getContentMimeTypes((EditorInfo)arrstring);
        int n3 = arrstring.length;
        int n4 = 0;
        do {
            boolean bl2 = bl;
            if (n4 < n3) {
                if (clipDescription.hasMimeType(arrstring[n4])) {
                    return IMPL.commitContent(inputConnection, inputContentInfoCompat, n2, bundle);
                }
            } else {
                if (bl2) return IMPL.commitContent(inputConnection, inputContentInfoCompat, n2, bundle);
                return false;
            }
            ++n4;
        } while (true);
    }

    @NonNull
    public static InputConnection createWrapper(@NonNull InputConnection inputConnection, @NonNull EditorInfo editorInfo, @NonNull OnCommitContentListener onCommitContentListener) {
        if (inputConnection == null) {
            throw new IllegalArgumentException("inputConnection must be non-null");
        }
        if (editorInfo == null) {
            throw new IllegalArgumentException("editorInfo must be non-null");
        }
        if (onCommitContentListener == null) {
            throw new IllegalArgumentException("onCommitContentListener must be non-null");
        }
        return IMPL.createWrapper(inputConnection, editorInfo, onCommitContentListener);
    }

    private static final class Api25InputContentInfoCompatImpl
    implements InputConnectionCompatImpl {
        private Api25InputContentInfoCompatImpl() {
        }

        @Override
        public boolean commitContent(@NonNull InputConnection inputConnection, @NonNull InputContentInfoCompat inputContentInfoCompat, int n2, @Nullable Bundle bundle) {
            return InputConnectionCompatApi25.commitContent(inputConnection, inputContentInfoCompat.unwrap(), n2, bundle);
        }

        @Nullable
        @Override
        public InputConnection createWrapper(@Nullable InputConnection inputConnection, @NonNull EditorInfo editorInfo, final @Nullable OnCommitContentListener onCommitContentListener) {
            return InputConnectionCompatApi25.createWrapper(inputConnection, new InputConnectionCompatApi25.OnCommitContentListener(){

                @Override
                public boolean onCommitContent(Object object, int n2, Bundle bundle) {
                    object = InputContentInfoCompat.wrap(object);
                    return onCommitContentListener.onCommitContent((InputContentInfoCompat)object, n2, bundle);
                }
            });
        }

    }

    static final class BaseInputContentInfoCompatImpl
    implements InputConnectionCompatImpl {
        private static String COMMIT_CONTENT_ACTION = "android.support.v13.view.inputmethod.InputConnectionCompat.COMMIT_CONTENT";
        private static String COMMIT_CONTENT_CONTENT_URI_KEY = "android.support.v13.view.inputmethod.InputConnectionCompat.CONTENT_URI";
        private static String COMMIT_CONTENT_DESCRIPTION_KEY = "android.support.v13.view.inputmethod.InputConnectionCompat.CONTENT_DESCRIPTION";
        private static String COMMIT_CONTENT_FLAGS_KEY;
        private static String COMMIT_CONTENT_LINK_URI_KEY;
        private static String COMMIT_CONTENT_OPTS_KEY;
        private static String COMMIT_CONTENT_RESULT_RECEIVER;

        static {
            COMMIT_CONTENT_LINK_URI_KEY = "android.support.v13.view.inputmethod.InputConnectionCompat.CONTENT_LINK_URI";
            COMMIT_CONTENT_OPTS_KEY = "android.support.v13.view.inputmethod.InputConnectionCompat.CONTENT_OPTS";
            COMMIT_CONTENT_FLAGS_KEY = "android.support.v13.view.inputmethod.InputConnectionCompat.CONTENT_FLAGS";
            COMMIT_CONTENT_RESULT_RECEIVER = "android.support.v13.view.inputmethod.InputConnectionCompat.CONTENT_RESULT_RECEIVER";
        }

        BaseInputContentInfoCompatImpl() {
        }

        /*
         * Enabled aggressive block sorting
         * Enabled unnecessary exception pruning
         * Enabled aggressive exception aggregation
         */
        static boolean handlePerformPrivateCommand(@Nullable String string2, @NonNull Bundle bundle, @NonNull OnCommitContentListener onCommitContentListener) {
            boolean bl;
            block5 : {
                ResultReceiver resultReceiver;
                int n2 = 1;
                if (!TextUtils.equals((CharSequence)COMMIT_CONTENT_ACTION, (CharSequence)string2) || bundle == null) {
                    return false;
                }
                string2 = null;
                try {
                    string2 = resultReceiver = (ResultReceiver)bundle.getParcelable(COMMIT_CONTENT_RESULT_RECEIVER);
                    Uri uri = (Uri)bundle.getParcelable(COMMIT_CONTENT_CONTENT_URI_KEY);
                    string2 = resultReceiver;
                    ClipDescription clipDescription = (ClipDescription)bundle.getParcelable(COMMIT_CONTENT_DESCRIPTION_KEY);
                    string2 = resultReceiver;
                    Uri uri2 = (Uri)bundle.getParcelable(COMMIT_CONTENT_LINK_URI_KEY);
                    string2 = resultReceiver;
                    int n3 = bundle.getInt(COMMIT_CONTENT_FLAGS_KEY);
                    string2 = resultReceiver;
                    bundle = (Bundle)bundle.getParcelable(COMMIT_CONTENT_OPTS_KEY);
                    string2 = resultReceiver;
                    bl = onCommitContentListener.onCommitContent(new InputContentInfoCompat(uri, clipDescription, uri2), n3, bundle);
                    if (resultReceiver == null) break block5;
                    n2 = bl ? 1 : 0;
                }
                catch (Throwable var1_2) {
                    if (string2 != null) {
                        if (!false) {
                            n2 = 0;
                        }
                        string2.send(n2, null);
                    }
                    throw var1_2;
                }
                resultReceiver.send(n2, null);
            }
            return bl;
        }

        @Override
        public boolean commitContent(@NonNull InputConnection inputConnection, @NonNull InputContentInfoCompat inputContentInfoCompat, int n2, @Nullable Bundle bundle) {
            Bundle bundle2 = new Bundle();
            bundle2.putParcelable(COMMIT_CONTENT_CONTENT_URI_KEY, (Parcelable)inputContentInfoCompat.getContentUri());
            bundle2.putParcelable(COMMIT_CONTENT_DESCRIPTION_KEY, (Parcelable)inputContentInfoCompat.getDescription());
            bundle2.putParcelable(COMMIT_CONTENT_LINK_URI_KEY, (Parcelable)inputContentInfoCompat.getLinkUri());
            bundle2.putInt(COMMIT_CONTENT_FLAGS_KEY, n2);
            bundle2.putParcelable(COMMIT_CONTENT_OPTS_KEY, (Parcelable)bundle);
            return inputConnection.performPrivateCommand(COMMIT_CONTENT_ACTION, bundle2);
        }

        @NonNull
        @Override
        public InputConnection createWrapper(@NonNull InputConnection inputConnection, @NonNull EditorInfo editorInfo, final @NonNull OnCommitContentListener onCommitContentListener) {
            if (EditorInfoCompat.getContentMimeTypes(editorInfo).length == 0) {
                return inputConnection;
            }
            return new InputConnectionWrapper(inputConnection, false){

                public boolean performPrivateCommand(String string2, Bundle bundle) {
                    if (BaseInputContentInfoCompatImpl.handlePerformPrivateCommand(string2, bundle, onCommitContentListener)) {
                        return true;
                    }
                    return super.performPrivateCommand(string2, bundle);
                }
            };
        }

    }

    private static interface InputConnectionCompatImpl {
        public boolean commitContent(@NonNull InputConnection var1, @NonNull InputContentInfoCompat var2, int var3, @Nullable Bundle var4);

        @NonNull
        public InputConnection createWrapper(@NonNull InputConnection var1, @NonNull EditorInfo var2, @NonNull OnCommitContentListener var3);
    }

    public static interface OnCommitContentListener {
        public boolean onCommitContent(InputContentInfoCompat var1, int var2, Bundle var3);
    }

}

