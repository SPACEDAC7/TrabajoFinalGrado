/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.content.Context
 *  android.util.AttributeSet
 *  android.view.View
 */
package com.buzzfeed.spicerack.ui.view;

import android.content.Context;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.util.AttributeSet;
import android.view.View;
import com.buzzfeed.spicerack.ui.view.SpicyWebView;

public class SpicyLayoutManager
extends LinearLayoutManager {
    private boolean mScrollEnabled = true;
    private SpicyWebView mSpicyWebView;

    public SpicyLayoutManager(Context context) {
        super(context);
    }

    public SpicyLayoutManager(Context context, int n2, boolean bl) {
        super(context, n2, bl);
    }

    public SpicyLayoutManager(Context context, AttributeSet attributeSet, int n2, int n3) {
        super(context, attributeSet, n2, n3);
    }

    private void setSpicyWebView() {
        for (int i2 = 0; i2 < this.getChildCount(); ++i2) {
            View view = this.getChildAt(i2);
            if (!(view instanceof SpicyWebView)) continue;
            this.mSpicyWebView = (SpicyWebView)view;
        }
    }

    @Override
    public boolean canScrollVertically() {
        if (super.canScrollVertically() && this.mScrollEnabled) {
            return true;
        }
        return false;
    }

    public SpicyWebView getFallbackViewTop() {
        if (this.mSpicyWebView != null) {
            return this.mSpicyWebView;
        }
        return null;
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    public int scrollVerticallyBy(int n2, RecyclerView.Recycler recycler, RecyclerView.State state) {
        if (this.mSpicyWebView == null) {
            this.setSpicyWebView();
        }
        int n3 = n2;
        if (this.mSpicyWebView == null) return super.scrollVerticallyBy(n3, recycler, state);
        if (this.mSpicyWebView.getTop() > 0) {
            n3 = n2;
            return super.scrollVerticallyBy(n3, recycler, state);
        }
        if (n2 > 0) {
            this.mSpicyWebView.scrollBy(0, n2);
            n3 = n2;
            return super.scrollVerticallyBy(n3, recycler, state);
        }
        n3 = n2;
        if (this.mSpicyWebView.getScrollY() <= 0) return super.scrollVerticallyBy(n3, recycler, state);
        this.mSpicyWebView.scrollBy(0, n2);
        n3 = 0;
        return super.scrollVerticallyBy(n3, recycler, state);
    }

    public void setScrollEnabled(boolean bl) {
        this.mScrollEnabled = bl;
    }
}

