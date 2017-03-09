/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.annotation.TargetApi
 *  android.content.Context
 *  android.text.TextUtils
 *  android.util.AttributeSet
 *  android.view.View
 *  android.view.View$OnClickListener
 *  android.view.ViewGroup
 *  android.widget.ImageView
 *  android.widget.RelativeLayout
 *  android.widget.TextView
 */
package com.buzzfeed.mediaviewer.ui.view;

import android.annotation.TargetApi;
import android.content.Context;
import android.support.annotation.Nullable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.buzzfeed.mediaviewer.R;
import com.buzzfeed.toolkit.util.GlideUtils;

public class VideoHeaderView
extends RelativeLayout {
    private ImageView mAvatarImageView;
    private TextView mPromotedByTextView;
    private ImageView mSponsorImageView;
    private TextView mSponsorNameTextView;
    private TextView mTitleTextView;

    public VideoHeaderView(Context context) {
        this(context, null);
    }

    public VideoHeaderView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public VideoHeaderView(Context context, AttributeSet attributeSet, int n2) {
        super(context, attributeSet, n2);
        this.initialize();
    }

    @TargetApi(value=21)
    public VideoHeaderView(Context context, AttributeSet attributeSet, int n2, int n3) {
        super(context, attributeSet, n2, n3);
        this.initialize();
    }

    public TextView getTitleTextView() {
        return this.mTitleTextView;
    }

    protected void initialize() {
        VideoHeaderView.inflate((Context)this.getContext(), (int)R.layout.video_viewer_header, (ViewGroup)this);
        this.mTitleTextView = (TextView)this.findViewById(R.id.titleTextView);
        this.mPromotedByTextView = (TextView)this.findViewById(R.id.promotedByTextView);
        this.mSponsorNameTextView = (TextView)this.findViewById(R.id.sponsorNameTextView);
        this.mAvatarImageView = (ImageView)this.findViewById(R.id.avatarImageView);
        this.mSponsorImageView = (ImageView)this.findViewById(R.id.sponsorImageView);
    }

    public void setAvatarImageUrl(String string2) {
        if (!TextUtils.isEmpty((CharSequence)string2)) {
            GlideUtils.loadImageRounded(this.getContext(), this.mAvatarImageView, string2, 2.0f);
            this.mAvatarImageView.setVisibility(0);
            return;
        }
        this.mAvatarImageView.setVisibility(8);
    }

    public void setShowAvatarClickListener(@Nullable View.OnClickListener onClickListener) {
        this.mAvatarImageView.setOnClickListener(onClickListener);
    }

    public void setSponsorImageUrl(String string2) {
        if (!TextUtils.isEmpty((CharSequence)string2)) {
            GlideUtils.loadImageRounded(this.getContext(), this.mSponsorImageView, string2, 2.0f);
            this.mSponsorImageView.setVisibility(0);
            return;
        }
        this.mSponsorImageView.setVisibility(8);
    }

    public void setSponsorName(String string2) {
        if (!TextUtils.isEmpty((CharSequence)string2)) {
            this.mSponsorNameTextView.setText((CharSequence)string2);
            this.mSponsorNameTextView.setVisibility(0);
            this.mPromotedByTextView.setVisibility(0);
            return;
        }
        this.mSponsorNameTextView.setVisibility(8);
        this.mPromotedByTextView.setVisibility(8);
    }

    public void setTitle(String string2) {
        this.mTitleTextView.setText((CharSequence)string2);
    }
}

