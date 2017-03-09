/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.content.Context
 *  android.net.Uri
 *  android.os.Handler
 */
package com.buzzfeed.android.vcr.player;

import android.content.Context;
import android.net.Uri;
import android.os.Handler;
import com.buzzfeed.android.vcr.player.RendererBuilder;
import com.buzzfeed.android.vcr.player.VCRExoPlayer;
import com.buzzfeed.android.vcr.player.VCRExoPlayerEventProxy;
import com.google.android.exoplayer.MediaCodecAudioTrackRenderer;
import com.google.android.exoplayer.MediaCodecSelector;
import com.google.android.exoplayer.MediaCodecVideoTrackRenderer;
import com.google.android.exoplayer.SampleSource;
import com.google.android.exoplayer.TrackRenderer;
import com.google.android.exoplayer.audio.AudioCapabilities;
import com.google.android.exoplayer.drm.DrmSessionManager;
import com.google.android.exoplayer.extractor.Extractor;
import com.google.android.exoplayer.extractor.ExtractorSampleSource;
import com.google.android.exoplayer.upstream.Allocator;
import com.google.android.exoplayer.upstream.BandwidthMeter;
import com.google.android.exoplayer.upstream.DataSource;
import com.google.android.exoplayer.upstream.DefaultAllocator;
import com.google.android.exoplayer.upstream.DefaultBandwidthMeter;
import com.google.android.exoplayer.upstream.DefaultUriDataSource;
import com.google.android.exoplayer.upstream.TransferListener;

public class ExtractorRendererBuilder
implements RendererBuilder {
    private static final int BUFFER_SEGMENT_COUNT = 256;
    private static final int BUFFER_SEGMENT_SIZE = 65536;
    private final Context mContext;
    private final Uri mUri;
    private final String mUserAgent;

    public ExtractorRendererBuilder(Context context, String string2, Uri uri) {
        this.mContext = context;
        this.mUserAgent = string2;
        this.mUri = uri;
    }

    @Override
    public void buildRenderers(VCRExoPlayer vCRExoPlayer) {
        Handler handler = vCRExoPlayer.getMainHandler();
        VCRExoPlayerEventProxy vCRExoPlayerEventProxy = vCRExoPlayer.getEventProxy();
        Object object = new DefaultAllocator(65536);
        Object object2 = new DefaultBandwidthMeter(handler, null);
        object2 = new DefaultUriDataSource(this.mContext, (TransferListener)object2, this.mUserAgent);
        object = new ExtractorSampleSource(this.mUri, (DataSource)object2, (Allocator)object, 16777216, handler, vCRExoPlayerEventProxy, 0, new Extractor[0]);
        vCRExoPlayer.onRenderers(new TrackRenderer[]{new MediaCodecVideoTrackRenderer(this.mContext, (SampleSource)object, MediaCodecSelector.DEFAULT, 1, 5000, handler, vCRExoPlayerEventProxy, 50), new MediaCodecAudioTrackRenderer((SampleSource)object, MediaCodecSelector.DEFAULT, null, true, handler, (MediaCodecAudioTrackRenderer.EventListener)vCRExoPlayerEventProxy, AudioCapabilities.getCapabilities(this.mContext), 3)});
    }

    @Override
    public void cancel() {
    }
}

