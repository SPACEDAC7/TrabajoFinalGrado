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

public class BuffetItemDecoration
extends RecyclerView.ItemDecoration {
    private final int mGutter;
    private final int mMargin;

    public BuffetItemDecoration(int n2, int n3) {
        this.mGutter = n2;
        this.mMargin = n3;
    }

    private boolean isHalfSizeCard(RecyclerView recyclerView, int n2) {
        if (this.getItemSpanSize(recyclerView, n2) == 1) {
            return true;
        }
        return false;
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    public void getItemOffsets(Rect rect, View view, RecyclerView recyclerView, RecyclerView.State state) {
        super.getItemOffsets(rect, view, recyclerView, state);
        int n2 = recyclerView.getChildLayoutPosition(view);
        int n3 = this.getItemSpanSize(recyclerView, n2);
        int n4 = this.getItemSpanIndex(recyclerView, n2);
        rect.set(this.mMargin, this.mGutter, this.mMargin, this.mGutter);
        if (n3 == 1) {
            if (n4 == 1) {
                rect.right = this.mMargin;
                rect.left = this.mGutter / 2;
            } else {
                rect.right = this.mGutter / 2;
                rect.left = this.mMargin;
            }
        } else {
            rect.top = n2 == 0 ? this.mGutter : 0;
        }
        rect.top = 0;
        if (n2 == 0) {
            rect.top = this.mGutter;
        }
        if (n2 == 1 && this.isHalfSizeCard(recyclerView, 0) && this.isHalfSizeCard(recyclerView, 1)) {
            rect.top = this.mGutter;
        }
    }

    protected int getItemSpanIndex(RecyclerView recyclerView, int n2) {
        return ((GridLayoutManager)recyclerView.getLayoutManager()).getSpanSizeLookup().getSpanIndex(n2, 2);
    }

    protected int getItemSpanSize(RecyclerView recyclerView, int n2) {
        return ((GridLayoutManager)recyclerView.getLayoutManager()).getSpanSizeLookup().getSpanSize(n2);
    }
}

