/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.annotation.TargetApi
 *  android.content.Context
 *  android.content.res.Resources
 *  android.text.Html
 *  android.text.TextUtils
 *  android.view.View
 *  android.view.ViewGroup
 *  android.view.ViewGroup$LayoutParams
 *  android.widget.ImageView
 *  android.widget.TextView
 */
package com.buzzfeed.buffet.ui.holder;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.res.Resources;
import android.text.Html;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import com.bumptech.glide.Glide;
import com.buzzfeed.buffet.R;
import com.buzzfeed.buffet.ui.holder.PostCard;
import com.buzzfeed.toolkit.content.AdContent;
import com.buzzfeed.toolkit.content.Content;
import com.buzzfeed.toolkit.content.FlowItem;
import com.buzzfeed.toolkit.util.DeviceUtil;
import com.buzzfeed.toolkit.util.GlideUtils;
import com.buzzfeed.toolkit.util.UIUtil;

public class AdCard
extends PostCard {
    protected ViewGroup mAdContainer;
    protected ImageView mSponsorImage;
    protected TextView mSponsorName;
    protected TextView mSponsorPrefix;

    public AdCard(View view, boolean bl) {
        super(view, bl);
        this.mAdContainer = (ViewGroup)UIUtil.findView(view, R.id.post_card_ad_container);
        this.mSponsorImage = (ImageView)UIUtil.findView(view, R.id.post_card_sponsor_image);
        this.mSponsorPrefix = (TextView)UIUtil.findView(view, R.id.post_card_sponsor_prefix);
        this.mSponsorName = (TextView)UIUtil.findView(view, R.id.post_card_sponsor_name);
        this.mAdContainer.setVisibility(4);
    }

    @Override
    public boolean isAd() {
        return true;
    }

    @Override
    public void onViewHolderRecycled() {
        Glide.clear((View)this.mSponsorImage);
    }

    /*
     * Enabled aggressive block sorting
     */
    @TargetApi(value=21)
    @Override
    public void populateFrom(FlowItem flowItem) {
        int n2;
        super.populateFrom(flowItem);
        AdContent adContent = (AdContent)flowItem.getContent();
        if (DeviceUtil.isTablet(this.itemView.getContext())) {
            this.mText.setMaxLines(2);
            this.mText.setMinLines(2);
        } else {
            this.mText.setMaxLines(4);
            this.mText.setMinLines(4);
        }
        if (this.mIsShrinked) {
            this.mText.setMinLines(0);
        }
        this.mWrapper.getLayoutParams().height = n2 = (int)this.itemView.getResources().getDimension(R.dimen.buffet_card_height);
        if (!adContent.isBackfillAd() && !TextUtils.isEmpty((CharSequence)adContent.getSponsorDisplayName())) {
            this.mAdContainer.setVisibility(0);
            this.mText.setVisibility(0);
            GlideUtils.loadImageRounded(this.itemView.getContext(), this.mSponsorImage, adContent.getSponsorUserImageUrl(), 2.0f);
            if (!TextUtils.isEmpty((CharSequence)adContent.getBylinePrefix())) {
                this.mSponsorPrefix.setText((CharSequence)adContent.getBylinePrefix());
            } else {
                this.mSponsorPrefix.setText(R.string.promoted_by);
            }
            this.mSponsorName.setText((CharSequence)Html.fromHtml((String)adContent.getSponsorDisplayName()));
            return;
        }
        this.mAdContainer.setVisibility(4);
        if (TextUtils.isEmpty((CharSequence)adContent.getSponsorDisplayName())) {
            this.mText.setVisibility(4);
            return;
        }
        this.mText.setVisibility(0);
    }
}

