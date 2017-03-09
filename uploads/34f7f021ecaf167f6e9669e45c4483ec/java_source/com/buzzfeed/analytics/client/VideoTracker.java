/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.annotation.SuppressLint
 *  android.text.TextUtils
 */
package com.buzzfeed.analytics.client;

import android.annotation.SuppressLint;
import android.support.annotation.NonNull;
import android.support.annotation.VisibleForTesting;
import android.support.v4.util.ArrayMap;
import android.text.TextUtils;
import com.buzzfeed.analytics.Analytics;
import com.buzzfeed.analytics.client.BuzzFeedTracker;
import com.buzzfeed.analytics.client.DustBusterVideoClient;
import com.buzzfeed.analytics.client.DustbusterClient;
import com.buzzfeed.analytics.util.IntentStringConverter;
import com.buzzfeed.toolkit.dustbuster.Dustbuster;
import com.buzzfeed.toolkit.util.LogUtil;
import java.lang.annotation.Annotation;
import java.util.Map;

public class VideoTracker {
    private static final long NOT_SET = -1;
    private static final int NO_POSITION = -1;
    private static final String TAG = VideoTracker.class.getSimpleName();
    private static BuzzFeedTracker sBuzzFeedTracker;
    @SuppressLint(value={"StaticFieldLeak"})
    private static DustBusterVideoClient sDustBusterVideoClient;
    @SuppressLint(value={"StaticFieldLeak"})
    private static VideoTracker sSingleton;
    private BuzzFeedTracker mBuzzFeedTracker;
    private DustBusterVideoClient mDustBusterVideoClient;
    private DustbusterClient mDustbusterClient;
    private boolean mIsLandscapeOrientation;
    private boolean mIsVideoPlaying;
    private boolean mIsVideoPlayingGA;
    private String mPlayReason = "auto";
    private String mPlayerLocation;
    private int mPositionInFeed;
    private String mScreenName;
    private long mVideoDuration;
    private String mVideoId;
    private String mVideoTitle;
    private String mVideoUrl;

    VideoTracker(DustbusterClient dustbusterClient) {
        this.setupAnalytics();
        this.mDustbusterClient = dustbusterClient;
    }

    private Map<Integer, String> createMapForCustomDimensions() {
        return this.createMapForCustomDimensions(true);
    }

    /*
     * Enabled aggressive block sorting
     */
    @VisibleForTesting
    static Map<Integer, String> createMapForCustomDimensions(String string2, String string3, boolean bl) {
        String string4 = bl ? "landscape" : "portrait";
        ArrayMap<Integer, String> arrayMap = new ArrayMap<Integer, String>();
        arrayMap.put(9, string2);
        arrayMap.put(10, string3);
        arrayMap.put(11, string4);
        return arrayMap;
    }

