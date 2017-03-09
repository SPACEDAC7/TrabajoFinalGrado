/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.content.Context
 *  android.text.TextUtils
 *  android.view.TextureView
 *  android.view.View
 *  android.view.View$OnClickListener
 *  android.view.ViewGroup
 *  android.widget.ImageView
 *  android.widget.TextView
 */
package com.buzzfeed.buffet.ui.holder;

import android.content.Context;
import android.text.TextUtils;
import android.view.TextureView;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import com.bumptech.glide.Glide;
import com.buzzfeed.buffet.R;
import com.buzzfeed.buffet.ui.holder.VideoCard;
import com.buzzfeed.buffet.ui.listener.BuffetEventListener;
import com.buzzfeed.toolkit.content.Content;
import com.buzzfeed.toolkit.content.FlowItem;
import com.buzzfeed.toolkit.content.VideoAdContent;
import com.buzzfeed.toolkit.ui.view.ForceAspectImageView;
import com.buzzfeed.toolkit.util.GlideUtils;
import com.buzzfeed.toolkit.util.UIUtil;
import java.util.Stack;

public class VideoAdCard
extends VideoCard {
    private static final String SPONSORED = "sponsored";
    private final TextView mByLinePrefix;
    private ViewGroup mPromotedLayout;
    private ImageView mSponsorAvatar;
    private TextView mSponsorName;
    private VideoAdContent mVideoAdContent;

    public VideoAdCard(View view) {
        super(view);
        this.onConfigureContainerDimensions(1.7778f);
        this.mPromotedLayout = (ViewGroup)UIUtil.findView(view, R.id.promoted_layout);
        this.mSponsorName = (TextView)UIUtil.findView(view, R.id.sponsor_name);
        this.mSponsorAvatar = (ImageView)UIUtil.findView(view, R.id.promoted_image);
        this.mByLinePrefix = (TextView)UIUtil.findView(view, R.id.byline_prefix);
    }

    public VideoAdContent getAdContent() {
        return this.mVideoAdContent;
    }

    public TextureView getContainer() {
        return this.mVideoSurface;
    }

    @Override
    public boolean isAd() {
        return true;
    }

    @Override
    public void onViewHolderRecycled() {
        Glide.clear((View)this.mSponsorAvatar);
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    public void populateFrom(FlowItem flowItem) {
        this.mVideoAdContent = (VideoAdContent)flowItem.getContent();
        this.mAudioIcon.setVisibility(4);
        if (this.mVideoAdContent != null && this.mVideoAdContent.isValid()) {
            this.onConfigureContainerDimensions(this.mVideoAdContent.getAspectRatio());
            this.mPromotedLayout.setVisibility(0);
            this.mByLinePrefix.setText(R.string.promoted_by);
            this.mSponsorName.setText((CharSequence)this.mVideoAdContent.getSponsorDisplayName());
            this.mRecipeButton.setVisibility(8);
            this.mHeadline.setText((CharSequence)this.mVideoAdContent.getTitle());
            GlideUtils.loadImage(this.mCoverImageView.getContext(), this.mCoverImageView, this.mVideoAdContent.getCoverImage());
            this.mAudioIcon.setVisibility(0);
            if (this.mVideoAdContent.promotionType().equals("sponsored")) {
                this.mSponsorAvatar.setVisibility(0);
                GlideUtils.loadImageRounded(this.itemView.getContext(), this.mSponsorAvatar, this.mVideoAdContent.getSponsorUserImageUrl(), 2.0f);
                GlideUtils.loadImageRounded(this.itemView.getContext(), this.mShowImage, this.mVideoAdContent.getShowAvatar(), 2.0f);
            } else {
                this.mSponsorAvatar.setVisibility(8);
                GlideUtils.loadImageRounded(this.itemView.getContext(), this.mShowImage, this.mVideoAdContent.getSponsorUserImageUrl(), 2.0f);
            }
            this.setupClickListeners(flowItem);
        }
    }

    @Override
    protected void setupClickListeners(final FlowItem flowItem) {
        this.itemView.setOnClickListener(new View.OnClickListener(){

            public void onClick(View view) {
                if (VideoAdCard.this.getBuffetEventListener() != null) {
                    VideoAdCard.this.getBuffetEventListener().onCellClicked(flowItem, VideoAdCard.this.getAdapterPosition(), VideoAdCard.this.mCoverImageView, null, false);
                }
            }
        });
        if (!TextUtils.isEmpty((CharSequence)this.mVideoAdContent.getShareUrl())) {
            this.mShareButtonWrapper.setVisibility(0);
            this.mShareButtonWrapper.setOnClickListener(new View.OnClickListener(){

                public void onClick(View view) {
                    if (VideoAdCard.this.getBuffetEventListener() != null) {
                        VideoAdCard.this.getBuffetEventListener().onShareClicked(flowItem, VideoAdCard.this.getAdapterPosition());
                    }
                }
            });
            return;
        }
        this.mShareButtonWrapper.setVisibility(8);
        this.mShareButtonWrapper.setOnClickListener(null);
    }

}

