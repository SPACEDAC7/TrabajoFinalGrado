.class public Lcom/buzzfeed/android/vcr/player/ExtractorRendererBuilder;
.super Ljava/lang/Object;
.source "ExtractorRendererBuilder.java"

# interfaces
.implements Lcom/buzzfeed/android/vcr/player/RendererBuilder;


# static fields
.field private static final BUFFER_SEGMENT_COUNT:I = 0x100

.field private static final BUFFER_SEGMENT_SIZE:I = 0x10000


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mUri:Landroid/net/Uri;

.field private final mUserAgent:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "userAgent"    # Ljava/lang/String;
    .param p3, "uri"    # Landroid/net/Uri;

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/buzzfeed/android/vcr/player/ExtractorRendererBuilder;->mContext:Landroid/content/Context;

    .line 34
    iput-object p2, p0, Lcom/buzzfeed/android/vcr/player/ExtractorRendererBuilder;->mUserAgent:Ljava/lang/String;

    .line 35
    iput-object p3, p0, Lcom/buzzfeed/android/vcr/player/ExtractorRendererBuilder;->mUri:Landroid/net/Uri;

    .line 36
    return-void
.end method


# virtual methods
.method public buildRenderers(Lcom/buzzfeed/android/vcr/player/VCRExoPlayer;)V
    .registers 23
    .param p1, "player"    # Lcom/buzzfeed/android/vcr/player/VCRExoPlayer;

    .prologue
    .line 40
    invoke-virtual/range {p1 .. p1}, Lcom/buzzfeed/android/vcr/player/VCRExoPlayer;->getMainHandler()Landroid/os/Handler;

    move-result-object v7

    .line 41
    .local v7, "eventHandler":Landroid/os/Handler;
    invoke-virtual/range {p1 .. p1}, Lcom/buzzfeed/android/vcr/player/VCRExoPlayer;->getEventProxy()Lcom/buzzfeed/android/vcr/player/VCRExoPlayerEventProxy;

    move-result-object v8

    .line 43
    .local v8, "eventProxy":Lcom/buzzfeed/android/vcr/player/VCRExoPlayerEventProxy;
    new-instance v5, Lcom/google/android/exoplayer/upstream/DefaultAllocator;

    const/high16 v3, 0x10000

    invoke-direct {v5, v3}, Lcom/google/android/exoplayer/upstream/DefaultAllocator;-><init>(I)V

    .line 46
    .local v5, "allocator":Lcom/google/android/exoplayer/upstream/Allocator;
    new-instance v19, Lcom/google/android/exoplayer/upstream/DefaultBandwidthMeter;

    const/4 v3, 0x0

    move-object/from16 v0, v19

    invoke-direct {v0, v7, v3}, Lcom/google/android/exoplayer/upstream/DefaultBandwidthMeter;-><init>(Landroid/os/Handler;Lcom/google/android/exoplayer/upstream/BandwidthMeter$EventListener;)V

    .line 47
    .local v19, "bandwidthMeter":Lcom/google/android/exoplayer/upstream/DefaultBandwidthMeter;
    new-instance v4, Lcom/google/android/exoplayer/upstream/DefaultUriDataSource;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/buzzfeed/android/vcr/player/ExtractorRendererBuilder;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/buzzfeed/android/vcr/player/ExtractorRendererBuilder;->mUserAgent:Ljava/lang/String;

    move-object/from16 v0, v19

    invoke-direct {v4, v3, v0, v6}, Lcom/google/android/exoplayer/upstream/DefaultUriDataSource;-><init>(Landroid/content/Context;Lcom/google/android/exoplayer/upstream/TransferListener;Ljava/lang/String;)V

    .line 48
    .local v4, "dataSource":Lcom/google/android/exoplayer/upstream/DataSource;
    new-instance v2, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/buzzfeed/android/vcr/player/ExtractorRendererBuilder;->mUri:Landroid/net/Uri;

    const/high16 v6, 0x1000000

    const/4 v9, 0x0

    const/4 v11, 0x0

    new-array v10, v11, [Lcom/google/android/exoplayer/extractor/Extractor;

    invoke-direct/range {v2 .. v10}, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;-><init>(Landroid/net/Uri;Lcom/google/android/exoplayer/upstream/DataSource;Lcom/google/android/exoplayer/upstream/Allocator;ILandroid/os/Handler;Lcom/google/android/exoplayer/extractor/ExtractorSampleSource$EventListener;I[Lcom/google/android/exoplayer/extractor/Extractor;)V

    .line 50
    .local v2, "sampleSource":Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;
    new-instance v9, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/buzzfeed/android/vcr/player/ExtractorRendererBuilder;->mContext:Landroid/content/Context;

    sget-object v12, Lcom/google/android/exoplayer/MediaCodecSelector;->DEFAULT:Lcom/google/android/exoplayer/MediaCodecSelector;

    const/4 v13, 0x1

    const-wide/16 v14, 0x1388

    const/16 v18, 0x32

    move-object v11, v2

    move-object/from16 v16, v7

    move-object/from16 v17, v8

    invoke-direct/range {v9 .. v18}, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;-><init>(Landroid/content/Context;Lcom/google/android/exoplayer/SampleSource;Lcom/google/android/exoplayer/MediaCodecSelector;IJLandroid/os/Handler;Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer$EventListener;I)V

    .line 54
    .local v9, "videoRenderer":Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;
    new-instance v10, Lcom/google/android/exoplayer/MediaCodecAudioTrackRenderer;

    sget-object v12, Lcom/google/android/exoplayer/MediaCodecSelector;->DEFAULT:Lcom/google/android/exoplayer/MediaCodecSelector;

    const/4 v13, 0x0

    const/4 v14, 0x1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/buzzfeed/android/vcr/player/ExtractorRendererBuilder;->mContext:Landroid/content/Context;

    .line 56
    invoke-static {v3}, Lcom/google/android/exoplayer/audio/AudioCapabilities;->getCapabilities(Landroid/content/Context;)Lcom/google/android/exoplayer/audio/AudioCapabilities;

    move-result-object v17

    const/16 v18, 0x3

    move-object v11, v2

    move-object v15, v7

    move-object/from16 v16, v8

    invoke-direct/range {v10 .. v18}, Lcom/google/android/exoplayer/MediaCodecAudioTrackRenderer;-><init>(Lcom/google/android/exoplayer/SampleSource;Lcom/google/android/exoplayer/MediaCodecSelector;Lcom/google/android/exoplayer/drm/DrmSessionManager;ZLandroid/os/Handler;Lcom/google/android/exoplayer/MediaCodecAudioTrackRenderer$EventListener;Lcom/google/android/exoplayer/audio/AudioCapabilities;I)V

    .line 59
    .local v10, "audioRenderer":Lcom/google/android/exoplayer/MediaCodecAudioTrackRenderer;
    const/4 v3, 0x2

    new-array v0, v3, [Lcom/google/android/exoplayer/TrackRenderer;

    move-object/from16 v20, v0

    .line 60
    .local v20, "renderers":[Lcom/google/android/exoplayer/TrackRenderer;
    const/4 v3, 0x0

    aput-object v9, v20, v3

    .line 61
    const/4 v3, 0x1

    aput-object v10, v20, v3

    .line 62
    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/buzzfeed/android/vcr/player/VCRExoPlayer;->onRenderers([Lcom/google/android/exoplayer/TrackRenderer;)V

    .line 63
    return-void
.end method

.method public cancel()V
    .registers 1

    .prologue
    .line 68
    return-void
.end method
