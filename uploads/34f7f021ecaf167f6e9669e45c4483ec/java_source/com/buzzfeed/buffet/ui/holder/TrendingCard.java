/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.annotation.TargetApi
 *  android.content.Context
 *  android.view.View
 *  android.view.View$OnClickListener
 *  android.view.ViewGroup
 *  android.widget.ImageView
 *  android.widget.TextView
 */
package com.buzzfeed.buffet.ui.holder;

import android.annotation.TargetApi;
import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import com.bumptech.glide.Glide;
import com.buzzfeed.buffet.R;
import com.buzzfeed.buffet.ui.holder.BaseCard;
import com.buzzfeed.buffet.ui.listener.BuffetEventListener;
import com.buzzfeed.toolkit.content.Content;
import com.buzzfeed.toolkit.content.FlowItem;
import com.buzzfeed.toolkit.content.PostContent;
import com.buzzfeed.toolkit.util.GlideUtils;
import com.buzzfeed.toolkit.util.ImageUtil;
import com.buzzfeed.toolkit.util.UIUtil;
import com.buzzfeed.toolkit.util.VersionUtil;
import java.util.Stack;

public class TrendingCard
extends BaseCard {
    private TextView mHeadline;
    private ImageView mImage;
    private TextView mRankCount;
    private ViewGroup mShareButtonWrapper;
    private TextView mViewCount;

    public TrendingCard(View view) {
        super(view);
        this.mImage = (ImageView)UIUtil.findView(view, R.id.trending_card_image);
        this.mHeadline = (TextView)UIUtil.findView(view, R.id.trending_card_title);
        this.mShareButtonWrapper = (ViewGroup)UIUtil.findView(view, R.id.share_button_wrapper);
        this.mViewCount = (TextView)UIUtil.findView(view, R.id.card_views);
        this.mRankCount = (TextView)UIUtil.findView(view, R.id.trending_card_rank);
    }

    private String getRank() {
        return String.valueOf(this.getAdapterPosition() + 1);
    }

    private void setupClickListeners(final FlowItem flowItem) {
        this.itemView.setOnClickListener(new View.OnClickListener(){

            public void onClick(View view) {
                if (TrendingCard.this.getBuffetEventListener() != null) {
                    TrendingCard.this.getBuffetEventListener().onCellClicked(flowItem, TrendingCard.this.getAdapterPosition(), TrendingCard.this.mImage, ((PostContent)flowItem.getContent()).getWideStack(), false);
                }
            }
        });
        final int n2 = this.getAdapterPosition();
        this.mShareButtonWrapper.setOnClickListener(new View.OnClickListener(){

            public void onClick(View view) {
                if (TrendingCard.this.getBuffetEventListener() != null) {
                    TrendingCard.this.getBuffetEventListener().onShareClicked(flowItem, n2);
                }
            }
        });
    }

    private void showViewCount(PostContent object) {
        if (object.getViewCount() != 0) {
            this.mViewCount.setVisibility(0);
            object = this.formatViewCount(object.getViewCount());
            this.mViewCount.setText((CharSequence)this.getString(R.string.trending_views, object));
            return;
        }
        this.mViewCount.setVisibility(4);
    }

    @Override
    public void onViewHolderRecycled() {
        Glide.clear((View)this.mImage);
    }

    @TargetApi(value=21)
    @Override
    public void populateFrom(FlowItem flowItem) {
        PostContent postContent = (PostContent)flowItem.getContent();
        this.setupClickListeners(flowItem);
        GlideUtils.loadImageStack(this.itemView.getContext().getApplicationContext(), this.mImage, postContent.getWideStack(), ImageUtil.getCacheableImageWidth(), ImageUtil.getCacheableImageHeight(false));
        this.mHeadline.setText((CharSequence)postContent.getTitle());
        this.showViewCount(postContent);
        this.mRankCount.setText((CharSequence)this.getRank());
        if (VersionUtil.hasLollipop()) {
            this.mImage.setTransitionName(postContent.getId());
            this.mImage.setTag((Object)postContent.getId());
        }
    }

}

