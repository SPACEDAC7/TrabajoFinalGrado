/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.annotation.TargetApi
 *  android.view.View
 *  android.widget.TextView
 */
package com.buzzfeed.buffet.ui.holder;

import android.annotation.TargetApi;
import android.view.View;
import android.widget.TextView;
import com.buzzfeed.buffet.R;
import com.buzzfeed.buffet.ui.holder.PostCard;
import com.buzzfeed.toolkit.content.FlowItem;
import com.buzzfeed.toolkit.util.UIUtil;

public class QuizCard
extends PostCard {
    private TextView mBadge;

    public QuizCard(View view, boolean bl) {
        super(view, bl);
        this.mBadge = (TextView)UIUtil.findView(view, R.id.post_card_badge);
    }

    @TargetApi(value=21)
    @Override
    public void populateFrom(FlowItem flowItem) {
        super.populateFrom(flowItem);
        this.mBadge.setText(R.string.quiz);
        this.mBadge.setVisibility(0);
    }
}

