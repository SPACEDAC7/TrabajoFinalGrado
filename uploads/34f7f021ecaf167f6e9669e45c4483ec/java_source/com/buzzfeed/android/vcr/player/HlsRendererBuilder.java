/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.content.Context
 *  android.os.Handler
 *  android.os.Looper
 */
package com.buzzfeed.android.vcr.player;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import com.buzzfeed.android.vcr.player.FixedMediaCodecVideoTrackRenderer;
import com.buzzfeed.android.vcr.player.HLSFixedVariantTrackSelector;
import com.buzzfeed.android.vcr.player.HLSPeakBitrateTrackSelector;
import com.buzzfeed.android.vcr.player.RendererBuilder;
import com.buzzfeed.android.vcr.player.VCRExoPlayer;
import com.buzzfeed.android.vcr.player.VCRExoPlayerEventProxy;
import com.buzzfeed.android.vcr.util.DevicePlaybackInfo;
import com.google.android.exoplayer.DefaultLoadControl;
import com.google.android.exoplayer.LoadControl;
import com.google.android.exoplayer.MediaCodecAudioTrackRenderer;
import com.google.android.exoplayer.MediaCodecSelector;
import com.google.android.exoplayer.MediaCodecVideoTrackRenderer;
import com.google.android.exoplayer.SampleSource;
import com.google.android.exoplayer.TrackRenderer;
import com.google.android.exoplayer.audio.AudioCapabilities;
import com.google.android.exoplayer.drm.DrmSessionManager;
import com.google.android.exoplayer.hls.DefaultHlsTrackSelector;
import com.google.android.exoplayer.hls.HlsChunkSource;
import com.google.android.exoplayer.hls.HlsMasterPlaylist;
import com.google.android.exoplayer.hls.HlsPlaylist;
import com.google.android.exoplayer.hls.HlsPlaylistParser;
import com.google.android.exoplayer.hls.HlsSampleSource;
import com.google.android.exoplayer.hls.HlsTrackSelector;
import com.google.android.exoplayer.hls.PtsTimestampAdjusterProvider;
import com.google.android.exoplayer.hls.Variant;
import com.google.android.exoplayer.upstream.Allocator;
import com.google.android.exoplayer.upstream.BandwidthMeter;
import com.google.android.exoplayer.upstream.DataSource;
import com.google.android.exoplayer.upstream.DefaultAllocator;
import com.google.android.exoplayer.upstream.DefaultBandwidthMeter;
import com.google.android.exoplayer.upstream.DefaultUriDataSource;
import com.google.android.exoplayer.upstream.TransferListener;
import com.google.android.exoplayer.upstream.UriDataSource;
import com.google.android.exoplayer.upstream.UriLoadable;
import com.google.android.exoplayer.util.ManifestFetcher;
import java.io.IOException;
import java.util.List;

