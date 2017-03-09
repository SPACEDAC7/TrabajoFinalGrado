/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.content.Context
 *  android.text.format.DateUtils
 *  android.view.View
 *  android.view.View$OnClickListener
 *  android.widget.ImageView
 *  android.widget.TextView
 */
package com.buzzfeed.buffet.ui.holder;

import android.content.Context;
import android.text.format.DateUtils;
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
import java.util.Date;
import java.util.Stack;

public class BreakingCard
extends BaseCard {
    private ImageView mBreakingImageView;
    private TextView mDekTextView;
    private TextView mHeadlineTextView;
    private TextView mTimeStampTextView;

    public BreakingCard(View view) {
        super(view);
        this.mBreakingImageView = (ImageView)UIUtil.findView(view, R.id.card_breaking_image);
        this.mHeadlineTextView = (TextView)UIUtil.findView(view, R.id.card_breaking_headline);
        this.mDekTextView = (TextView)UIUtil.findView(view, R.id.card_breaking_dek);
        this.mTimeStampTextView = (TextView)UIUtil.findView(view, R.id.card_breaking_time_stamp);
    }

    private CharSequence getTimeStampTextFromPostContent(PostContent postContent) {
        return DateUtils.getRelativeTimeSpanString((long)postContent.getPublished().getTime());
    }

    private void setUpClickListeners(final FlowItem flowItem) {
        this.itemView.setOnClickListener(new View.OnClickListener(){

            public void onClick(View view) {
                if (BreakingCard.this.getBuffetEventListener() != null) {
                    BreakingCard.this.getBuffetEventListener().onCellClicked(flowItem, BreakingCard.this.getAdapterPosition(), BreakingCard.this.mBreakingImageView, ((PostContent)flowItem.getContent()).getWideStack(), false);
                }
            }
        });
    }

    @Override
    public void onViewHolderRecycled() {
        super.onViewHolderRecycled();
        Glide.clear((View)this.mBreakingImageView);
    }

    @Override
    public void populateFrom(FlowItem flowItem) {
        PostContent postContent = (PostContent)flowItem.getContent();
        GlideUtils.loadImageStack(this.itemView.getContext().getApplicationContext(), this.mBreakingImageView, postContent.getWideStack(), ImageUtil.getCacheableImageWidth(), ImageUtil.getCacheableImageHeight(false));
        this.mHeadlineTextView.setText((CharSequence)postContent.getTitle());
        this.mDekTextView.setText((CharSequence)postContent.getDescription());
        this.mTimeStampTextView.setText(this.getTimeStampTextFromPostContent(postContent));
        this.setUpClickListeners(flowItem);
        if (VersionUtil.hasLollipop()) {
            this.mBreakingImageView.setTransitionName(flowItem.getId());
            this.mBreakingImageView.setTag((Object)flowItem.getId());
        }
    }

}

