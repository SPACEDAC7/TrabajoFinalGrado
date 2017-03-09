/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.content.Context
 *  android.view.LayoutInflater
 *  android.view.View
 *  android.view.ViewGroup
 */
package com.buzzfeed.spicerack.ui.adapter;

import android.content.Context;
import android.support.v7.widget.RecyclerView;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.buzzfeed.nativecontent.R;
import com.buzzfeed.spicerack.data.factory.SpiceType;
import com.buzzfeed.spicerack.ui.holder.BaseViewHolder;
import com.buzzfeed.spicerack.ui.holder.CorrectionUpdateViewHolder;
import com.buzzfeed.spicerack.ui.holder.CustomViewHolder;
import com.buzzfeed.spicerack.ui.holder.EmptyViewHolder;
import com.buzzfeed.spicerack.ui.holder.FallBackViewHolder;
import com.buzzfeed.spicerack.ui.holder.HeaderSpiceViewHolder;
import com.buzzfeed.spicerack.ui.holder.ImageSpiceViewHolder;
import com.buzzfeed.spicerack.ui.holder.InstagramEmbedViewHolder;
import com.buzzfeed.spicerack.ui.holder.LinkSpiceViewHolder;
import com.buzzfeed.spicerack.ui.holder.LoadingSpiceViewHolder;
import com.buzzfeed.spicerack.ui.holder.ShareBarViewHolder;
import com.buzzfeed.spicerack.ui.holder.SpiceViewHolder;
import com.buzzfeed.spicerack.ui.holder.TextSpiceViewHolder;
import com.buzzfeed.spicerack.ui.holder.TweetViewHolder;
import com.buzzfeed.spicerack.ui.holder.YouTubeSpiceViewHolder;
import com.buzzfeed.spicerack.ui.protocol.SpicyEventListener;
import com.buzzfeed.spicerack.ui.protocol.SpicyEventListenerProvider;
import com.buzzfeed.spicerack.ui.protocol.SpicyShareBarListener;
import com.buzzfeed.spicerack.ui.protocol.SpicyShareBarListenerProvider;
import com.buzzfeed.spicerack.ui.view.SpicyWebView;
import com.buzzfeed.toolkit.content.Content;
import com.buzzfeed.toolkit.content.FlowItem;
import com.buzzfeed.toolkit.util.LogUtil;
import java.util.ArrayList;
import java.util.List;

