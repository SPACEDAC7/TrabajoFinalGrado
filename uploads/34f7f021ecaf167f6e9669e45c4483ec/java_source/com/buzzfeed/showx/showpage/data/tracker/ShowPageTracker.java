/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.content.Context
 *  android.text.TextUtils
 */
package com.buzzfeed.showx.showpage.data.tracker;

import android.content.Context;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.text.TextUtils;
import com.buzzfeed.analytics.client.BuzzFeedTracker;
import com.buzzfeed.analytics.client.DustbusterClient;
import com.buzzfeed.analytics.client.VideoTracker;
import com.buzzfeed.analytics.model.UnitImpression;
import com.buzzfeed.android.vcr.player.VideoSurfacePresenter;
import com.buzzfeed.android.vcr.util.VideoPlaybackUtils;
import com.buzzfeed.buffet.data.tracker.BuffetVideoEventTracker;
import com.buzzfeed.showx.R;
import com.buzzfeed.showx.showpage.ShowPageContract;
import com.buzzfeed.toolkit.content.VideoContent;
import com.buzzfeed.toolkit.util.EZUtil;
import com.buzzfeed.toolkit.util.UIUtil;
import java.util.Collection;
import java.util.Map;

public class ShowPageTracker
extends BuffetVideoEventTracker
implements ShowPageContract.Tracker {
    private BuzzFeedTracker mBuzzFeedTracker;

    public ShowPageTracker(@NonNull Context context, @NonNull String string2, @NonNull VideoTracker videoTracker, @NonNull BuzzFeedTracker buzzFeedTracker, @NonNull VideoSurfacePresenter videoSurfacePresenter) {
        super(context, videoTracker, videoSurfacePresenter);
        this.setScreenName(EZUtil.checkNotNull(string2));
        this.mBuzzFeedTracker = buzzFeedTracker;
    }

    @Override
    public void trackEnableNotificationCanceled(String string2) {
        DustbusterClient.getInstance().trackUiTapEvent("/list/show/" + string2, "cancel_enable_notifications", "show:" + string2, "show_page");
    }

    @Override
    public void trackOpenShareSheet() {
        this.mBuzzFeedTracker.trackEvent(this.getContext().getString(R.string.ga_category_feed), this.getContext().getString(R.string.ga_action_open_share_sheet), null);
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    public void trackPageView(int n2) {
        BuzzFeedTracker buzzFeedTracker = this.mBuzzFeedTracker;
        StringBuilder stringBuilder = new StringBuilder().append(this.getScreenName());
        String string2 = n2 > 1 ? "/" + n2 : "";
        buzzFeedTracker.trackPageView(stringBuilder.append(string2).toString(), null);
        DustbusterClient.getInstance().trackFeedPageView(this.getScreenName());
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    public void trackTapSubscribeButton(String string2, boolean bl) {
        String string3 = bl ? this.getContext().getString(R.string.ga_action_tap_subscribe) : this.getContext().getString(R.string.ga_action_tap_unsubscribe);
        String string4 = bl ? "subscribe" : "unsubscribe";
        this.mBuzzFeedTracker.trackEvent(this.getContext().getString(R.string.ga_category_show), string3, string2);
        DustbusterClient.getInstance().trackUiTapEvent("/list/show/" + string2, string4, "show:" + string2, "show_page");
    }

    @Override
    public void trackUnitImpressions(String string2, Collection<UnitImpression> collection) {
        if (!TextUtils.isEmpty((CharSequence)string2) && collection != null && !collection.isEmpty()) {
            DustbusterClient.getInstance().trackUnitImpressions(this.getScreenName(), collection);
        }
    }

    @Override
    public void trackUnsubscribeNotificationCanceled(String string2) {
        DustbusterClient.getInstance().trackUiTapEvent("/list/show/" + string2, "cancel_unsubscribe_notifications", "show:" + string2, "show_page");
    }

    @Override
    public void trackVideoCellClicked(@NonNull VideoContent videoContent, int n2, long l2, boolean bl) {
        VideoTracker videoTracker = this.getVideoEventTracker();
        videoTracker.setVideoId(videoContent.getId()).setVideoTitle(videoContent.getTitle()).setPlayerLocation("in_feed").setPositionInFeed(n2).setDeviceOrientation(UIUtil.isLandscape(this.getContext()));
        if (!bl) {
            videoTracker.sendGAClickVideoPlayEvent("Feed");
        }
        videoTracker.sendEnterMediaViewer(l2);
        this.configureTrackerForCurrentContent();
    }

    @Override
    public void trackVideoShareAction(@NonNull String string2, @Nullable String string3, @Nullable String string4, int n2) {
        this.getVideoEventTracker().setVideoId(string2).setPositionInFeed(n2).setPlayerLocation("in_feed").setDeviceOrientation(UIUtil.isLandscape(this.getContext())).sendShareVideoEvent(VideoPlaybackUtils.getLastKnownVideoPosition(this.getVideoSurfacePresenter(), string3), string4, "feed_module", "share_sheet", this.getContext().getString(R.string.ga_action_feed_share_activity));
        this.configureTrackerForCurrentContent();
    }
}

