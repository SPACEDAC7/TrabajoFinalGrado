/*
 * Decompiled with CFR 0_115.
 */
package com.buzzfeed.android.ui.buffet.fragment;

import android.support.annotation.Nullable;
import android.support.v4.app.Fragment;
import com.buzzfeed.android.ui.buffet.fragment.BuffetFragment;
import com.buzzfeed.android.ui.buffet.listener.OnPageChangeListener;

public class BuffetTabFragment
extends BuffetFragment
implements OnPageChangeListener<Fragment> {
    private boolean mIsCurrentFragmentSelected = false;

    private void handleFragmentSelectionChange() {
        if (this.mIsCurrentFragmentSelected) {
            this.startAutoPlay();
            this.trackScreenView();
            this.recordAttachedViewsForUnitImpression();
            return;
        }
        this.stopAutoPlay();
        this.trackUnitImpressions();
    }

    @Override
    protected boolean isFragmentVisibleToUser() {
        return this.mIsCurrentFragmentSelected;
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    public void onPageSelected(@Nullable Fragment fragment) {
        boolean bl = fragment == this;
        this.mIsCurrentFragmentSelected = bl;
        if (this.isResumed()) {
            this.handleFragmentSelectionChange();
        }
    }

    @Override
    public void onPauseComplete() {
        if (this.mIsCurrentFragmentSelected) {
            this.trackUnitImpressions();
        }
    }

    @Override
    protected void onResumeComplete() {
        if (this.mIsCurrentFragmentSelected) {
            this.trackScreenView();
        }
    }
}

