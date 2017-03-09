/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.view.View
 */
package com.buzzfeed.buffet.ui.holder;

import android.support.annotation.Nullable;
import android.support.v7.widget.RecyclerView;
import android.view.View;
import com.buzzfeed.buffet.ui.listener.PackageItemClickListener;

public abstract class BasePackageOverflowCard
extends RecyclerView.ViewHolder {
    @Nullable
    private PackageItemClickListener mPackageItemClickListener;

    BasePackageOverflowCard(View view) {
        super(view);
    }

    @Nullable
    PackageItemClickListener getPackageItemClickListener() {
        return this.mPackageItemClickListener;
    }

    public void setPackageItemClickListener(@Nullable PackageItemClickListener packageItemClickListener) {
        this.mPackageItemClickListener = packageItemClickListener;
    }
}

