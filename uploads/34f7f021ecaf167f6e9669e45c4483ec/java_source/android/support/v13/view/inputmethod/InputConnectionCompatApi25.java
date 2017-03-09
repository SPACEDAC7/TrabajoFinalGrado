/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.os.Bundle
 *  android.view.inputmethod.InputConnection
 *  android.view.inputmethod.InputConnectionWrapper
 *  android.view.inputmethod.InputContentInfo
 */
package android.support.v13.view.inputmethod;

import android.os.Bundle;
import android.view.inputmethod.InputConnection;
import android.view.inputmethod.InputConnectionWrapper;
import android.view.inputmethod.InputContentInfo;

final class InputConnectionCompatApi25 {
    InputConnectionCompatApi25() {
    }

    public static boolean commitContent(InputConnection inputConnection, Object object, int n2, Bundle bundle) {
        return inputConnection.commitContent((InputContentInfo)object, n2, bundle);
    }

    public static InputConnection createWrapper(InputConnection inputConnection, final OnCommitContentListener onCommitContentListener) {
        return new InputConnectionWrapper(inputConnection, false){

            public boolean commitContent(InputContentInfo inputContentInfo, int n2, Bundle bundle) {
                if (onCommitContentListener.onCommitContent((Object)inputContentInfo, n2, bundle)) {
                    return true;
                }
                return super.commitContent(inputContentInfo, n2, bundle);
            }
        };
    }

    public static interface OnCommitContentListener {
        public boolean onCommitContent(Object var1, int var2, Bundle var3);
    }

}

