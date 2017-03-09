/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.view.View
 */
package com.buzzfeed.android.ui.buffet.listener;

import android.support.v7.widget.RecyclerView;
import android.view.View;

public abstract class OneTimeOnItemUpdatedListener
implements RecyclerView.OnChildAttachStateChangeListener {
    private boolean mOnAttached;
    private boolean mOnDetached;
    private RecyclerView mRecyclerView;
    private int mUpdatePosition;

    public OneTimeOnItemUpdatedListener(RecyclerView recyclerView, int n2) {
        this.mRecyclerView = recyclerView;
        this.mUpdatePosition = n2;
    }

    private void onItemUpdated() {
        this.mRecyclerView.removeOnChildAttachStateChangeListener(this);
        this.mRecyclerView.post(new Runnable(){

            @Override
            public void run() {
                OneTimeOnItemUpdatedListener.this.onItemUpdated(OneTimeOnItemUpdatedListener.this.mUpdatePosition);
            }
        });
    }

    @Override
    public void onChildViewAttachedToWindow(View object) {
        if ((object = this.mRecyclerView.getChildViewHolder((View)object)) != null && object.getAdapterPosition() == this.mUpdatePosition) {
            this.mOnAttached = true;
            if (this.mOnDetached) {
                this.onItemUpdated();
            }
        }
    }

    @Override
    public void onChildViewDetachedFromWindow(View object) {
        if ((object = this.mRecyclerView.getChildViewHolder((View)object)) != null && object.getAdapterPosition() == this.mUpdatePosition) {
            this.mOnDetached = true;
            if (this.mOnAttached) {
                this.onItemUpdated();
            }
        }
    }

    public abstract void onItemUpdated(int var1);

}

