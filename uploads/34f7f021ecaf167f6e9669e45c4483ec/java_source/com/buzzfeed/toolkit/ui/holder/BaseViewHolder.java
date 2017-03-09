/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.view.View
 */
package com.buzzfeed.toolkit.ui.holder;

import android.support.v7.widget.RecyclerView;
import android.view.View;

public abstract class BaseViewHolder<M>
extends RecyclerView.ViewHolder {
    public BaseViewHolder(View view) {
        super(view);
    }

    public abstract void onViewHolderRecycled();

    public abstract void populateFrom(M var1);
}

