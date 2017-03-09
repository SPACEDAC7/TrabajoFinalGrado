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
import com.buzzfeed.buffet.ui.holder.QCUStory;
import com.buzzfeed.buffet.ui.listener.PackageItemClickListener;
import com.buzzfeed.toolkit.content.PackageContent;
import com.buzzfeed.toolkit.content.PostContent;
import com.buzzfeed.toolkit.content.WeaverItem;
import java.util.List;

public class QCUPackageCardAdapter
extends BasePackageOverflowAdapter<QCUStory> {
    private static final int SUB_POSITION_START = 1;
    private int mFeedPosition;
    private boolean mIsBulleted;
    private List<WeaverItem> mPackagePosts;
    private PackageContent mParentContent;

    public QCUPackageCardAdapter(PackageContent packageContent, List<WeaverItem> list, int n2, boolean bl) {
        this.mParentContent = packageContent;
        this.mPackagePosts = list;
        this.mFeedPosition = n2;
        this.mIsBulleted = bl;
    }

    @Override
    public int getItemCount() {
        return this.mPackagePosts.size();
    }

    @Override
    public void onBindViewHolder(QCUStory qCUStory, int n2) {
        super.onBindViewHolder(qCUStory, n2);
        qCUStory.populateFrom(this.mParentContent, this.mPackagePosts.get(n2), this.mFeedPosition, n2 + 1);
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    @Override
    public QCUStory onCreateViewHolder(ViewGroup viewGroup, int n2) {
        if (this.mIsBulleted) {
            n2 = R.layout.qcu_breaking_story_layout;
            do {
                return new QCUStory(LayoutInflater.from((Context)viewGroup.getContext()).inflate(n2, viewGroup, false), this.mIsBulleted);
                break;
            } while (true);
        }
        n2 = R.layout.qcu_story_layout;
        return new QCUStory(LayoutInflater.from((Context)viewGroup.getContext()).inflate(n2, viewGroup, false), this.mIsBulleted);
    }
}

