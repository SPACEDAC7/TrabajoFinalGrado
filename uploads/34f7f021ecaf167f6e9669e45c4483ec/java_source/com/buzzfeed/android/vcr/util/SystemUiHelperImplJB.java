/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.annotation.TargetApi
 *  android.app.ActionBar
 *  android.app.Activity
 *  android.view.View
 *  android.view.View$OnSystemUiVisibilityChangeListener
 *  android.view.Window
 */
package com.buzzfeed.android.vcr.util;

import android.annotation.TargetApi;
import android.app.ActionBar;
import android.app.Activity;
import android.view.View;
import android.view.Window;
import com.buzzfeed.android.vcr.util.SystemUiHelper;

@TargetApi(value=16)
class SystemUiHelperImplJB
extends SystemUiHelper.SystemUiHelperImpl
implements View.OnSystemUiVisibilityChangeListener {
    View mDecorView;
    final int mOriginalFlags;

    SystemUiHelperImplJB(Activity activity, int n2, int n3, SystemUiHelper.OnVisibilityChangeListener onVisibilityChangeListener) {
        super(activity, n2, n3, onVisibilityChangeListener);
        this.mDecorView = activity.getWindow().getDecorView();
        this.mDecorView.setOnSystemUiVisibilityChangeListener((View.OnSystemUiVisibilityChangeListener)this);
        this.mOriginalFlags = this.mDecorView.getSystemUiVisibility();
    }

    protected int createHideFlags() {
        int n2;
        int n3 = n2 = this.createLegacyHideFlags();
        if (this.mLevel >= 1) {
            n3 = n2 |= 1284;
            if (this.mLevel >= 2) {
                n3 = n2 | 512;
            }
        }
        return n3;
    }

    protected int createLegacyHideFlags() {
        int n2 = 1;
        if (this.mLevel >= 2) {
            n2 = 1 | 2;
        }
        return n2;
    }

    protected int createShowFlags() {
        int n2 = 0;
        if (this.mLevel >= 1) {
            int n3;
            n2 = n3 = 0 | 1280;
            if (this.mLevel >= 2) {
                n2 = n3 | 512;
            }
        }
        return n2;
    }

    protected int createTestFlags() {
        if (this.mLevel >= 2) {
            return 2;
        }
        return 1;
    }

    @Override
    public void detachView() {
        this.mDecorView.setSystemUiVisibility(this.mOriginalFlags);
        this.mDecorView = null;
    }

    @Override
    void hide() {
        if (this.mIsAttached) {
            this.mDecorView.setSystemUiVisibility(this.createHideFlags());
        }
    }

    protected void onSystemUiHidden() {
        ActionBar actionBar;
        if (this.mLevel == 0 && (actionBar = this.mActivity.getActionBar()) != null) {
            actionBar.hide();
        }
        this.setIsShowing(false);
    }

    protected void onSystemUiShown() {
        ActionBar actionBar;
        if (this.mLevel == 0 && (actionBar = this.mActivity.getActionBar()) != null) {
            actionBar.show();
        }
        this.setIsShowing(true);
    }

    public final void onSystemUiVisibilityChange(int n2) {
        if ((this.createTestFlags() & n2) != 0) {
            this.onSystemUiHidden();
            return;
        }
        this.onSystemUiShown();
    }

    @Override
    void show() {
        if (this.mIsAttached) {
            this.mDecorView.setSystemUiVisibility(this.createShowFlags());
        }
    }
}

