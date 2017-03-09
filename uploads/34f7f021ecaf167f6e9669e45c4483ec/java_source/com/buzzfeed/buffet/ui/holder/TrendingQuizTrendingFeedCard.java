/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.view.View
 *  android.widget.TextView
 */
package com.buzzfeed.buffet.ui.holder;

import android.view.View;
import android.widget.TextView;
import com.buzzfeed.buffet.R;
import com.buzzfeed.buffet.ui.holder.TrendingCard;
import com.buzzfeed.toolkit.util.UIUtil;

public class TrendingQuizTrendingFeedCard
extends TrendingCard {
    public TrendingQuizTrendingFeedCard(View view) {
        super(view);
        ((TextView)UIUtil.findView(view, R.id.trending_card_badge)).setVisibility(0);
    }
}