public class SpicyAdapter
extends RecyclerView.Adapter<BaseViewHolder>
implements SpicyShareBarListenerProvider,
SpicyEventListenerProvider {
    private static final String TAG = LogUtil.makeLogTag(SpicyAdapter.class);
    private View mBottomCustomView;
    private SpicyWebView mFallbackView;
    private int mLastItemDisplayed = -1;
    private SpicyEventListener mSpicyEventListener;
    private SpicyShareBarListener mSpicyShareBarListener;
    private List<FlowItem> mSubBuzzList = new ArrayList<FlowItem>();

    @Override
    public int getItemCount() {
        return this.mSubBuzzList.size();
    }

    @Override
    public int getItemViewType(int n2) {
        return SpiceType.toInt(this.mSubBuzzList.get(n2).getType());
    }

    public int getLastItemDisplayed() {
        return this.mLastItemDisplayed;
    }

    @Override
    public SpicyShareBarListener getShareBarListener() {
        return this.mSpicyShareBarListener;
    }

    @Override
    public SpicyEventListener getSpicyEventListener() {
        return this.mSpicyEventListener;
    }

    @Override
    public void onBindViewHolder(BaseViewHolder baseViewHolder, int n2) {
        baseViewHolder.populateFrom(this.mSubBuzzList.get(n2).getContent());
    }

    @Override
    public BaseViewHolder onCreateViewHolder(ViewGroup viewGroup, int n2) {
        Context context = viewGroup.getContext();
        switch (.$SwitchMap$com$buzzfeed$spicerack$data$factory$SpiceType[SpiceType.fromInt(n2).ordinal()]) {
            default: {
                return new TextSpiceViewHolder(LayoutInflater.from((Context)context).inflate(R.layout.spice_text, viewGroup, false));
            }
            case 1: {
                return new HeaderSpiceViewHolder(LayoutInflater.from((Context)context).inflate(R.layout.spice_header, viewGroup, false));
            }
            case 2: {
                return new ImageSpiceViewHolder(LayoutInflater.from((Context)context).inflate(R.layout.spice_image_list, viewGroup, false), true);
            }
            case 3: {
                return new ImageSpiceViewHolder(LayoutInflater.from((Context)context).inflate(R.layout.spice_image_article, viewGroup, false), false);
            }
            case 4: {
                return new LoadingSpiceViewHolder(LayoutInflater.from((Context)context).inflate(R.layout.spice_loading, viewGroup, false));
            }
            case 5: {
                return new FallBackViewHolder((View)this.mFallbackView);
            }
            case 6: {
                return new EmptyViewHolder(LayoutInflater.from((Context)context).inflate(R.layout.spice_empty, viewGroup, false));
            }
            case 7: {
                return new ShareBarViewHolder(LayoutInflater.from((Context)context).inflate(R.layout.spice_share_bar, viewGroup, false), this);
            }
            case 8: {
                return new CustomViewHolder(this.mBottomCustomView);
            }
            case 9: {
                return new LinkSpiceViewHolder(LayoutInflater.from((Context)context).inflate(R.layout.spice_link, viewGroup, false));
            }
            case 10: 
            case 11: {
                return new CorrectionUpdateViewHolder(LayoutInflater.from((Context)context).inflate(R.layout.spice_update_correction, viewGroup, false));
            }
            case 12: {
                return new InstagramEmbedViewHolder(LayoutInflater.from((Context)context).inflate(R.layout.spice_embed_instagram, viewGroup, false), this.mSpicyEventListener);
            }
            case 13: {
                return new YouTubeSpiceViewHolder(LayoutInflater.from((Context)context).inflate(R.layout.spice_youtube_video, viewGroup, false), this.mSpicyEventListener);
            }
            case 14: 
        }
        return new TweetViewHolder(LayoutInflater.from((Context)context).inflate(R.layout.spice_twitter, viewGroup, false));
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    public void onViewAttachedToWindow(BaseViewHolder baseViewHolder) {
        super.onViewAttachedToWindow(baseViewHolder);
        boolean bl = this.mLastItemDisplayed > baseViewHolder.getAdapterPosition();
        baseViewHolder.onAttachedToWindow(this, bl);
        if (baseViewHolder instanceof SpiceViewHolder && this.mSpicyEventListener != null) {
            int n2 = baseViewHolder.getAdapterPosition();
            this.mSpicyEventListener.onItemDisplayed(this.mSubBuzzList.get(n2), n2);
        }
        if (this.mLastItemDisplayed < baseViewHolder.getAdapterPosition()) {
            this.mLastItemDisplayed = baseViewHolder.getAdapterPosition();
        }
    }

    @Override
    public void onViewDetachedFromWindow(BaseViewHolder baseViewHolder) {
        super.onViewDetachedFromWindow(baseViewHolder);
        baseViewHolder.onDetachedToWindow(null);
    }

    public void setBottomCustomView(View view) {
        this.mBottomCustomView = view;
    }

    public void setFallback(SpicyWebView spicyWebView) {
        this.mFallbackView = spicyWebView;
    }

    public void setList(List<FlowItem> list) {
        this.mSubBuzzList = list;
        this.notifyDataSetChanged();
    }

    public void setSpicyEventListener(SpicyEventListener spicyEventListener) {
        this.mSpicyEventListener = spicyEventListener;
    }

    public void setSpicyShareBarInfo(SpicyShareBarListener spicyShareBarListener) {
        this.mSpicyShareBarListener = spicyShareBarListener;
    }

}

