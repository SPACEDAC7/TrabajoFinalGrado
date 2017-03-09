/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.content.Context
 *  android.view.LayoutInflater
 *  android.view.View
 *  android.view.ViewGroup
 */
package com.buzzfeed.buffet.ui.adapter;

import android.content.Context;
import android.support.annotation.Nullable;
import android.support.v7.widget.RecyclerView;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.buzzfeed.buffet.R;
import com.buzzfeed.buffet.ui.adapter.BasePackageOverflowAdapter;
import com.buzzfeed.buffet.ui.holder.BasePackageOverflowCard;
import com.buzzfeed.buffet.ui.holder.PackageCardOverflow;
import com.buzzfeed.buffet.ui.listener.PackageItemClickListener;
import com.buzzfeed.toolkit.content.PackageContent;
import com.buzzfeed.toolkit.content.PostContent;
import com.buzzfeed.toolkit.content.WeaverItem;
import java.util.List;

public class PackageCardAdapter
extends BasePackageOverflowAdapter<PackageCardOverflow> {
    private static final int SUB_POSITION_START = 1;
    private int mFeedPosition;
    private List<WeaverItem> mPackagePosts;
    private PackageContent mParentContent;

    public PackageCardAdapter(PackageContent packageContent, List<WeaverItem> list, int n2) {
        this.mParentContent = packageContent;
        this.mPackagePosts = list;
        this.mFeedPosition = n2;
    }

    @Override
    public int getItemCount() {
        return this.mPackagePosts.size();
    }

    @Override
    public void onBindViewHolder(PackageCardOverflow packageCardOverflow, int n2) {
        super.onBindViewHolder(packageCardOverflow, n2);
        packageCardOverflow.populateFrom(this.mParentContent, this.mPackagePosts.get(n2), this.mFeedPosition, n2 + 1);
    }

    @Override
    public PackageCardOverflow onCreateViewHolder(ViewGroup viewGroup, int n2) {
        return new PackageCardOverflow(LayoutInflater.from((Context)viewGroup.getContext()).inflate(R.layout.card_package_overflow, viewGroup, false));
    }
}

