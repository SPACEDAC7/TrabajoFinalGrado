/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.graphics.Rect
 *  android.view.View
 */
package com.buzzfeed.android.vcr.toolbox;

import android.graphics.Rect;
import android.support.v7.widget.RecyclerView;
import android.view.View;
import com.buzzfeed.android.vcr.toolbox.AutoFocusController;
import com.buzzfeed.toolkit.util.EZUtil;

class AutoFocusHelper {
    private RecyclerView mRecyclerView;

    public AutoFocusHelper(RecyclerView recyclerView) {
        EZUtil.checkNotNull(recyclerView, "RecyclerView cant be null");
        this.mRecyclerView = recyclerView;
    }

    /*
     * Enabled aggressive block sorting
     */
    private RecyclerView.ViewHolder findViewHolder(int n2, int n3, float f2, boolean bl, AutoFocusController.AutoFocusStrategy autoFocusStrategy) {
        ViewInfo viewInfo = new ViewInfo();
        Rect rect = new Rect();
        Rect rect2 = new Rect();
        this.mRecyclerView.getGlobalVisibleRect(rect);
        int n4 = (rect.top - rect.bottom) / 2;
        int n5 = rect.top;
        int n6 = rect.bottom;
        int n7 = n3 > n2 ? 1 : -1;
        while (n2 != n3 + n7) {
            rect = this.mRecyclerView.getLayoutManager().getChildAt(n2);
            if (rect != null && (autoFocusStrategy == null || autoFocusStrategy.isFocusable(this.mRecyclerView.getChildViewHolder((View)rect)))) {
                rect.getGlobalVisibleRect(rect2);
                int n8 = rect2.top;
                int n9 = rect2.bottom;
                if (n8 < n6 && n9 > n5) {
                    if (bl) {
                        n8 = rect.getTop() + rect.getHeight() / 2;
                        if (n7 > 0 ? n8 > n4 : n8 <= n4) {
                            return this.mRecyclerView.getChildViewHolder((View)rect);
                        }
                        n8 = Math.abs(n8 - n4);
                        if (viewInfo.view == null) {
                            viewInfo.view = rect;
                            viewInfo.offset = n8;
                        } else if (n8 < viewInfo.offset) {
                            viewInfo.offset = n8;
                            viewInfo.view = rect;
                        }
                    } else if (this.isViewWithinVisibleRatio((View)rect, f2)) {
                        return this.mRecyclerView.getChildViewHolder((View)rect);
                    }
                }
            }
            n2 += n7;
        }
        if (bl && viewInfo.view != null) {
            return this.mRecyclerView.getChildViewHolder(viewInfo.view);
        }
        return null;
    }

    private boolean isViewWithinVisibleRatio(View view, float f2) {
        Rect rect = new Rect();
        if (view.getGlobalVisibleRect(rect) && (float)(rect.bottom - rect.top) / (float)view.getMeasuredHeight() >= f2) {
            return true;
        }
        return false;
    }

    public RecyclerView.ViewHolder findMostCenteredViewHolder(int n2, int n3, AutoFocusController.AutoFocusStrategy autoFocusStrategy) {
        return this.findViewHolder(n2, n3, 0.0f, true, autoFocusStrategy);
    }

    public RecyclerView.ViewHolder findViewHolderWithVisibilityRatio(int n2, int n3, float f2, AutoFocusController.AutoFocusStrategy autoFocusStrategy) {
        return this.findViewHolder(n2, n3, f2, false, autoFocusStrategy);
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    public boolean isViewCandidateForRemoval(View view, int n2) {
        boolean bl = true;
        if (view.getGlobalVisibleRect(new Rect())) return false;
        if (n2 == 0) {
            return false;
        }
        if (n2 <= 0) {
            if (this.mRecyclerView.getLayoutManager().getDecoratedBottom(view) < this.mRecyclerView.getTop()) return bl;
            return false;
        }
        if (this.mRecyclerView.getLayoutManager().getDecoratedTop(view) > this.mRecyclerView.getBottom()) return bl;
        return false;
    }

    private class ViewInfo {
        int offset;
        View view;

        private ViewInfo() {
        }
    }

}

