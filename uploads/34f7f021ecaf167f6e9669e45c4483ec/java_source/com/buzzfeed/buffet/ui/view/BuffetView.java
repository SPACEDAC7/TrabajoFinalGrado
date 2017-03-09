/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.content.Context
 *  android.content.res.Resources
 *  android.util.AttributeSet
 *  android.view.View
 *  android.view.ViewGroup
 *  android.widget.FrameLayout
 *  android.widget.ProgressBar
 */
package com.buzzfeed.buffet.ui.view;

import android.content.Context;
import android.content.res.Resources;
import android.support.annotation.Nullable;
import android.support.v7.widget.GridLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ProgressBar;
import com.buzzfeed.android.vcr.player.VCRDefaultVideoPlayerPresenter;
import com.buzzfeed.android.vcr.player.VCRPlayerControl;
import com.buzzfeed.android.vcr.toolbox.AutoFocusController;
import com.buzzfeed.android.vcr.toolbox.PositionCache;
import com.buzzfeed.android.vcr.view.VCRMediaRecyclerView;
import com.buzzfeed.buffet.R;
import com.buzzfeed.buffet.ui.adapter.CardAdapter;
import com.buzzfeed.buffet.ui.itemdecoration.BuffetItemDecoration;
import com.buzzfeed.buffet.ui.itemdecoration.ShowsItemDecoration;
import com.buzzfeed.buffet.ui.listener.BuffetAutoPlayDelegate;
import com.buzzfeed.buffet.ui.listener.BuffetEventListener;
import com.buzzfeed.buffet.ui.listener.VideoCardPlaybackStateHandler;
import com.buzzfeed.toolkit.content.BuffetType;
import com.buzzfeed.toolkit.content.FlowItem;
import com.buzzfeed.toolkit.content.FlowList;
import com.buzzfeed.toolkit.util.EZUtil;
import com.buzzfeed.toolkit.util.LogUtil;
import com.buzzfeed.toolkit.util.UIUtil;
import java.util.List;

