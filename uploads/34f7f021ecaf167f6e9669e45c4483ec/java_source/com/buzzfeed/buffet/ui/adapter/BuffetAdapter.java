/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.content.Context
 *  android.view.LayoutInflater
 *  android.view.View
 *  android.view.ViewGroup
 */
package com.buzzfeed.buffet.ui.adapter;

import android.content.Context;
import android.support.v7.widget.RecyclerView;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.buzzfeed.buffet.R;
import com.buzzfeed.buffet.ui.adapter.CardAdapter;
import com.buzzfeed.buffet.ui.holder.AdCard;
import com.buzzfeed.buffet.ui.holder.BaseCard;
import com.buzzfeed.buffet.ui.holder.BreakingBarCard;
import com.buzzfeed.buffet.ui.holder.BreakingCard;
import com.buzzfeed.buffet.ui.holder.BreakingQCUCard;
import com.buzzfeed.buffet.ui.holder.FeaturedCard;
import com.buzzfeed.buffet.ui.holder.FeaturedProximaNovaTitleCard;
import com.buzzfeed.buffet.ui.holder.FeaturedQuizCard;
import com.buzzfeed.buffet.ui.holder.PackageCard;
import com.buzzfeed.buffet.ui.holder.PostCard;
import com.buzzfeed.buffet.ui.holder.QCUCard;
import com.buzzfeed.buffet.ui.holder.QuizCard;
import com.buzzfeed.buffet.ui.holder.ShowCard;
import com.buzzfeed.buffet.ui.holder.TrendingCard;
import com.buzzfeed.buffet.ui.holder.TrendingCardSmall;
import com.buzzfeed.buffet.ui.holder.TrendingQuizCard;
import com.buzzfeed.buffet.ui.holder.TrendingQuizTrendingFeedCard;
import com.buzzfeed.buffet.ui.holder.VideoAdCard;
import com.buzzfeed.buffet.ui.holder.VideoCard;
import com.buzzfeed.buffet.ui.holder.VideoCardFixedHeight;
import com.buzzfeed.toolkit.content.BuffetType;
import com.buzzfeed.toolkit.content.FlowItem;
import java.util.List;

public class BuffetAdapter
extends CardAdapter {
    private boolean mShouldUseSmallCells = false;

    public BuffetAdapter(boolean bl) {
        this.mShouldUseSmallCells = bl;
    }

    @Override
    public void appendItems(List<FlowItem> list) {
        super.appendItems(list);
    }

    @Override
    public int getItemViewType(int n2) {
        return BuffetType.toInt(this.getItemForPosition(n2).getType());
    }

    @Override
    public BaseCard onCreateViewHolder(ViewGroup viewGroup, int n2) {
        viewGroup = LayoutInflater.from((Context)viewGroup.getContext());
        switch (.$SwitchMap$com$buzzfeed$toolkit$content$BuffetType[BuffetType.fromInt(n2).ordinal()]) {
            default: {
                return new PostCard(viewGroup.inflate(R.layout.card_post, null), this.mShouldUseSmallCells);
            }
            case 1: {
                return new VideoCard(viewGroup.inflate(R.layout.card_video_default, null));
            }
            case 2: {
                return new VideoCardFixedHeight(viewGroup.inflate(R.layout.card_video_fixed_height, null));
            }
            case 3: {
                return new TrendingCardSmall(viewGroup.inflate(R.layout.card_post, null), this.mShouldUseSmallCells);
            }
            case 4: {
                return new TrendingCard(viewGroup.inflate(R.layout.card_trending, null));
            }
            case 5: {
                return new TrendingQuizTrendingFeedCard(viewGroup.inflate(R.layout.card_trending, null));
            }
            case 6: {
                return new QuizCard(viewGroup.inflate(R.layout.card_post, null), this.mShouldUseSmallCells);
            }
            case 7: {
                return new VideoAdCard(viewGroup.inflate(R.layout.card_video_ad_sponsored, null));
            }
            case 8: {
                return new AdCard(viewGroup.inflate(R.layout.card_post, null), this.mShouldUseSmallCells);
            }
            case 9: {
                return new FeaturedCard(viewGroup.inflate(R.layout.card_featured, null));
            }
            case 10: {
                return new FeaturedQuizCard(viewGroup.inflate(R.layout.card_featured, null));
            }
            case 11: {
                return new TrendingQuizCard(viewGroup.inflate(R.layout.card_post, null), this.mShouldUseSmallCells);
            }
            case 12: {
                return new BreakingBarCard(viewGroup.inflate(R.layout.card_breaking_bar, null));
            }
            case 13: {
                return new ShowCard(viewGroup.inflate(R.layout.card_show, null));
            }
            case 14: {
                return new PackageCard(viewGroup.inflate(R.layout.card_package, null));
            }
            case 15: {
                return new BreakingCard(viewGroup.inflate(R.layout.card_breaking, null));
            }
            case 16: {
                return new QCUCard(viewGroup.inflate(R.layout.card_qcu_normal, null));
            }
            case 17: {
                return new BreakingQCUCard(viewGroup.inflate(R.layout.card_qcu_breaking, null));
            }
            case 18: 
        }
        return new FeaturedProximaNovaTitleCard(viewGroup.inflate(R.layout.card_featured, null));
    }

    @Override
    public void setList(List<FlowItem> list) {
        super.setList(list);
    }

}

