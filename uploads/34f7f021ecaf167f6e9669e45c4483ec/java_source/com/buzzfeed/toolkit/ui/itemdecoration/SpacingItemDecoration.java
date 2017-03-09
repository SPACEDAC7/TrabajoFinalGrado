/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.graphics.Rect
 *  android.view.View
 */
package com.buzzfeed.toolkit.ui.itemdecoration;

import android.graphics.Rect;
import android.support.v7.widget.RecyclerView;
import android.view.View;

public class SpacingItemDecoration
extends RecyclerView.ItemDecoration {
    private final int mExtraTopPadding;
    private final int mGutter;
    private final boolean mIsSubscriptionEnabled;
    private final int mMargin;

    public SpacingItemDecoration(int n2, int n3, int n4, boolean bl) {
        this.mGutter = n2;
        this.mMargin = n3;
        this.mExtraTopPadding = n4;
        this.mIsSubscriptionEnabled = bl;
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    public void getItemOffsets(Rect rect, View view, RecyclerView recyclerView, RecyclerView.State state) {
        int n2 = recyclerView.getChildLayoutPosition(view);
        int n3 = this.mIsSubscriptionEnabled ? 0 : this.mMargin;
        rect.left = n3;
        n3 = this.mIsSubscriptionEnabled ? 0 : this.mMargin;
        rect.right = n3;
        rect.bottom = this.mGutter;
        if (n2 != 0) {
            rect.top = 0;
            return;
        }
        n3 = this.mExtraTopPadding > 0 ? this.mGutter + this.mExtraTopPadding : this.mGutter;
        rect.top = n3;
        if (this.mIsSubscriptionEnabled) {
            rect.top -= this.mGutter;
        }
    }
}

