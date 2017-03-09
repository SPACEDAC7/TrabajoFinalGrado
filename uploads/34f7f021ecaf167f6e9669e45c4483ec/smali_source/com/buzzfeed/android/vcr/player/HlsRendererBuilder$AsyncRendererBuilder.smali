.class final Lcom/buzzfeed/android/vcr/player/HlsRendererBuilder$AsyncRendererBuilder;
.super Ljava/lang/Object;
.source "HlsRendererBuilder.java"

# interfaces
.implements Lcom/google/android/exoplayer/util/ManifestFetcher$ManifestCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/buzzfeed/android/vcr/player/HlsRendererBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "AsyncRendererBuilder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/exoplayer/util/ManifestFetcher$ManifestCallback",
        "<",
        "Lcom/google/android/exoplayer/hls/HlsPlaylist;",
        ">;"
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mIsCanceled:Z

.field private final mPeakBitrate:J

.field private final mPlayer:Lcom/buzzfeed/android/vcr/player/VCRExoPlayer;

.field private final mPlaylistFetcher:Lcom/google/android/exoplayer/util/ManifestFetcher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/exoplayer/util/ManifestFetcher",
            "<",
            "Lcom/google/android/exoplayer/hls/HlsPlaylist;",
            ">;"
        }
    .end annotation
.end field

.field private final mUserAgent:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/buzzfeed/android/vcr/player/VCRExoPlayer;J)V
    .registers 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "userAgent"    # Ljava/lang/String;
    .param p3, "url"    # Ljava/lang/String;
    .param p4, "player"    # Lcom/buzzfeed/android/vcr/player/VCRExoPlayer;
    .param p5, "peakBitrate"    # J

    .prologue
    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    iput-object p1, p0, Lcom/buzzfeed/android/vcr/player/HlsRendererBuilder$AsyncRendererBuilder;->mContext:Landroid/content/Context;

    .line 88
    iput-object p2, p0, Lcom/buzzfeed/android/vcr/player/HlsRendererBuilder$AsyncRendererBuilder;->mUserAgent:Ljava/lang/String;

    .line 89
    iput-object p4, p0, Lcom/buzzfeed/android/vcr/player/HlsRendererBuilder$AsyncRendererBuilder;->mPlayer:Lcom/buzzfeed/android/vcr/player/VCRExoPlayer;

    .line 90
    iput-wide p5, p0, Lcom/buzzfeed/android/vcr/player/HlsRendererBuilder$AsyncRendererBuilder;->mPeakBitrate:J

    .line 92
    new-instance v0, Lcom/google/android/exoplayer/hls/HlsPlaylistParser;

    invoke-direct {v0}, Lcom/google/android/exoplayer/hls/HlsPlaylistParser;-><init>()V

    .line 93
    .local v0, "parser":Lcom/google/android/exoplayer/hls/HlsPlaylistParser;
    new-instance v1, Lcom/google/android/exoplayer/util/ManifestFetcher;

    new-instance v2, Lcom/google/android/exoplayer/upstream/DefaultUriDataSource;

    invoke-direct {v2, p1, p2}, Lcom/google/android/exoplayer/upstream/DefaultUriDataSource;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-direct {v1, p3, v2, v0}, Lcom/google/android/exoplayer/util/ManifestFetcher;-><init>(Ljava/lang/String;Lcom/google/android/exoplayer/upstream/UriDataSource;Lcom/google/android/exoplayer/upstream/UriLoadable$Parser;)V

    iput-object v1, p0, Lcom/buzzfeed/android/vcr/player/HlsRendererBuilder$AsyncRendererBuilder;->mPlaylistFetcher:Lcom/google/android/exoplayer/util/ManifestFetcher;

    .line 95
    return-void
.end method