public class HlsRendererBuilder
implements RendererBuilder {
    private static final int AUDIO_BUFFER_SEGMENTS = 54;
    private static final int BUFFER_SEGMENT_SIZE = 65536;
    private static final int MAIN_BUFFER_SEGMENTS = 254;
    private final Context mContext;
    private AsyncRendererBuilder mCurrentAsyncBuilder;
    private final long mPeakBitrate;
    private final String mUrl;
    private final String mUserAgent;

    public HlsRendererBuilder(Context context, String string2, String string3, long l2) {
        this.mContext = context;
        this.mUserAgent = string2;
        this.mUrl = string3;
        this.mPeakBitrate = l2;
    }

    @Override
    public void buildRenderers(VCRExoPlayer vCRExoPlayer) {
        this.mCurrentAsyncBuilder = new AsyncRendererBuilder(this.mContext, this.mUserAgent, this.mUrl, vCRExoPlayer, this.mPeakBitrate);
        this.mCurrentAsyncBuilder.init();
    }

    @Override
    public void cancel() {
        if (this.mCurrentAsyncBuilder != null) {
            this.mCurrentAsyncBuilder.cancel();
            this.mCurrentAsyncBuilder = null;
        }
    }

    private static final class AsyncRendererBuilder
    implements ManifestFetcher.ManifestCallback<HlsPlaylist> {
        private final Context mContext;
        private boolean mIsCanceled;
        private final long mPeakBitrate;
        private final VCRExoPlayer mPlayer;
        private final ManifestFetcher<HlsPlaylist> mPlaylistFetcher;
        private final String mUserAgent;

        AsyncRendererBuilder(Context context, String string2, String string3, VCRExoPlayer object, long l2) {
            this.mContext = context;
            this.mUserAgent = string2;
            this.mPlayer = object;
            this.mPeakBitrate = l2;
            object = new HlsPlaylistParser();
            this.mPlaylistFetcher = new ManifestFetcher(string3, new DefaultUriDataSource(context, string2), object);
        }

        private HlsTrackSelector getPreferredVideoTrackSelector() {
            if (DevicePlaybackInfo.REQUIRES_ADAPTIVE_WORKAROUND) {
                return new HLSFixedVariantTrackSelector(this.mContext);
            }
            if (this.mPeakBitrate > 0) {
                return new HLSPeakBitrateTrackSelector(this.mContext, this.mPeakBitrate);
            }
            return DefaultHlsTrackSelector.newDefaultInstance(this.mContext);
        }

        void cancel() {
            this.mIsCanceled = true;
        }

        void init() {
            this.mPlaylistFetcher.singleLoad(this.mPlayer.getMainHandler().getLooper(), this);
        }

        /*
         * Enabled aggressive block sorting
         */
        @Override
        public void onSingleManifest(HlsPlaylist object) {
            void var4_11;
            if (this.mIsCanceled) {
                return;
            }
            Handler handler = this.mPlayer.getMainHandler();
            VCRExoPlayerEventProxy vCRExoPlayerEventProxy = this.mPlayer.getEventProxy();
            Object object2 = new DefaultBandwidthMeter();
            Object object3 = new DefaultLoadControl(new DefaultAllocator(65536));
            PtsTimestampAdjusterProvider ptsTimestampAdjusterProvider = new PtsTimestampAdjusterProvider();
            boolean bl = false;
            if (object instanceof HlsMasterPlaylist) {
                bl = !((HlsMasterPlaylist)object).audios.isEmpty();
            }
            boolean bl2 = DevicePlaybackInfo.REQUIRES_ADAPTIVE_WORKAROUND;
            HlsSampleSource hlsSampleSource = new HlsSampleSource(new HlsChunkSource(true, new DefaultUriDataSource(this.mContext, (TransferListener)object2, this.mUserAgent), (HlsPlaylist)object, this.getPreferredVideoTrackSelector(), (BandwidthMeter)object2, ptsTimestampAdjusterProvider), (LoadControl)object3, 16646144, handler, vCRExoPlayerEventProxy, 0);
            if (bl2) {
                FixedMediaCodecVideoTrackRenderer fixedMediaCodecVideoTrackRenderer = new FixedMediaCodecVideoTrackRenderer(this.mContext, hlsSampleSource, MediaCodecSelector.DEFAULT, 1, 5000, handler, vCRExoPlayerEventProxy, 50);
            } else {
                MediaCodecVideoTrackRenderer mediaCodecVideoTrackRenderer = new MediaCodecVideoTrackRenderer(this.mContext, hlsSampleSource, MediaCodecSelector.DEFAULT, 1, 5000, handler, vCRExoPlayerEventProxy, 50);
            }
            if (bl) {
                object = new HlsSampleSource(new HlsChunkSource(false, new DefaultUriDataSource(this.mContext, (TransferListener)object2, this.mUserAgent), (HlsPlaylist)object, DefaultHlsTrackSelector.newAudioInstance(), (BandwidthMeter)object2, ptsTimestampAdjusterProvider), (LoadControl)object3, 3538944, handler, vCRExoPlayerEventProxy, 1);
                object2 = MediaCodecSelector.DEFAULT;
                object3 = AudioCapabilities.getCapabilities(this.mContext);
                object = new MediaCodecAudioTrackRenderer(new SampleSource[]{hlsSampleSource, object}, (MediaCodecSelector)object2, null, true, handler, (MediaCodecAudioTrackRenderer.EventListener)vCRExoPlayerEventProxy, (AudioCapabilities)object3, 3);
            } else {
                object = new MediaCodecAudioTrackRenderer(hlsSampleSource, MediaCodecSelector.DEFAULT, null, true, handler, (MediaCodecAudioTrackRenderer.EventListener)vCRExoPlayerEventProxy, AudioCapabilities.getCapabilities(this.mContext), 3);
            }
            this.mPlayer.onRenderers(new TrackRenderer[]{var4_11, object});
        }

        @Override
        public void onSingleManifestError(IOException iOException) {
            if (this.mIsCanceled) {
                return;
            }
            this.mPlayer.onRenderersError(iOException);
        }
    }

}

