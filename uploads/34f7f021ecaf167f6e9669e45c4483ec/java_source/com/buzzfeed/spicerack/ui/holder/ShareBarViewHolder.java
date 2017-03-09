/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.content.Context
 *  android.view.View
 *  android.view.View$OnClickListener
 *  android.widget.LinearLayout
 */
package com.buzzfeed.spicerack.ui.holder;

import android.content.Context;
import android.view.View;
import android.widget.LinearLayout;
import com.buzzfeed.nativecontent.R;
import com.buzzfeed.spicerack.data.sharebar.ShareBarContent;
import com.buzzfeed.spicerack.data.sharebar.ShareBarItem;
import com.buzzfeed.spicerack.data.sharebar.ShareBarItemFactory;
import com.buzzfeed.spicerack.data.sharebar.SpicyShareBarLocation;
import com.buzzfeed.spicerack.ui.holder.BaseViewHolder;
import com.buzzfeed.spicerack.ui.protocol.SpicyShareBarListener;
import com.buzzfeed.spicerack.ui.protocol.SpicyShareBarListenerProvider;
import com.buzzfeed.spicerack.ui.sharebar.ShareBarItemView;
import com.buzzfeed.spicerack.ui.utils.AnimationUtil;
import com.buzzfeed.toolkit.content.Content;
import com.buzzfeed.toolkit.util.ShareItemType;

public class ShareBarViewHolder
extends BaseViewHolder {
    private static final int OFFSET_INCREMENT = 50;
    private LinearLayout mContainer;
    private SpicyShareBarListenerProvider mListenerProvider;

    public ShareBarViewHolder(View view, SpicyShareBarListenerProvider spicyShareBarListenerProvider) {
        super(view);
        this.mListenerProvider = spicyShareBarListenerProvider;
        this.mContainer = (LinearLayout)view.findViewById(R.id.spice_share_bar_container);
    }

    public void animateIn(final int n2) {
        if (this.mContainer == null) {
            return;
        }
        this.mContainer.post(new Runnable(){

            @Override
            public void run() {
                int n22 = n2;
                for (int i2 = 0; i2 < ShareBarViewHolder.this.mContainer.getChildCount(); ++i2) {
                    n22 = AnimationUtil.startReveal(ShareBarViewHolder.this.mContainer.getChildAt(i2), n22, 50);
                }
            }
        });
    }

    /*
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    @Override
    public void populateFrom(Content content) {
        int n2;
        super.populateFrom(content);
        content = (ShareBarContent)content;
        if (content.getShareItemTypes() == null) {
            return;
        }
        final ShareBarItem[] arrshareBarItem = new ShareBarItem[content.getShareItemTypes().length];
        for (n2 = 0; n2 < content.getShareItemTypes().length; ++n2) {
            arrshareBarItem[n2] = ShareBarItemFactory.getShareBarItem(content.getShareItemTypes()[n2]);
        }
        this.mContainer.removeAllViews();
        n2 = 0;
        do {
            if (n2 >= arrshareBarItem.length) {
                if (content.getLocation() != SpicyShareBarLocation.Bottom) return;
                this.showContent();
                return;
            }
            ShareBarItemView shareBarItemView = new ShareBarItemView(this.itemView.getContext());
            shareBarItemView.setVisibility(4);
            ShareBarItem shareBarItem = arrshareBarItem[n2];
            boolean bl = n2 == 0;
            boolean bl2 = n2 == arrshareBarItem.length - 1;
            shareBarItemView.populateFrom(shareBarItem, bl, bl2);
            shareBarItemView.setOnClickListener(new View.OnClickListener((ShareBarContent)content){
                final /* synthetic */ ShareBarContent val$shareBarContent;

                public void onClick(View view) {
                    if (ShareBarViewHolder.this.mListenerProvider.getShareBarListener() != null) {
                        ShareBarViewHolder.this.mListenerProvider.getShareBarListener().onShareEvent(arrshareBarItem[n2].getShareType(), this.val$shareBarContent.getLocation());
                    }
                }
            });
            this.mContainer.addView((View)shareBarItemView);
            ++n2;
        } while (true);
    }

    @Override
    protected void showContent() {
        super.showContent();
        for (int i2 = 0; i2 < this.mContainer.getChildCount(); ++i2) {
            this.mContainer.getChildAt(i2).setVisibility(0);
        }
    }

}