.method private getPreferredVideoTrackSelector()Lcom/google/android/exoplayer/hls/HlsTrackSelector;
    .registers 5

    .prologue
    .line 186
    sget-boolean v0, Lcom/buzzfeed/android/vcr/util/DevicePlaybackInfo;->REQUIRES_ADAPTIVE_WORKAROUND:Z

    if-eqz v0, :cond_c

    .line 187
    new-instance v0, Lcom/buzzfeed/android/vcr/player/HLSFixedVariantTrackSelector;

    iget-object v1, p0, Lcom/buzzfeed/android/vcr/player/HlsRendererBuilder$AsyncRendererBuilder;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/buzzfeed/android/vcr/player/HLSFixedVariantTrackSelector;-><init>(Landroid/content/Context;)V

    .line 191
    :goto_b
    return-object v0

    .line 188
    :cond_c
    iget-wide v0, p0, Lcom/buzzfeed/android/vcr/player/HlsRendererBuilder$AsyncRendererBuilder;->mPeakBitrate:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1e

    .line 189
    new-instance v0, Lcom/buzzfeed/android/vcr/player/HLSPeakBitrateTrackSelector;

    iget-object v1, p0, Lcom/buzzfeed/android/vcr/player/HlsRendererBuilder$AsyncRendererBuilder;->mContext:Landroid/content/Context;

    iget-wide v2, p0, Lcom/buzzfeed/android/vcr/player/HlsRendererBuilder$AsyncRendererBuilder;->mPeakBitrate:J

    invoke-direct {v0, v1, v2, v3}, Lcom/buzzfeed/android/vcr/player/HLSPeakBitrateTrackSelector;-><init>(Landroid/content/Context;J)V

    goto :goto_b

    .line 191
    :cond_1e
    iget-object v0, p0, Lcom/buzzfeed/android/vcr/player/HlsRendererBuilder$AsyncRendererBuilder;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/exoplayer/hls/DefaultHlsTrackSelector;->newDefaultInstance(Landroid/content/Context;)Lcom/google/android/exoplayer/hls/DefaultHlsTrackSelector;

    move-result-object v0

    goto :goto_b
.end method


# virtual methods
.method cancel()V
    .registers 2

    .prologue
    .line 102
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/buzzfeed/android/vcr/player/HlsRendererBuilder$AsyncRendererBuilder;->mIsCanceled:Z

    .line 103
    return-void
.end method

.method init()V
    .registers 3

    .prologue
    .line 98
    iget-object v0, p0, Lcom/buzzfeed/android/vcr/player/HlsRendererBuilder$AsyncRendererBuilder;->mPlaylistFetcher:Lcom/google/android/exoplayer/util/ManifestFetcher;

    iget-object v1, p0, Lcom/buzzfeed/android/vcr/player/HlsRendererBuilder$AsyncRendererBuilder;->mPlayer:Lcom/buzzfeed/android/vcr/player/VCRExoPlayer;

    invoke-virtual {v1}, Lcom/buzzfeed/android/vcr/player/VCRExoPlayer;->getMainHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lcom/google/android/exoplayer/util/ManifestFetcher;->singleLoad(Landroid/os/Looper;Lcom/google/android/exoplayer/util/ManifestFetcher$ManifestCallback;)V

    .line 99
    return-void
.end method

