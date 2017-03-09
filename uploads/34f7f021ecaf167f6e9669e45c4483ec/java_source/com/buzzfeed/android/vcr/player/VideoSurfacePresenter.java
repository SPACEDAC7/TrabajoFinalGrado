/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.content.Context
 *  android.text.TextUtils
 *  android.view.Surface
 *  android.view.View
 */
package com.buzzfeed.android.vcr.player;

import android.content.Context;
import android.support.annotation.CallSuper;
import android.support.annotation.Nullable;
import android.text.TextUtils;
import android.view.Surface;
import android.view.View;
import com.buzzfeed.android.vcr.VCRConfig;
import com.buzzfeed.android.vcr.model.VideoType;
import com.buzzfeed.android.vcr.player.RendererBuilder;
import com.buzzfeed.android.vcr.player.RendererBuilderFactory;
import com.buzzfeed.android.vcr.player.VCRExoPlayer;
import com.buzzfeed.android.vcr.toolbox.PositionCache;
import com.buzzfeed.toolkit.util.EZUtil;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;

public abstract class VideoSurfacePresenter<T extends View> {
    private Context mAppContext;
    private float mAspectRatio;
    @Nullable
    private VideoType mContentType = VideoType.NONE;
    @Nullable
    private String mContentUri;
    private boolean mIsAudioMuted;
    private boolean mIsLoggingEnabled;
    private CopyOnWriteArrayList<Listener> mListeners;
    protected boolean mPlayWhenReady;
    private VCRExoPlayer.Listener mPlaybackStateListener;
    private boolean mPlayerNeedsPrepare = true;
    @Nullable
    protected PositionCache mPositionCache;
    @Nullable
    private RendererBuilder mRendererBuilder;
    @Nullable
    protected Surface mSurface;
    @Nullable
    protected VCRExoPlayer mVideoPlayer;

    public VideoSurfacePresenter(Context context) {
        this.mPlaybackStateListener = new VCRExoPlayerListenerInternal();
        this.mListeners = new CopyOnWriteArrayList();
        this.mAppContext = EZUtil.checkNotNull(context.getApplicationContext(), "Application context was null.");
    }

