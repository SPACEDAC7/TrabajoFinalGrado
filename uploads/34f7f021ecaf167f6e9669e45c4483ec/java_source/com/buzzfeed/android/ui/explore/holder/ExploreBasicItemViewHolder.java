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

public class ExploreBasicItemViewHolder
extends ExploreItemViewHolder<Feed> {
    private final TextView mTitleTextView;

    public ExploreBasicItemViewHolder(View view) {
        super(view);
        this.mTitleTextView = (TextView)UIUtil.findView(view, 2131820889);
    }

    @Override
    public void onViewHolderRecycled() {
        this.itemView.setOnClickListener(null);
    }

    @Override
    public void populateFrom(final @NonNull Feed feed) {
        this.mTitleTextView.setText((CharSequence)feed.getName());
        this.itemView.setOnClickListener(new View.OnClickListener(){

            public void onClick(View view) {
                if (ExploreBasicItemViewHolder.this.getUserActionListener() != null) {
                    ExploreBasicItemViewHolder.this.getUserActionListener().onExploreItemClicked(feed, ExploreBasicItemViewHolder.this.getAdapterPosition());
                }
            }
        });
    }

}

