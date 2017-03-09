/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.content.Context
 *  android.content.Intent
 *  android.view.View
 *  android.view.View$OnClickListener
 */
package com.buzzfeed.toolkit.util;

import android.content.Context;
import android.content.Intent;
import android.support.annotation.NonNull;
import android.support.annotation.StringRes;
import android.support.design.widget.Snackbar;
import android.support.v4.content.ContextCompat;
import android.view.View;
import com.buzzfeed.toolkit.R;
import com.buzzfeed.toolkit.util.SnackbarErrorHandler;

public abstract class PageErrorHandler
extends SnackbarErrorHandler {
    private static final String TAG_LOADING_ERROR = "loading_error";
    private static final String TAG_SETTINGS = "settings";
    private static final String TAG_TRY_AGAIN = "try_again";
    private boolean mErrorState = false;
    private final boolean mUseActionHandler;

    public PageErrorHandler(@NonNull View view, boolean bl) {
        super(view);
        this.mUseActionHandler = bl;
    }

    private void showLoadingErrorSnackbar() {
        this.showSnackbarWithErrorMsg(R.string.snackbar_message_server_error, "loading_error");
        this.setErrorOccurred(true);
    }

    /*
     * Enabled aggressive block sorting
     */
    private void showSettingsSnackbar() {
        if (!this.mUseActionHandler) {
            this.showSnackbarWithErrorMsg(R.string.snackbar_message_no_connection);
        } else {
            this.showSnackbarWithUserAction(R.string.snackbar_title_settings, R.string.snackbar_message_no_connection, new View.OnClickListener(){

                public void onClick(View view) {
                    if (PageErrorHandler.this.getView() != null) {
                        PageErrorHandler.this.getView().getContext().startActivity(new Intent("android.settings.SETTINGS"));
                    }
                }
            }, "settings");
        }
        this.setErrorOccurred(true);
    }

    private void showTryAgainSnackbar() {
        this.showSnackbarWithUserAction(R.string.snackbar_title_try_again, R.string.snackbar_message_server_error, new View.OnClickListener(){

            public void onClick(View view) {
                PageErrorHandler.this.onTryAgainClicked();
            }
        }, "try_again");
        this.setErrorOccurred(true);
    }

    @Override
    public void dismissSnackbarIfVisible() {
        super.dismissSnackbarIfVisible();
        this.mErrorState = false;
    }

    public boolean hasErrorOccurred() {
        return this.mErrorState;
    }

    @Override
    public void onAuthFailureError() {
        this.showTryAgainSnackbar();
    }

    @Override
    protected Snackbar onCreateSnackbar(@NonNull View view, @StringRes int n2, int n3) {
        Snackbar snackbar = Snackbar.make(view, n2, n3);
        snackbar.setActionTextColor(ContextCompat.getColor(view.getContext(), R.color.buzzfeed_yellow));
        return snackbar;
    }

    @Override
    public void onNoConnectionError() {
        this.showSettingsSnackbar();
    }

    @Override
    public void onResourceNotFoundError() {
        this.showLoadingErrorSnackbar();
    }

    @Override
    public void onServerError() {
        this.showTryAgainSnackbar();
    }

    @Override
    public void onTimeoutError() {
        this.showTryAgainSnackbar();
    }

    public abstract void onTryAgainClicked();

    @Override
    public void onUnknownError() {
        this.showTryAgainSnackbar();
    }

    public boolean setErrorOccurred(boolean bl) {
        this.mErrorState = bl;
        return bl;
    }

}