    private void buildPlayerIfNeeded() {
        this.initRendererBuilderIfNeeded();
        this.preparePlayerIfNeeded();
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    private void initRendererBuilderIfNeeded() {
        if (!this.isContentAvailable() || this.mRendererBuilder != null) {
            return;
        }
        try {
            this.mRendererBuilder = RendererBuilderFactory.getRendererBuilder(this.mAppContext, this.mContentUri, this.mContentType, VCRConfig.getInstance().getAdaptiveBitrateLimit());
            return;
        }
        catch (Exception var1_1) {
            this.onPlayerOnError(var1_1);
            return;
        }
    }

    private boolean isContentAvailable() {
        if (!TextUtils.isEmpty((CharSequence)this.mContentUri) && this.mContentType != VideoType.NONE) {
            return true;
        }
        return false;
    }

    /*
     * Enabled aggressive block sorting
     */
    private boolean isInPlaybackState() {
        int n2;
        if (this.mVideoPlayer == null || (n2 = this.mVideoPlayer.getPlaybackState()) != 4 && n2 != 3) {
            return false;
        }
        return true;
    }

    private boolean isSurfaceAvailable() {
        if (this.mSurface != null) {
            return true;
        }
        return false;
    }

    /*
     * Enabled aggressive block sorting
     */
    private void preparePlayerIfNeeded() {
        if (!this.mPlayerNeedsPrepare || this.mRendererBuilder == null || !this.isSurfaceAvailable()) {
            return;
        }
        this.mPlayerNeedsPrepare = false;
        if (this.mVideoPlayer == null) {
            this.mVideoPlayer = new VCRExoPlayer();
            this.mVideoPlayer.addListener(this.mPlaybackStateListener);
            this.mVideoPlayer.setDebugLoggingEnabled(this.mIsLoggingEnabled);
        }
        this.mVideoPlayer.setRendererBuilder(this.mRendererBuilder);
        this.mVideoPlayer.prepare();
        this.mVideoPlayer.setSurface(this.mSurface);
        this.mVideoPlayer.setPlayWhenReady(this.mPlayWhenReady);
        this.mVideoPlayer.setAudioMuted(this.mIsAudioMuted);
        long l2 = this.mPositionCache != null ? this.mPositionCache.getPosition(this.mContentUri) : 0;
        this.seekTo(l2);
        this.onPlayerPrepared();
    }

    private void setPlayWhenReady(boolean bl) {
        this.mPlayWhenReady = bl;
        if (this.mVideoPlayer != null) {
            this.mVideoPlayer.setPlayWhenReady(bl);
        }
    }

    @CallSuper
    protected void addContentPlaybackPositionToCache() {
        if (this.mPositionCache == null || this.mVideoPlayer == null || !this.isContentAvailable()) {
            return;
        }
        this.mPositionCache.putPosition(this.mContentUri, this.mVideoPlayer.getCurrentPosition());
    }

    public void addListener(Listener listener) {
        if (listener != null && !this.mListeners.contains(listener)) {
            this.mListeners.add(listener);
        }
    }

    public void blockingClearSurface() {
        if (this.mSurface != null) {
            this.mSurface = null;
            if (this.mVideoPlayer != null) {
                this.mVideoPlayer.blockingClearSurface();
            }
        }
    }

    public float getAspectRatio() {
        return this.mAspectRatio;
    }

    public String getContent() {
        return this.mContentUri;
    }

    public long getCurrentPosition() {
        if (this.mVideoPlayer != null) {
            return this.mVideoPlayer.getCurrentPosition();
        }
        if (!TextUtils.isEmpty((CharSequence)this.mContentUri) && this.mPositionCache != null) {
            return this.mPositionCache.getPosition(this.mContentUri);
        }
        return 0;
    }

    public long getDuration() {
        if (this.mVideoPlayer != null) {
            return this.mVideoPlayer.getDuration();
        }
        return 0;
    }

    @Nullable
    public VCRExoPlayer getVideoPlayer() {
        return this.mVideoPlayer;
    }

    public VideoType getVideoType() {
        return this.mContentType;
    }

    public boolean isAudioMuted() {
        return this.mIsAudioMuted;
    }

    public boolean isPaused() {
        if (!this.mPlayWhenReady && this.isPrepared()) {
            return true;
        }
        return false;
    }

    public boolean isPlaying() {
        if (this.mPlayWhenReady && this.isInPlaybackState()) {
            return true;
        }
        return false;
    }

    public boolean isPrepared() {
        if (!this.mPlayerNeedsPrepare) {
            return true;
        }
        return false;
    }

    public boolean isReady() {
        if (!this.mPlayerNeedsPrepare && this.mVideoPlayer != null) {
            return true;
        }
        return false;
    }

    @CallSuper
    protected void onAudioMutedStateChanged() {
        Iterator<Listener> iterator = this.mListeners.iterator();
        while (iterator.hasNext()) {
            iterator.next().onAudioMutedStateChanged(this.mIsAudioMuted);
        }
    }

    @CallSuper
    protected void onPlayerOnError(Exception exception) {
        this.addContentPlaybackPositionToCache();
        this.mPlayerNeedsPrepare = true;
        Iterator<Listener> iterator = this.mListeners.iterator();
        while (iterator.hasNext()) {
            iterator.next().onError(exception);
        }
    }

    @CallSuper
    protected void onPlayerPrepared() {
        Iterator<Listener> iterator = this.mListeners.iterator();
        while (iterator.hasNext()) {
            iterator.next().onPlayerPrepared(this.mVideoPlayer);
        }
    }

    @CallSuper
    protected void onPlayerReleased(long l2) {
        Iterator<Listener> iterator = this.mListeners.iterator();
        while (iterator.hasNext()) {
            iterator.next().onPlayerReleased(this, l2);
        }
    }

    @CallSuper
    protected void onPlayerStateChanged(boolean bl, int n2) {
        if (n2 == 5) {
            this.removeContentPlaybackPositionFromCache();
        }
        Iterator<Listener> iterator = this.mListeners.iterator();
        while (iterator.hasNext()) {
            iterator.next().onStateChanged(bl, n2);
        }
    }

    @CallSuper
    protected void onPlayerStopped(long l2) {
        Iterator<Listener> iterator = this.mListeners.iterator();
        while (iterator.hasNext()) {
            iterator.next().onPlayerStopped(this, l2);
        }
    }

    /*
     * Enabled aggressive block sorting
     */
    @CallSuper
    protected void onVideoSizeChanged(int n2, int n3, int n4, float f2) {
        float f3 = n3 == 0 ? 1.0f : (float)n2 * f2 / (float)n3;
        this.mAspectRatio = f3;
        Iterator<Listener> iterator = this.mListeners.iterator();
        while (iterator.hasNext()) {
            iterator.next().onVideoSizeChanged(n2, n3, n4, f2);
        }
        return;
    }

    public void pause() {
        this.setPlayWhenReady(false);
    }

    public void play() {
        this.setPlayWhenReady(true);
        this.buildPlayerIfNeeded();
    }

    public void release() {
        if (this.mVideoPlayer != null) {
            if (this.mVideoPlayer.getPlaybackState() != 5) {
                this.addContentPlaybackPositionToCache();
            }
            long l2 = this.mVideoPlayer.getCurrentPosition();
            this.mVideoPlayer.removeListener(this.mPlaybackStateListener);
            this.mVideoPlayer.release();
            this.mVideoPlayer = null;
            this.mRendererBuilder = null;
            this.mPlayerNeedsPrepare = true;
            this.mSurface = null;
            this.setPlayWhenReady(false);
            this.onPlayerReleased(l2);
        }
    }

    @CallSuper
    protected void removeContentPlaybackPositionFromCache() {
        if (this.mPositionCache == null || !this.isContentAvailable()) {
            return;
        }
        this.mPositionCache.removePosition(this.mContentUri);
    }

    public void removeListener(Listener listener) {
        if (listener != null) {
            this.mListeners.remove(listener);
        }
    }

    /*
     * Enabled aggressive block sorting
     */
    public void seekTo(long l2) {
        if (this.mVideoPlayer != null && !this.mPlayerNeedsPrepare) {
            this.mVideoPlayer.seekTo(l2);
            return;
        } else {
            if (this.mPositionCache == null || TextUtils.isEmpty((CharSequence)this.getContent())) return;
            {
                this.mPositionCache.putPosition(this.getContent(), l2);
                return;
            }
        }
    }

    public void setAudioMuted(boolean bl) {
        if (this.mIsAudioMuted == bl) {
            return;
        }
        this.mIsAudioMuted = bl;
        if (this.mVideoPlayer != null) {
            this.mVideoPlayer.setAudioMuted(this.mIsAudioMuted);
        }
        this.onAudioMutedStateChanged();
    }

    public void setContent(String string2, VideoType videoType) {
        if (!TextUtils.equals((CharSequence)this.mContentUri, (CharSequence)string2)) {
            this.mRendererBuilder = null;
            this.mPlayerNeedsPrepare = true;
            this.mAspectRatio = 0.0f;
        }
        this.mContentUri = string2;
        this.mContentType = videoType;
        this.buildPlayerIfNeeded();
    }

    public void setDebugLoggingEnabled(boolean bl) {
        this.mIsLoggingEnabled = bl;
        if (this.mVideoPlayer != null) {
            this.mVideoPlayer.setDebugLoggingEnabled(bl);
        }
    }

    public void setPositionCache(@Nullable PositionCache positionCache) {
        this.mPositionCache = positionCache;
    }

    public void setSurface(@Nullable Surface surface) {
        this.mSurface = surface;
        if (this.mVideoPlayer != null) {
            this.mVideoPlayer.setSurface(surface);
            this.preparePlayerIfNeeded();
            return;
        }
        this.buildPlayerIfNeeded();
    }

    public abstract void setTargetView(T var1);

    public void stop() {
        if (this.mVideoPlayer != null) {
            if (this.mVideoPlayer.getPlaybackState() != 5) {
                this.addContentPlaybackPositionToCache();
            }
            long l2 = this.mVideoPlayer.getCurrentPosition();
            this.mVideoPlayer.stop();
            this.mRendererBuilder = null;
            this.mPlayerNeedsPrepare = true;
            this.setPlayWhenReady(false);
            this.onPlayerStopped(l2);
        }
    }

    public static interface Listener
    extends VCRExoPlayer.Listener {
        public void onAudioMutedStateChanged(boolean var1);

        public void onPlayerPrepared(VCRExoPlayer var1);

        public void onPlayerReleased(VideoSurfacePresenter var1, long var2);

        public void onPlayerStopped(VideoSurfacePresenter var1, long var2);
    }

    private class VCRExoPlayerListenerInternal
    implements VCRExoPlayer.Listener {
        private VCRExoPlayerListenerInternal() {
        }

        @Override
        public void onError(Exception exception) {
            VideoSurfacePresenter.this.onPlayerOnError(exception);
        }

        @Override
        public void onStateChanged(boolean bl, int n2) {
            VideoSurfacePresenter.this.onPlayerStateChanged(bl, n2);
        }

        @Override
        public void onVideoSizeChanged(int n2, int n3, int n4, float f2) {
            VideoSurfacePresenter.this.onVideoSizeChanged(n2, n3, n4, f2);
        }
    }

}

