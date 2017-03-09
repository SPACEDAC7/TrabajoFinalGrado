/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.content.Context
 *  android.text.TextUtils
 */
package com.buzzfeed.buffet.data.tracker;

import android.content.Context;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.text.TextUtils;
import com.buzzfeed.analytics.client.VideoTracker;
import com.buzzfeed.android.vcr.player.VideoSurfacePresenter;
import com.buzzfeed.android.vcr.player.listener.VideoSurfacePresenterListenerImpl;
import com.buzzfeed.android.vcr.toolbox.PlaybackPositionMonitor;
import com.buzzfeed.android.vcr.util.VideoPlaybackUtils;
import com.buzzfeed.toolkit.content.VideoContent;
import com.buzzfeed.toolkit.content.WeaverItem;
import com.buzzfeed.toolkit.util.EZUtil;
import com.buzzfeed.toolkit.util.LogUtil;
import com.buzzfeed.toolkit.util.UIUtil;
import com.buzzfeed.toolkit.util.WeaverVideoUtils;

public class BuffetVideoEventTracker {
    private static final int NO_VALUE = -1;
    private static final String TAG = LogUtil.makeLogTag(BuffetVideoEventTracker.class);
    private Context mAppContext;
    @Nullable
    private String mCurrentContentUri;
    private int mCurrentItemPosition = -1;
    private long mCurrentVideoDuration = -1;
    @Nullable
    private String mCurrentVideoId;
    @Nullable
    private String mCurrentVideoTitle;
    private boolean mHasPendingContentReset;
    private boolean mIsAttached;
    private PlaybackPositionMonitor mPositionMonitor;
    @Nullable
    private String mScreenName;
    private InternalVideoEventListener mVideoEventListener;
    private VideoTracker mVideoEventTracker;
    private InternalPositionMonitorListener mVideoPositionListener;
    private VideoSurfacePresenter mVideoSurfacePresenter;

    public BuffetVideoEventTracker(@NonNull Context context, @NonNull VideoTracker videoTracker, @NonNull VideoSurfacePresenter videoSurfacePresenter) {
        this(context, videoTracker, videoSurfacePresenter, new PlaybackPositionMonitor(videoSurfacePresenter));
    }

    public BuffetVideoEventTracker(@NonNull Context context, @NonNull VideoTracker videoTracker, @NonNull VideoSurfacePresenter videoSurfacePresenter, @NonNull PlaybackPositionMonitor playbackPositionMonitor) {
        this.mAppContext = EZUtil.checkNotNull(context.getApplicationContext());
        this.mVideoEventTracker = EZUtil.checkNotNull(videoTracker);
        this.mVideoSurfacePresenter = EZUtil.checkNotNull(videoSurfacePresenter);
        this.mPositionMonitor = EZUtil.checkNotNull(playbackPositionMonitor);
        this.initializeListeners();
    }

    private boolean ensureRequiredContent() {
        if (!(TextUtils.isEmpty((CharSequence)this.mScreenName) || TextUtils.isEmpty((CharSequence)this.mCurrentVideoId) || TextUtils.isEmpty((CharSequence)this.mCurrentVideoTitle) || TextUtils.isEmpty((CharSequence)this.mCurrentContentUri) || this.mCurrentItemPosition == -1 || this.mCurrentVideoDuration == -1)) {
            return true;
        }
        return false;
    }

    private void initializeListeners() {
        this.mVideoEventListener = new InternalVideoEventListener();
        this.mVideoPositionListener = new InternalPositionMonitorListener();
    }

    public void attachMediaComponents() {
        String string2 = TAG + ".attachMediaComponents";
        if (this.mIsAttached) {
            LogUtil.e(string2, "BuffetVideoEventTracker is already attached.");
            return;
        }
        if (TextUtils.isEmpty((CharSequence)this.mScreenName)) {
            throw new RuntimeException("Screen name must be supplied before attaching.");
        }
        this.mVideoSurfacePresenter.addListener(this.mVideoEventListener);
        this.mPositionMonitor.setListener(this.mVideoPositionListener);
        this.mPositionMonitor.start();
        if (this.mVideoSurfacePresenter.isPlaying()) {
            this.mVideoEventListener.mVideoStartTracked = true;
        }
        this.mIsAttached = true;
    }

    protected void configureTrackerForCurrentContent() {
        if (this.ensureRequiredContent()) {
            this.mVideoEventTracker.setPositionInFeed(this.mCurrentItemPosition).setVideoDuration(this.mCurrentVideoDuration).setVideoId(this.mCurrentVideoId).setVideoTitle(this.mCurrentVideoTitle).setVideoUrl(this.mCurrentContentUri).setScreenName(this.mScreenName).setDeviceOrientation(UIUtil.isLandscape(this.mAppContext)).setPlayerLocation("in_feed");
            return;
        }
        this.mVideoEventTracker.resetVideoData();
    }

    public void detachMediaComponents() {
        if (!this.mIsAttached) {
            LogUtil.e(TAG + ".detachMediaComponents", "BuffetVideoEventTracker is not attached.");
            return;
        }
        this.mPositionMonitor.stop();
        this.mPositionMonitor.setListener(null);
        this.mVideoSurfacePresenter.removeListener(this.mVideoEventListener);
        this.mIsAttached = false;
    }

