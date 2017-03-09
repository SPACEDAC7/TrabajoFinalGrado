/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.content.Context
 *  android.view.LayoutInflater
 *  android.view.View
 *  android.view.ViewGroup
 */
package com.buzzfeed.showx.showpage;

import android.content.Context;
import android.support.v7.widget.RecyclerView;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.buzzfeed.buffet.ui.adapter.CardAdapter;
import com.buzzfeed.buffet.ui.holder.BaseCard;
import com.buzzfeed.showx.R;
import com.buzzfeed.showx.showpage.data.model.EmptySubscribeContent;
import com.buzzfeed.showx.showpage.data.model.ShowPageItemType;
import com.buzzfeed.showx.showpage.ui.holder.ShowPageVideoCard;
import com.buzzfeed.showx.showpage.ui.holder.ShowPageVideoCardFixedHeight;
import com.buzzfeed.showx.showpage.ui.holder.SubscribeCard;
import com.buzzfeed.toolkit.content.Content;
import com.buzzfeed.toolkit.content.FlowItem;
import java.util.List;

class ShowPageAdapter
extends CardAdapter {
    private static final int HEADER_ITEMS = 1;
    private boolean mEnableShowSubscriptions;
    private FlowItem mShowSubscribeEmptyContent = new FlowItem(ShowPageItemType.SHOW_SUBSCRIBE.name(), new EmptySubscribeContent());

    public ShowPageAdapter(boolean bl) {
        this.mEnableShowSubscriptions = bl;
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    @Override
    public int getItemCount() {
        int n2;
        int n3 = this.mFlowList.size();
        if (this.mEnableShowSubscriptions) {
            n2 = 1;
            do {
                return n2 + n3;
                break;
            } while (true);
        }
        n2 = 0;
        return n2 + n3;
    }

    @Override
    public FlowItem getItemForPosition(int n2) {
        int n3 = n2;
        if (this.mEnableShowSubscriptions) {
            if (n2 == ShowPageItemType.SHOW_SUBSCRIBE.ordinal()) {
                return this.mShowSubscribeEmptyContent;
            }
            n3 = n2 + 1;
        }
        return (FlowItem)this.mFlowList.get(n3);
    }

    @Override
    public int getItemViewType(int n2) {
        int n3 = n2;
        if (this.mEnableShowSubscriptions) {
            if (n2 == 0) {
                return ShowPageItemType.toInt(ShowPageItemType.SHOW_SUBSCRIBE.name());
            }
            n3 = n2 + 1;
        }
        return ShowPageItemType.toInt(this.getItemForPosition(n3).getType());
    }

    @Override
    public BaseCard onCreateViewHolder(ViewGroup viewGroup, int n2) {
        LayoutInflater layoutInflater = LayoutInflater.from((Context)viewGroup.getContext());
        switch (.$SwitchMap$com$buzzfeed$showx$showpage$data$model$ShowPageItemType[ShowPageItemType.fromInt(n2).ordinal()]) {
            default: {
                throw new IllegalArgumentException("View type not supported. id=" + n2);
            }
            case 1: {
                return new SubscribeCard(layoutInflater.inflate(R.layout.card_show_page_subscribe, viewGroup, false));
            }
            case 2: {
                return new ShowPageVideoCard(layoutInflater.inflate(R.layout.card_video_default, viewGroup, false));
            }
            case 3: 
        }
        return new ShowPageVideoCardFixedHeight(layoutInflater.inflate(R.layout.card_video_fixed_height, viewGroup, false));
    }

}

