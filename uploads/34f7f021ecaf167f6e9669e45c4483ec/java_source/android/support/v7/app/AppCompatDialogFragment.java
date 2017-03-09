/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.app.Dialog
 *  android.content.Context
 *  android.os.Bundle
 *  android.view.Window
 */
package android.support.v7.app;

import android.app.Dialog;
import android.content.Context;
import android.os.Bundle;
import android.support.annotation.RestrictTo;
import android.support.v4.app.DialogFragment;
import android.support.v7.app.AppCompatDialog;
import android.view.Window;

public class AppCompatDialogFragment
extends DialogFragment {
    @Override
    public Dialog onCreateDialog(Bundle bundle) {
        return new AppCompatDialog(this.getContext(), this.getTheme());
    }

    @RestrictTo(value={RestrictTo.Scope.GROUP_ID})
    @Override
    public void setupDialog(Dialog dialog, int n2) {
        if (dialog instanceof AppCompatDialog) {
            AppCompatDialog appCompatDialog = (AppCompatDialog)dialog;
            switch (n2) {
                default: {
                    return;
                }
                case 3: {
                    dialog.getWindow().addFlags(24);
                }
                case 1: 
                case 2: 
            }
            appCompatDialog.supportRequestWindowFeature(1);
            return;
        }
        super.setupDialog(dialog, n2);
    }
}