    @NonNull
    protected Context getContext() {
        return this.mAppContext;
    }

    @Nullable
    protected String getScreenName() {
        return this.mScreenName;
    }

    @NonNull
    protected VideoTracker getVideoEventTracker() {
        return this.mVideoEventTracker;
    }

    @NonNull
    protected VideoSurfacePresenter getVideoSurfacePresenter() {
        return this.mVideoSurfacePresenter;
    }

    public boolean isAttached() {
        return this.mIsAttached;
    }

    public void notifyContentReset() {
        this.mHasPendingContentReset = true;
    }

    public void setScreenName(@NonNull String string2) {
        this.mScreenName = EZUtil.checkNotNull(string2, "Screen name must not be null.");
        this.mVideoEventTracker.setScreenName(this.mScreenName);
    }

    public void setVideoContent(@NonNull VideoContent videoContent, int n2) {
        WeaverItem.Video video = WeaverVideoUtils.getFirstVideoFromVideoContent(videoContent);
        String string2 = WeaverVideoUtils.getHlsVideoContentUri(video);
        if (video != null && !TextUtils.isEmpty((CharSequence)string2)) {
            this.setVideoContent(videoContent.getId(), videoContent.getTitle(), string2, video.getDuration(), n2);
        }
    }

    public void setVideoContent(@NonNull String string2, @NonNull String string3, @NonNull String string4, long l2, int n2) {
        this.mCurrentVideoId = string2;
        this.mCurrentVideoTitle = string3;
        this.mCurrentContentUri = string4;
        this.mCurrentVideoDuration = l2;
        this.mCurrentItemPosition = n2;
        this.mHasPendingContentReset = false;
        this.configureTrackerForCurrentContent();
    }

    private class InternalPositionMonitorListener
    implements PlaybackPositionMonitor.Listener {
        private VideoPlaybackUtils.ProgressMarker mLastKnownProgressMarker;

        private InternalPositionMonitorListener() {
        }

        @Override
        public void onPositionTrackingStarted(long l2, long l3) {
            this.mLastKnownProgressMarker = VideoPlaybackUtils.getProgressMarkerForPosition(l2, l3);
        }

        @Override
        public void onPositionUpdated(long l2, long l3) {
            VideoPlaybackUtils.ProgressMarker progressMarker = VideoPlaybackUtils.getProgressMarkerForPosition(l2, l3);
            if (progressMarker != VideoPlaybackUtils.ProgressMarker.START && this.mLastKnownProgressMarker != progressMarker) {
                this.mLastKnownProgressMarker = progressMarker;
                BuffetVideoEventTracker.this.mVideoEventTracker.sendPlaybackProgress("Feed", this.mLastKnownProgressMarker.percentage);
            }
        }
    }

    private class InternalVideoEventListener
    extends VideoSurfacePresenterListenerImpl {
        private long mLastKnownPlayerPosition;
        private boolean mVideoStartTracked;

        private InternalVideoEventListener() {
            this.mLastKnownPlayerPosition = 0;
        }

        private void sendEndVideoEventIfNeeded(String string2) {
            if (this.mVideoStartTracked) {
                BuffetVideoEventTracker.this.configureTrackerForCurrentContent();
                BuffetVideoEventTracker.this.mVideoEventTracker.sendEndVideoEvent(this.mLastKnownPlayerPosition, string2);
                if (BuffetVideoEventTracker.this.mHasPendingContentReset) {
                    BuffetVideoEventTracker.this.mVideoEventTracker.resetVideoData();
                }
                this.mVideoStartTracked = false;
            }
        }

        private void sendStartVideoEventIfNeeded() {
            if (!this.mVideoStartTracked) {
                BuffetVideoEventTracker.this.configureTrackerForCurrentContent();
                BuffetVideoEventTracker.this.mVideoEventTracker.setPlayReason("auto").sendStartVideoEvent(this.mLastKnownPlayerPosition);
                if (this.mLastKnownPlayerPosition == 0) {
                    BuffetVideoEventTracker.this.mVideoEventTracker.sendAutoPlayBegins("Feed");
                }
                this.mVideoStartTracked = true;
            }
        }

        private void updateLastKnownPlayerPosition(int n2) {
            if (n2 != 4) {
                this.mLastKnownPlayerPosition = BuffetVideoEventTracker.this.mVideoSurfacePresenter.getCurrentPosition();
            }
        }

        @Override
        public void onPlayerReleased(VideoSurfacePresenter videoSurfacePresenter, long l2) {
            this.mLastKnownPlayerPosition = l2;
            this.sendEndVideoEventIfNeeded("auto");
        }

        @Override
        public void onPlayerStopped(VideoSurfacePresenter videoSurfacePresenter, long l2) {
            this.mLastKnownPlayerPosition = l2;
            this.sendEndVideoEventIfNeeded("auto");
        }

        /*
         * Enabled aggressive block sorting
         */
        @Override
        public void onStateChanged(boolean bl, int n2) {
            this.updateLastKnownPlayerPosition(n2);
            if (bl && n2 == 4) {
                this.sendStartVideoEventIfNeeded();
                return;
            } else {
                if (!bl || n2 != 5) return;
                {
                    this.sendEndVideoEventIfNeeded("video_complete");
                    return;
                }
            }
        }
    }

}

