/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.content.Context
 *  android.util.AttributeSet
 *  android.view.View
 *  android.webkit.WebView
 */
package com.buzzfeed.spicerack.ui.view;

import android.content.Context;
import android.support.v7.widget.RecyclerView;
import android.util.AttributeSet;
import android.view.View;
import android.webkit.WebView;
import com.buzzfeed.spicerack.ui.holder.BaseViewHolder;
import com.buzzfeed.spicerack.ui.holder.HeaderSpiceViewHolder;
import com.buzzfeed.spicerack.ui.holder.LoadingSpiceViewHolder;
import com.buzzfeed.spicerack.ui.view.SpicyLayoutManager;
import com.buzzfeed.spicerack.ui.view.SpicyWebView;
import com.buzzfeed.toolkit.util.UIUtil;
import com.buzzfeed.toolkit.util.VersionUtil;

public class SpicyRecyclerView
extends RecyclerView
implements SpicyWebView.SpicyWebViewScrollListener {
    private boolean mAttachedListener;
    private SpicyWebView mFallbackView;
    private int mFlingDistance;
    private HeaderSpiceViewHolder mHeaderViewHolder;
    private int requiredFlingY = 0;

    public SpicyRecyclerView(Context context) {
        super(context);
        this.init();
    }

    public SpicyRecyclerView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.init();
    }

    public SpicyRecyclerView(Context context, AttributeSet attributeSet, int n2) {
        super(context, attributeSet, n2);
        this.init();
    }

    private SpicyWebView getFallback() {
        if (this.mFallbackView != null) {
            return this.mFallbackView;
        }
        this.mFallbackView = ((SpicyLayoutManager)this.getLayoutManager()).getFallbackViewTop();
        if (this.mFallbackView != null) {
            this.mFallbackView.setSpicyScrollListener(this);
        }
        return this.mFallbackView;
    }

    private int getFallbackTop() {
        SpicyWebView spicyWebView = this.getFallback();
        if (spicyWebView != null) {
            return spicyWebView.getTop();
        }
        return Integer.MAX_VALUE;
    }

    private void init() {
        this.setOverScrollMode(2);
        this.mAttachedListener = false;
        if (!VersionUtil.hasLollipop()) {
            this.requiredFlingY = UIUtil.getActionBarHeight(this.getContext()) + UIUtil.getStatusBarHeight(this.getContext());
        }
    }

    /*
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    private boolean onFling(int n2) {
        this.mFlingDistance = n2 / 2;
        if (this.getFallbackTop() > 0) {
            return true;
        }
        if (this.mFlingDistance > 0) {
            this.mFallbackView.flingScroll(0, n2);
            return false;
        }
        if (this.mFallbackView.getScrollY() <= 0) return true;
        if (this.mFallbackView.getScrollY() + this.mFlingDistance < 0) {
            this.mFlingDistance = this.getFallback().getScrollY() + this.mFlingDistance;
        }
        this.mFallbackView.flingScroll(0, n2);
        return false;
    }

    public void attachScrollListener() {
        if (!this.mAttachedListener) {
            this.mAttachedListener = true;
            this.addOnScrollListener(new RecyclerView.OnScrollListener(){

                @Override
                public void onScrollStateChanged(RecyclerView recyclerView, int n2) {
                    super.onScrollStateChanged(recyclerView, n2);
                }

                @Override
                public void onScrolled(RecyclerView recyclerView, int n2, int n3) {
                    super.onScrolled(recyclerView, n2, n3);
                    if (SpicyRecyclerView.this.mFallbackView != null) {
                        n2 = SpicyRecyclerView.this.getFallbackTop();
                        SpicyRecyclerView.this.mFallbackView.onScroll(SpicyRecyclerView.this.getFallback().getScrollY());
                        if (n2 * -1 == SpicyRecyclerView.this.requiredFlingY && SpicyRecyclerView.this.mFlingDistance > 0) {
                            SpicyRecyclerView.this.mFallbackView.flingScroll(0, SpicyRecyclerView.this.mFlingDistance);
                            SpicyRecyclerView.this.mFlingDistance = 0;
                        }
                    }
                }
            });
        }
    }

    @Override
    public boolean fling(int n2, int n3) {
        if (this.getFallback() != null && this.mFallbackView == null) {
            return super.fling(n2, n3);
        }
        if (this.onFling(n3)) {
            return super.fling(n2, n3);
        }
        return false;
    }

    public HeaderSpiceViewHolder getHeaderViewHolder() {
        if (this.mHeaderViewHolder == null) {
            this.mHeaderViewHolder = (HeaderSpiceViewHolder)this.getViewHolder(0);
        }
        return this.mHeaderViewHolder;
    }

    public LoadingSpiceViewHolder getLoadingViewHolder() {
        return (LoadingSpiceViewHolder)this.getViewHolder(1);
    }

    public <T extends BaseViewHolder> T getViewHolder(int n2) {
        View view;
        if (this.getLayoutManager() != null && (view = this.getLayoutManager().findViewByPosition(n2)) != null && this.getChildViewHolder(view) != null) {
            return (T)((BaseViewHolder)this.getChildViewHolder(view));
        }
        return null;
    }

    @Override
    public void onWebViewScrolled(int n2) {
        if (n2 == 0 && this.mFlingDistance < 0) {
            this.fling(0, this.mFlingDistance);
            this.mFlingDistance = 0;
        }
    }

    @Override
    public void requestChildFocus(View view, View view2) {
        if (view2 instanceof WebView) {
            return;
        }
        super.requestChildFocus(view, view2);
    }

}

