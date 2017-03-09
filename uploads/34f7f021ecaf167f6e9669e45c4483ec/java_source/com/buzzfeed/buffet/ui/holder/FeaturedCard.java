/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.annotation.TargetApi
 *  android.content.Context
 *  android.view.View
 *  android.view.View$OnClickListener
 *  android.widget.ImageView
 *  android.widget.TextView
 */
package com.buzzfeed.buffet.ui.holder;

import android.annotation.TargetApi;
import android.content.Context;
import android.view.View;
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

public class FeaturedCard
extends BaseCard {
    private TextView mDek;
    protected TextView mHeadline;
    private ImageView mImage;

    public FeaturedCard(View view) {
        super(view);
        this.mImage = (ImageView)UIUtil.findView(view, R.id.featured_card_image);
        this.mHeadline = (TextView)UIUtil.findView(view, R.id.featured_card_title);
        this.mDek = (TextView)UIUtil.findView(view, R.id.featured_card_dek);
    }

    private void setupClickListeners(final FlowItem flowItem) {
        this.itemView.setOnClickListener(new View.OnClickListener(){

            public void onClick(View view) {
                if (FeaturedCard.this.getBuffetEventListener() != null) {
                    FeaturedCard.this.getBuffetEventListener().onCellClicked(flowItem, FeaturedCard.this.getAdapterPosition(), FeaturedCard.this.mImage, ((PostContent)flowItem.getContent()).getWideStack(), false);
                }
            }
        });
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
        this.mDek.setText((CharSequence)postContent.getDescription());
        this.formatViewCount(postContent.getViewCount());
        if (VersionUtil.hasLollipop()) {
            this.mImage.setTransitionName(postContent.getId());
            this.mImage.setTag((Object)postContent.getId());
        }
    }

}

