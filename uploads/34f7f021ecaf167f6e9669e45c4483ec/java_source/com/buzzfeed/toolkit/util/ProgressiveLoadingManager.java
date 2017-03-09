/*
 * Decompiled with CFR 0_115.
 */
package com.buzzfeed.toolkit.util;

import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.RecyclerView;

public class ProgressiveLoadingManager {
    private static final int ITEMS_FROM_BOTTOM = 15;
    private RecyclerView.Adapter mAdapter;
    private boolean mIsLoading;
    private LinearLayoutManager mLayoutManager;
    private ProgressiveLoadingListener mListener;
    private boolean mNeedReload = false;

    public ProgressiveLoadingManager(RecyclerView recyclerView, LinearLayoutManager linearLayoutManager, RecyclerView.Adapter adapter, ProgressiveLoadingListener progressiveLoadingListener) {
        this.mLayoutManager = linearLayoutManager;
        this.mListener = progressiveLoadingListener;
        this.mAdapter = adapter;
        recyclerView.addOnScrollListener(new RecyclerView.OnScrollListener(){

            @Override
            public void onScrolled(RecyclerView recyclerView, int n2, int n3) {
                super.onScrolled(recyclerView, n2, n3);
                ProgressiveLoadingManager.this.handleScroll(n3);
            }
        });
    }

    private void handleScroll(int n2) {
        if (n2 > 0 && !this.mIsLoading) {
            n2 = this.mLayoutManager.findLastVisibleItemPosition();
            if (this.mAdapter.getItemCount() - n2 < 15) {
                this.mIsLoading = true;
                this.mListener.loadMore();
            }
        }
    }

    public boolean reloadNeeded() {
        return this.mNeedReload;
    }

    public void resetLoading() {
        this.mIsLoading = false;
        this.mNeedReload = false;
    }

    public void setNeedReload() {
        this.mNeedReload = true;
    }

    public static interface ProgressiveLoadingListener {
        public void loadMore();
    }

}