public class BuffetView
extends FrameLayout {
    private static final int SMOOTH_SCROLL_SNAP_POSITION = 15;
    public static final String TAG = LogUtil.makeLogTag(BuffetView.class);
    private CardAdapter mAdapter;
    private GridLayoutManager mGridLayoutManager;
    private boolean mIsShowsFeed;
    private ProgressBar mProgressSpinner;
    private VCRMediaRecyclerView mRecyclerView;

    public BuffetView(Context context) {
        super(context);
    }

    public BuffetView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        BuffetView.inflate((Context)context, (int)R.layout.buffet_view, (ViewGroup)this);
    }

    private void configureDecorations() {
        if (this.mIsShowsFeed) {
            int n2 = Math.round(this.getResources().getDimension(R.dimen.buffet_show_card_margins));
            this.mRecyclerView.addItemDecoration(new ShowsItemDecoration(this.getColumnCount(), n2));
            return;
        }
        int n3 = Math.round(this.getResources().getDimension(R.dimen.buffet_gutter));
        int n4 = Math.round(this.getResources().getDimension(R.dimen.buffet_margin));
        this.mRecyclerView.addItemDecoration(new BuffetItemDecoration(n3, n4));
    }

    private void configureRecyclerView() {
        this.mGridLayoutManager = new GridLayoutManager(this.getContext(), this.getColumnCount());
        this.mGridLayoutManager.setRecycleChildrenOnDetach(true);
        this.configureDecorations();
        this.mRecyclerView.setLayoutManager(this.mGridLayoutManager);
        this.mRecyclerView.setPlaybackStateListener(new VideoCardPlaybackStateHandler());
        this.mRecyclerView.setAutoFocusStrategy(new BuffetAutoFocusStrategy());
        this.mRecyclerView.setAutoPlayDelegate(new BuffetAutoPlayDelegate());
        this.mRecyclerView.setKeepScreenOnWhilePlaying(true);
        this.mRecyclerView.setPlaybackAudioMuted(true);
    }

    private int getColumnCount() {
        if (this.mIsShowsFeed) {
            return this.getResources().getInteger(R.integer.buffet_show_card_columns);
        }
        return 2;
    }

    private void setupSpanSize() {
        GridLayoutManager.SpanSizeLookup spanSizeLookup = new GridLayoutManager.SpanSizeLookup(){

            @Override
            public int getSpanSize(int n2) {
                BuffetType buffetType = BuffetType.fromInt(BuffetView.this.mAdapter.getItemViewType(n2));
                switch (.$SwitchMap$com$buzzfeed$toolkit$content$BuffetType[buffetType.ordinal()]) {
                    default: {
                        return 1;
                    }
                    case 1: 
                    case 2: 
                    case 3: 
                    case 4: 
                    case 5: 
                    case 6: 
                    case 7: 
                    case 8: 
                    case 9: 
                    case 10: 
                    case 11: 
                    case 12: 
                    case 13: 
                }
                return 2;
            }
        };
        spanSizeLookup.setSpanIndexCacheEnabled(true);
        this.mGridLayoutManager.setSpanSizeLookup(spanSizeLookup);
    }

    public void appendItems(List<FlowItem> list) {
        if (this.mAdapter != null) {
            this.mAdapter.appendItems(list);
        }
    }

    public RecyclerView.Adapter getAdapter() {
        return this.mAdapter;
    }

    public FlowList getFlowList() {
        return new FlowList(this.mAdapter.getItems());
    }

    public int getItemCount() {
        if (this.mAdapter != null) {
            return this.mAdapter.getItemCount();
        }
        return 0;
    }

    public VCRPlayerControl getMediaPlayerControl() {
        return this.mRecyclerView.getPlayerControl();
    }

    public VCRMediaRecyclerView getRecyclerView() {
        return this.mRecyclerView;
    }

    public VCRDefaultVideoPlayerPresenter getVideoPlayerPresenter() {
        return this.mRecyclerView.getVideoPlayerPresenter();
    }

    protected void onFinishInflate() {
        super.onFinishInflate();
        this.mProgressSpinner = (ProgressBar)UIUtil.findView((View)this, R.id.progressBar);
        this.mRecyclerView = (VCRMediaRecyclerView)UIUtil.findView((View)this, R.id.recyclerView);
        UIUtil.tintProgressBar(this.getContext(), this.mProgressSpinner, R.color.buzzfeed_blue);
        this.setSpinnerVisible(false);
    }

    public void removeItemAt(int n2) {
        if (this.mAdapter != null) {
            this.mAdapter.removeItemAt(n2);
        }
    }

    public void setAdapter(CardAdapter cardAdapter) {
        this.mAdapter = cardAdapter;
        this.configureRecyclerView();
        this.setupSpanSize();
        this.mRecyclerView.setAdapter(this.mAdapter);
    }

    public void setBuffetEventListener(BuffetEventListener buffetEventListener) {
        EZUtil.checkNotNull(this.mAdapter, "You must set an adapter before calling setBuffetEventListener!");
        this.mAdapter.setBuffetEventListener(buffetEventListener);
    }

    public void setIsShowsFeed(boolean bl) {
        this.mIsShowsFeed = bl;
    }

    public void setList(List<FlowItem> list) {
        this.updateList(list);
        this.mRecyclerView.scrollToPosition(0);
    }

    public void setMediaPlaybackDebuggingEnabled(boolean bl) {
        this.mRecyclerView.setPlaybackDebugLoggingEnabled(bl);
    }

    public void setMediaPlaybackPositionCache(@Nullable PositionCache positionCache) {
        this.mRecyclerView.setPlaybackPositionCache(positionCache);
    }

    public void setRecycledViewPool(@Nullable RecyclerView.RecycledViewPool recycledViewPool) {
        this.mRecyclerView.setRecycledViewPool(recycledViewPool);
    }

    public void setSpinnerVisible(boolean bl) {
        if (bl) {
            this.mProgressSpinner.setVisibility(0);
            return;
        }
        this.mProgressSpinner.setVisibility(8);
    }

    public void smoothScrollToTop() {
        if (this.mGridLayoutManager != null) {
            if (this.mGridLayoutManager.findFirstVisibleItemPosition() > 15) {
                this.mRecyclerView.scrollToPosition(15);
            }
            this.mRecyclerView.smoothScrollToPosition(0);
        }
    }

    public void startMediaComponents() {
        this.mRecyclerView.startMediaComponents();
    }

    public void stopMediaComponents() {
        this.mRecyclerView.stopMediaComponents();
    }

    public void updateItemAt(int n2, FlowItem flowItem) {
        if (this.mAdapter != null) {
            this.mAdapter.updateItem(n2, flowItem);
        }
    }

    public void updateList(List<FlowItem> list) {
        if (this.mAdapter != null) {
            this.mAdapter.setList(list);
        }
    }

    private final class BuffetAutoFocusStrategy
    implements AutoFocusController.AutoFocusStrategy {
        private BuffetAutoFocusStrategy() {
        }

        @Override
        public boolean isFocusable(RecyclerView.ViewHolder object) {
            object = BuffetType.fromInt(object.getItemViewType());
            switch (.$SwitchMap$com$buzzfeed$toolkit$content$BuffetType[object.ordinal()]) {
                default: {
                    return false;
                }
                case 2: 
                case 3: 
            }
            return true;
        }
    }

}

