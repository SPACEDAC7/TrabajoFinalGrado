/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.widget.ImageView
 */
package com.buzzfeed.showx.showpage;

import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.v7.widget.RecyclerView;
import android.widget.ImageView;
import com.buzzfeed.analytics.model.UnitImpression;
import com.buzzfeed.android.vcr.player.VCRDefaultVideoPlayerPresenter;
import com.buzzfeed.buffet.ui.adapter.CardAdapter;
import com.buzzfeed.showx.showpage.ShowPagePresenter;
import com.buzzfeed.showx.showpage.data.model.ShowPage;
import com.buzzfeed.toolkit.content.FlowItem;
import com.buzzfeed.toolkit.content.VideoContent;
import java.util.Collection;
import java.util.List;

public interface ShowPageContract {
    public static final String EXTRA_SHOW_COVER_URI = "SELECTED_SHOW_COVER_URI";
    public static final String EXTRA_SHOW_ID = "SELECTED_SHOW_ID";
    public static final String EXTRA_SHOW_TITLE = "SELECTED_SHOW_TITLE";

    public static interface Presenter {
        public void attachView(UpdatableView var1);

        public void detachView();

        public void handleConnectivityChange();

        public void refreshSubscribeCard();

        public void setPresenterCallbacks(@Nullable Callbacks var1);

        public static interface Callbacks {
            public void handleShowOpened();

            public boolean isShowSubscriptionsEnabled();

            public boolean isSubscribedToShow();

            public void onGetRecipeClicked(@NonNull String var1);

            public void onShareClicked(FlowItem var1, int var2);

            public void onShowPageLoaded(ShowPage var1);

            public void onSubscribeButtonClicked();

            public void onVideoCellClicked(@NonNull VideoContent var1, @Nullable ImageView var2, long var3, int var5, boolean var6);
        }

    }

    public static interface Tracker {
        public void trackEnableNotificationCanceled(String var1);

        public void trackOpenShareSheet();

        public void trackPageView(int var1);

        public void trackTapSubscribeButton(String var1, boolean var2);

        public void trackUnitImpressions(String var1, Collection<UnitImpression> var2);

        public void trackUnsubscribeNotificationCanceled(String var1);

        public void trackVideoCellClicked(@NonNull VideoContent var1, int var2, long var3, boolean var5);

        public void trackVideoShareAction(@NonNull String var1, @Nullable String var2, @Nullable String var3, int var4);
    }

    public static interface UpdatableView {
        public void appendItems(@NonNull List<FlowItem> var1);

        public VCRDefaultVideoPlayerPresenter getPlayer();

        public RecyclerView getRecyclerView();

        public void setAdapter(@Nullable CardAdapter var1);

        public void setCoverImage(@Nullable String var1);

        public void setFooterProgressVisibility(boolean var1);

        public void setHeaderProgressVisibility(boolean var1);

        public void setPresenter(ShowPagePresenter var1);

        public void setShowPageModel(@NonNull ShowPage var1);

        public void toggleAutoPlay(boolean var1);

        public void updateItem(int var1);
    }

}

