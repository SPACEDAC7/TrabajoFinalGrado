/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.view.View
 *  android.view.View$OnClickListener
 *  android.widget.TextView
 */
package com.buzzfeed.android.ui.explore.holder;

import android.support.annotation.NonNull;
import android.view.View;
import android.widget.TextView;
import com.buzzfeed.android.data.Feed;
import com.buzzfeed.android.ui.explore.holder.ExploreItemViewHolder;
import com.buzzfeed.android.ui.explore.listener.ExploreUserActionListener;
import com.buzzfeed.toolkit.util.UIUtil;

public class ExploreBadgeItemViewHolder
extends ExploreItemViewHolder<Feed> {
    private final TextView mBadgeTitleTextView;

    public ExploreBadgeItemViewHolder(View view) {
        super(view);
        this.mBadgeTitleTextView = (TextView)UIUtil.findView(view, 2131820887);
    }

    @Override
    public void onViewHolderRecycled() {
        this.itemView.setOnClickListener(null);
    }

    @Override
    public void populateFrom(final @NonNull Feed feed) {
        this.mBadgeTitleTextView.setText((CharSequence)feed.getName());
        this.itemView.setOnClickListener(new View.OnClickListener(){

            public void onClick(View view) {
                if (ExploreBadgeItemViewHolder.this.getUserActionListener() != null) {
                    ExploreBadgeItemViewHolder.this.getUserActionListener().onExploreItemClicked(feed, ExploreBadgeItemViewHolder.this.getAdapterPosition());
                }
            }
        });
    }

}

