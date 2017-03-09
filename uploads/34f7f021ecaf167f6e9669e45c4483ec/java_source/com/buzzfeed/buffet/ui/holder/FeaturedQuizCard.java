/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.annotation.TargetApi
 *  android.view.View
 */
package com.buzzfeed.buffet.ui.holder;

import android.annotation.TargetApi;
import android.view.View;
import com.buzzfeed.buffet.R;
import com.buzzfeed.buffet.ui.holder.FeaturedProximaNovaTitleCard;
import com.buzzfeed.toolkit.content.FlowItem;
import com.buzzfeed.toolkit.util.UIUtil;

public class FeaturedQuizCard
extends FeaturedProximaNovaTitleCard {
    View quizBadge;

    public FeaturedQuizCard(View view) {
        super(view);
        this.quizBadge = UIUtil.findView(view, R.id.post_card_badge);
    }

    @TargetApi(value=21)
    @Override
    public void populateFrom(FlowItem flowItem) {
        super.populateFrom(flowItem);
        this.quizBadge.setVisibility(0);
    }
}

