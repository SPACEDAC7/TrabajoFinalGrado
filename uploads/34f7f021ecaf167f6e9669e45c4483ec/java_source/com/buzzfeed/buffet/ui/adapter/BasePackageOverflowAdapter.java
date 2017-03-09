/*
 * Decompiled with CFR 0_115.
 */
package com.buzzfeed.buffet.ui.adapter;

import android.support.annotation.CallSuper;
import android.support.annotation.Nullable;
import android.support.v7.widget.RecyclerView;
import com.buzzfeed.buffet.ui.holder.BasePackageOverflowCard;
import com.buzzfeed.buffet.ui.listener.PackageItemClickListener;

abstract class BasePackageOverflowAdapter<T extends BasePackageOverflowCard>
extends RecyclerView.Adapter<T> {
    @Nullable
    private PackageItemClickListener mPackageOverflowClickListener;

    BasePackageOverflowAdapter() {
    }

    @CallSuper
    @Override
    public void onBindViewHolder(T t2, int n2) {
        t2.setPackageItemClickListener(this.mPackageOverflowClickListener);
    }

    @CallSuper
    @Override
    public void onViewRecycled(T t2) {
        super.onViewRecycled(t2);
        t2.setPackageItemClickListener(null);
    }

    public void setPackageItemClickListener(@Nullable PackageItemClickListener packageItemClickListener) {
        this.mPackageOverflowClickListener = packageItemClickListener;
    }
}

