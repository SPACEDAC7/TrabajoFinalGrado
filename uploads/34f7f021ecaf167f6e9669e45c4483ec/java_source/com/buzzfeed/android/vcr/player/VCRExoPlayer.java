/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.os.Handler
 *  android.view.Surface
 */
package com.buzzfeed.android.vcr.player;

import android.os.Handler;
import android.support.annotation.FloatRange;
import android.support.annotation.Nullable;
import android.view.Surface;
import com.buzzfeed.android.vcr.player.RendererBuilder;
import com.buzzfeed.android.vcr.player.VCRExoPlayerEventProxy;
import com.buzzfeed.android.vcr.player.VCRVideoPlayer;
import com.buzzfeed.toolkit.util.EZUtil;
import com.buzzfeed.toolkit.util.LogUtil;
import com.google.android.exoplayer.DummyTrackRenderer;
import com.google.android.exoplayer.ExoPlaybackException;
import com.google.android.exoplayer.ExoPlayer;
import com.google.android.exoplayer.TrackRenderer;
import com.google.android.exoplayer.util.VerboseLogUtil;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;

public class VCRExoPlayer
implements VCRVideoPlayer {
    static final int RENDERER_COUNT = 2;
    public static final int STATE_BUFFERING = 3;
    public static final int STATE_ENDED = 5;
    public static final int STATE_IDLE = 1;
    public static final int STATE_PREPARING = 2;
    public static final int STATE_READY = 4;
    private static final String TAG = LogUtil.makeLogTag(VCRExoPlayer.class);
    static final int TYPE_AUDIO = 1;
    static final int TYPE_VIDEO = 0;
    private TrackRenderer mAudioRenderer;
    private VCRExoPlayerEventProxy mEventProxy;
    private boolean mIsAudioMuted;
    private boolean mIsDebugEnabled;
    private boolean mLastReportedPlayWhenReady;
    private int mLastReportedPlaybackState;
    private final CopyOnWriteArrayList<Listener> mListeners;
    private final Handler mMainHandler;
    private final ExoPlayer mPlayer;
    private RendererBuilder mRendererBuilder;
    private RendererBuildingState mRendererBuildingState;
    private Surface mSurface;
    private TrackRenderer mVideoRenderer;

    public VCRExoPlayer() {
        this(null);
    }

    public VCRExoPlayer(@Nullable RendererBuilder rendererBuilder) {
        this.mRendererBuilder = rendererBuilder;
        this.mPlayer = ExoPlayer.Factory.newInstance(2, 1000, 5000);
        this.mPlayer.addListener(new InternalExoPlayerListener());
        this.mMainHandler = new Handler();
        this.mListeners = new CopyOnWriteArrayList();
        this.mLastReportedPlaybackState = 1;
        this.mRendererBuildingState = RendererBuildingState.IDLE;
    }

    private void pushSurface(boolean bl) {
        if (this.mVideoRenderer == null) {
            return;
        }
        if (bl) {
            this.mPlayer.blockingSendMessage(this.mVideoRenderer, 1, (Object)this.mSurface);
            return;
        }
        this.mPlayer.sendMessage(this.mVideoRenderer, 1, (Object)this.mSurface);
    }

    private void reportPlayerState() {
        boolean bl = this.mPlayer.getPlayWhenReady();
        int n2 = this.getPlaybackState();
        if (this.mLastReportedPlayWhenReady != bl || this.mLastReportedPlaybackState != n2) {
            Iterator<Listener> iterator = this.mListeners.iterator();
            while (iterator.hasNext()) {
                iterator.next().onStateChanged(bl, n2);
            }
            this.mLastReportedPlayWhenReady = bl;
            this.mLastReportedPlaybackState = n2;
        }
    }

    private void resetRendererBuilderState() {
        if (this.mRendererBuilder != null) {
            this.mRendererBuilder.cancel();
        }
        this.mRendererBuildingState = RendererBuildingState.IDLE;
    }

    public void addListener(Listener listener) {
        if (!this.mListeners.contains(listener)) {
            this.mListeners.add(listener);
        }
    }

    public void blockingClearSurface() {
        this.mSurface = null;
        this.pushSurface(true);
    }

    @Override
    public long getBufferedPercentage() {
        return this.mPlayer.getBufferedPercentage();
    }

    @Override
    public long getCurrentPosition() {
        return this.mPlayer.getCurrentPosition();
    }

    @Override
    public long getDuration() {
        return this.mPlayer.getDuration();
    }

    VCRExoPlayerEventProxy getEventProxy() {
        return this.mEventProxy;
    }

    Handler getMainHandler() {
        return this.mMainHandler;
    }

    public boolean getPlayWhenReady() {
        return this.mPlayer.getPlayWhenReady();
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    @Override
    public int getPlaybackState() {
        int n2;
        if (this.mRendererBuildingState == RendererBuildingState.BUILDING) {
            return 2;
        }
        int n3 = n2 = this.mPlayer.getPlaybackState();
        if (this.mRendererBuildingState != RendererBuildingState.BUILT) return n3;
        n3 = n2;
        if (n2 != 1) return n3;
        return 2;
    }

    void onRenderers(TrackRenderer[] arrtrackRenderer) {
        for (int i2 = 0; i2 < 2; ++i2) {
            if (arrtrackRenderer[i2] != null) continue;
            arrtrackRenderer[i2] = new DummyTrackRenderer();
        }
        this.mVideoRenderer = arrtrackRenderer[0];
        this.mAudioRenderer = arrtrackRenderer[1];
        this.pushSurface(false);
        this.mPlayer.prepare(arrtrackRenderer);
        this.mRendererBuildingState = RendererBuildingState.BUILT;
        if (this.mIsAudioMuted) {
            this.setAudioVolume(0.0f);
        }
    }

    void onRenderersError(Exception exception) {
        Iterator<Listener> iterator = this.mListeners.iterator();
        while (iterator.hasNext()) {
            iterator.next().onError(exception);
        }
        this.mRendererBuildingState = RendererBuildingState.IDLE;
        this.reportPlayerState();
        LogUtil.e(TAG, "playerFailed", exception);
    }

    @Override
    public void prepare() {
        EZUtil.checkNotNull(this.mRendererBuilder, "RendererBuilder must be set before preparing.");
        if (this.mRendererBuildingState == RendererBuildingState.BUILT) {
            this.mPlayer.stop();
        }
        if (this.mEventProxy == null) {
            this.mEventProxy = new InternalEventProxy();
            this.mEventProxy.setLoggingEnabled(this.mIsDebugEnabled);
        }
        this.mRendererBuilder.cancel();
        this.mVideoRenderer = null;
        this.mAudioRenderer = null;
        this.mRendererBuildingState = RendererBuildingState.BUILDING;
        this.reportPlayerState();
        this.mRendererBuilder.buildRenderers(this);
    }

    @Override
    public void release() {
        this.resetRendererBuilderState();
        this.mSurface = null;
        this.mPlayer.release();
        this.mEventProxy = null;
    }

    public void removeListener(Listener listener) {
        if (this.mListeners.contains(listener)) {
            this.mListeners.remove(listener);
        }
    }

    @Override
    public void seekTo(long l2) {
        this.mPlayer.seekTo(l2);
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    public void setAudioMuted(boolean bl) {
        if (this.mIsAudioMuted == bl) {
            return;
        }
        this.mIsAudioMuted = bl;
        float f2 = this.mIsAudioMuted ? 0.0f : 1.0f;
        this.setAudioVolume(f2);
    }

    @Override
    public void setAudioVolume(@FloatRange(from=0.0, to=1.0) float f2) {
        if (this.mAudioRenderer != null) {
            this.mPlayer.sendMessage(this.mAudioRenderer, 1, Float.valueOf(f2));
        }
    }

    public void setDebugLoggingEnabled(boolean bl) {
        this.mIsDebugEnabled = bl;
        VerboseLogUtil.setEnableAllTags(this.mIsDebugEnabled);
        if (this.mEventProxy != null) {
            this.mEventProxy.setLoggingEnabled(this.mIsDebugEnabled);
        }
    }

    @Override
    public void setPlayWhenReady(boolean bl) {
        this.mPlayer.setPlayWhenReady(bl);
    }

    public void setRendererBuilder(@Nullable RendererBuilder rendererBuilder) {
        this.mRendererBuilder = rendererBuilder;
        this.pushSurface(false);
    }

    @Override
    public void setSurface(@Nullable Surface surface) {
        this.mSurface = surface;
        this.pushSurface(false);
    }

    @Override
    public void stop() {
        this.resetRendererBuilderState();
        this.mPlayer.stop();
    }

    private final class InternalEventProxy
    extends VCRExoPlayerEventProxy {
        private InternalEventProxy() {
        }

        @Override
        public void onVideoSizeChanged(int n2, int n3, int n4, float f2) {
            Iterator iterator = VCRExoPlayer.this.mListeners.iterator();
            while (iterator.hasNext()) {
                ((Listener)iterator.next()).onVideoSizeChanged(n2, n3, n4, f2);
            }
            if (VCRExoPlayer.this.mIsDebugEnabled) {
                LogUtil.d(TAG, "videoSizeChanged [" + n2 + ", " + n3 + ", " + n4 + ", " + f2 + "]");
            }
        }
    }

    private final class InternalExoPlayerListener
    implements ExoPlayer.Listener {
        private InternalExoPlayerListener() {
        }

        @Override
        public void onPlayWhenReadyCommitted() {
        }

        @Override
        public void onPlayerError(ExoPlaybackException exoPlaybackException) {
            VCRExoPlayer.this.mRendererBuildingState = RendererBuildingState.IDLE;
            Iterator iterator = VCRExoPlayer.this.mListeners.iterator();
            while (iterator.hasNext()) {
                ((Listener)iterator.next()).onError(exoPlaybackException);
            }
        }

        @Override
        public void onPlayerStateChanged(boolean bl, int n2) {
            VCRExoPlayer.this.reportPlayerState();
        }
    }

    public static interface Listener {
        public void onError(Exception var1);

        public void onStateChanged(boolean var1, int var2);

        public void onVideoSizeChanged(int var1, int var2, int var3, float var4);
    }

    private static enum RendererBuildingState {
        IDLE,
        BUILDING,
        BUILT;
        

        private RendererBuildingState() {
        }
    }

}

