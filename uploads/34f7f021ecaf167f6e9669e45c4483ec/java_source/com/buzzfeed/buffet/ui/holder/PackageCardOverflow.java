/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.text.format.DateUtils
 *  android.view.View
 *  android.view.View$OnClickListener
 *  android.widget.ImageView
 *  android.widget.TextView
 */
package com.buzzfeed.buffet.ui.holder;

import android.text.format.DateUtils;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import com.buzzfeed.buffet.R;
import com.buzzfeed.buffet.ui.holder.BasePackageOverflowCard;
import com.buzzfeed.buffet.ui.listener.PackageItemClickListener;
import com.buzzfeed.toolkit.content.PackageContent;
import com.buzzfeed.toolkit.content.PostContent;
import com.buzzfeed.toolkit.util.UIUtil;
import java.util.Date;
import java.util.Stack;

public class PackageCardOverflow
extends BasePackageOverflowCard {
    private TextView mHeader;
    private TextView mTimestamp;

    public PackageCardOverflow(View view) {
        super(view);
        this.mHeader = (TextView)UIUtil.findView(this.itemView, R.id.card_package_overflow_title);
        this.mTimestamp = (TextView)UIUtil.findView(this.itemView, R.id.card_package_overflow_timestamp);
    }

    public void populateFrom(final PackageContent packageContent, final PostContent postContent, final int n2, final int n3) {
        this.mHeader.setText((CharSequence)postContent.getTitle());
        this.mTimestamp.setText(DateUtils.getRelativeTimeSpanString((long)postContent.getPublished().getTime()));
        this.itemView.setOnClickListener(new View.OnClickListener(){

            public void onClick(View view) {
                if (PackageCardOverflow.this.getPackageItemClickListener() != null) {
                    PackageCardOverflow.this.getPackageItemClickListener().onPackageItemClicked(packageContent, postContent, n2, n3, null, postContent.getThumbnailStack(), false);
                }
            }
        });
    }

}

