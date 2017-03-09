/*
 * Decompiled with CFR 0_115.
 */
package com.buzzfeed.buffet.ui.adapter;

import android.support.annotation.Nullable;
import android.support.v7.widget.RecyclerView;
import com.buzzfeed.buffet.ui.holder.BaseCard;
import com.buzzfeed.buffet.ui.listener.BuffetEventListener;
import com.buzzfeed.buffet.ui.listener.BuffetEventListenerProvider;
import com.buzzfeed.toolkit.content.FlowItem;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

public abstract class CardAdapter
extends RecyclerView.Adapter<BaseCard>
implements BuffetEventListenerProvider {
    @Nullable
    protected BuffetEventListener mBuffetEventListener;
    protected List<FlowItem> mFlowList = new ArrayList<FlowItem>();

    public void appendItems(List<FlowItem> list) {
        int n2 = this.mFlowList.size();
        this.mFlowList.addAll(list);
        this.notifyItemRangeInserted(n2, list.size());
    }

    @Nullable
    @Override
    public BuffetEventListener getBuffetEventListener() {
        return this.mBuffetEventListener;
    }

    @Override
    public int getItemCount() {
        return this.mFlowList.size();
    }

    public FlowItem getItemForPosition(int n2) {
        return this.mFlowList.get(n2);
    }

    public List<FlowItem> getItems() {
        return this.mFlowList;
    }

    @Override
    public void onBindViewHolder(BaseCard baseCard, int n2) {
        baseCard.setBuffetListenerProvider(this);
        baseCard.populateFrom(this.getItemForPosition(n2));
    }

    @Override
    public void onDetachedFromRecyclerView(RecyclerView recyclerView) {
        super.onDetachedFromRecyclerView(recyclerView);
        this.mBuffetEventListener = null;
    }

    @Override
    public void onViewRecycled(BaseCard baseCard) {
        super.onViewRecycled(baseCard);
        baseCard.setBuffetListenerProvider(null);
        baseCard.onViewHolderRecycled();
    }

    public void removeItemAt(int n2) {
        this.mFlowList.remove(n2);
        this.notifyItemRemoved(n2);
    }

    public void setBuffetEventListener(@Nullable BuffetEventListener buffetEventListener) {
        this.mBuffetEventListener = buffetEventListener;
    }

    public void setList(List<FlowItem> list) {
        this.mFlowList = new ArrayList<FlowItem>(list);
        this.notifyDataSetChanged();
    }

    public void updateItem(int n2, FlowItem flowItem) {
        this.mFlowList.set(n2, flowItem);
        this.notifyItemChanged(n2);
    }
}

