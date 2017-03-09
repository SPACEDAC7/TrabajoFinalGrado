/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.content.Context
 *  android.text.format.DateUtils
 *  android.view.View
 *  android.view.View$OnClickListener
 *  android.view.ViewGroup
 *  android.widget.ImageView
 *  android.widget.TextView
 */
package com.buzzfeed.buffet.ui.holder;

import android.content.Context;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.text.format.DateUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import com.buzzfeed.buffet.R;
import com.buzzfeed.buffet.ui.adapter.QCUPackageCardAdapter;
import com.buzzfeed.buffet.ui.holder.BaseCard;
import com.buzzfeed.buffet.ui.listener.BuffetEventListener;
import com.buzzfeed.buffet.ui.listener.PackageItemClickListener;
import com.buzzfeed.toolkit.content.Content;
import com.buzzfeed.toolkit.content.FlowItem;
import com.buzzfeed.toolkit.content.PackageContent;
import com.buzzfeed.toolkit.content.PostContent;
import com.buzzfeed.toolkit.content.WeaverItem;
import com.buzzfeed.toolkit.util.GlideUtils;
import com.buzzfeed.toolkit.util.ImageUtil;
import com.buzzfeed.toolkit.util.UIUtil;
import com.buzzfeed.toolkit.util.VersionUtil;
import java.util.Date;
import java.util.List;
import java.util.Stack;

public class QCUCard
extends BaseCard {
    protected static final int ALWAYS_SHOW_AMOUNT = 1;
    private ImageView mHeaderImage;
    private PackageContent mNewsPackageContent;
    @Nullable
    private QCUPackageCardAdapter mPackageCardAdapter;
    private ViewGroup mPrimaryClickableView;
    private TextView mPrimaryDescription;
    private TextView mPrimaryTimestamp;
    private TextView mQCUHeader;
    RecyclerView mStoriesRecyclerView;

    public QCUCard(View view) {
        super(view);
        this.mPrimaryClickableView = (ViewGroup)UIUtil.findView(view, R.id.card_qcu_primary_container);
        this.mQCUHeader = (TextView)UIUtil.findView(view, R.id.card_qcu_header_title);
        this.mHeaderImage = (ImageView)UIUtil.findView(view, R.id.card_qcu_image);
        this.mPrimaryTimestamp = (TextView)UIUtil.findView(view, R.id.card_qcu_header_timestamp);
        this.mPrimaryDescription = (TextView)UIUtil.findView(view, R.id.card_qcu_primary_description);
        this.mStoriesRecyclerView = (RecyclerView)UIUtil.findView(view, R.id.card_qcu_stories);
        this.mStoriesRecyclerView.setNestedScrollingEnabled(false);
    }

    public String getPackageId() {
        if (this.mNewsPackageContent != null) {
            return this.mNewsPackageContent.getId();
        }
        return null;
    }

    public RecyclerView getRecyclerView() {
        return this.mStoriesRecyclerView;
    }

    protected CharSequence getTimeStringFromPostContent(PostContent postContent) {
        return DateUtils.getRelativeTimeSpanString((long)postContent.getPublished().getTime());
    }

    protected boolean isBreakingBulleted() {
        return false;
    }

    protected void loadCardImage(PostContent postContent, ImageView imageView) {
        GlideUtils.loadImageStackWithCustomPlaceholderColor(this.itemView.getContext().getApplicationContext(), imageView, postContent.getWideStack(), ImageUtil.getCacheableImageWidth(), ImageUtil.getCacheableImageHeight(false), 17170444);
    }

    @Override
    public void onViewHolderRecycled() {
        super.onViewHolderRecycled();
        if (this.mPackageCardAdapter != null) {
            this.mPackageCardAdapter.setPackageItemClickListener(null);
            this.mPackageCardAdapter = null;
        }
    }

    @Override
    public void populateFrom(FlowItem content) {
        this.mNewsPackageContent = (PackageContent)content.getContent();
        this.mQCUHeader.setText((CharSequence)this.mNewsPackageContent.getName());
        if (this.mNewsPackageContent.getPackageItems().size() >= 1) {
            content = this.mNewsPackageContent.getPackageItems().get(0);
            this.loadCardImage((PostContent)content, this.mHeaderImage);
            this.mPrimaryTimestamp.setText(this.getTimeStringFromPostContent((PostContent)content));
            this.mPrimaryClickableView.setOnClickListener(new View.OnClickListener((PostContent)content){
                final /* synthetic */ PostContent val$primary;

                public void onClick(View view) {
                    if (QCUCard.this.getBuffetEventListener() != null) {
                        QCUCard.this.getBuffetEventListener().onNewsPackageClicked(QCUCard.this.mNewsPackageContent, this.val$primary, QCUCard.this.getAdapterPosition(), 0, QCUCard.this.mHeaderImage, this.val$primary.getWideStack(), false);
                    }
                }
            });
            this.mPrimaryDescription.setText((CharSequence)content.getTitle());
            this.setUpTransition((PostContent)content, this.mHeaderImage);
            this.setUpStories(this.mNewsPackageContent, this.mStoriesRecyclerView);
        }
    }

    protected void setUpStories(PackageContent packageContent, RecyclerView recyclerView) {
        LinearLayoutManager linearLayoutManager = new LinearLayoutManager(this.itemView.getContext(), 1, false){

            @Override
            public boolean canScrollVertically() {
                return false;
            }
        };
        this.mPackageCardAdapter = new QCUPackageCardAdapter(packageContent, packageContent.getPackageItems().subList(1, packageContent.getPackageItems().size()), this.getAdapterPosition(), this.isBreakingBulleted());
        this.mPackageCardAdapter.setPackageItemClickListener(new InternalPackageOverflowItemClickListener());
        recyclerView.setLayoutManager(linearLayoutManager);
        recyclerView.swapAdapter(this.mPackageCardAdapter, false);
    }

    protected void setUpTransition(PostContent postContent, ImageView imageView) {
        if (VersionUtil.hasLollipop()) {
            imageView.setTransitionName(postContent.getId());
        }
    }

    private class InternalPackageOverflowItemClickListener
    implements PackageItemClickListener {
        private InternalPackageOverflowItemClickListener() {
        }

        @Override
        public void onPackageItemClicked(@NonNull PackageContent packageContent, @NonNull PostContent postContent, int n2, int n3, @Nullable ImageView imageView, @NonNull Stack<String> stack, boolean bl) {
            if (QCUCard.this.getBuffetEventListener() != null) {
                QCUCard.this.getBuffetEventListener().onNewsPackageClicked(packageContent, postContent, n2, n3, null, postContent.getThumbnailStack(), false);
            }
        }
    }

}

