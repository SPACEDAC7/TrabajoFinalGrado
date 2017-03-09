/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.view.View
 *  android.view.View$OnClickListener
 *  android.view.ViewGroup
 *  android.widget.ImageView
 *  android.widget.TextView
 */
package com.buzzfeed.showx.showpage.ui.holder;

import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import com.buzzfeed.buffet.ui.holder.BaseCard;
import com.buzzfeed.buffet.ui.listener.BuffetEventListener;
import com.buzzfeed.showx.R;
import com.buzzfeed.showx.showpage.listener.ShowPageBuffetEventListener;
import com.buzzfeed.toolkit.content.FlowItem;
import com.buzzfeed.toolkit.util.UIUtil;

public class SubscribeCard
extends BaseCard {
    private ViewGroup mSubscribeButton;
    private TextView mSubscribeDescriptionTextView;
    private ImageView mSubscribeIconImageView;
    private TextView mSubscribeTitleTextView;

    public SubscribeCard(View view) {
        super(view);
        this.mSubscribeButton = (ViewGroup)UIUtil.findView(view, R.id.show_page_subscribe_button);
        this.mSubscribeIconImageView = (ImageView)UIUtil.findView(view, R.id.show_page_subscribe_icon);
        this.mSubscribeTitleTextView = (TextView)UIUtil.findView(view, R.id.show_page_subscribe_title);
        this.mSubscribeDescriptionTextView = (TextView)UIUtil.findView(view, R.id.show_page_subscribe_description);
    }

    private void initialize() {
        if (!(this.getBuffetEventListener() instanceof ShowPageBuffetEventListener)) {
            throw new UnsupportedOperationException("ShowPageBuffetEventListener must be provided for subscription actions.");
        }
        final ShowPageBuffetEventListener showPageBuffetEventListener = (ShowPageBuffetEventListener)this.getBuffetEventListener();
        this.updateSubscribeModuleState(showPageBuffetEventListener.isSubscribedToShow());
        this.mSubscribeButton.setOnClickListener(new View.OnClickListener(){

            public void onClick(View view) {
                showPageBuffetEventListener.onSubscribeButtonClicked();
                SubscribeCard.this.updateSubscribeModuleState(showPageBuffetEventListener.isSubscribedToShow());
            }
        });
    }

    /*
     * Enabled aggressive block sorting
     */
    private void updateSubscribeModuleState(boolean bl) {
        String string2 = bl ? this.getString(R.string.showpage_subscribe_content_title_subscribed) : this.getString(R.string.showpage_subscribe_content_title_unsubscribed);
        String string3 = bl ? this.getString(R.string.showpage_subscribe_cta_title_subscribed) : this.getString(R.string.showpage_subscribe_cta_title_unsubscribed);
        this.mSubscribeDescriptionTextView.setText((CharSequence)string2);
        this.mSubscribeTitleTextView.setText((CharSequence)string3);
        string2 = this.mSubscribeIconImageView;
        int n2 = bl ? 0 : 8;
        string2.setVisibility(n2);
    }

    @Override
    public void populateFrom(FlowItem flowItem) {
        this.initialize();
    }

}

