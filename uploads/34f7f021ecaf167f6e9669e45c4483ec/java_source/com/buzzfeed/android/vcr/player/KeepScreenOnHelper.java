/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.view.Window
 */
package com.buzzfeed.android.vcr.player;

import android.support.annotation.NonNull;
import android.view.Window;
import com.buzzfeed.android.vcr.player.VCRExoPlayer;
import com.buzzfeed.android.vcr.player.VideoSurfacePresenter;
import com.buzzfeed.toolkit.util.LogUtil;

public class KeepScreenOnHelper {
    private static final String TAG = LogUtil.makeLogTag(KeepScreenOnHelper.class);
    private boolean mKeepScreenOn = false;
    private final InternalPresenterListener mPresenterListener;
    private VideoSurfacePresenter mVideoSurfacePresenter;
    private final Window mWindow;

    public KeepScreenOnHelper(Window window) {
        this.mWindow = window;
        this.mPresenterListener = new InternalPresenterListener();
    }

    private void updateKeepScreenOnFlags(boolean bl) {
        if (this.mKeepScreenOn == bl) {
            return;
        }
        this.mKeepScreenOn = bl;
        LogUtil.d(TAG + ".updateKeepScreenOnFlags", "Settings windows flag. keepScreenOn = " + this.mKeepScreenOn);
        if (this.mKeepScreenOn) {
            this.mWindow.addFlags(128);
            return;
        }
        this.mWindow.clearFlags(128);
    }

    public void attachTo(@NonNull VideoSurfacePresenter videoSurfacePresenter) {
        videoSurfacePresenter.addListener(this.mPresenterListener);
        this.mVideoSurfacePresenter = videoSurfacePresenter;
    }

    public void detachFromPresenter() {
        if (this.mVideoSurfacePresenter != null) {
            this.mVideoSurfacePresenter.removeListener(this.mPresenterListener);
            this.updateKeepScreenOnFlags(false);
            this.mVideoSurfacePresenter = null;
        }
    }

    public boolean isAttached() {
        if (this.mVideoSurfacePresenter != null) {
            return true;
        }
        return false;
    }

    private final class InternalPresenterListener
    implements VideoSurfacePresenter.Listener {
        private InternalPresenterListener() {
        }

        @Override
        public void onAudioMutedStateChanged(boolean bl) {
        }

        @Override
        public void onError(Exception exception) {
            KeepScreenOnHelper.this.updateKeepScreenOnFlags(false);
        }

        @Override
        public void onPlayerPrepared(VCRExoPlayer vCRExoPlayer) {
            KeepScreenOnHelper.this.updateKeepScreenOnFlags(true);
        }

        @Override
        public void onPlayerReleased(VideoSurfacePresenter videoSurfacePresenter, long l2) {
            KeepScreenOnHelper.this.updateKeepScreenOnFlags(false);
        }

        @Override
        public void onPlayerStopped(VideoSurfacePresenter videoSurfacePresenter, long l2) {
            KeepScreenOnHelper.this.updateKeepScreenOnFlags(false);
        }

        @Override
        public void onStateChanged(boolean bl, int n2) {
            switch (n2) {
                default: {
                    LogUtil.d(TAG, "Unknown playback state: " + n2);
                    return;
                }
                case 1: 
                case 5: {
                    KeepScreenOnHelper.this.updateKeepScreenOnFlags(false);
                    return;
                }
                case 4: {
                    KeepScreenOnHelper.this.updateKeepScreenOnFlags(bl);
                    return;
                }
                case 2: 
                case 3: 
            }
            KeepScreenOnHelper.this.updateKeepScreenOnFlags(true);
        }

        @Override
        public void onVideoSizeChanged(int n2, int n3, int n4, float f2) {
        }
    }

}

