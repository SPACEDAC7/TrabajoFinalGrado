/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.view.View
 *  android.view.View$OnClickListener
 *  android.widget.ImageView
 *  android.widget.TextView
 */
package com.buzzfeed.buffet.ui.holder;

import android.support.v7.widget.RecyclerView;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import com.buzzfeed.buffet.R;
import com.buzzfeed.buffet.ui.holder.QCUCard;
import com.buzzfeed.buffet.ui.listener.BuffetEventListener;
import com.buzzfeed.buffet.ui.view.InterceptTouchCardView;
import com.buzzfeed.toolkit.content.Content;
import com.buzzfeed.toolkit.content.FlowItem;
import com.buzzfeed.toolkit.content.PackageContent;
import com.buzzfeed.toolkit.content.PostContent;
import com.buzzfeed.toolkit.content.WeaverItem;
import com.buzzfeed.toolkit.util.UIUtil;
import java.util.List;
import java.util.Stack;

public class BreakingQCUCard
extends QCUCard {
    private TextView mBreakingQCUHeader;
    private TextView mBreakingQCUHeadline;
    private InterceptTouchCardView mCardLayout;
    private ImageView mHeaderImage;
    private PackageContent mNewsPackageContent;
    private TextView mPrimaryTimestamp;

    public BreakingQCUCard(View view) {
        super(view);
        this.mCardLayout = (InterceptTouchCardView)((Object)UIUtil.findView(view, R.id.card_breaking_qcu_primary_container));
        this.mHeaderImage = (ImageView)UIUtil.findView(view, R.id.card_breaking_qcu_image);
        this.mBreakingQCUHeader = (TextView)UIUtil.findView(view, R.id.card_qcu_breaking_header_title);
        this.mBreakingQCUHeadline = (TextView)UIUtil.findView(view, R.id.card_headline);
        this.mPrimaryTimestamp = (TextView)UIUtil.findView(view, R.id.card_qcu_breaking_header_timestamp);
    }

    @Override
    public RecyclerView getRecyclerView() {
        return this.mStoriesRecyclerView;
    }

    @Override
    protected boolean isBreakingBulleted() {
        return true;
    }

    @Override
    public void populateFrom(FlowItem content) {
        this.mNewsPackageContent = (PackageContent)content.getContent();
        this.mBreakingQCUHeader.setText((CharSequence)this.mNewsPackageContent.getName());
        if (this.mNewsPackageContent.getPackageItems().size() >= 1) {
            content = this.mNewsPackageContent.getPackageItems().get(0);
            this.loadCardImage((PostContent)content, this.mHeaderImage);
            this.mPrimaryTimestamp.setText(this.getTimeStringFromPostContent((PostContent)content));
            this.mBreakingQCUHeadline.setText((CharSequence)content.getDescription());
            this.mCardLayout.setOnClickListener(new View.OnClickListener((PostContent)content){
                final /* synthetic */ PostContent val$primary;

                public void onClick(View view) {
                    if (BreakingQCUCard.this.getBuffetEventListener() != null) {
                        BreakingQCUCard.this.getBuffetEventListener().onNewsPackageClicked(BreakingQCUCard.this.mNewsPackageContent, this.val$primary, BreakingQCUCard.this.getAdapterPosition(), 0, BreakingQCUCard.this.mHeaderImage, this.val$primary.getWideStack(), false);
                    }
                }
            });
            this.setUpStories(this.mNewsPackageContent, this.mStoriesRecyclerView);
            this.setUpTransition((PostContent)content, this.mHeaderImage);
        }
    }

}

