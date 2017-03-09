/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.annotation.TargetApi
 *  android.content.Context
 *  android.text.Html
 *  android.text.TextUtils
 *  android.view.View
 *  android.view.View$OnClickListener
 *  android.view.ViewGroup
 *  android.widget.ImageView
 *  android.widget.TextView
 */
package com.buzzfeed.buffet.ui.holder;

import android.annotation.TargetApi;
import android.content.Context;
import android.text.Html;
import android.text.TextUtils;
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
import com.buzzfeed.toolkit.util.DeviceUtil;
import com.buzzfeed.toolkit.util.GlideUtils;
import com.buzzfeed.toolkit.util.ImageUtil;
import com.buzzfeed.toolkit.util.UIUtil;
import com.buzzfeed.toolkit.util.VersionUtil;
import java.io.Serializable;
import java.util.Stack;

public class PostCard
extends BaseCard {
    protected ImageView mImage;
    protected boolean mIsShrinked;
    protected TextView mText;
    protected ViewGroup mTextWrapper;
    protected ViewGroup mWrapper;

    public PostCard(View view, boolean bl) {
        super(view);
        this.mImage = (ImageView)UIUtil.findView(view, R.id.post_card_image);
        this.mText = (TextView)UIUtil.findView(view, R.id.post_card_text);
        this.mTextWrapper = (ViewGroup)UIUtil.findView(view, R.id.post_card_text_wrapper);
        this.mWrapper = (ViewGroup)UIUtil.findView(view, R.id.post_card_wrapper);
        this.mIsShrinked = bl;
    }

    private void setupClickListeners(final FlowItem flowItem) {
        this.itemView.setOnClickListener(new View.OnClickListener(){

            /*
             * Enabled aggressive block sorting
             */
            public void onClick(View serializable) {
                if (PostCard.this.getBuffetEventListener() != null) {
                    serializable = (PostContent)flowItem.getContent();
                    BuffetEventListener buffetEventListener = PostCard.this.getBuffetEventListener();
                    FlowItem flowItem2 = flowItem;
                    int n2 = PostCard.this.getAdapterPosition();
                    ImageView imageView = PostCard.this.mImage;
                    serializable = DeviceUtil.isTablet(PostCard.this.itemView.getContext()) ? serializable.getWideStack() : serializable.getThumbnailStack();
                    boolean bl = !DeviceUtil.isTablet(PostCard.this.itemView.getContext());
                    buffetEventListener.onCellClicked(flowItem2, n2, imageView, (Stack<String>)serializable, bl);
                }
            }
        });
    }

    @Override
    public void onViewHolderRecycled() {
        Glide.clear((View)this.mImage);
    }

    /*
     * Enabled aggressive block sorting
     */
    @TargetApi(value=21)
    @Override
    public void populateFrom(FlowItem object) {
        PostContent postContent = (PostContent)object.getContent();
        this.setupClickListeners((FlowItem)object);
        object = postContent.getTitle();
        if (!TextUtils.isEmpty((CharSequence)object)) {
            this.mText.setText((CharSequence)Html.fromHtml((String)object));
        }
        if (VersionUtil.hasLollipop()) {
            this.mImage.setTransitionName(postContent.getId());
            this.mImage.setTag((Object)postContent.getId());
        }
        if (DeviceUtil.isTablet(this.itemView.getContext())) {
            GlideUtils.loadImageStack(this.itemView.getContext().getApplicationContext(), this.mImage, postContent.getWideStack(), ImageUtil.getCacheableImageWidth(), ImageUtil.getCacheableImageHeight(false));
        } else {
            GlideUtils.loadImageStack(this.itemView.getContext().getApplicationContext(), this.mImage, postContent.getThumbnailStack(), ImageUtil.getCacheableImageWidth(), ImageUtil.getCacheableImageHeight(true));
        }
        if (!this.mIsShrinked) {
            if (!DeviceUtil.isTablet(this.itemView.getContext())) {
                this.mText.setLines(6);
                return;
            }
            this.mText.setLines(4);
        }
    }

}

