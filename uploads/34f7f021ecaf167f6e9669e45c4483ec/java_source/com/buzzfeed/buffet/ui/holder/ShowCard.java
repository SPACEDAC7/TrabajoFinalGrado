/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.content.Context
 *  android.view.View
 *  android.view.View$OnClickListener
 *  android.view.ViewGroup
 *  android.widget.ImageView
 *  android.widget.TextView
 */
package com.buzzfeed.buffet.ui.holder;

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
import com.buzzfeed.toolkit.content.ShowListContent;
import com.buzzfeed.toolkit.ui.view.ForceAspectImageView;
import com.buzzfeed.toolkit.util.GlideUtils;
import com.buzzfeed.toolkit.util.UIUtil;
import com.buzzfeed.toolkit.util.VersionUtil;
import java.util.Stack;

public class ShowCard
extends BaseCard {
    private ForceAspectImageView mForceAspectImageView;
    private TextView mText;
    private ViewGroup mTextContainer;

    public ShowCard(View view) {
        super(view);
        this.mForceAspectImageView = (ForceAspectImageView)((Object)UIUtil.findView(view, R.id.card_show_image));
        this.mTextContainer = (ViewGroup)UIUtil.findView(view, R.id.card_show_text_container);
        this.mText = (TextView)UIUtil.findView(view, R.id.card_show_text);
    }

    @Override
    public void onViewHolderRecycled() {
        Glide.clear((View)this.mForceAspectImageView);
    }

    @Override
    public void populateFrom(final FlowItem flowItem) {
        ShowListContent showListContent = (ShowListContent)flowItem.getContent();
        this.mTextContainer.setVisibility(8);
        this.mForceAspectImageView.setAspectRatio(1.5f);
        this.mText.setText((CharSequence)showListContent.getName());
        GlideUtils.loadImage(this.itemView.getContext(), this.mForceAspectImageView, showListContent.getBackgroundImageUrl(), R.color.buzzfeed_light_gray, new GlideUtils.GlideFailureListener(){

            @Override
            public void onFailure() {
                ShowCard.this.mTextContainer.setVisibility(0);
            }
        });
        if (VersionUtil.hasLollipop()) {
            this.mForceAspectImageView.setTransitionName(showListContent.getId());
            this.mForceAspectImageView.setTag((Object)showListContent.getId());
        }
        this.itemView.setOnClickListener(new View.OnClickListener(){

            public void onClick(View object) {
                if (ShowCard.this.getBuffetEventListener() != null) {
                    object = new Stack<String>((ShowListContent)flowItem.getContent()){
                        final /* synthetic */ ShowListContent val$content;
                    };
                    ShowCard.this.getBuffetEventListener().onCellClicked(flowItem, ShowCard.this.getAdapterPosition(), ShowCard.this.mForceAspectImageView, (Stack<String>)object, true);
                }
            }

        });
    }

}

