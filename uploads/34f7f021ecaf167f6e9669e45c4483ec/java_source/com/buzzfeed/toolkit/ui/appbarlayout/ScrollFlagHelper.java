/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.view.View
 *  android.view.ViewGroup
 *  android.view.ViewGroup$LayoutParams
 */
package com.buzzfeed.toolkit.ui.appbarlayout;

import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.design.widget.AppBarLayout;
import android.view.View;
import android.view.ViewGroup;
import com.buzzfeed.toolkit.util.EZUtil;

final class ScrollFlagHelper {
    private int mFlags;
    private View mView;

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    ScrollFlagHelper(@NonNull AppBarLayout appBarLayout) {
        EZUtil.checkNotNull(appBarLayout, "AppBarLayout must not be null.");
        int n2 = 0;
        while (n2 < appBarLayout.getChildCount()) {
            int n3;
            View view = appBarLayout.getChildAt(n2);
            ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
            if (layoutParams instanceof AppBarLayout.LayoutParams && ((n3 = ((AppBarLayout.LayoutParams)layoutParams).getScrollFlags()) & 1) != 0) {
                this.mView = view;
                this.mFlags = n3;
                return;
            }
            ++n2;
        }
    }

    @Nullable
    View getView() {
        return this.mView;
    }

    boolean isFlagEnterAlwaysCollapsedEnabled() {
        if (this.mView != null && (this.mFlags & 8) != 0) {
            return true;
        }
        return false;
    }

    boolean isFlagEnterAlwaysEnabled() {
        if (this.mView != null && (this.mFlags & 4) != 0) {
            return true;
        }
        return false;
    }

    boolean isFlagExitUntilCollapsedEnabled() {
        if (this.mView != null && (this.mFlags & 2) != 0) {
            return true;
        }
        return false;
    }

    boolean isFlagScrollEnabled() {
        if (this.mView != null && (this.mFlags & 1) != 0) {
            return true;
        }
        return false;
    }

    boolean isQuickReturnEnabled() {
        if (this.isFlagEnterAlwaysEnabled() && this.isFlagEnterAlwaysCollapsedEnabled()) {
            return true;
        }
        return false;
    }
}

