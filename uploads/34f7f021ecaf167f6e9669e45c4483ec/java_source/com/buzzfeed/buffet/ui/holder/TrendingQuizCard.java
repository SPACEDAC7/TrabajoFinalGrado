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
import com.buzzfeed.buffet.ui.holder.TrendingCardSmall;
import com.buzzfeed.toolkit.content.FlowItem;
import com.buzzfeed.toolkit.util.UIUtil;

public class TrendingQuizCard
extends TrendingCardSmall {
    private TextView quizBadge;

    public TrendingQuizCard(View view, boolean bl) {
        super(view, bl);
        this.quizBadge = (TextView)UIUtil.findView(view, R.id.post_card_badge);
    }

    @TargetApi(value=21)
    @Override
    public void populateFrom(FlowItem flowItem) {
        super.populateFrom(flowItem);
        this.quizBadge.setVisibility(0);
    }
}

