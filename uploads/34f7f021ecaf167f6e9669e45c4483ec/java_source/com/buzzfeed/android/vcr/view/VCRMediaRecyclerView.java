/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.content.Context
 *  android.util.AttributeSet
 *  android.view.TextureView
 */
package com.buzzfeed.android.vcr.view;

import android.content.Context;
import android.support.annotation.Nullable;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.util.AttributeSet;
import android.view.TextureView;
import com.buzzfeed.android.vcr.model.VideoType;
import com.buzzfeed.android.vcr.player.VCRDefaultVideoPlayerPresenter;
import com.buzzfeed.android.vcr.player.VCRExoPlayer;
import com.buzzfeed.android.vcr.player.VCRPlayerControl;
import com.buzzfeed.android.vcr.player.VideoSurfacePresenter;
import com.buzzfeed.android.vcr.toolbox.AutoFocusController;
import com.buzzfeed.android.vcr.toolbox.PositionCache;
import com.buzzfeed.toolkit.util.LogUtil;

public class VCRMediaRecyclerView
extends RecyclerView {
    private static final String TAG = LogUtil.makeLogTag(VCRMediaRecyclerView.class);
    private AutoFocusController mAutoFocusController;
    @Nullable
    private AutoPlayDelegate mAutoPlayDelegate;
    @Nullable
    private RecyclerView.ViewHolder mCurrentFocusedViewHolder;
    private boolean mKeepScreenOnWhilePlaying = false;
    private boolean mNeedStartAutoFocus = false;
    @Nullable
    private PlaybackStateListener mPlaybackStateListener;
    private VCRPlayerControl mPlayerControl;
    private VCRDefaultVideoPlayerPresenter mVideoPlayerPresenter;

    public VCRMediaRecyclerView(Context context) {
        this(context, null, 0);
    }

    public VCRMediaRecyclerView(Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public VCRMediaRecyclerView(Context context, @Nullable AttributeSet attributeSet, int n2) {
        super(context, attributeSet, n2);
        this.initialize();
    }

    private void attachAutoFocusControllerIfNeeded() {
        if (this.getLayoutManager() instanceof LinearLayoutManager && !this.mAutoFocusController.isAttached()) {
            this.mAutoFocusController.attachView(this);
        }
    }

    private void setupAndStartAutoFocusControllerIfNeeded() {
        this.attachAutoFocusControllerIfNeeded();
        if (this.getChildCount() > 0) {
            this.mAutoFocusController.start();
            return;
        }
        this.mNeedStartAutoFocus = true;
    }

    /*
     * Enabled aggressive block sorting
     */
    private void updateKeepScreenOnFlags(boolean bl) {
        bl = this.mKeepScreenOnWhilePlaying && bl;
        if (this.getKeepScreenOn() == bl) return;
        this.setKeepScreenOn(bl);
    }

    public void addOnFocusChangeListener(AutoFocusController.OnFocusChangeListener onFocusChangeListener) {
        this.mAutoFocusController.addOnFocusChangeListener(onFocusChangeListener);
    }

    public void addPlayerEventListener(VideoSurfacePresenter.Listener listener) {
        this.mVideoPlayerPresenter.addListener(listener);
    }

    public AutoFocusController getAutoFocusController() {
        return this.mAutoFocusController;
    }

    @Nullable
    public RecyclerView.ViewHolder getCurrentFocusedViewHolder() {
        return this.mCurrentFocusedViewHolder;
    }

    public VCRPlayerControl getPlayerControl() {
        return this.mPlayerControl;
    }

    public VCRDefaultVideoPlayerPresenter getVideoPlayerPresenter() {
        return this.mVideoPlayerPresenter;
    }

    protected void initialize() {
        this.mVideoPlayerPresenter = new VCRDefaultVideoPlayerPresenter(this.getContext());
        this.mVideoPlayerPresenter.addListener(new InternalPlayerEventListener());
        this.mPlayerControl = new VCRPlayerControl(this.mVideoPlayerPresenter);
        this.mAutoFocusController = new AutoFocusController();
        this.mAutoFocusController.addOnFocusChangeListener(new InternalAutoFocusChangeListener());
        this.mAutoFocusController.setAutoFocusStrategy(new InternalAutoFocusStrategy());
    }

    public boolean isPlaybackAudioMuted() {
        return this.mVideoPlayerPresenter.isAudioMuted();
    }

    @Override
    protected void onDetachedFromWindow() {
        if (this.mAutoFocusController.isAttached()) {
            this.mAutoFocusController.detachView();
        }
        super.onDetachedFromWindow();
    }

    @Override
    protected void onLayout(boolean bl, int n2, int n3, int n4, int n5) {
        super.onLayout(bl, n2, n3, n4, n5);
        if (this.mNeedStartAutoFocus && this.getChildCount() > 0) {
            this.mNeedStartAutoFocus = false;
            this.mAutoFocusController.start();
        }
    }

    public void removeOnFocusChangeListener(AutoFocusController.OnFocusChangeListener onFocusChangeListener) {
        this.mAutoFocusController.removeOnFocusChangeListener(onFocusChangeListener);
    }

    public void removePlayerEventListener(VideoSurfacePresenter.Listener listener) {
        this.mVideoPlayerPresenter.removeListener(listener);
    }

    public void setAutoFocusStrategy(AutoFocusController.AutoFocusStrategy autoFocusStrategy) {
        this.mAutoFocusController.setAutoFocusStrategy(autoFocusStrategy);
    }

    public void setAutoPlayDelegate(@Nullable AutoPlayDelegate autoPlayDelegate) {
        this.mAutoPlayDelegate = autoPlayDelegate;
    }

    @Nullable
    public void setCurrentFocusedViewHolder(RecyclerView.ViewHolder viewHolder) {
        this.mCurrentFocusedViewHolder = viewHolder;
    }

    public void setKeepScreenOnWhilePlaying(boolean bl) {
        this.mKeepScreenOnWhilePlaying = bl;
        if (!this.mKeepScreenOnWhilePlaying) {
            this.updateKeepScreenOnFlags(false);
        }
    }

    public void setPlaybackAudioMuted(boolean bl) {
        this.mVideoPlayerPresenter.setAudioMuted(bl);
    }

    public void setPlaybackDebugLoggingEnabled(boolean bl) {
        this.mVideoPlayerPresenter.setDebugLoggingEnabled(bl);
    }

    public void setPlaybackPositionCache(PositionCache positionCache) {
        this.mVideoPlayerPresenter.setPositionCache(positionCache);
    }

    public void setPlaybackStateListener(@Nullable PlaybackStateListener playbackStateListener) {
        this.mPlaybackStateListener = playbackStateListener;
    }

    public void startMediaComponents() {
        this.setupAndStartAutoFocusControllerIfNeeded();
        this.mVideoPlayerPresenter.play();
    }

    public void stopMediaComponents() {
        if (this.mAutoFocusController.isStarted()) {
            this.mAutoFocusController.stop();
        }
        this.mVideoPlayerPresenter.release();
    }

    public static interface AutoPlayDelegate {
        public String getContentUri(RecyclerView.ViewHolder var1);

        public TextureView getTextureView(RecyclerView.ViewHolder var1);

        public boolean hasVideoContent(RecyclerView.ViewHolder var1);
    }

    private class InternalAutoFocusChangeListener
    implements AutoFocusController.OnFocusChangeListener {
        private InternalAutoFocusChangeListener() {
        }

        @Override
        public void onFocusChange(RecyclerView.ViewHolder viewHolder, boolean bl) {
            if (VCRMediaRecyclerView.this.mAutoPlayDelegate == null) {
                LogUtil.w(TAG, "AutoPlayDelegate has not been set. Aborting.");
                return;
            }
            if (bl) {
                String string2 = VCRMediaRecyclerView.this.mAutoPlayDelegate.getContentUri(viewHolder);
                VideoType videoType = VideoType.inferContentType(string2);
                VCRMediaRecyclerView.this.mCurrentFocusedViewHolder = viewHolder;
                VCRMediaRecyclerView.this.mVideoPlayerPresenter.setContent(string2, videoType);
                VCRMediaRecyclerView.this.mVideoPlayerPresenter.setTargetView(VCRMediaRecyclerView.this.mAutoPlayDelegate.getTextureView(viewHolder));
                VCRMediaRecyclerView.this.mVideoPlayerPresenter.play();
                return;
            }
            VCRMediaRecyclerView.this.mVideoPlayerPresenter.stop();
            VCRMediaRecyclerView.this.mVideoPlayerPresenter.setContent(null, VideoType.NONE);
            VCRMediaRecyclerView.this.mVideoPlayerPresenter.setTargetView(null);
            VCRMediaRecyclerView.this.mCurrentFocusedViewHolder = null;
        }
    }

    private class InternalAutoFocusStrategy
    implements AutoFocusController.AutoFocusStrategy {
        private InternalAutoFocusStrategy() {
        }

        @Override
        public boolean isFocusable(RecyclerView.ViewHolder viewHolder) {
            if (VCRMediaRecyclerView.this.mAutoPlayDelegate != null && VCRMediaRecyclerView.this.mAutoPlayDelegate.hasVideoContent(viewHolder)) {
                return true;
            }
            return false;
        }
    }

    private class InternalPlayerEventListener
    implements VideoSurfacePresenter.Listener {
        private InternalPlayerEventListener() {
        }

        @Override
        public void onAudioMutedStateChanged(boolean bl) {
            if (VCRMediaRecyclerView.this.mPlaybackStateListener != null) {
                VCRMediaRecyclerView.this.mPlaybackStateListener.onAudioMuteStateChanged(VCRMediaRecyclerView.this.mCurrentFocusedViewHolder, bl);
            }
        }

        @Override
        public void onError(Exception exception) {
            VCRMediaRecyclerView.this.updateKeepScreenOnFlags(false);
            if (VCRMediaRecyclerView.this.mPlaybackStateListener != null) {
                VCRMediaRecyclerView.this.mPlaybackStateListener.onPlaybackError(VCRMediaRecyclerView.this.mCurrentFocusedViewHolder);
            }
        }

        @Override
        public void onPlayerPrepared(VCRExoPlayer vCRExoPlayer) {
            VCRMediaRecyclerView.this.updateKeepScreenOnFlags(true);
            if (VCRMediaRecyclerView.this.mPlaybackStateListener != null) {
                VCRMediaRecyclerView.this.mPlaybackStateListener.onPlaybackPreparing(VCRMediaRecyclerView.this.mCurrentFocusedViewHolder);
            }
        }

        @Override
        public void onPlayerReleased(VideoSurfacePresenter videoSurfacePresenter, long l2) {
            VCRMediaRecyclerView.this.updateKeepScreenOnFlags(false);
            if (VCRMediaRecyclerView.this.mPlaybackStateListener != null) {
                VCRMediaRecyclerView.this.mPlaybackStateListener.onPlaybackStopped(VCRMediaRecyclerView.this.mCurrentFocusedViewHolder);
            }
        }

        @Override
        public void onPlayerStopped(VideoSurfacePresenter videoSurfacePresenter, long l2) {
            if (VCRMediaRecyclerView.this.mPlaybackStateListener != null) {
                VCRMediaRecyclerView.this.mPlaybackStateListener.onPlaybackStopped(VCRMediaRecyclerView.this.mCurrentFocusedViewHolder);
            }
        }

        @Override
        public void onStateChanged(boolean bl, int n2) {
            if (VCRMediaRecyclerView.this.mPlaybackStateListener == null || !VCRMediaRecyclerView.this.mVideoPlayerPresenter.isPrepared()) {
                return;
            }
            switch (n2) {
                default: {
                    LogUtil.d(TAG, "Unknown playback state: " + n2);
                    return;
                }
                case 1: {
                    VCRMediaRecyclerView.this.updateKeepScreenOnFlags(false);
                    return;
                }
                case 4: {
                    VCRMediaRecyclerView.this.mPlaybackStateListener.onPlaybackStarted(VCRMediaRecyclerView.this.mCurrentFocusedViewHolder);
                    VCRMediaRecyclerView.this.updateKeepScreenOnFlags(bl);
                    return;
                }
                case 2: 
                case 3: {
                    VCRMediaRecyclerView.this.mPlaybackStateListener.onPlaybackPreparing(VCRMediaRecyclerView.this.mCurrentFocusedViewHolder);
                    VCRMediaRecyclerView.this.updateKeepScreenOnFlags(true);
                    return;
                }
                case 5: 
            }
            VCRMediaRecyclerView.this.mPlaybackStateListener.onPlaybackStopped(VCRMediaRecyclerView.this.mCurrentFocusedViewHolder);
            VCRMediaRecyclerView.this.updateKeepScreenOnFlags(false);
        }

        @Override
        public void onVideoSizeChanged(int n2, int n3, int n4, float f2) {
            if (VCRMediaRecyclerView.this.mPlaybackStateListener != null) {
                VCRMediaRecyclerView.this.mPlaybackStateListener.onVideoSizeChanged(VCRMediaRecyclerView.this.mCurrentFocusedViewHolder, n2, n3, n4, f2);
            }
        }
    }

    public static interface PlaybackStateListener {
        public void onAudioMuteStateChanged(RecyclerView.ViewHolder var1, boolean var2);

        public void onPlaybackError(RecyclerView.ViewHolder var1);

        public void onPlaybackPreparing(RecyclerView.ViewHolder var1);

        public void onPlaybackStarted(RecyclerView.ViewHolder var1);

        public void onPlaybackStopped(RecyclerView.ViewHolder var1);

        public void onVideoSizeChanged(RecyclerView.ViewHolder var1, int var2, int var3, int var4, float var5);
    }

}

