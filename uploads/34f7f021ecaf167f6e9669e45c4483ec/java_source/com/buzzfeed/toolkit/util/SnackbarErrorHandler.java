/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.view.View
 *  android.view.View$OnClickListener
 */
package com.buzzfeed.toolkit.util;

import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.annotation.StringRes;
import android.support.design.widget.Snackbar;
import android.view.View;
import com.buzzfeed.toolkit.util.EZUtil;
import com.buzzfeed.toolkit.util.LogUtil;
import com.buzzfeed.toolkit.util.ObjectUtil;
import com.buzzfeed.toolkit.util.retrofit.RetrofitErrorHandler;
import java.lang.ref.WeakReference;

public abstract class SnackbarErrorHandler
extends RetrofitErrorHandler {
    private final String TAG;
    @Nullable
    protected Snackbar mCurrentSnackbar;
    @Nullable
    private String mCurrentTag;
    private WeakReference<View> mViewRef;

    public SnackbarErrorHandler(@NonNull View view) {
        this.TAG = this.getClass().getSimpleName();
        this.mViewRef = new WeakReference<View>(EZUtil.checkNotNull(view, "View must not be null."));
    }

    private boolean isShowingSnackbar(@Nullable String string2) {
        if (this.mCurrentSnackbar != null && string2 != null && string2.equals(this.mCurrentTag)) {
            return true;
        }
        return false;
    }

    protected boolean canShowSnackbar() {
        if (this.getView() != null) {
            return true;
        }
        return false;
    }

    public void dismissSnackbarIfVisible() {
        if (this.mCurrentSnackbar != null) {
            this.mCurrentSnackbar.dismiss();
        }
        this.mCurrentTag = null;
    }

    @Nullable
    protected View getView() {
        if (this.mViewRef.get() != null) {
            return this.mViewRef.get();
        }
        return null;
    }

    protected abstract Snackbar onCreateSnackbar(@NonNull View var1, @StringRes int var2, int var3);

    protected void showSnackbarWithErrorMsg(@StringRes int n2) {
        this.showSnackbarWithErrorMsg(n2, null);
    }

    protected void showSnackbarWithErrorMsg(@StringRes int n2, @Nullable String string2) {
        if (!this.canShowSnackbar()) {
            LogUtil.d(this.TAG, "Snackbar cannot be shown!");
            return;
        }
        if (this.isShowingSnackbar(string2)) {
            LogUtil.d(this.TAG, "Already showing snackbar with tag: " + string2);
            return;
        }
        Snackbar snackbar = this.onCreateSnackbar(this.mViewRef.get(), n2, -2);
        snackbar.show();
        this.mCurrentSnackbar = snackbar;
        this.mCurrentTag = string2;
    }

    protected void showSnackbarWithUserAction(@StringRes int n2, @StringRes int n3, @NonNull View.OnClickListener onClickListener) {
        this.showSnackbarWithUserAction(n2, n3, onClickListener, null);
    }

    protected void showSnackbarWithUserAction(@StringRes int n2, @StringRes int n3, @NonNull View.OnClickListener onClickListener, @Nullable String string2) {
        if (!this.canShowSnackbar()) {
            LogUtil.d(this.TAG, "Snackbar cannot be shown!");
            return;
        }
        if (this.isShowingSnackbar(string2)) {
            LogUtil.d(this.TAG, "Already showing snackbar with tag: " + string2);
            return;
        }
        Snackbar snackbar = this.onCreateSnackbar(this.mViewRef.get(), n3, -2);
        snackbar.setAction(n2, onClickListener).setCallback(new Snackbar.Callback(){

            @Override
            public void onDismissed(Snackbar snackbar, int n2) {
                super.onDismissed(snackbar, n2);
                if (ObjectUtil.areObjectsEqual(SnackbarErrorHandler.this.mCurrentSnackbar, snackbar)) {
                    SnackbarErrorHandler.this.mCurrentSnackbar = null;
                    SnackbarErrorHandler.this.mCurrentTag = null;
                }
            }
        }).show();
        this.mCurrentSnackbar = snackbar;
        this.mCurrentTag = string2;
    }

}