.method public onSingleManifest(Lcom/google/android/exoplayer/hls/HlsPlaylist;)V
    .registers 35
    .param p1, "manifest"    # Lcom/google/android/exoplayer/hls/HlsPlaylist;

    .prologue
    .line 116
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/buzzfeed/android/vcr/player/HlsRendererBuilder$AsyncRendererBuilder;->mIsCanceled:Z

    if-eqz v3, :cond_7

    .line 183
    :goto_6
    return-void

    .line 120
    :cond_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/buzzfeed/android/vcr/player/HlsRendererBuilder$AsyncRendererBuilder;->mPlayer:Lcom/buzzfeed/android/vcr/player/VCRExoPlayer;

    invoke-virtual {v3}, Lcom/buzzfeed/android/vcr/player/VCRExoPlayer;->getMainHandler()Landroid/os/Handler;

    move-result-object v13

    .line 121
    .local v13, "eventHandler":Landroid/os/Handler;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/buzzfeed/android/vcr/player/HlsRendererBuilder$AsyncRendererBuilder;->mPlayer:Lcom/buzzfeed/android/vcr/player/VCRExoPlayer;

    invoke-virtual {v3}, Lcom/buzzfeed/android/vcr/player/VCRExoPlayer;->getEventProxy()Lcom/buzzfeed/android/vcr/player/VCRExoPlayerEventProxy;

    move-result-object v14

    .line 123
    .local v14, "eventProxy":Lcom/buzzfeed/android/vcr/player/VCRExoPlayerEventProxy;
    new-instance v7, Lcom/google/android/exoplayer/upstream/DefaultBandwidthMeter;

    invoke-direct {v7}, Lcom/google/android/exoplayer/upstream/DefaultBandwidthMeter;-><init>()V

    .line 124
    .local v7, "bandwidthMeter":Lcom/google/android/exoplayer/upstream/DefaultBandwidthMeter;
    new-instance v11, Lcom/google/android/exoplayer/DefaultLoadControl;

    new-instance v3, Lcom/google/android/exoplayer/upstream/DefaultAllocator;

    const/high16 v5, 0x10000

    invoke-direct {v3, v5}, Lcom/google/android/exoplayer/upstream/DefaultAllocator;-><init>(I)V

    invoke-direct {v11, v3}, Lcom/google/android/exoplayer/DefaultLoadControl;-><init>(Lcom/google/android/exoplayer/upstream/Allocator;)V

    .line 125
    .local v11, "loadControl":Lcom/google/android/exoplayer/LoadControl;
    new-instance v8, Lcom/google/android/exoplayer/hls/PtsTimestampAdjusterProvider;

    invoke-direct {v8}, Lcom/google/android/exoplayer/hls/PtsTimestampAdjusterProvider;-><init>()V

    .line 127
    .local v8, "timestampAdjusterProvider":Lcom/google/android/exoplayer/hls/PtsTimestampAdjusterProvider;
    const/16 v28, 0x0

    .line 128
    .local v28, "haveAudios":Z
    move-object/from16 v0, p1

    instance-of v3, v0, Lcom/google/android/exoplayer/hls/HlsMasterPlaylist;

    if-eqz v3, :cond_45

    move-object/from16 v29, p1

    .line 129
    check-cast v29, Lcom/google/android/exoplayer/hls/HlsMasterPlaylist;

    .line 130
    .local v29, "masterPlaylist":Lcom/google/android/exoplayer/hls/HlsMasterPlaylist;
    move-object/from16 v0, v29

    iget-object v3, v0, Lcom/google/android/exoplayer/hls/HlsMasterPlaylist;->audios:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_f3

    const/16 v28, 0x1

    .line 134
    .end local v29    # "masterPlaylist":Lcom/google/android/exoplayer/hls/HlsMasterPlaylist;
    :cond_45
    :goto_45
    sget-boolean v31, Lcom/buzzfeed/android/vcr/util/DevicePlaybackInfo;->REQUIRES_ADAPTIVE_WORKAROUND:Z

    .line 137
    .local v31, "shouldApplyWorkaround":Z
    new-instance v4, Lcom/google/android/exoplayer/upstream/DefaultUriDataSource;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/buzzfeed/android/vcr/player/HlsRendererBuilder$AsyncRendererBuilder;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/buzzfeed/android/vcr/player/HlsRendererBuilder$AsyncRendererBuilder;->mUserAgent:Ljava/lang/String;

    invoke-direct {v4, v3, v7, v5}, Lcom/google/android/exoplayer/upstream/DefaultUriDataSource;-><init>(Landroid/content/Context;Lcom/google/android/exoplayer/upstream/TransferListener;Ljava/lang/String;)V

    .line 140
    .local v4, "dataSource":Lcom/google/android/exoplayer/upstream/DataSource;
    invoke-direct/range {p0 .. p0}, Lcom/buzzfeed/android/vcr/player/HlsRendererBuilder$AsyncRendererBuilder;->getPreferredVideoTrackSelector()Lcom/google/android/exoplayer/hls/HlsTrackSelector;

    move-result-object v6

    .line 141
    .local v6, "selector":Lcom/google/android/exoplayer/hls/HlsTrackSelector;
    new-instance v2, Lcom/google/android/exoplayer/hls/HlsChunkSource;

    const/4 v3, 0x1

    move-object/from16 v5, p1

    invoke-direct/range {v2 .. v8}, Lcom/google/android/exoplayer/hls/HlsChunkSource;-><init>(ZLcom/google/android/exoplayer/upstream/DataSource;Lcom/google/android/exoplayer/hls/HlsPlaylist;Lcom/google/android/exoplayer/hls/HlsTrackSelector;Lcom/google/android/exoplayer/upstream/BandwidthMeter;Lcom/google/android/exoplayer/hls/PtsTimestampAdjusterProvider;)V

    .line 144
    .local v2, "chunkSource":Lcom/google/android/exoplayer/hls/HlsChunkSource;
    new-instance v9, Lcom/google/android/exoplayer/hls/HlsSampleSource;

    const/high16 v12, 0xfe0000

    const/4 v15, 0x0

    move-object v10, v2

    invoke-direct/range {v9 .. v15}, Lcom/google/android/exoplayer/hls/HlsSampleSource;-><init>(Lcom/google/android/exoplayer/hls/HlsChunkSource;Lcom/google/android/exoplayer/LoadControl;ILandroid/os/Handler;Lcom/google/android/exoplayer/hls/HlsSampleSource$EventListener;I)V

    .line 147
    .local v9, "sampleSource":Lcom/google/android/exoplayer/hls/HlsSampleSource;
    if-eqz v31, :cond_f7

    new-instance v15, Lcom/buzzfeed/android/vcr/player/FixedMediaCodecVideoTrackRenderer;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/buzzfeed/android/vcr/player/HlsRendererBuilder$AsyncRendererBuilder;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    sget-object v18, Lcom/google/android/exoplayer/MediaCodecSelector;->DEFAULT:Lcom/google/android/exoplayer/MediaCodecSelector;

    const/16 v19, 0x1

    const-wide/16 v20, 0x1388

    const/16 v24, 0x32

    move-object/from16 v17, v9

    move-object/from16 v22, v13

    move-object/from16 v23, v14

    invoke-direct/range {v15 .. v24}, Lcom/buzzfeed/android/vcr/player/FixedMediaCodecVideoTrackRenderer;-><init>(Landroid/content/Context;Lcom/google/android/exoplayer/SampleSource;Lcom/google/android/exoplayer/MediaCodecSelector;IJLandroid/os/Handler;Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer$EventListener;I)V

    move-object/from16 v32, v15

    .line 159
    .local v32, "videoRenderer":Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;
    :goto_86
    if-eqz v28, :cond_114

    .line 160
    new-instance v17, Lcom/google/android/exoplayer/upstream/DefaultUriDataSource;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/buzzfeed/android/vcr/player/HlsRendererBuilder$AsyncRendererBuilder;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/buzzfeed/android/vcr/player/HlsRendererBuilder$AsyncRendererBuilder;->mUserAgent:Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-direct {v0, v3, v7, v5}, Lcom/google/android/exoplayer/upstream/DefaultUriDataSource;-><init>(Landroid/content/Context;Lcom/google/android/exoplayer/upstream/TransferListener;Ljava/lang/String;)V

    .line 162
    .local v17, "audioDataSource":Lcom/google/android/exoplayer/upstream/DataSource;
    new-instance v15, Lcom/google/android/exoplayer/hls/HlsChunkSource;

    const/16 v16, 0x0

    .line 164
    invoke-static {}, Lcom/google/android/exoplayer/hls/DefaultHlsTrackSelector;->newAudioInstance()Lcom/google/android/exoplayer/hls/DefaultHlsTrackSelector;

    move-result-object v19

    move-object/from16 v18, p1

    move-object/from16 v20, v7

    move-object/from16 v21, v8

    invoke-direct/range {v15 .. v21}, Lcom/google/android/exoplayer/hls/HlsChunkSource;-><init>(ZLcom/google/android/exoplayer/upstream/DataSource;Lcom/google/android/exoplayer/hls/HlsPlaylist;Lcom/google/android/exoplayer/hls/HlsTrackSelector;Lcom/google/android/exoplayer/upstream/BandwidthMeter;Lcom/google/android/exoplayer/hls/PtsTimestampAdjusterProvider;)V

    .line 166
    .local v15, "audioChunkSource":Lcom/google/android/exoplayer/hls/HlsChunkSource;
    new-instance v18, Lcom/google/android/exoplayer/hls/HlsSampleSource;

    const/high16 v21, 0x360000

    const/16 v24, 0x1

    move-object/from16 v19, v15

    move-object/from16 v20, v11

    move-object/from16 v22, v13

    move-object/from16 v23, v14

    invoke-direct/range {v18 .. v24}, Lcom/google/android/exoplayer/hls/HlsSampleSource;-><init>(Lcom/google/android/exoplayer/hls/HlsChunkSource;Lcom/google/android/exoplayer/LoadControl;ILandroid/os/Handler;Lcom/google/android/exoplayer/hls/HlsSampleSource$EventListener;I)V

    .line 169
    .local v18, "audioSampleSource":Lcom/google/android/exoplayer/hls/HlsSampleSource;
    new-instance v19, Lcom/google/android/exoplayer/MediaCodecAudioTrackRenderer;

    const/4 v3, 0x2

    new-array v0, v3, [Lcom/google/android/exoplayer/SampleSource;

    move-object/from16 v20, v0

    const/4 v3, 0x0

    aput-object v9, v20, v3

    const/4 v3, 0x1

    aput-object v18, v20, v3

    sget-object v21, Lcom/google/android/exoplayer/MediaCodecSelector;->DEFAULT:Lcom/google/android/exoplayer/MediaCodecSelector;

    const/16 v22, 0x0

    const/16 v23, 0x1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/buzzfeed/android/vcr/player/HlsRendererBuilder$AsyncRendererBuilder;->mContext:Landroid/content/Context;

    .line 172
    invoke-static {v3}, Lcom/google/android/exoplayer/audio/AudioCapabilities;->getCapabilities(Landroid/content/Context;)Lcom/google/android/exoplayer/audio/AudioCapabilities;

    move-result-object v26

    const/16 v27, 0x3

    move-object/from16 v24, v13

    move-object/from16 v25, v14

    invoke-direct/range {v19 .. v27}, Lcom/google/android/exoplayer/MediaCodecAudioTrackRenderer;-><init>([Lcom/google/android/exoplayer/SampleSource;Lcom/google/android/exoplayer/MediaCodecSelector;Lcom/google/android/exoplayer/drm/DrmSessionManager;ZLandroid/os/Handler;Lcom/google/android/exoplayer/MediaCodecAudioTrackRenderer$EventListener;Lcom/google/android/exoplayer/audio/AudioCapabilities;I)V

    .line 179
    .end local v15    # "audioChunkSource":Lcom/google/android/exoplayer/hls/HlsChunkSource;
    .end local v17    # "audioDataSource":Lcom/google/android/exoplayer/upstream/DataSource;
    .end local v18    # "audioSampleSource":Lcom/google/android/exoplayer/hls/HlsSampleSource;
    .local v19, "audioRenderer":Lcom/google/android/exoplayer/MediaCodecAudioTrackRenderer;
    :goto_dd
    const/4 v3, 0x2

    new-array v0, v3, [Lcom/google/android/exoplayer/TrackRenderer;

    move-object/from16 v30, v0

    .line 180
    .local v30, "renderers":[Lcom/google/android/exoplayer/TrackRenderer;
    const/4 v3, 0x0

    aput-object v32, v30, v3

    .line 181
    const/4 v3, 0x1

    aput-object v19, v30, v3

    .line 182
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/buzzfeed/android/vcr/player/HlsRendererBuilder$AsyncRendererBuilder;->mPlayer:Lcom/buzzfeed/android/vcr/player/VCRExoPlayer;

    move-object/from16 v0, v30

    invoke-virtual {v3, v0}, Lcom/buzzfeed/android/vcr/player/VCRExoPlayer;->onRenderers([Lcom/google/android/exoplayer/TrackRenderer;)V

    goto/16 :goto_6

    .line 130
    .end local v2    # "chunkSource":Lcom/google/android/exoplayer/hls/HlsChunkSource;
    .end local v4    # "dataSource":Lcom/google/android/exoplayer/upstream/DataSource;
    .end local v6    # "selector":Lcom/google/android/exoplayer/hls/HlsTrackSelector;
    .end local v9    # "sampleSource":Lcom/google/android/exoplayer/hls/HlsSampleSource;
    .end local v19    # "audioRenderer":Lcom/google/android/exoplayer/MediaCodecAudioTrackRenderer;
    .end local v30    # "renderers":[Lcom/google/android/exoplayer/TrackRenderer;
    .end local v31    # "shouldApplyWorkaround":Z
    .end local v32    # "videoRenderer":Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;
    .restart local v29    # "masterPlaylist":Lcom/google/android/exoplayer/hls/HlsMasterPlaylist;
    :cond_f3
    const/16 v28, 0x0

    goto/16 :goto_45

    .line 147
    .end local v29    # "masterPlaylist":Lcom/google/android/exoplayer/hls/HlsMasterPlaylist;
    .restart local v2    # "chunkSource":Lcom/google/android/exoplayer/hls/HlsChunkSource;
    .restart local v4    # "dataSource":Lcom/google/android/exoplayer/upstream/DataSource;
    .restart local v6    # "selector":Lcom/google/android/exoplayer/hls/HlsTrackSelector;
    .restart local v9    # "sampleSource":Lcom/google/android/exoplayer/hls/HlsSampleSource;
    .restart local v31    # "shouldApplyWorkaround":Z
    :cond_f7
    new-instance v15, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/buzzfeed/android/vcr/player/HlsRendererBuilder$AsyncRendererBuilder;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    sget-object v18, Lcom/google/android/exoplayer/MediaCodecSelector;->DEFAULT:Lcom/google/android/exoplayer/MediaCodecSelector;

    const/16 v19, 0x1

    const-wide/16 v20, 0x1388

    const/16 v24, 0x32

    move-object/from16 v17, v9

    move-object/from16 v22, v13

    move-object/from16 v23, v14

    invoke-direct/range {v15 .. v24}, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;-><init>(Landroid/content/Context;Lcom/google/android/exoplayer/SampleSource;Lcom/google/android/exoplayer/MediaCodecSelector;IJLandroid/os/Handler;Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer$EventListener;I)V

    move-object/from16 v32, v15

    goto/16 :goto_86

    .line 174
    .restart local v32    # "videoRenderer":Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;
    :cond_114
    new-instance v19, Lcom/google/android/exoplayer/MediaCodecAudioTrackRenderer;

    sget-object v21, Lcom/google/android/exoplayer/MediaCodecSelector;->DEFAULT:Lcom/google/android/exoplayer/MediaCodecSelector;

    const/16 v22, 0x0

    const/16 v23, 0x1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/buzzfeed/android/vcr/player/HlsRendererBuilder$AsyncRendererBuilder;->mContext:Landroid/content/Context;

    .line 176
    invoke-static {v3}, Lcom/google/android/exoplayer/audio/AudioCapabilities;->getCapabilities(Landroid/content/Context;)Lcom/google/android/exoplayer/audio/AudioCapabilities;

    move-result-object v26

    const/16 v27, 0x3

    move-object/from16 v20, v9

    move-object/from16 v24, v13

    move-object/from16 v25, v14

    invoke-direct/range {v19 .. v27}, Lcom/google/android/exoplayer/MediaCodecAudioTrackRenderer;-><init>(Lcom/google/android/exoplayer/SampleSource;Lcom/google/android/exoplayer/MediaCodecSelector;Lcom/google/android/exoplayer/drm/DrmSessionManager;ZLandroid/os/Handler;Lcom/google/android/exoplayer/MediaCodecAudioTrackRenderer$EventListener;Lcom/google/android/exoplayer/audio/AudioCapabilities;I)V

    .restart local v19    # "audioRenderer":Lcom/google/android/exoplayer/MediaCodecAudioTrackRenderer;
    goto :goto_dd
.end method

.method public bridge synthetic onSingleManifest(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 75
    check-cast p1, Lcom/google/android/exoplayer/hls/HlsPlaylist;

    invoke-virtual {p0, p1}, Lcom/buzzfeed/android/vcr/player/HlsRendererBuilder$AsyncRendererBuilder;->onSingleManifest(Lcom/google/android/exoplayer/hls/HlsPlaylist;)V

    return-void
.end method

.method public onSingleManifestError(Ljava/io/IOException;)V
    .registers 3
    .param p1, "e"    # Ljava/io/IOException;

    .prologue
    .line 107
    iget-boolean v0, p0, Lcom/buzzfeed/android/vcr/player/HlsRendererBuilder$AsyncRendererBuilder;->mIsCanceled:Z

    if-eqz v0, :cond_5

    .line 112
    :goto_4
    return-void

    .line 111
    :cond_5
    iget-object v0, p0, Lcom/buzzfeed/android/vcr/player/HlsRendererBuilder$AsyncRendererBuilder;->mPlayer:Lcom/buzzfeed/android/vcr/player/VCRExoPlayer;

    invoke-virtual {v0, p1}, Lcom/buzzfeed/android/vcr/player/VCRExoPlayer;->onRenderersError(Ljava/lang/Exception;)V

    goto :goto_4
.end method
