/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.graphics.Rect
 *  android.view.View
 */
package com.buzzfeed.buffet.ui.itemdecoration;

import android.graphics.Rect;
import android.support.v7.widget.GridLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.view.View;

public class ShowsItemDecoration
extends RecyclerView.ItemDecoration {
    private int mColumnCount;
    private int mMargin;

    public ShowsItemDecoration(int n2, int n3) {
        this.mColumnCount = n2;
        this.mMargin = n3;
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    public void getItemOffsets(Rect rect, View view, RecyclerView recyclerView, RecyclerView.State state) {
        super.getItemOffsets(rect, view, recyclerView, state);
        int n2 = this.mMargin / 2;
        rect.set(n2, n2, n2, n2);
        n2 = recyclerView.getChildLayoutPosition(view);
        int n3 = this.getItemSpanIndex(recyclerView, n2);
        if (n3 == 0) {
            rect.left = this.mMargin;
        } else if (n3 == this.mColumnCount - 1) {
            rect.right = this.mMargin;
        }
        if (n2 < this.mColumnCount) {
            rect.top = this.mMargin;
        }
        if (n2 < recyclerView.getAdapter().getItemCount() - this.mColumnCount) {
            return;
        }
        n2 = 1;
        if (n2 != 0) {
            rect.bottom = this.mMargin;
        }
    }

    protected int getItemSpanIndex(RecyclerView recyclerView, int n2) {
        return ((GridLayoutManager)recyclerView.getLayoutManager()).getSpanSizeLookup().getSpanIndex(n2, this.mColumnCount);
    }
}