    private Map<Integer, String> createMapForCustomDimensions(boolean bl) {
        ArrayMap<Integer, String> arrayMap = new ArrayMap<Integer, String>();
        arrayMap.put(9, this.mVideoId);
        arrayMap.put(10, this.mVideoTitle);
        if (bl) {
            arrayMap.put(11, this.getOrientationsString());
        }
        return arrayMap;
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    public static VideoTracker getInstance() {
        if (sSingleton == null) {
            synchronized (VideoTracker.class) {
                if (sSingleton == null) {
                    sSingleton = new VideoTracker(DustbusterClient.getInstance());
                }
            }
        }
        return sSingleton;
    }

    private String getOrientationsString() {
        if (this.mIsLandscapeOrientation) {
            return "landscape";
        }
        return "portrait";
    }

    @VisibleForTesting
    static String getOrientationsString(boolean bl) {
        if (bl) {
            return "landscape";
        }
        return "portrait";
    }

    @VisibleForTesting
    static void setBuzzFeedTracker(BuzzFeedTracker buzzFeedTracker) {
        sBuzzFeedTracker = buzzFeedTracker;
    }

    @VisibleForTesting
    static void setDustBusterVideoClient(DustBusterVideoClient dustBusterVideoClient) {
        sDustBusterVideoClient = dustBusterVideoClient;
    }

    /*
     * Enabled aggressive block sorting
     */
    private void setupAnalytics() {
        Analytics.Configuration configuration = Analytics.getInstance().getConfiguration();
        Object object = sDustBusterVideoClient == null ? new DustBusterVideoClient(DustbusterClient.getInstance().getDustbuster()) : sDustBusterVideoClient;
        object = this.mDustBusterVideoClient = object;
        boolean bl = !configuration.isProductionBuild();
        object.setLoggingEnabled(bl);
        object = sBuzzFeedTracker == null ? BuzzFeedTracker.getInstance() : sBuzzFeedTracker;
        this.mBuzzFeedTracker = object;
    }

    public void resetVideoData() {
        this.mVideoDuration = -1;
        this.mVideoId = null;
        this.mVideoTitle = null;
        this.mVideoUrl = null;
        this.mPositionInFeed = -1;
    }

    public void sendAutoPauseEvent(long l2) {
        this.mDustBusterVideoClient.traceVideoPlayerEvent(this.mScreenName, this.mVideoId, "pause", "auto", this.mIsLandscapeOrientation, this.mPlayerLocation, this.mPositionInFeed, l2);
    }

    public void sendAutoPlayBegins(@GACategory String string2) {
        this.mBuzzFeedTracker.trackEvent(string2, "video:auto-play", this.mVideoId, this.createMapForCustomDimensions());
    }

    public void sendAutoPlayEvent(@GACategory String string2, long l2) {
        this.sendPlayEventWithReason(string2, "auto", l2);
    }

    public void sendClickToPlayEvent(@GACategory String string2, long l2) {
        this.sendPlayEventWithReason(string2, "tap_player_controls", l2);
        this.sendGAClickVideoPlayEvent(string2);
    }

    public void sendClickToResumeVideoEvent(long l2) {
        this.mDustBusterVideoClient.traceVideoPlayerEvent(this.mScreenName, this.mVideoId, "play", "tap_player_controls", this.mIsLandscapeOrientation, this.mPlayerLocation, this.mPositionInFeed, l2);
        this.mBuzzFeedTracker.trackEvent("MediaViewer", "click:video-resume", null, this.createMapForCustomDimensions());
    }

    public void sendClickVideoPauseEvent(long l2) {
        this.mDustBusterVideoClient.traceVideoPlayerEvent(this.mScreenName, this.mVideoId, "pause", "tap_player_controls", this.mIsLandscapeOrientation, this.mPlayerLocation, this.mPositionInFeed, l2);
        this.mBuzzFeedTracker.trackEvent("MediaViewer", "click:video-pause", null, this.createMapForCustomDimensions());
    }

    public void sendCloseEvent() {
        this.mBuzzFeedTracker.trackEvent("MediaViewer", "click:back", null, this.createMapForCustomDimensions());
    }

    public void sendEndScrubPosition(long l2, boolean bl) {
        if (bl) {
            this.mDustBusterVideoClient.traceVideoPlayerEvent(this.mScreenName, this.mVideoId, "play", "scrub_end", this.mIsLandscapeOrientation, this.mPlayerLocation, this.mPositionInFeed, l2);
        }
        this.mDustBusterVideoClient.traceVideoPlayerEvent(this.mScreenName, this.mVideoId, "scrub_end", null, this.mIsLandscapeOrientation, this.mPlayerLocation, this.mPositionInFeed, l2);
    }

    public void sendEndVideoEvent(long l2, String string2) {
        LogUtil.d(TAG + ".sendEndVideoEvent", "Ending video event, " + this.mVideoTitle + ", at player position " + l2);
        this.mDustBusterVideoClient.traceVideoPlayerEvent(this.mScreenName, this.mVideoId, "pause", string2, this.mIsLandscapeOrientation, this.mPlayerLocation, this.mPositionInFeed, l2);
    }

    public void sendEnterMediaViewer(long l2) {
        this.mDustBusterVideoClient.traceVideoPlayerEvent(this.mScreenName, this.mVideoId, "enter_media_viewer", null, this.mIsLandscapeOrientation, this.mPlayerLocation, this.mPositionInFeed, l2);
        this.mBuzzFeedTracker.trackEvent("Feed", "click:enter-media-viewer", Integer.toString(this.mPositionInFeed), this.createMapForCustomDimensions());
    }

    public void sendGAClickVideoPlayEvent(@GACategory String string2) {
        this.mBuzzFeedTracker.trackEvent(string2, "click:video-play", this.mVideoId, this.createMapForCustomDimensions());
    }

    public void sendInstallAppEvent() {
        this.mDustBusterVideoClient.traceInstallAppEvent(this.mScreenName);
    }

    public void sendLeaveMediaViewer(long l2) {
        this.mDustBusterVideoClient.traceVideoPlayerEvent(this.mScreenName, this.mVideoId, "close_media_viewer", null, this.mIsLandscapeOrientation, this.mPlayerLocation, this.mPositionInFeed, l2);
    }

    public void sendOpenShareSheetFromViewer() {
        this.mBuzzFeedTracker.trackEvent("MediaViewer", "click:open-share-sheet", null);
    }

    /*
     * Enabled aggressive block sorting
     */
    public void sendOrientationChange(long l2) {
        String string2 = TAG + ".sendOrientationChange";
        String string3 = !this.mIsLandscapeOrientation ? "enter_landscape" : "enter_portrait";
        LogUtil.d(string2, string3 + ", " + this.mVideoTitle + ", at player position " + l2);
        this.mDustBusterVideoClient.traceVideoPlayerEvent(this.mScreenName, this.mVideoId, string3, null, this.mIsLandscapeOrientation, this.mPlayerLocation, this.mPositionInFeed, l2);
    }

    public void sendPauseEvent(long l2) {
        if (this.mIsVideoPlaying) {
            this.mDustBusterVideoClient.traceVideoPlayerEvent(this.mScreenName, this.mVideoId, "pause", "tap_player_controls", this.mIsLandscapeOrientation, this.mPlayerLocation, this.mPositionInFeed, l2);
            this.mIsVideoPlaying = false;
        }
        if (this.mIsVideoPlayingGA) {
            this.mBuzzFeedTracker.trackEvent("MediaViewer", "click:video-pause", null, this.createMapForCustomDimensions());
            this.mIsVideoPlayingGA = false;
        }
    }

    public void sendPlayEvent() {
        this.mIsVideoPlayingGA = true;
        this.mBuzzFeedTracker.trackEvent("Feed", "click:video-play", this.mVideoId, this.createMapForCustomDimensions());
    }

    public void sendPlayEventWithReason(@GACategory String string2, @NonNull String string3, long l2) {
        LogUtil.d(TAG + ".sendPlayEventWithReason", "Starting video event, " + this.mVideoTitle + ", category=" + string2 + ", playbackReason=" + string3 + ", at player position " + l2);
        this.mDustBusterVideoClient.traceVideoPlayerEvent(this.mScreenName, this.mVideoId, "play", string3, this.mIsLandscapeOrientation, this.mPlayerLocation, this.mPositionInFeed, l2);
        if (l2 == 0) {
            this.mBuzzFeedTracker.trackEvent(string2, "video:auto-play", this.mVideoId, this.createMapForCustomDimensions());
        }
    }

    public void sendPlaybackProgress(@GACategory String string2, int n2) {
        this.mBuzzFeedTracker.trackEvent(string2, "video:playback", Integer.toString(n2) + "%", this.createMapForCustomDimensions());
    }

    public void sendShareShowEvent(String string2, String string3, String string4) {
        this.mDustBusterVideoClient.traceShareShowEvent(this.mScreenName, string2, string3, string4);
    }

    public void sendShareVideoEvent(long l2, String string2, String string3, String string4, String string5) {
        this.mDustBusterVideoClient.traceShareEvent(this.mScreenName, this.mVideoId, this.mIsLandscapeOrientation, this.mPlayerLocation, this.mPositionInFeed, l2, string2, string3, string4);
        this.mBuzzFeedTracker.trackEvent("Share", string5, IntentStringConverter.convertIntentToApp(string2));
    }

    public void sendSharingFromFeed() {
        this.mBuzzFeedTracker.trackEvent("Feed", "click:open-share-sheet", null);
    }

    public void sendShowIconTapEvent(String string2) {
        String string3 = TAG + "sendShowIconTapEvent";
        if (TextUtils.isEmpty((CharSequence)string2) || TextUtils.isEmpty((CharSequence)this.mVideoId) || TextUtils.isEmpty((CharSequence)this.mVideoTitle)) {
            LogUtil.e(string3, "Unable to track UI tap event. Required fields are not available.");
            return;
        }
        this.mBuzzFeedTracker.trackEvent("MediaViewer", "click:show-icon", string2, this.createMapForCustomDimensions(false));
        string2 = "show:" + string2;
        this.mDustbusterClient.trackUiTapEvent(this.mScreenName, "show_icon", string2, "media_viewer");
    }

    public void sendStartScrubPosition(long l2, boolean bl) {
        if (bl) {
            this.mDustBusterVideoClient.traceVideoPlayerEvent(this.mScreenName, this.mVideoId, "pause", "scrub_start", this.mIsLandscapeOrientation, this.mPlayerLocation, this.mPositionInFeed, l2);
        }
        this.mDustBusterVideoClient.traceVideoPlayerEvent(this.mScreenName, this.mVideoId, "scrub_start", null, this.mIsLandscapeOrientation, this.mPlayerLocation, this.mPositionInFeed, l2);
    }

    public void sendStartVideoEvent(long l2) {
        LogUtil.d(TAG + ".sendStartVideoEvent", "Starting video event , " + this.mVideoTitle + ", at player position " + l2);
        this.mDustBusterVideoClient.traceVideoPlayerEvent(this.mScreenName, this.mVideoId, "play", this.mPlayReason, this.mIsLandscapeOrientation, this.mPlayerLocation, this.mPositionInFeed, l2);
        this.mPlayReason = "auto";
    }

    public void sendVideoCompleteEvent(long l2) {
        LogUtil.d(TAG + ".sendVideoCompleteEvdent", "Complete video event, " + this.mVideoTitle + ", at player position " + l2);
        this.mDustBusterVideoClient.traceVideoPlayerEvent(this.mScreenName, this.mVideoId, "pause", "video_complete", this.mIsLandscapeOrientation, this.mPlayerLocation, this.mPositionInFeed, l2);
    }

    public VideoTracker setDeviceOrientation(boolean bl) {
        this.mIsLandscapeOrientation = bl;
        return this;
    }

    public void setLoggingEnabled(boolean bl) {
        this.mDustBusterVideoClient.setLoggingEnabled(bl);
    }

    public VideoTracker setPlayReason(String string2) {
        this.mPlayReason = string2;
        return this;
    }

    public VideoTracker setPlayerLocation(String string2) {
        this.mPlayerLocation = string2;
        return this;
    }

    public VideoTracker setPositionInFeed(int n2) {
        this.mPositionInFeed = n2;
        return this;
    }

    public VideoTracker setScreenName(String string2) {
        this.mScreenName = string2;
        return this;
    }

    public VideoTracker setVideoDuration(long l2) {
        this.mVideoDuration = l2;
        return this;
    }

    public VideoTracker setVideoId(String string2) {
        this.mVideoId = string2;
        return this;
    }

    public VideoTracker setVideoTitle(String string2) {
        this.mVideoTitle = string2;
        return this;
    }

    public VideoTracker setVideoUrl(String string2) {
        this.mVideoUrl = string2;
        return this;
    }

    /*
     * Enabled aggressive block sorting
     */
    public void trackShowFeedPageView(String string2, int n2) {
        String string3 = "/list/show/" + string2;
        BuzzFeedTracker buzzFeedTracker = this.mBuzzFeedTracker;
        StringBuilder stringBuilder = new StringBuilder().append(string3);
        string2 = n2 > 1 ? "/" + n2 : "";
        buzzFeedTracker.trackPageView(stringBuilder.append(string2).toString(), null);
        this.mDustbusterClient.trackFeedPageView(string3);
    }

    public static @interface GACategory {
    }

    public static class GoogleAnalyticsAction {
        public static final String CLICK_BACK = "click:back";
        public static final String CLICK_ENTER_MEDIA_VIEWER = "click:enter-media-viewer";
        public static final String CLICK_FEED_MODULE_SHARE_SHEET = "click:feed-module/share-sheet";
        public static final String CLICK_MEDIA_VIEWER_SHARE_SHEET = "click:media-viewer/share-sheet";
        public static final String CLICK_OPEN_SHARE_SHEET = "click:open-share-sheet";
        public static final String CLICK_SHOW_ICON = "click:show-icon";
        public static final String CLICK_VIDEO_PAUSE = "click:video-pause";
        public static final String CLICK_VIDEO_PLAY = "click:video-play";
        public static final String CLICK_VIDEO_RESUME = "click:video-resume";
        public static final String VIDEO_AUTOPLAY = "video:auto-play";
        public static final String VIDEO_PLAYBACK = "video:playback";
    }

    public static class GoogleAnalyticsCategory {
        public static final String FEED = "Feed";
        public static final String MEDIA_VIEWER = "MediaViewer";
        public static final String SHARE = "Share";
    }

    @VisibleForTesting
    static class GoogleAnalyticsCustomDimensions {
        public static final int ORIENTATION = 11;
        public static final int VIDEO_ID = 9;
        public static final int VIDEO_TITLE = 10;

        GoogleAnalyticsCustomDimensions() {
        }
    }

    public static class ScreenName {
        public static final String SHOW_PREFIX = "/list/show/";
    }

}

