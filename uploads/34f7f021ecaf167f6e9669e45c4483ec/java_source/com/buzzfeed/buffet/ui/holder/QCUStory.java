/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.view.View
 *  android.view.View$OnClickListener
 *  android.widget.ImageView
 *  android.widget.TextView
 */
package com.buzzfeed.buffet.ui.holder;

import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import com.buzzfeed.buffet.R;
import com.buzzfeed.buffet.ui.holder.BasePackageOverflowCard;
import com.buzzfeed.buffet.ui.listener.PackageItemClickListener;
import com.buzzfeed.toolkit.content.PackageContent;
import com.buzzfeed.toolkit.content.PostContent;
import com.buzzfeed.toolkit.util.UIUtil;
import java.util.Stack;

public class QCUStory
extends BasePackageOverflowCard {
    private TextView mBulletedSummaryTextView;
    private boolean mIsBulleted;
    private TextView mSummaryTextView;

    public QCUStory(View view, boolean bl) {
        super(view);
        this.mIsBulleted = bl;
        this.mBulletedSummaryTextView = (TextView)UIUtil.findView(this.itemView, R.id.qcu_story_summary);
        this.mSummaryTextView = (TextView)UIUtil.findView(this.itemView, R.id.qcu_story_summary);
    }

    public void populateFrom(final PackageContent packageContent, final PostContent postContent, final int n2, final int n3) {
        if (this.mIsBulleted) {
            this.mBulletedSummaryTextView.setText((CharSequence)postContent.getTitle());
            return;
        }
        this.mSummaryTextView.setText((CharSequence)postContent.getTitle());
        this.itemView.setOnClickListener(new View.OnClickListener(){

            public void onClick(View view) {
                if (QCUStory.this.getPackageItemClickListener() != null) {
                    QCUStory.this.getPackageItemClickListener().onPackageItemClicked(packageContent, postContent, n2, n3, null, postContent.getThumbnailStack(), false);
                }
            }
        });
    }

}

