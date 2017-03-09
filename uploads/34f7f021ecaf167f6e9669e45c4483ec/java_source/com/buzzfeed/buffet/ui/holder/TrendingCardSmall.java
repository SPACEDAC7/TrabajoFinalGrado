/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.annotation.TargetApi
 *  android.content.Context
 *  android.view.View
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
import com.buzzfeed.buffet.R;
import com.buzzfeed.buffet.ui.holder.PostCard;
import com.buzzfeed.toolkit.content.Content;
import com.buzzfeed.toolkit.content.FlowItem;
import com.buzzfeed.toolkit.content.PostContent;
import com.buzzfeed.toolkit.util.DeviceUtil;
import com.buzzfeed.toolkit.util.UIUtil;
import com.buzzfeed.toolkit.util.VersionUtil;

public class TrendingCardSmall
extends PostCard {
    private static final int NUM_LINES_PHONE = 5;
    private static final int NUM_LINES_TABLET = 3;
    private View mNormalTrendingView;
    private View mSmallerTrendingView;

    public TrendingCardSmall(View view, boolean bl) {
        super(view, bl);
        this.mNormalTrendingView = UIUtil.findView(view, R.id.trending_text_normal);
        this.mSmallerTrendingView = UIUtil.findView(view, R.id.trending_text_smaller);
    }

    /*
     * Enabled aggressive block sorting
     */
    @TargetApi(value=21)
    @Override
    public void populateFrom(FlowItem content) {
        super.populateFrom((FlowItem)content);
        content = (PostContent)content.getContent();
        if (VersionUtil.hasLollipop()) {
            this.mImage.setTransitionName(content.getId());
            this.mImage.setTag((Object)content.getId());
        }
        int n2 = DeviceUtil.isTablet(this.itemView.getContext()) ? 3 : 5;
        if (this.mIsShrinked) {
            this.mSmallerTrendingView.setVisibility(0);
            this.mText.setMaxLines(n2);
            this.mTextWrapper.setPadding(this.mTextWrapper.getPaddingLeft(), this.mTextWrapper.getPaddingTop(), this.mTextWrapper.getPaddingRight(), (int)UIUtil.convertDpToPx(this.itemView.getContext(), 44.0f));
            return;
        }
        this.mNormalTrendingView.setVisibility(0);
        this.mText.setLines(n2);
    }
}

