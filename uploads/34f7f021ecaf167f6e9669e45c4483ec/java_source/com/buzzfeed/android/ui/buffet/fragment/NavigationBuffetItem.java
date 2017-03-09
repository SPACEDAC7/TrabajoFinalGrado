/*
 * Decompiled with CFR 0_115.
 */
package com.buzzfeed.android.ui.buffet.fragment;

import android.support.annotation.Nullable;
import android.support.v7.widget.RecyclerView;
import com.buzzfeed.android.ui.buffet.fragment.NavigationItemView;

public interface NavigationBuffetItem
extends NavigationItemView {
    public void reloadFeed();

    public void retryFeedLoad();

    public void setBuffetRecycledViewPool(@Nullable RecyclerView.RecycledViewPool var1);
}

