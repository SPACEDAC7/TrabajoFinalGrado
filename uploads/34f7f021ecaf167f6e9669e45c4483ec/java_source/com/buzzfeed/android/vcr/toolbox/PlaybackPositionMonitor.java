/*
 * Decompiled with CFR 0_115.
 */
package com.buzzfeed.android.vcr.toolbox;

import android.support.annotation.IntRange;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import com.buzzfeed.android.vcr.player.VideoSurfacePresenter;
import com.buzzfeed.android.vcr.player.listener.VideoSurfacePresenterListenerImpl;
import com.buzzfeed.toolkit.util.EZUtil;
import com.buzzfeed.toolkit.util.Repeater;

public class PlaybackPositionMonitor {
    private InternalPlaybackEventListener mInternalPlaybackEventListener;
    @Nullable
    private Listener mListener;
    private final Repeater mRepeater;
    private VideoSurfacePresenter mVideoSurfacePresenter;

    public PlaybackPositionMonitor(@NonNull VideoSurfacePresenter videoSurfacePresenter) {
        this(videoSurfacePresenter, 1000);
    }

    public PlaybackPositionMonitor(@NonNull VideoSurfacePresenter videoSurfacePresenter, @IntRange(from=100) long l2) {
        this.mVideoSurfacePresenter = EZUtil.checkNotNull(videoSurfacePresenter);
        this.mInternalPlaybackEventListener = new InternalPlaybackEventListener();
        this.mRepeater = new Repeater();
        this.mRepeater.setRepeatDelay(l2);
        this.mRepeater.setRepeatListener(new InternalRepeaterListener());
    }

    private void notifyProgressStarted() {
        if (this.mListener != null) {
            long l2 = this.mVideoSurfacePresenter.getCurrentPosition();
            long l3 = this.mVideoSurfacePresenter.getDuration();
            if (l3 > 0) {
                this.mListener.onPositionTrackingStarted(l2, l3);
            }
        }
    }

    private void notifyProgressUpdate() {
        if (this.mListener != null) {
            long l2 = this.mVideoSurfacePresenter.getCurrentPosition();
            long l3 = this.mVideoSurfacePresenter.getDuration();
            if (l3 > 0) {
                this.mListener.onPositionUpdated(l2, l3);
            }
        }
    }

    private void startProgressUpdates() {
        if (!this.mRepeater.isRunning()) {
            this.mRepeater.start();
            this.notifyProgressStarted();
        }
    }

    private void stopProgressUpdates() {
        this.mRepeater.stop();
    }

    public void setListener(@Nullable Listener listener) {
        this.mListener = listener;
    }

    public void start() {
        this.mVideoSurfacePresenter.addListener(this.mInternalPlaybackEventListener);
        if (this.mVideoSurfacePresenter.isPlaying()) {
            this.startProgressUpdates();
        }
    }

    public void stop() {
        this.mVideoSurfacePresenter.removeListener(this.mInternalPlaybackEventListener);
        this.stopProgressUpdates();
    }

    private final class InternalPlaybackEventListener
    extends VideoSurfacePresenterListenerImpl {
        private InternalPlaybackEventListener() {
        }

        @Override
        public void onPlayerReleased(VideoSurfacePresenter videoSurfacePresenter, long l2) {
            PlaybackPositionMonitor.this.stopProgressUpdates();
        }

        @Override
        public void onPlayerStopped(VideoSurfacePresenter videoSurfacePresenter, long l2) {
            PlaybackPositionMonitor.this.stopProgressUpdates();
        }

        /*
         * Enabled aggressive block sorting
         */
        @Override
        public void onStateChanged(boolean bl, int n2) {
            if (bl && n2 == 3) {
                PlaybackPositionMonitor.this.startProgressUpdates();
                return;
            } else {
                if (!bl || n2 != 5) return;
                {
                    PlaybackPositionMonitor.this.notifyProgressUpdate();
                    PlaybackPositionMonitor.this.stopProgressUpdates();
                    return;
                }
            }
        }
    }

    private final class InternalRepeaterListener
    implements Repeater.RepeatListener {
        private InternalRepeaterListener() {
        }

        @Override
        public void onRepeat() {
            if (PlaybackPositionMonitor.this.mVideoSurfacePresenter.isPlaying()) {
                PlaybackPositionMonitor.this.notifyProgressUpdate();
            }
        }
    }

    public static interface Listener {
        public void onPositionTrackingStarted(long var1, @IntRange(from=1) long var3);

        public void onPositionUpdated(long var1, @IntRange(from=1) long var3);
    }

}

