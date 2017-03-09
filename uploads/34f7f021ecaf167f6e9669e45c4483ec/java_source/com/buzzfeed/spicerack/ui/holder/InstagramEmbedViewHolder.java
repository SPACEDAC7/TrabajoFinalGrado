/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.view.View
 *  android.widget.TextView
 */
package com.buzzfeed.spicerack.ui.holder;

import android.view.View;
import android.widget.TextView;
import com.buzzfeed.nativecontent.R;
import com.buzzfeed.spicerack.data.model.subbuzz.EmbedSpice;
import com.buzzfeed.spicerack.ui.holder.SpiceViewHolder;
import com.buzzfeed.spicerack.ui.protocol.SpicyEventListener;
import com.buzzfeed.spicerack.ui.protocol.SpicyEventListenerProvider;
import com.buzzfeed.spicerack.ui.view.EmbedWebView;
import com.buzzfeed.toolkit.content.Content;
import com.buzzfeed.toolkit.util.UIUtil;

public class InstagramEmbedViewHolder
extends SpiceViewHolder {
    private TextView mAttribution;
    private TextView mDescription;
    private EmbedWebView mEmbedWebView;
    private EmbedSpice mSpice;

    public InstagramEmbedViewHolder(View view, final SpicyEventListener spicyEventListener) {
        super(view);
        this.mDescription = (TextView)UIUtil.findView(view, R.id.spice_embed_instagram_description);
        this.mAttribution = (TextView)UIUtil.findView(view, R.id.spice_embed_attribution);
        this.mEmbedWebView = (EmbedWebView)((Object)UIUtil.findView(view, R.id.spice_embed_instagram_webview));
        this.mEmbedWebView.setEmbedWebViewClickListener(new EmbedWebView.EmbedWebViewClickListener(){

            @Override
            public void onWebViewClicked(String string2) {
                if (spicyEventListener != null) {
                    spicyEventListener.onUrlClicked(string2, false);
                }
            }
        });
    }

    @Override
    public void onAttachedToWindow(SpicyEventListenerProvider spicyEventListenerProvider, boolean bl) {
        super.onAttachedToWindow(spicyEventListenerProvider, bl);
        this.mEmbedWebView.loadUrlWithEmbedSpice(this.mSpice.getUrl(), this.mSpice);
    }

    @Override
    public void onDetachedToWindow(SpicyEventListenerProvider spicyEventListenerProvider) {
        super.onDetachedToWindow(spicyEventListenerProvider);
        this.mEmbedWebView.loadUrl("about:blank");
    }

    @Override
    public void populateFrom(Content content) {
        super.populateFrom(content);
        this.mSpice = (EmbedSpice)((Object)content);
        this.setText(this.mDescription, this.mSpice.getDescription(), true);
        this.setText(this.mAttribution, this.mSpice.getAttribution(), true);
        this.mEmbedWebView.loadUrlWithEmbedSpice(this.mSpice.getUrl(), this.mSpice);
    }

}

