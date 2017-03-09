/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.content.Context
 *  android.content.res.Resources
 *  android.view.View
 */
package com.buzzfeed.buffet.ui.holder;

import android.content.Context;
import android.content.res.Resources;
import android.support.annotation.Nullable;
import android.view.View;
import com.buzzfeed.buffet.ui.listener.BuffetEventListener;
import com.buzzfeed.buffet.ui.listener.BuffetEventListenerProvider;
import com.buzzfeed.toolkit.content.FlowItem;
import com.buzzfeed.toolkit.ui.holder.BaseViewHolder;
import java.text.DecimalFormat;

public abstract class BaseCard
extends BaseViewHolder<FlowItem> {
    @Nullable
    private BuffetEventListenerProvider mListenerProvider;

    public BaseCard(View view) {
        super(view);
    }

    protected String formatViewCount(long l2) {
        return new DecimalFormat("#,###,###,###").format(l2);
    }

    @Nullable
    protected BuffetEventListener getBuffetEventListener() {
        if (this.mListenerProvider != null) {
            return this.mListenerProvider.getBuffetEventListener();
        }
        return null;
    }

    protected int getColor(int n2) {
        return this.itemView.getContext().getResources().getColor(n2);
    }

    protected String getString(int n2) {
        return this.itemView.getContext().getResources().getString(n2);
    }

    protected /* varargs */ String getString(int n2, Object ... arrobject) {
        return this.itemView.getContext().getResources().getString(n2, arrobject);
    }

    public boolean isAd() {
        return false;
    }

    @Override
    public void onViewHolderRecycled() {
    }

    public void setBuffetListenerProvider(@Nullable BuffetEventListenerProvider buffetEventListenerProvider) {
        this.mListenerProvider = buffetEventListenerProvider;
    }
}

