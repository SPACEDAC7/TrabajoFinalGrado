.class public Lcom/google/android/exoplayer/hls/HlsChunkSource;
.super Ljava/lang/Object;
.source "HlsChunkSource.java"

# interfaces
.implements Lcom/google/android/exoplayer/hls/HlsTrackSelector$Output;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer/hls/HlsChunkSource$EncryptionKeyChunk;,
        Lcom/google/android/exoplayer/hls/HlsChunkSource$MediaPlaylistChunk;,
        Lcom/google/android/exoplayer/hls/HlsChunkSource$ExposedTrack;,
        Lcom/google/android/exoplayer/hls/HlsChunkSource$EventListener;
    }
.end annotation


# static fields
.field private static final AAC_FILE_EXTENSION:Ljava/lang/String; = ".aac"

.field private static final BANDWIDTH_FRACTION:F = 0.8f

.field public static final DEFAULT_MAX_BUFFER_TO_SWITCH_DOWN_MS:J = 0x4e20L

.field public static final DEFAULT_MIN_BUFFER_TO_SWITCH_UP_MS:J = 0x1388L

.field public static final DEFAULT_PLAYLIST_BLACKLIST_MS:J = 0xea60L

.field private static final LIVE_VARIANT_SWITCH_SAFETY_EXTRA_SECS:D = 2.0

.field private static final MP3_FILE_EXTENSION:Ljava/lang/String; = ".mp3"

.field private static final TAG:Ljava/lang/String; = "HlsChunkSource"

.field private static final VTT_FILE_EXTENSION:Ljava/lang/String; = ".vtt"

.field private static final WEBVTT_FILE_EXTENSION:Ljava/lang/String; = ".webvtt"


# instance fields
.field private final bandwidthMeter:Lcom/google/android/exoplayer/upstream/BandwidthMeter;

.field private final baseUri:Ljava/lang/String;

.field private final dataSource:Lcom/google/android/exoplayer/upstream/DataSource;

.field private durationUs:J

.field private encryptionIv:[B

.field private encryptionIvString:Ljava/lang/String;

.field private encryptionKey:[B

.field private encryptionKeyUri:Landroid/net/Uri;

.field private final eventHandler:Landroid/os/Handler;

.field private final eventListener:Lcom/google/android/exoplayer/hls/HlsChunkSource$EventListener;

.field private fatalError:Ljava/io/IOException;

.field private final isMaster:Z

.field private live:Z

.field private final masterPlaylist:Lcom/google/android/exoplayer/hls/HlsMasterPlaylist;

.field private final maxBufferDurationToSwitchDownUs:J

.field private final minBufferDurationToSwitchUpUs:J

.field private final playlistParser:Lcom/google/android/exoplayer/hls/HlsPlaylistParser;

.field private prepareCalled:Z

.field private scratchSpace:[B

.field private selectedTrackIndex:I

.field private selectedVariantIndex:I

.field private final timestampAdjusterProvider:Lcom/google/android/exoplayer/hls/PtsTimestampAdjusterProvider;

.field private final trackSelector:Lcom/google/android/exoplayer/hls/HlsTrackSelector;

.field private final tracks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/exoplayer/hls/HlsChunkSource$ExposedTrack;",
            ">;"
        }
    .end annotation
.end field

.field private variantBlacklistTimes:[J

.field private variantLastPlaylistLoadTimesMs:[J

.field private variantPlaylists:[Lcom/google/android/exoplayer/hls/HlsMediaPlaylist;

.field private variants:[Lcom/google/android/exoplayer/hls/Variant;


# direct methods
.method public constructor <init>(ZLcom/google/android/exoplayer/upstream/DataSource;Lcom/google/android/exoplayer/hls/HlsPlaylist;Lcom/google/android/exoplayer/hls/HlsTrackSelector;Lcom/google/android/exoplayer/upstream/BandwidthMeter;Lcom/google/android/exoplayer/hls/PtsTimestampAdjusterProvider;)V
    .registers 21
    .param p1, "isMaster"    # Z
    .param p2, "dataSource"    # Lcom/google/android/exoplayer/upstream/DataSource;
    .param p3, "playlist"    # Lcom/google/android/exoplayer/hls/HlsPlaylist;
    .param p4, "trackSelector"    # Lcom/google/android/exoplayer/hls/HlsTrackSelector;
    .param p5, "bandwidthMeter"    # Lcom/google/android/exoplayer/upstream/BandwidthMeter;
    .param p6, "timestampAdjusterProvider"    # Lcom/google/android/exoplayer/hls/PtsTimestampAdjusterProvider;

    .prologue
    .line 157
    const-wide/16 v8, 0x1388

    const-wide/16 v10, 0x4e20

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v1, p0

    move v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    invoke-direct/range {v1 .. v13}, Lcom/google/android/exoplayer/hls/HlsChunkSource;-><init>(ZLcom/google/android/exoplayer/upstream/DataSource;Lcom/google/android/exoplayer/hls/HlsPlaylist;Lcom/google/android/exoplayer/hls/HlsTrackSelector;Lcom/google/android/exoplayer/upstream/BandwidthMeter;Lcom/google/android/exoplayer/hls/PtsTimestampAdjusterProvider;JJLandroid/os/Handler;Lcom/google/android/exoplayer/hls/HlsChunkSource$EventListener;)V

    .line 160
    return-void
.end method

.method public constructor <init>(ZLcom/google/android/exoplayer/upstream/DataSource;Lcom/google/android/exoplayer/hls/HlsPlaylist;Lcom/google/android/exoplayer/hls/HlsTrackSelector;Lcom/google/android/exoplayer/upstream/BandwidthMeter;Lcom/google/android/exoplayer/hls/PtsTimestampAdjusterProvider;JJ)V
    .registers 26
    .param p1, "isMaster"    # Z
    .param p2, "dataSource"    # Lcom/google/android/exoplayer/upstream/DataSource;
    .param p3, "playlist"    # Lcom/google/android/exoplayer/hls/HlsPlaylist;
    .param p4, "trackSelector"    # Lcom/google/android/exoplayer/hls/HlsTrackSelector;
    .param p5, "bandwidthMeter"    # Lcom/google/android/exoplayer/upstream/BandwidthMeter;
    .param p6, "timestampAdjusterProvider"    # Lcom/google/android/exoplayer/hls/PtsTimestampAdjusterProvider;
    .param p7, "minBufferDurationToSwitchUpMs"    # J
    .param p9, "maxBufferDurationToSwitchDownMs"    # J

    .prologue
    .line 182
    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v1, p0

    move/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-wide/from16 v8, p7

    move-wide/from16 v10, p9

    invoke-direct/range {v1 .. v13}, Lcom/google/android/exoplayer/hls/HlsChunkSource;-><init>(ZLcom/google/android/exoplayer/upstream/DataSource;Lcom/google/android/exoplayer/hls/HlsPlaylist;Lcom/google/android/exoplayer/hls/HlsTrackSelector;Lcom/google/android/exoplayer/upstream/BandwidthMeter;Lcom/google/android/exoplayer/hls/PtsTimestampAdjusterProvider;JJLandroid/os/Handler;Lcom/google/android/exoplayer/hls/HlsChunkSource$EventListener;)V

    .line 185
    return-void
.end method

.method public constructor <init>(ZLcom/google/android/exoplayer/upstream/DataSource;Lcom/google/android/exoplayer/hls/HlsPlaylist;Lcom/google/android/exoplayer/hls/HlsTrackSelector;Lcom/google/android/exoplayer/upstream/BandwidthMeter;Lcom/google/android/exoplayer/hls/PtsTimestampAdjusterProvider;JJLandroid/os/Handler;Lcom/google/android/exoplayer/hls/HlsChunkSource$EventListener;)V
    .registers 26
    .param p1, "isMaster"    # Z
    .param p2, "dataSource"    # Lcom/google/android/exoplayer/upstream/DataSource;
    .param p3, "playlist"    # Lcom/google/android/exoplayer/hls/HlsPlaylist;
    .param p4, "trackSelector"    # Lcom/google/android/exoplayer/hls/HlsTrackSelector;
    .param p5, "bandwidthMeter"    # Lcom/google/android/exoplayer/upstream/BandwidthMeter;
    .param p6, "timestampAdjusterProvider"    # Lcom/google/android/exoplayer/hls/PtsTimestampAdjusterProvider;
    .param p7, "minBufferDurationToSwitchUpMs"    # J
    .param p9, "maxBufferDurationToSwitchDownMs"    # J
    .param p11, "eventHandler"    # Landroid/os/Handler;
    .param p12, "eventListener"    # Lcom/google/android/exoplayer/hls/HlsChunkSource$EventListener;

    .prologue
    .line 210
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 211
    iput-boolean p1, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->isMaster:Z

    .line 212
    iput-object p2, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->dataSource:Lcom/google/android/exoplayer/upstream/DataSource;

    .line 213
    move-object/from16 v0, p4

    iput-object v0, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->trackSelector:Lcom/google/android/exoplayer/hls/HlsTrackSelector;

    .line 214
    move-object/from16 v0, p5

    iput-object v0, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->bandwidthMeter:Lcom/google/android/exoplayer/upstream/BandwidthMeter;

    .line 215
    move-object/from16 v0, p6

    iput-object v0, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->timestampAdjusterProvider:Lcom/google/android/exoplayer/hls/PtsTimestampAdjusterProvider;

    .line 216
    move-object/from16 v0, p12

    iput-object v0, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->eventListener:Lcom/google/android/exoplayer/hls/HlsChunkSource$EventListener;

    .line 217
    move-object/from16 v0, p11

    iput-object v0, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->eventHandler:Landroid/os/Handler;

    .line 218
    const-wide/16 v6, 0x3e8

    mul-long v6, v6, p7

    iput-wide v6, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->minBufferDurationToSwitchUpUs:J

    .line 219
    const-wide/16 v6, 0x3e8

    mul-long v6, v6, p9

    iput-wide v6, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->maxBufferDurationToSwitchDownUs:J

    .line 220
    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/google/android/exoplayer/hls/HlsPlaylist;->baseUri:Ljava/lang/String;

    iput-object v3, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->baseUri:Ljava/lang/String;

    .line 221
    new-instance v3, Lcom/google/android/exoplayer/hls/HlsPlaylistParser;

    invoke-direct {v3}, Lcom/google/android/exoplayer/hls/HlsPlaylistParser;-><init>()V

    iput-object v3, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->playlistParser:Lcom/google/android/exoplayer/hls/HlsPlaylistParser;

    .line 222
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->tracks:Ljava/util/ArrayList;

    .line 224
    move-object/from16 v0, p3

    iget v3, v0, Lcom/google/android/exoplayer/hls/HlsPlaylist;->type:I

    if-nez v3, :cond_48

    .line 225
    check-cast p3, Lcom/google/android/exoplayer/hls/HlsMasterPlaylist;

    .end local p3    # "playlist":Lcom/google/android/exoplayer/hls/HlsPlaylist;
    move-object/from16 v0, p3

    iput-object v0, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->masterPlaylist:Lcom/google/android/exoplayer/hls/HlsMasterPlaylist;

    .line 234
    :goto_47
    return-void

    .line 227
    .restart local p3    # "playlist":Lcom/google/android/exoplayer/hls/HlsPlaylist;
    :cond_48
    new-instance v2, Lcom/google/android/exoplayer/chunk/Format;

    const-string v3, "0"

    const-string v4, "application/x-mpegURL"

    const/4 v5, -0x1

    const/4 v6, -0x1

    const/high16 v7, -0x40800000

    const/4 v8, -0x1

    const/4 v9, -0x1

    const/4 v10, -0x1

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-direct/range {v2 .. v12}, Lcom/google/android/exoplayer/chunk/Format;-><init>(Ljava/lang/String;Ljava/lang/String;IIFIIILjava/lang/String;Ljava/lang/String;)V

    .line 229
    .local v2, "format":Lcom/google/android/exoplayer/chunk/Format;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 230
    .local v5, "variants":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer/hls/Variant;>;"
    new-instance v3, Lcom/google/android/exoplayer/hls/Variant;

    iget-object v4, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->baseUri:Ljava/lang/String;

    invoke-direct {v3, v4, v2}, Lcom/google/android/exoplayer/hls/Variant;-><init>(Ljava/lang/String;Lcom/google/android/exoplayer/chunk/Format;)V

    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 231
    new-instance v3, Lcom/google/android/exoplayer/hls/HlsMasterPlaylist;

    iget-object v4, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->baseUri:Ljava/lang/String;

    .line 232
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v6

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct/range {v3 .. v9}, Lcom/google/android/exoplayer/hls/HlsMasterPlaylist;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->masterPlaylist:Lcom/google/android/exoplayer/hls/HlsMasterPlaylist;

    goto :goto_47
.end method

.method static synthetic access$400(Lcom/google/android/exoplayer/hls/HlsChunkSource;)Lcom/google/android/exoplayer/hls/HlsChunkSource$EventListener;
    .registers 2
    .param p0, "x0"    # Lcom/google/android/exoplayer/hls/HlsChunkSource;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->eventListener:Lcom/google/android/exoplayer/hls/HlsChunkSource$EventListener;

    return-object v0
.end method

.method private allVariantsBlacklisted()Z
    .registers 9

    .prologue
    const/4 v2, 0x0

    .line 833
    iget-object v4, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->variantBlacklistTimes:[J

    array-length v5, v4

    move v3, v2

    :goto_5
    if-ge v3, v5, :cond_13

    aget-wide v0, v4, v3

    .line 834
    .local v0, "variantBlacklistTime":J
    const-wide/16 v6, 0x0

    cmp-long v6, v0, v6

    if-nez v6, :cond_10

    .line 838
    .end local v0    # "variantBlacklistTime":J
    :goto_f
    return v2

    .line 833
    .restart local v0    # "variantBlacklistTime":J
    :cond_10
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 838
    .end local v0    # "variantBlacklistTime":J
    :cond_13
    const/4 v2, 0x1

    goto :goto_f
.end method

.method private clearEncryptionData()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 819
    iput-object v0, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->encryptionKeyUri:Landroid/net/Uri;

    .line 820
    iput-object v0, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->encryptionKey:[B

    .line 821
    iput-object v0, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->encryptionIvString:Ljava/lang/String;

    .line 822
    iput-object v0, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->encryptionIv:[B

    .line 823
    return-void
.end method

.method private clearStaleBlacklistedVariants()V
    .registers 11

    .prologue
    const-wide/16 v8, 0x0

    .line 842
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 843
    .local v0, "currentTime":J
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_7
    iget-object v3, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->variantBlacklistTimes:[J

    array-length v3, v3

    if-ge v2, v3, :cond_28

    .line 844
    iget-object v3, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->variantBlacklistTimes:[J

    aget-wide v4, v3, v2

    cmp-long v3, v4, v8

    if-eqz v3, :cond_25

    iget-object v3, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->variantBlacklistTimes:[J

    aget-wide v4, v3, v2

    sub-long v4, v0, v4

    const-wide/32 v6, 0xea60

    cmp-long v3, v4, v6

    if-lez v3, :cond_25

    .line 846
    iget-object v3, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->variantBlacklistTimes:[J

    aput-wide v8, v3, v2

    .line 843
    :cond_25
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 849
    :cond_28
    return-void
.end method

.method private getLiveNextChunkSequenceNumber(III)I
    .registers 16
    .param p1, "previousChunkIndex"    # I
    .param p2, "oldVariantIndex"    # I
    .param p3, "newVariantIndex"    # I

    .prologue
    .line 692
    if-ne p2, p3, :cond_5

    .line 693
    add-int/lit8 v7, p1, 0x1

    .line 720
    :goto_4
    return v7

    .line 695
    :cond_5
    iget-object v7, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->variantPlaylists:[Lcom/google/android/exoplayer/hls/HlsMediaPlaylist;

    aget-object v6, v7, p2

    .line 696
    .local v6, "oldMediaPlaylist":Lcom/google/android/exoplayer/hls/HlsMediaPlaylist;
    iget-object v7, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->variantPlaylists:[Lcom/google/android/exoplayer/hls/HlsMediaPlaylist;

    aget-object v3, v7, p3

    .line 697
    .local v3, "newMediaPlaylist":Lcom/google/android/exoplayer/hls/HlsMediaPlaylist;
    const-wide/16 v4, 0x0

    .line 698
    .local v4, "offsetToLiveInstantSecs":D
    iget v7, v6, Lcom/google/android/exoplayer/hls/HlsMediaPlaylist;->mediaSequence:I

    sub-int v2, p1, v7

    .line 699
    .local v2, "i":I
    :goto_13
    iget-object v7, v6, Lcom/google/android/exoplayer/hls/HlsMediaPlaylist;->segments:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v2, v7, :cond_29

    .line 700
    iget-object v7, v6, Lcom/google/android/exoplayer/hls/HlsMediaPlaylist;->segments:Ljava/util/List;

    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/exoplayer/hls/HlsMediaPlaylist$Segment;

    iget-wide v8, v7, Lcom/google/android/exoplayer/hls/HlsMediaPlaylist$Segment;->durationSecs:D

    add-double/2addr v4, v8

    .line 699
    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    .line 702
    :cond_29
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 703
    .local v0, "currentTimeMs":J
    iget-object v7, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->variantLastPlaylistLoadTimesMs:[J

    aget-wide v8, v7, p2

    sub-long v8, v0, v8

    long-to-double v8, v8

    const-wide v10, 0x408f400000000000L

    div-double/2addr v8, v10

    add-double/2addr v4, v8

    .line 705
    const-wide/high16 v8, 0x4000000000000000L

    add-double/2addr v4, v8

    .line 706
    iget-object v7, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->variantLastPlaylistLoadTimesMs:[J

    aget-wide v8, v7, p3

    sub-long v8, v0, v8

    long-to-double v8, v8

    const-wide v10, 0x408f400000000000L

    div-double/2addr v8, v10

    sub-double/2addr v4, v8

    .line 708
    const-wide/16 v8, 0x0

    cmpg-double v7, v4, v8

    if-gez v7, :cond_5e

    .line 711
    iget v7, v3, Lcom/google/android/exoplayer/hls/HlsMediaPlaylist;->mediaSequence:I

    iget-object v8, v3, Lcom/google/android/exoplayer/hls/HlsMediaPlaylist;->segments:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    add-int/2addr v7, v8

    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 713
    :cond_5e
    iget-object v7, v3, Lcom/google/android/exoplayer/hls/HlsMediaPlaylist;->segments:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    add-int/lit8 v2, v7, -0x1

    :goto_66
    if-ltz v2, :cond_80

    .line 714
    iget-object v7, v3, Lcom/google/android/exoplayer/hls/HlsMediaPlaylist;->segments:Ljava/util/List;

    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/exoplayer/hls/HlsMediaPlaylist$Segment;

    iget-wide v8, v7, Lcom/google/android/exoplayer/hls/HlsMediaPlaylist$Segment;->durationSecs:D

    sub-double/2addr v4, v8

    .line 715
    const-wide/16 v8, 0x0

    cmpg-double v7, v4, v8

    if-gez v7, :cond_7d

    .line 716
    iget v7, v3, Lcom/google/android/exoplayer/hls/HlsMediaPlaylist;->mediaSequence:I

    add-int/2addr v7, v2

    goto :goto_4

    .line 713
    :cond_7d
    add-int/lit8 v2, v2, -0x1

    goto :goto_66

    .line 720
    :cond_80
    iget v7, v3, Lcom/google/android/exoplayer/hls/HlsMediaPlaylist;->mediaSequence:I

    add-int/lit8 v7, v7, -0x1

    goto :goto_4
.end method

.method private getLiveStartChunkSequenceNumber(I)I
    .registers 6
    .param p1, "variantIndex"    # I

    .prologue
    .line 676
    iget-object v2, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->variantPlaylists:[Lcom/google/android/exoplayer/hls/HlsMediaPlaylist;

    aget-object v1, v2, p1

    .line 677
    .local v1, "mediaPlaylist":Lcom/google/android/exoplayer/hls/HlsMediaPlaylist;
    iget-object v2, v1, Lcom/google/android/exoplayer/hls/HlsMediaPlaylist;->segments:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x3

    if-le v2, v3, :cond_19

    iget-object v2, v1, Lcom/google/android/exoplayer/hls/HlsMediaPlaylist;->segments:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x3

    .line 678
    .local v0, "chunkIndex":I
    :goto_15
    iget v2, v1, Lcom/google/android/exoplayer/hls/HlsMediaPlaylist;->mediaSequence:I

    add-int/2addr v2, v0

    return v2

    .line 677
    .end local v0    # "chunkIndex":I
    :cond_19
    const/4 v0, 0x0

    goto :goto_15
.end method

.method private getNextVariantIndex(Lcom/google/android/exoplayer/hls/TsChunk;J)I
    .registers 16
    .param p1, "previousTsChunk"    # Lcom/google/android/exoplayer/hls/TsChunk;
    .param p2, "playbackPositionUs"    # J

    .prologue
    const-wide/16 v10, 0x0

    .line 724
    invoke-direct {p0}, Lcom/google/android/exoplayer/hls/HlsChunkSource;->clearStaleBlacklistedVariants()V

    .line 725
    iget-object v5, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->bandwidthMeter:Lcom/google/android/exoplayer/upstream/BandwidthMeter;

    invoke-interface {v5}, Lcom/google/android/exoplayer/upstream/BandwidthMeter;->getBitrateEstimate()J

    move-result-wide v0

    .line 726
    .local v0, "bitrateEstimate":J
    iget-object v5, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->variantBlacklistTimes:[J

    iget v6, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->selectedVariantIndex:I

    aget-wide v6, v5, v6

    cmp-long v5, v6, v10

    if-eqz v5, :cond_1a

    .line 728
    invoke-direct {p0, v0, v1}, Lcom/google/android/exoplayer/hls/HlsChunkSource;->getVariantIndexForBandwidth(J)I

    move-result v4

    .line 754
    :cond_19
    :goto_19
    return v4

    .line 730
    :cond_1a
    if-nez p1, :cond_1f

    .line 732
    iget v4, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->selectedVariantIndex:I

    goto :goto_19

    .line 734
    :cond_1f
    const-wide/16 v6, -0x1

    cmp-long v5, v0, v6

    if-nez v5, :cond_28

    .line 736
    iget v4, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->selectedVariantIndex:I

    goto :goto_19

    .line 738
    :cond_28
    invoke-direct {p0, v0, v1}, Lcom/google/android/exoplayer/hls/HlsChunkSource;->getVariantIndexForBandwidth(J)I

    move-result v4

    .line 739
    .local v4, "idealIndex":I
    iget v5, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->selectedVariantIndex:I

    if-ne v4, v5, :cond_33

    .line 741
    iget v4, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->selectedVariantIndex:I

    goto :goto_19

    .line 745
    :cond_33
    invoke-virtual {p1}, Lcom/google/android/exoplayer/hls/TsChunk;->getAdjustedEndTimeUs()J

    move-result-wide v6

    invoke-virtual {p1}, Lcom/google/android/exoplayer/hls/TsChunk;->getDurationUs()J

    move-result-wide v8

    sub-long/2addr v6, v8

    sub-long v2, v6, p2

    .line 747
    .local v2, "bufferedUs":J
    iget-object v5, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->variantBlacklistTimes:[J

    iget v6, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->selectedVariantIndex:I

    aget-wide v6, v5, v6

    cmp-long v5, v6, v10

    if-nez v5, :cond_19

    iget v5, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->selectedVariantIndex:I

    if-le v4, v5, :cond_52

    iget-wide v6, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->maxBufferDurationToSwitchDownUs:J

    cmp-long v5, v2, v6

    if-ltz v5, :cond_19

    :cond_52
    iget v5, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->selectedVariantIndex:I

    if-ge v4, v5, :cond_5c

    iget-wide v6, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->minBufferDurationToSwitchUpUs:J

    cmp-long v5, v2, v6

    if-gtz v5, :cond_19

    .line 754
    :cond_5c
    iget v4, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->selectedVariantIndex:I

    goto :goto_19
.end method

.method private getVariantIndex(Lcom/google/android/exoplayer/chunk/Format;)I
    .registers 6
    .param p1, "format"    # Lcom/google/android/exoplayer/chunk/Format;

    .prologue
    .line 852
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->variants:[Lcom/google/android/exoplayer/hls/Variant;

    array-length v1, v1

    if-ge v0, v1, :cond_16

    .line 853
    iget-object v1, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->variants:[Lcom/google/android/exoplayer/hls/Variant;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/google/android/exoplayer/hls/Variant;->format:Lcom/google/android/exoplayer/chunk/Format;

    invoke-virtual {v1, p1}, Lcom/google/android/exoplayer/chunk/Format;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 854
    return v0

    .line 852
    :cond_13
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 858
    :cond_16
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid format: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private getVariantIndexForBandwidth(J)I
    .registers 12
    .param p1, "bitrateEstimate"    # J

    .prologue
    .line 758
    const-wide/16 v4, -0x1

    cmp-long v3, p1, v4

    if-nez v3, :cond_8

    .line 760
    const-wide/16 p1, 0x0

    .line 762
    :cond_8
    long-to-float v3, p1

    const v4, 0x3f4ccccd

    mul-float/2addr v3, v4

    float-to-int v0, v3

    .line 763
    .local v0, "effectiveBitrate":I
    const/4 v2, -0x1

    .line 764
    .local v2, "lowestQualityEnabledVariantIndex":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_10
    iget-object v3, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->variants:[Lcom/google/android/exoplayer/hls/Variant;

    array-length v3, v3

    if-ge v1, v3, :cond_2e

    .line 765
    iget-object v3, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->variantBlacklistTimes:[J

    aget-wide v4, v3, v1

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-nez v3, :cond_2b

    .line 766
    iget-object v3, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->variants:[Lcom/google/android/exoplayer/hls/Variant;

    aget-object v3, v3, v1

    iget-object v3, v3, Lcom/google/android/exoplayer/hls/Variant;->format:Lcom/google/android/exoplayer/chunk/Format;

    iget v3, v3, Lcom/google/android/exoplayer/chunk/Format;->bitrate:I

    if-gt v3, v0, :cond_2a

    .line 774
    .end local v1    # "i":I
    :goto_29
    return v1

    .line 769
    .restart local v1    # "i":I
    :cond_2a
    move v2, v1

    .line 764
    :cond_2b
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    .line 773
    :cond_2e
    const/4 v3, -0x1

    if-eq v2, v3, :cond_37

    const/4 v3, 0x1

    :goto_32
    invoke-static {v3}, Lcom/google/android/exoplayer/util/Assertions;->checkState(Z)V

    move v1, v2

    .line 774
    goto :goto_29

    .line 773
    :cond_37
    const/4 v3, 0x0

    goto :goto_32
.end method

.method private newEncryptionKeyChunk(Landroid/net/Uri;Ljava/lang/String;I)Lcom/google/android/exoplayer/hls/HlsChunkSource$EncryptionKeyChunk;
    .registers 12
    .param p1, "keyUri"    # Landroid/net/Uri;
    .param p2, "iv"    # Ljava/lang/String;
    .param p3, "variantIndex"    # I

    .prologue
    .line 794
    new-instance v0, Lcom/google/android/exoplayer/upstream/DataSpec;

    const-wide/16 v2, 0x0

    const-wide/16 v4, -0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v1, p1

    invoke-direct/range {v0 .. v7}, Lcom/google/android/exoplayer/upstream/DataSpec;-><init>(Landroid/net/Uri;JJLjava/lang/String;I)V

    .line 795
    .local v0, "dataSpec":Lcom/google/android/exoplayer/upstream/DataSpec;
    new-instance v1, Lcom/google/android/exoplayer/hls/HlsChunkSource$EncryptionKeyChunk;

    iget-object v2, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->dataSource:Lcom/google/android/exoplayer/upstream/DataSource;

    iget-object v4, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->scratchSpace:[B

    move-object v3, v0

    move-object v5, p2

    move v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/google/android/exoplayer/hls/HlsChunkSource$EncryptionKeyChunk;-><init>(Lcom/google/android/exoplayer/upstream/DataSource;Lcom/google/android/exoplayer/upstream/DataSpec;[BLjava/lang/String;I)V

    return-object v1
.end method

.method private newMediaPlaylistChunk(I)Lcom/google/android/exoplayer/hls/HlsChunkSource$MediaPlaylistChunk;
    .registers 11
    .param p1, "variantIndex"    # I

    .prologue
    .line 786
    iget-object v2, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->baseUri:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->variants:[Lcom/google/android/exoplayer/hls/Variant;

    aget-object v3, v3, p1

    iget-object v3, v3, Lcom/google/android/exoplayer/hls/Variant;->url:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/android/exoplayer/util/UriUtil;->resolveToUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 787
    .local v1, "mediaPlaylistUri":Landroid/net/Uri;
    new-instance v0, Lcom/google/android/exoplayer/upstream/DataSpec;

    const-wide/16 v2, 0x0

    const-wide/16 v4, -0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-direct/range {v0 .. v7}, Lcom/google/android/exoplayer/upstream/DataSpec;-><init>(Landroid/net/Uri;JJLjava/lang/String;I)V

    .line 789
    .local v0, "dataSpec":Lcom/google/android/exoplayer/upstream/DataSpec;
    new-instance v2, Lcom/google/android/exoplayer/hls/HlsChunkSource$MediaPlaylistChunk;

    iget-object v3, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->dataSource:Lcom/google/android/exoplayer/upstream/DataSource;

    iget-object v5, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->scratchSpace:[B

    iget-object v6, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->playlistParser:Lcom/google/android/exoplayer/hls/HlsPlaylistParser;

    .line 790
    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v8

    move-object v4, v0

    move v7, p1

    invoke-direct/range {v2 .. v8}, Lcom/google/android/exoplayer/hls/HlsChunkSource$MediaPlaylistChunk;-><init>(Lcom/google/android/exoplayer/upstream/DataSource;Lcom/google/android/exoplayer/upstream/DataSpec;[BLcom/google/android/exoplayer/hls/HlsPlaylistParser;ILjava/lang/String;)V

    .line 789
    return-object v2
.end method

.method private setEncryptionData(Landroid/net/Uri;Ljava/lang/String;[B)V
    .registers 11
    .param p1, "keyUri"    # Landroid/net/Uri;
    .param p2, "iv"    # Ljava/lang/String;
    .param p3, "secretKey"    # [B

    .prologue
    const/16 v6, 0x10

    .line 800
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "0x"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3a

    .line 801
    const/4 v4, 0x2

    invoke-virtual {p2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 806
    .local v3, "trimmedIv":Ljava/lang/String;
    :goto_17
    new-instance v4, Ljava/math/BigInteger;

    invoke-direct {v4, v3, v6}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v4}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v0

    .line 807
    .local v0, "ivData":[B
    new-array v1, v6, [B

    .line 808
    .local v1, "ivDataWithPadding":[B
    array-length v4, v0

    if-le v4, v6, :cond_3c

    array-length v4, v0

    add-int/lit8 v2, v4, -0x10

    .line 809
    .local v2, "offset":I
    :goto_28
    array-length v4, v1

    array-length v5, v0

    sub-int/2addr v4, v5

    add-int/2addr v4, v2

    array-length v5, v0

    sub-int/2addr v5, v2

    invoke-static {v0, v2, v1, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 812
    iput-object p1, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->encryptionKeyUri:Landroid/net/Uri;

    .line 813
    iput-object p3, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->encryptionKey:[B

    .line 814
    iput-object p2, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->encryptionIvString:Ljava/lang/String;

    .line 815
    iput-object v1, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->encryptionIv:[B

    .line 816
    return-void

    .line 803
    .end local v0    # "ivData":[B
    .end local v1    # "ivDataWithPadding":[B
    .end local v2    # "offset":I
    .end local v3    # "trimmedIv":Ljava/lang/String;
    :cond_3a
    move-object v3, p2

    .restart local v3    # "trimmedIv":Ljava/lang/String;
    goto :goto_17

    .line 808
    .restart local v0    # "ivData":[B
    .restart local v1    # "ivDataWithPadding":[B
    :cond_3c
    const/4 v2, 0x0

    goto :goto_28
.end method

.method private setMediaPlaylist(ILcom/google/android/exoplayer/hls/HlsMediaPlaylist;)V
    .registers 7
    .param p1, "variantIndex"    # I
    .param p2, "mediaPlaylist"    # Lcom/google/android/exoplayer/hls/HlsMediaPlaylist;

    .prologue
    .line 826
    iget-object v0, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->variantLastPlaylistLoadTimesMs:[J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    aput-wide v2, v0, p1

    .line 827
    iget-object v0, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->variantPlaylists:[Lcom/google/android/exoplayer/hls/HlsMediaPlaylist;

    aput-object p2, v0, p1

    .line 828
    iget-boolean v0, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->live:Z

    iget-boolean v1, p2, Lcom/google/android/exoplayer/hls/HlsMediaPlaylist;->live:Z

    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->live:Z

    .line 829
    iget-boolean v0, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->live:Z

    if-eqz v0, :cond_1c

    const-wide/16 v0, -0x1

    :goto_19
    iput-wide v0, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->durationUs:J

    .line 830
    return-void

    .line 829
    :cond_1c
    iget-wide v0, p2, Lcom/google/android/exoplayer/hls/HlsMediaPlaylist;->durationUs:J

    goto :goto_19
.end method

.method private shouldRerequestLiveMediaPlaylist(I)Z
    .registers 10
    .param p1, "nextVariantIndex"    # I

    .prologue
    .line 779
    iget-object v1, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->variantPlaylists:[Lcom/google/android/exoplayer/hls/HlsMediaPlaylist;

    aget-object v0, v1, p1

    .line 781
    .local v0, "mediaPlaylist":Lcom/google/android/exoplayer/hls/HlsMediaPlaylist;
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget-object v1, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->variantLastPlaylistLoadTimesMs:[J

    aget-wide v6, v1, p1

    sub-long v2, v4, v6

    .line 782
    .local v2, "timeSinceLastMediaPlaylistLoadMs":J
    iget v1, v0, Lcom/google/android/exoplayer/hls/HlsMediaPlaylist;->targetDurationSecs:I

    mul-int/lit16 v1, v1, 0x3e8

    div-int/lit8 v1, v1, 0x2

    int-to-long v4, v1

    cmp-long v1, v2, v4

    if-ltz v1, :cond_1b

    const/4 v1, 0x1

    :goto_1a
    return v1

    :cond_1b
    const/4 v1, 0x0

    goto :goto_1a
.end method


# virtual methods
.method public adaptiveTrack(Lcom/google/android/exoplayer/hls/HlsMasterPlaylist;[Lcom/google/android/exoplayer/hls/Variant;)V
    .registers 10
    .param p1, "playlist"    # Lcom/google/android/exoplayer/hls/HlsMasterPlaylist;
    .param p2, "variants"    # [Lcom/google/android/exoplayer/hls/Variant;

    .prologue
    .line 626
    new-instance v5, Lcom/google/android/exoplayer/hls/HlsChunkSource$2;

    invoke-direct {v5, p0}, Lcom/google/android/exoplayer/hls/HlsChunkSource$2;-><init>(Lcom/google/android/exoplayer/hls/HlsChunkSource;)V

    invoke-static {p2, v5}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 635
    iget-object v5, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->bandwidthMeter:Lcom/google/android/exoplayer/upstream/BandwidthMeter;

    invoke-virtual {p0, p1, p2, v5}, Lcom/google/android/exoplayer/hls/HlsChunkSource;->computeDefaultVariantIndex(Lcom/google/android/exoplayer/hls/HlsMasterPlaylist;[Lcom/google/android/exoplayer/hls/Variant;Lcom/google/android/exoplayer/upstream/BandwidthMeter;)I

    move-result v0

    .line 636
    .local v0, "defaultVariantIndex":I
    const/4 v3, -0x1

    .line 637
    .local v3, "maxWidth":I
    const/4 v2, -0x1

    .line 639
    .local v2, "maxHeight":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_11
    array-length v5, p2

    if-ge v1, v5, :cond_27

    .line 640
    aget-object v5, p2, v1

    iget-object v4, v5, Lcom/google/android/exoplayer/hls/Variant;->format:Lcom/google/android/exoplayer/chunk/Format;

    .line 641
    .local v4, "variantFormat":Lcom/google/android/exoplayer/chunk/Format;
    iget v5, v4, Lcom/google/android/exoplayer/chunk/Format;->width:I

    invoke-static {v5, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 642
    iget v5, v4, Lcom/google/android/exoplayer/chunk/Format;->height:I

    invoke-static {v5, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 639
    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    .line 646
    .end local v4    # "variantFormat":Lcom/google/android/exoplayer/chunk/Format;
    :cond_27
    if-lez v3, :cond_36

    .line 647
    :goto_29
    if-lez v2, :cond_39

    .line 648
    :goto_2b
    iget-object v5, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->tracks:Ljava/util/ArrayList;

    new-instance v6, Lcom/google/android/exoplayer/hls/HlsChunkSource$ExposedTrack;

    invoke-direct {v6, p2, v0, v3, v2}, Lcom/google/android/exoplayer/hls/HlsChunkSource$ExposedTrack;-><init>([Lcom/google/android/exoplayer/hls/Variant;III)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 649
    return-void

    .line 646
    :cond_36
    const/16 v3, 0x780

    goto :goto_29

    .line 647
    :cond_39
    const/16 v2, 0x438

    goto :goto_2b
.end method

.method protected computeDefaultVariantIndex(Lcom/google/android/exoplayer/hls/HlsMasterPlaylist;[Lcom/google/android/exoplayer/hls/Variant;Lcom/google/android/exoplayer/upstream/BandwidthMeter;)I
    .registers 10
    .param p1, "playlist"    # Lcom/google/android/exoplayer/hls/HlsMasterPlaylist;
    .param p2, "variants"    # [Lcom/google/android/exoplayer/hls/Variant;
    .param p3, "bandwidthMeter"    # Lcom/google/android/exoplayer/upstream/BandwidthMeter;

    .prologue
    .line 658
    const/4 v0, 0x0

    .line 659
    .local v0, "defaultVariantIndex":I
    const v2, 0x7fffffff

    .line 661
    .local v2, "minOriginalVariantIndex":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    array-length v4, p2

    if-ge v1, v4, :cond_17

    .line 662
    iget-object v4, p1, Lcom/google/android/exoplayer/hls/HlsMasterPlaylist;->variants:Ljava/util/List;

    aget-object v5, p2, v1

    invoke-interface {v4, v5}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v3

    .line 663
    .local v3, "originalVariantIndex":I
    if-ge v3, v2, :cond_14

    .line 664
    move v2, v3

    .line 665
    move v0, v1

    .line 661
    :cond_14
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 669
    .end local v3    # "originalVariantIndex":I
    :cond_17
    return v0
.end method

.method public fixedTrack(Lcom/google/android/exoplayer/hls/HlsMasterPlaylist;Lcom/google/android/exoplayer/hls/Variant;)V
    .registers 5
    .param p1, "playlist"    # Lcom/google/android/exoplayer/hls/HlsMasterPlaylist;
    .param p2, "variant"    # Lcom/google/android/exoplayer/hls/Variant;

    .prologue
    .line 653
    iget-object v0, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->tracks:Ljava/util/ArrayList;

    new-instance v1, Lcom/google/android/exoplayer/hls/HlsChunkSource$ExposedTrack;

    invoke-direct {v1, p2}, Lcom/google/android/exoplayer/hls/HlsChunkSource$ExposedTrack;-><init>(Lcom/google/android/exoplayer/hls/Variant;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 654
    return-void
.end method

.method public getChunkOperation(Lcom/google/android/exoplayer/hls/TsChunk;JLcom/google/android/exoplayer/chunk/ChunkOperationHolder;)V
    .registers 43
    .param p1, "previousTsChunk"    # Lcom/google/android/exoplayer/hls/TsChunk;
    .param p2, "playbackPositionUs"    # J
    .param p4, "out"    # Lcom/google/android/exoplayer/chunk/ChunkOperationHolder;

    .prologue
    .line 392
    if-nez p1, :cond_26

    const/16 v33, -0x1

    .line 394
    .local v33, "previousChunkVariantIndex":I
    :goto_4
    invoke-direct/range {p0 .. p3}, Lcom/google/android/exoplayer/hls/HlsChunkSource;->getNextVariantIndex(Lcom/google/android/exoplayer/hls/TsChunk;J)I

    move-result v32

    .line 395
    .local v32, "nextVariantIndex":I
    if-eqz p1, :cond_31

    move/from16 v0, v33

    move/from16 v1, v32

    if-eq v0, v1, :cond_31

    const/4 v11, 0x1

    .line 398
    .local v11, "switchingVariant":Z
    :goto_11
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->variantPlaylists:[Lcom/google/android/exoplayer/hls/HlsMediaPlaylist;

    aget-object v31, v4, v32

    .line 399
    .local v31, "mediaPlaylist":Lcom/google/android/exoplayer/hls/HlsMediaPlaylist;
    if-nez v31, :cond_33

    .line 401
    move-object/from16 v0, p0

    move/from16 v1, v32

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer/hls/HlsChunkSource;->newMediaPlaylistChunk(I)Lcom/google/android/exoplayer/hls/HlsChunkSource$MediaPlaylistChunk;

    move-result-object v4

    move-object/from16 v0, p4

    iput-object v4, v0, Lcom/google/android/exoplayer/chunk/ChunkOperationHolder;->chunk:Lcom/google/android/exoplayer/chunk/Chunk;

    .line 541
    :cond_25
    :goto_25
    return-void

    .line 392
    .end local v11    # "switchingVariant":Z
    .end local v31    # "mediaPlaylist":Lcom/google/android/exoplayer/hls/HlsMediaPlaylist;
    .end local v32    # "nextVariantIndex":I
    .end local v33    # "previousChunkVariantIndex":I
    :cond_26
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/google/android/exoplayer/hls/TsChunk;->format:Lcom/google/android/exoplayer/chunk/Format;

    .line 393
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/google/android/exoplayer/hls/HlsChunkSource;->getVariantIndex(Lcom/google/android/exoplayer/chunk/Format;)I

    move-result v33

    goto :goto_4

    .line 395
    .restart local v32    # "nextVariantIndex":I
    .restart local v33    # "previousChunkVariantIndex":I
    :cond_31
    const/4 v11, 0x0

    goto :goto_11

    .line 405
    .restart local v11    # "switchingVariant":Z
    .restart local v31    # "mediaPlaylist":Lcom/google/android/exoplayer/hls/HlsMediaPlaylist;
    :cond_33
    move/from16 v0, v32

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/exoplayer/hls/HlsChunkSource;->selectedVariantIndex:I

    .line 407
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->live:Z

    if-eqz v4, :cond_8b

    .line 408
    if-nez p1, :cond_69

    .line 409
    move-object/from16 v0, p0

    iget v4, v0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->selectedVariantIndex:I

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/google/android/exoplayer/hls/HlsChunkSource;->getLiveStartChunkSequenceNumber(I)I

    move-result v22

    .line 431
    .local v22, "chunkMediaSequence":I
    :cond_4b
    :goto_4b
    move-object/from16 v0, v31

    iget v4, v0, Lcom/google/android/exoplayer/hls/HlsMediaPlaylist;->mediaSequence:I

    sub-int v27, v22, v4

    .line 432
    .local v27, "chunkIndex":I
    move-object/from16 v0, v31

    iget-object v4, v0, Lcom/google/android/exoplayer/hls/HlsMediaPlaylist;->segments:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    move/from16 v0, v27

    if-lt v0, v4, :cond_de

    .line 433
    move-object/from16 v0, v31

    iget-boolean v4, v0, Lcom/google/android/exoplayer/hls/HlsMediaPlaylist;->live:Z

    if-nez v4, :cond_c2

    .line 434
    const/4 v4, 0x1

    move-object/from16 v0, p4

    iput-boolean v4, v0, Lcom/google/android/exoplayer/chunk/ChunkOperationHolder;->endOfStream:Z

    goto :goto_25

    .line 411
    .end local v22    # "chunkMediaSequence":I
    .end local v27    # "chunkIndex":I
    :cond_69
    move-object/from16 v0, p1

    iget v4, v0, Lcom/google/android/exoplayer/hls/TsChunk;->chunkIndex:I

    move-object/from16 v0, p0

    iget v12, v0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->selectedVariantIndex:I

    move-object/from16 v0, p0

    move/from16 v1, v33

    invoke-direct {v0, v4, v1, v12}, Lcom/google/android/exoplayer/hls/HlsChunkSource;->getLiveNextChunkSequenceNumber(III)I

    move-result v22

    .line 413
    .restart local v22    # "chunkMediaSequence":I
    move-object/from16 v0, v31

    iget v4, v0, Lcom/google/android/exoplayer/hls/HlsMediaPlaylist;->mediaSequence:I

    move/from16 v0, v22

    if-ge v0, v4, :cond_4b

    .line 414
    new-instance v4, Lcom/google/android/exoplayer/BehindLiveWindowException;

    invoke-direct {v4}, Lcom/google/android/exoplayer/BehindLiveWindowException;-><init>()V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->fatalError:Ljava/io/IOException;

    goto :goto_25

    .line 420
    .end local v22    # "chunkMediaSequence":I
    :cond_8b
    if-nez p1, :cond_a2

    .line 421
    move-object/from16 v0, v31

    iget-object v4, v0, Lcom/google/android/exoplayer/hls/HlsMediaPlaylist;->segments:Ljava/util/List;

    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    const/4 v13, 0x1

    const/4 v14, 0x1

    invoke-static {v4, v12, v13, v14}, Lcom/google/android/exoplayer/util/Util;->binarySearchFloor(Ljava/util/List;Ljava/lang/Object;ZZ)I

    move-result v4

    move-object/from16 v0, v31

    iget v12, v0, Lcom/google/android/exoplayer/hls/HlsMediaPlaylist;->mediaSequence:I

    add-int v22, v4, v12

    .restart local v22    # "chunkMediaSequence":I
    goto :goto_4b

    .line 423
    .end local v22    # "chunkMediaSequence":I
    :cond_a2
    if-eqz v11, :cond_bd

    .line 424
    move-object/from16 v0, v31

    iget-object v4, v0, Lcom/google/android/exoplayer/hls/HlsMediaPlaylist;->segments:Ljava/util/List;

    move-object/from16 v0, p1

    iget-wide v12, v0, Lcom/google/android/exoplayer/hls/TsChunk;->startTimeUs:J

    .line 425
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    const/4 v13, 0x1

    const/4 v14, 0x1

    .line 424
    invoke-static {v4, v12, v13, v14}, Lcom/google/android/exoplayer/util/Util;->binarySearchFloor(Ljava/util/List;Ljava/lang/Object;ZZ)I

    move-result v4

    move-object/from16 v0, v31

    iget v12, v0, Lcom/google/android/exoplayer/hls/HlsMediaPlaylist;->mediaSequence:I

    add-int v22, v4, v12

    .restart local v22    # "chunkMediaSequence":I
    goto :goto_4b

    .line 427
    .end local v22    # "chunkMediaSequence":I
    :cond_bd
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer/hls/TsChunk;->getNextChunkIndex()I

    move-result v22

    .restart local v22    # "chunkMediaSequence":I
    goto :goto_4b

    .line 435
    .restart local v27    # "chunkIndex":I
    :cond_c2
    move-object/from16 v0, p0

    iget v4, v0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->selectedVariantIndex:I

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/google/android/exoplayer/hls/HlsChunkSource;->shouldRerequestLiveMediaPlaylist(I)Z

    move-result v4

    if-eqz v4, :cond_25

    .line 436
    move-object/from16 v0, p0

    iget v4, v0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->selectedVariantIndex:I

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/google/android/exoplayer/hls/HlsChunkSource;->newMediaPlaylistChunk(I)Lcom/google/android/exoplayer/hls/HlsChunkSource$MediaPlaylistChunk;

    move-result-object v4

    move-object/from16 v0, p4

    iput-object v4, v0, Lcom/google/android/exoplayer/chunk/ChunkOperationHolder;->chunk:Lcom/google/android/exoplayer/chunk/Chunk;

    goto/16 :goto_25

    .line 441
    :cond_de
    move-object/from16 v0, v31

    iget-object v4, v0, Lcom/google/android/exoplayer/hls/HlsMediaPlaylist;->segments:Ljava/util/List;

    move/from16 v0, v27

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Lcom/google/android/exoplayer/hls/HlsMediaPlaylist$Segment;

    .line 442
    .local v34, "segment":Lcom/google/android/exoplayer/hls/HlsMediaPlaylist$Segment;
    move-object/from16 v0, v31

    iget-object v4, v0, Lcom/google/android/exoplayer/hls/HlsMediaPlaylist;->baseUri:Ljava/lang/String;

    move-object/from16 v0, v34

    iget-object v12, v0, Lcom/google/android/exoplayer/hls/HlsMediaPlaylist$Segment;->url:Ljava/lang/String;

    invoke-static {v4, v12}, Lcom/google/android/exoplayer/util/UriUtil;->resolveToUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 445
    .local v3, "chunkUri":Landroid/net/Uri;
    move-object/from16 v0, v34

    iget-boolean v4, v0, Lcom/google/android/exoplayer/hls/HlsMediaPlaylist$Segment;->isEncrypted:Z

    if-eqz v4, :cond_1bd

    .line 446
    move-object/from16 v0, v31

    iget-object v4, v0, Lcom/google/android/exoplayer/hls/HlsMediaPlaylist;->baseUri:Ljava/lang/String;

    move-object/from16 v0, v34

    iget-object v12, v0, Lcom/google/android/exoplayer/hls/HlsMediaPlaylist$Segment;->encryptionKeyUri:Ljava/lang/String;

    invoke-static {v4, v12}, Lcom/google/android/exoplayer/util/UriUtil;->resolveToUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v29

    .line 447
    .local v29, "keyUri":Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->encryptionKeyUri:Landroid/net/Uri;

    move-object/from16 v0, v29

    invoke-virtual {v0, v4}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_12a

    .line 449
    move-object/from16 v0, v34

    iget-object v4, v0, Lcom/google/android/exoplayer/hls/HlsMediaPlaylist$Segment;->encryptionIV:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v12, v0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->selectedVariantIndex:I

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-direct {v0, v1, v4, v12}, Lcom/google/android/exoplayer/hls/HlsChunkSource;->newEncryptionKeyChunk(Landroid/net/Uri;Ljava/lang/String;I)Lcom/google/android/exoplayer/hls/HlsChunkSource$EncryptionKeyChunk;

    move-result-object v4

    move-object/from16 v0, p4

    iput-object v4, v0, Lcom/google/android/exoplayer/chunk/ChunkOperationHolder;->chunk:Lcom/google/android/exoplayer/chunk/Chunk;

    goto/16 :goto_25

    .line 452
    :cond_12a
    move-object/from16 v0, v34

    iget-object v4, v0, Lcom/google/android/exoplayer/hls/HlsMediaPlaylist$Segment;->encryptionIV:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->encryptionIvString:Ljava/lang/String;

    invoke-static {v4, v12}, Lcom/google/android/exoplayer/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_147

    .line 453
    move-object/from16 v0, v34

    iget-object v4, v0, Lcom/google/android/exoplayer/hls/HlsMediaPlaylist$Segment;->encryptionIV:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->encryptionKey:[B

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-direct {v0, v1, v4, v12}, Lcom/google/android/exoplayer/hls/HlsChunkSource;->setEncryptionData(Landroid/net/Uri;Ljava/lang/String;[B)V

    .line 460
    .end local v29    # "keyUri":Landroid/net/Uri;
    :cond_147
    :goto_147
    new-instance v2, Lcom/google/android/exoplayer/upstream/DataSpec;

    move-object/from16 v0, v34

    iget-wide v4, v0, Lcom/google/android/exoplayer/hls/HlsMediaPlaylist$Segment;->byterangeOffset:J

    move-object/from16 v0, v34

    iget-wide v6, v0, Lcom/google/android/exoplayer/hls/HlsMediaPlaylist$Segment;->byterangeLength:J

    const/4 v8, 0x0

    invoke-direct/range {v2 .. v8}, Lcom/google/android/exoplayer/upstream/DataSpec;-><init>(Landroid/net/Uri;JJLjava/lang/String;)V

    .line 465
    .local v2, "dataSpec":Lcom/google/android/exoplayer/upstream/DataSpec;
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->live:Z

    if-eqz v4, :cond_1d1

    .line 466
    if-nez p1, :cond_1c1

    .line 467
    const-wide/16 v8, 0x0

    .line 475
    .local v8, "startTimeUs":J
    :goto_15f
    move-object/from16 v0, v34

    iget-wide v12, v0, Lcom/google/android/exoplayer/hls/HlsMediaPlaylist$Segment;->durationSecs:D

    const-wide v14, 0x412e848000000000L

    mul-double/2addr v12, v14

    double-to-long v12, v12

    add-long v20, v8, v12

    .line 476
    .local v20, "endTimeUs":J
    const/4 v6, 0x0

    .line 477
    .local v6, "trigger":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->variants:[Lcom/google/android/exoplayer/hls/Variant;

    move-object/from16 v0, p0

    iget v12, v0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->selectedVariantIndex:I

    aget-object v4, v4, v12

    iget-object v7, v4, Lcom/google/android/exoplayer/hls/Variant;->format:Lcom/google/android/exoplayer/chunk/Format;

    .line 481
    .local v7, "format":Lcom/google/android/exoplayer/chunk/Format;
    invoke-virtual {v3}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v30

    .line 482
    .local v30, "lastPathSegment":Ljava/lang/String;
    const-string v4, ".aac"

    move-object/from16 v0, v30

    invoke-virtual {v0, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1d6

    .line 486
    new-instance v10, Lcom/google/android/exoplayer/extractor/ts/AdtsExtractor;

    invoke-direct {v10, v8, v9}, Lcom/google/android/exoplayer/extractor/ts/AdtsExtractor;-><init>(J)V

    .line 487
    .local v10, "extractor":Lcom/google/android/exoplayer/extractor/Extractor;
    new-instance v5, Lcom/google/android/exoplayer/hls/HlsExtractorWrapper;

    const/4 v12, -0x1

    const/4 v13, -0x1

    invoke-direct/range {v5 .. v13}, Lcom/google/android/exoplayer/hls/HlsExtractorWrapper;-><init>(ILcom/google/android/exoplayer/chunk/Format;JLcom/google/android/exoplayer/extractor/Extractor;ZII)V

    .line 538
    .end local v10    # "extractor":Lcom/google/android/exoplayer/extractor/Extractor;
    .local v5, "extractorWrapper":Lcom/google/android/exoplayer/hls/HlsExtractorWrapper;
    :goto_193
    new-instance v13, Lcom/google/android/exoplayer/hls/TsChunk;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->dataSource:Lcom/google/android/exoplayer/upstream/DataSource;

    move-object/from16 v0, v34

    iget v0, v0, Lcom/google/android/exoplayer/hls/HlsMediaPlaylist$Segment;->discontinuitySequenceNumber:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->encryptionKey:[B

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->encryptionIv:[B

    move-object/from16 v26, v0

    move-object v15, v2

    move/from16 v16, v6

    move-object/from16 v17, v7

    move-wide/from16 v18, v8

    move-object/from16 v24, v5

    invoke-direct/range {v13 .. v26}, Lcom/google/android/exoplayer/hls/TsChunk;-><init>(Lcom/google/android/exoplayer/upstream/DataSource;Lcom/google/android/exoplayer/upstream/DataSpec;ILcom/google/android/exoplayer/chunk/Format;JJIILcom/google/android/exoplayer/hls/HlsExtractorWrapper;[B[B)V

    move-object/from16 v0, p4

    iput-object v13, v0, Lcom/google/android/exoplayer/chunk/ChunkOperationHolder;->chunk:Lcom/google/android/exoplayer/chunk/Chunk;

    goto/16 :goto_25

    .line 456
    .end local v2    # "dataSpec":Lcom/google/android/exoplayer/upstream/DataSpec;
    .end local v5    # "extractorWrapper":Lcom/google/android/exoplayer/hls/HlsExtractorWrapper;
    .end local v6    # "trigger":I
    .end local v7    # "format":Lcom/google/android/exoplayer/chunk/Format;
    .end local v8    # "startTimeUs":J
    .end local v20    # "endTimeUs":J
    .end local v30    # "lastPathSegment":Ljava/lang/String;
    :cond_1bd
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer/hls/HlsChunkSource;->clearEncryptionData()V

    goto :goto_147

    .line 469
    .restart local v2    # "dataSpec":Lcom/google/android/exoplayer/upstream/DataSpec;
    :cond_1c1
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer/hls/TsChunk;->getAdjustedEndTimeUs()J

    move-result-wide v14

    if-eqz v11, :cond_1ce

    .line 470
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer/hls/TsChunk;->getDurationUs()J

    move-result-wide v12

    :goto_1cb
    sub-long v8, v14, v12

    .restart local v8    # "startTimeUs":J
    goto :goto_15f

    .end local v8    # "startTimeUs":J
    :cond_1ce
    const-wide/16 v12, 0x0

    goto :goto_1cb

    .line 473
    :cond_1d1
    move-object/from16 v0, v34

    iget-wide v8, v0, Lcom/google/android/exoplayer/hls/HlsMediaPlaylist$Segment;->startTimeUs:J

    .restart local v8    # "startTimeUs":J
    goto :goto_15f

    .line 489
    .restart local v6    # "trigger":I
    .restart local v7    # "format":Lcom/google/android/exoplayer/chunk/Format;
    .restart local v20    # "endTimeUs":J
    .restart local v30    # "lastPathSegment":Ljava/lang/String;
    :cond_1d6
    const-string v4, ".mp3"

    move-object/from16 v0, v30

    invoke-virtual {v0, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1ed

    .line 490
    new-instance v10, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor;

    invoke-direct {v10, v8, v9}, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor;-><init>(J)V

    .line 491
    .restart local v10    # "extractor":Lcom/google/android/exoplayer/extractor/Extractor;
    new-instance v5, Lcom/google/android/exoplayer/hls/HlsExtractorWrapper;

    const/4 v12, -0x1

    const/4 v13, -0x1

    invoke-direct/range {v5 .. v13}, Lcom/google/android/exoplayer/hls/HlsExtractorWrapper;-><init>(ILcom/google/android/exoplayer/chunk/Format;JLcom/google/android/exoplayer/extractor/Extractor;ZII)V

    .line 493
    .restart local v5    # "extractorWrapper":Lcom/google/android/exoplayer/hls/HlsExtractorWrapper;
    goto :goto_193

    .end local v5    # "extractorWrapper":Lcom/google/android/exoplayer/hls/HlsExtractorWrapper;
    .end local v10    # "extractor":Lcom/google/android/exoplayer/extractor/Extractor;
    :cond_1ed
    const-string v4, ".webvtt"

    move-object/from16 v0, v30

    invoke-virtual {v0, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_201

    const-string v4, ".vtt"

    .line 494
    move-object/from16 v0, v30

    invoke-virtual {v0, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_223

    .line 495
    :cond_201
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->timestampAdjusterProvider:Lcom/google/android/exoplayer/hls/PtsTimestampAdjusterProvider;

    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->isMaster:Z

    move-object/from16 v0, v34

    iget v13, v0, Lcom/google/android/exoplayer/hls/HlsMediaPlaylist$Segment;->discontinuitySequenceNumber:I

    invoke-virtual {v4, v12, v13, v8, v9}, Lcom/google/android/exoplayer/hls/PtsTimestampAdjusterProvider;->getAdjuster(ZIJ)Lcom/google/android/exoplayer/extractor/ts/PtsTimestampAdjuster;

    move-result-object v36

    .line 497
    .local v36, "timestampAdjuster":Lcom/google/android/exoplayer/extractor/ts/PtsTimestampAdjuster;
    if-eqz v36, :cond_25

    .line 503
    new-instance v10, Lcom/google/android/exoplayer/hls/WebvttExtractor;

    move-object/from16 v0, v36

    invoke-direct {v10, v0}, Lcom/google/android/exoplayer/hls/WebvttExtractor;-><init>(Lcom/google/android/exoplayer/extractor/ts/PtsTimestampAdjuster;)V

    .line 504
    .restart local v10    # "extractor":Lcom/google/android/exoplayer/extractor/Extractor;
    new-instance v5, Lcom/google/android/exoplayer/hls/HlsExtractorWrapper;

    const/4 v12, -0x1

    const/4 v13, -0x1

    invoke-direct/range {v5 .. v13}, Lcom/google/android/exoplayer/hls/HlsExtractorWrapper;-><init>(ILcom/google/android/exoplayer/chunk/Format;JLcom/google/android/exoplayer/extractor/Extractor;ZII)V

    .line 506
    .restart local v5    # "extractorWrapper":Lcom/google/android/exoplayer/hls/HlsExtractorWrapper;
    goto/16 :goto_193

    .end local v5    # "extractorWrapper":Lcom/google/android/exoplayer/hls/HlsExtractorWrapper;
    .end local v10    # "extractor":Lcom/google/android/exoplayer/extractor/Extractor;
    .end local v36    # "timestampAdjuster":Lcom/google/android/exoplayer/extractor/ts/PtsTimestampAdjuster;
    :cond_223
    if-eqz p1, :cond_239

    move-object/from16 v0, p1

    iget v4, v0, Lcom/google/android/exoplayer/hls/TsChunk;->discontinuitySequenceNumber:I

    move-object/from16 v0, v34

    iget v12, v0, Lcom/google/android/exoplayer/hls/HlsMediaPlaylist$Segment;->discontinuitySequenceNumber:I

    if-ne v4, v12, :cond_239

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/google/android/exoplayer/hls/TsChunk;->format:Lcom/google/android/exoplayer/chunk/Format;

    .line 508
    invoke-virtual {v7, v4}, Lcom/google/android/exoplayer/chunk/Format;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_292

    .line 510
    :cond_239
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->timestampAdjusterProvider:Lcom/google/android/exoplayer/hls/PtsTimestampAdjusterProvider;

    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->isMaster:Z

    move-object/from16 v0, v34

    iget v13, v0, Lcom/google/android/exoplayer/hls/HlsMediaPlaylist$Segment;->discontinuitySequenceNumber:I

    invoke-virtual {v4, v12, v13, v8, v9}, Lcom/google/android/exoplayer/hls/PtsTimestampAdjusterProvider;->getAdjuster(ZIJ)Lcom/google/android/exoplayer/extractor/ts/PtsTimestampAdjuster;

    move-result-object v36

    .line 512
    .restart local v36    # "timestampAdjuster":Lcom/google/android/exoplayer/extractor/ts/PtsTimestampAdjuster;
    if-eqz v36, :cond_25

    .line 517
    const/16 v37, 0x10

    .line 518
    .local v37, "workaroundFlags":I
    iget-object v0, v7, Lcom/google/android/exoplayer/chunk/Format;->codecs:Ljava/lang/String;

    move-object/from16 v28, v0

    .line 519
    .local v28, "codecs":Ljava/lang/String;
    invoke-static/range {v28 .. v28}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_26c

    .line 523
    invoke-static/range {v28 .. v28}, Lcom/google/android/exoplayer/util/MimeTypes;->getAudioMediaMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v12, "audio/mp4a-latm"

    if-eq v4, v12, :cond_261

    .line 524
    or-int/lit8 v37, v37, 0x2

    .line 526
    :cond_261
    invoke-static/range {v28 .. v28}, Lcom/google/android/exoplayer/util/MimeTypes;->getVideoMediaMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v12, "video/avc"

    if-eq v4, v12, :cond_26c

    .line 527
    or-int/lit8 v37, v37, 0x4

    .line 530
    :cond_26c
    new-instance v10, Lcom/google/android/exoplayer/extractor/ts/TsExtractor;

    move-object/from16 v0, v36

    move/from16 v1, v37

    invoke-direct {v10, v0, v1}, Lcom/google/android/exoplayer/extractor/ts/TsExtractor;-><init>(Lcom/google/android/exoplayer/extractor/ts/PtsTimestampAdjuster;I)V

    .line 531
    .restart local v10    # "extractor":Lcom/google/android/exoplayer/extractor/Extractor;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->tracks:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget v12, v0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->selectedTrackIndex:I

    invoke-virtual {v4, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Lcom/google/android/exoplayer/hls/HlsChunkSource$ExposedTrack;

    .line 532
    .local v35, "selectedTrack":Lcom/google/android/exoplayer/hls/HlsChunkSource$ExposedTrack;
    new-instance v5, Lcom/google/android/exoplayer/hls/HlsExtractorWrapper;

    .line 533
    # getter for: Lcom/google/android/exoplayer/hls/HlsChunkSource$ExposedTrack;->adaptiveMaxWidth:I
    invoke-static/range {v35 .. v35}, Lcom/google/android/exoplayer/hls/HlsChunkSource$ExposedTrack;->access$200(Lcom/google/android/exoplayer/hls/HlsChunkSource$ExposedTrack;)I

    move-result v12

    # getter for: Lcom/google/android/exoplayer/hls/HlsChunkSource$ExposedTrack;->adaptiveMaxHeight:I
    invoke-static/range {v35 .. v35}, Lcom/google/android/exoplayer/hls/HlsChunkSource$ExposedTrack;->access$300(Lcom/google/android/exoplayer/hls/HlsChunkSource$ExposedTrack;)I

    move-result v13

    invoke-direct/range {v5 .. v13}, Lcom/google/android/exoplayer/hls/HlsExtractorWrapper;-><init>(ILcom/google/android/exoplayer/chunk/Format;JLcom/google/android/exoplayer/extractor/Extractor;ZII)V

    .line 534
    .restart local v5    # "extractorWrapper":Lcom/google/android/exoplayer/hls/HlsExtractorWrapper;
    goto/16 :goto_193

    .line 536
    .end local v5    # "extractorWrapper":Lcom/google/android/exoplayer/hls/HlsExtractorWrapper;
    .end local v10    # "extractor":Lcom/google/android/exoplayer/extractor/Extractor;
    .end local v28    # "codecs":Ljava/lang/String;
    .end local v35    # "selectedTrack":Lcom/google/android/exoplayer/hls/HlsChunkSource$ExposedTrack;
    .end local v36    # "timestampAdjuster":Lcom/google/android/exoplayer/extractor/ts/PtsTimestampAdjuster;
    .end local v37    # "workaroundFlags":I
    :cond_292
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/google/android/exoplayer/hls/TsChunk;->extractorWrapper:Lcom/google/android/exoplayer/hls/HlsExtractorWrapper;

    .restart local v5    # "extractorWrapper":Lcom/google/android/exoplayer/hls/HlsExtractorWrapper;
    goto/16 :goto_193
.end method

.method public getDurationUs()J
    .registers 3

    .prologue
    .line 285
    iget-wide v0, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->durationUs:J

    return-wide v0
.end method

.method public getFixedTrackVariant(I)Lcom/google/android/exoplayer/hls/Variant;
    .registers 5
    .param p1, "index"    # I

    .prologue
    .line 309
    iget-object v1, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->tracks:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer/hls/HlsChunkSource$ExposedTrack;

    # getter for: Lcom/google/android/exoplayer/hls/HlsChunkSource$ExposedTrack;->variants:[Lcom/google/android/exoplayer/hls/Variant;
    invoke-static {v1}, Lcom/google/android/exoplayer/hls/HlsChunkSource$ExposedTrack;->access$000(Lcom/google/android/exoplayer/hls/HlsChunkSource$ExposedTrack;)[Lcom/google/android/exoplayer/hls/Variant;

    move-result-object v0

    .line 310
    .local v0, "variants":[Lcom/google/android/exoplayer/hls/Variant;
    array-length v1, v0

    const/4 v2, 0x1

    if-ne v1, v2, :cond_14

    const/4 v1, 0x0

    aget-object v1, v0, v1

    :goto_13
    return-object v1

    :cond_14
    const/4 v1, 0x0

    goto :goto_13
.end method

.method public getMuxedAudioLanguage()Ljava/lang/String;
    .registers 2

    .prologue
    .line 319
    iget-object v0, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->masterPlaylist:Lcom/google/android/exoplayer/hls/HlsMasterPlaylist;

    iget-object v0, v0, Lcom/google/android/exoplayer/hls/HlsMasterPlaylist;->muxedAudioLanguage:Ljava/lang/String;

    return-object v0
.end method

.method public getMuxedCaptionLanguage()Ljava/lang/String;
    .registers 2

    .prologue
    .line 328
    iget-object v0, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->masterPlaylist:Lcom/google/android/exoplayer/hls/HlsMasterPlaylist;

    iget-object v0, v0, Lcom/google/android/exoplayer/hls/HlsMasterPlaylist;->muxedCaptionLanguage:Ljava/lang/String;

    return-object v0
.end method

.method public getSelectedTrackIndex()I
    .registers 2

    .prologue
    .line 339
    iget v0, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->selectedTrackIndex:I

    return v0
.end method

.method public getTrackCount()I
    .registers 2

    .prologue
    .line 296
    iget-object v0, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->tracks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public isLive()Z
    .registers 2

    .prologue
    .line 274
    iget-boolean v0, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->live:Z

    return v0
.end method

.method public maybeThrowError()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 243
    iget-object v0, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->fatalError:Ljava/io/IOException;

    if-eqz v0, :cond_7

    .line 244
    iget-object v0, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->fatalError:Ljava/io/IOException;

    throw v0

    .line 246
    :cond_7
    return-void
.end method

.method public onChunkLoadCompleted(Lcom/google/android/exoplayer/chunk/Chunk;)V
    .registers 8
    .param p1, "chunk"    # Lcom/google/android/exoplayer/chunk/Chunk;

    .prologue
    .line 550
    instance-of v3, p1, Lcom/google/android/exoplayer/hls/HlsChunkSource$MediaPlaylistChunk;

    if-eqz v3, :cond_2d

    move-object v1, p1

    .line 551
    check-cast v1, Lcom/google/android/exoplayer/hls/HlsChunkSource$MediaPlaylistChunk;

    .line 552
    .local v1, "mediaPlaylistChunk":Lcom/google/android/exoplayer/hls/HlsChunkSource$MediaPlaylistChunk;
    invoke-virtual {v1}, Lcom/google/android/exoplayer/hls/HlsChunkSource$MediaPlaylistChunk;->getDataHolder()[B

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->scratchSpace:[B

    .line 553
    iget v3, v1, Lcom/google/android/exoplayer/hls/HlsChunkSource$MediaPlaylistChunk;->variantIndex:I

    invoke-virtual {v1}, Lcom/google/android/exoplayer/hls/HlsChunkSource$MediaPlaylistChunk;->getResult()Lcom/google/android/exoplayer/hls/HlsMediaPlaylist;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/google/android/exoplayer/hls/HlsChunkSource;->setMediaPlaylist(ILcom/google/android/exoplayer/hls/HlsMediaPlaylist;)V

    .line 554
    iget-object v3, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->eventHandler:Landroid/os/Handler;

    if-eqz v3, :cond_2c

    iget-object v3, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->eventListener:Lcom/google/android/exoplayer/hls/HlsChunkSource$EventListener;

    if-eqz v3, :cond_2c

    .line 555
    invoke-virtual {v1}, Lcom/google/android/exoplayer/hls/HlsChunkSource$MediaPlaylistChunk;->getRawResponse()[B

    move-result-object v2

    .line 556
    .local v2, "rawResponse":[B
    iget-object v3, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->eventHandler:Landroid/os/Handler;

    new-instance v4, Lcom/google/android/exoplayer/hls/HlsChunkSource$1;

    invoke-direct {v4, p0, v2}, Lcom/google/android/exoplayer/hls/HlsChunkSource$1;-><init>(Lcom/google/android/exoplayer/hls/HlsChunkSource;[B)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 569
    .end local v1    # "mediaPlaylistChunk":Lcom/google/android/exoplayer/hls/HlsChunkSource$MediaPlaylistChunk;
    .end local v2    # "rawResponse":[B
    :cond_2c
    :goto_2c
    return-void

    .line 563
    :cond_2d
    instance-of v3, p1, Lcom/google/android/exoplayer/hls/HlsChunkSource$EncryptionKeyChunk;

    if-eqz v3, :cond_2c

    move-object v0, p1

    .line 564
    check-cast v0, Lcom/google/android/exoplayer/hls/HlsChunkSource$EncryptionKeyChunk;

    .line 565
    .local v0, "encryptionKeyChunk":Lcom/google/android/exoplayer/hls/HlsChunkSource$EncryptionKeyChunk;
    invoke-virtual {v0}, Lcom/google/android/exoplayer/hls/HlsChunkSource$EncryptionKeyChunk;->getDataHolder()[B

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->scratchSpace:[B

    .line 566
    iget-object v3, v0, Lcom/google/android/exoplayer/hls/HlsChunkSource$EncryptionKeyChunk;->dataSpec:Lcom/google/android/exoplayer/upstream/DataSpec;

    iget-object v3, v3, Lcom/google/android/exoplayer/upstream/DataSpec;->uri:Landroid/net/Uri;

    iget-object v4, v0, Lcom/google/android/exoplayer/hls/HlsChunkSource$EncryptionKeyChunk;->iv:Ljava/lang/String;

    .line 567
    invoke-virtual {v0}, Lcom/google/android/exoplayer/hls/HlsChunkSource$EncryptionKeyChunk;->getResult()[B

    move-result-object v5

    .line 566
    invoke-direct {p0, v3, v4, v5}, Lcom/google/android/exoplayer/hls/HlsChunkSource;->setEncryptionData(Landroid/net/Uri;Ljava/lang/String;[B)V

    goto :goto_2c
.end method

.method public onChunkLoadError(Lcom/google/android/exoplayer/chunk/Chunk;Ljava/io/IOException;)Z
    .registers 15
    .param p1, "chunk"    # Lcom/google/android/exoplayer/chunk/Chunk;
    .param p2, "e"    # Ljava/io/IOException;

    .prologue
    .line 580
    invoke-virtual {p1}, Lcom/google/android/exoplayer/chunk/Chunk;->bytesLoaded()J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v7, v8, v10

    if-nez v7, :cond_df

    instance-of v7, p1, Lcom/google/android/exoplayer/hls/TsChunk;

    if-nez v7, :cond_16

    instance-of v7, p1, Lcom/google/android/exoplayer/hls/HlsChunkSource$MediaPlaylistChunk;

    if-nez v7, :cond_16

    instance-of v7, p1, Lcom/google/android/exoplayer/hls/HlsChunkSource$EncryptionKeyChunk;

    if-eqz v7, :cond_df

    :cond_16
    instance-of v7, p2, Lcom/google/android/exoplayer/upstream/HttpDataSource$InvalidResponseCodeException;

    if-eqz v7, :cond_df

    move-object v4, p2

    .line 584
    check-cast v4, Lcom/google/android/exoplayer/upstream/HttpDataSource$InvalidResponseCodeException;

    .line 585
    .local v4, "responseCodeException":Lcom/google/android/exoplayer/upstream/HttpDataSource$InvalidResponseCodeException;
    iget v3, v4, Lcom/google/android/exoplayer/upstream/HttpDataSource$InvalidResponseCodeException;->responseCode:I

    .line 586
    .local v3, "responseCode":I
    const/16 v7, 0x194

    if-eq v3, v7, :cond_27

    const/16 v7, 0x19a

    if-ne v3, v7, :cond_df

    .line 588
    :cond_27
    instance-of v7, p1, Lcom/google/android/exoplayer/hls/TsChunk;

    if-eqz v7, :cond_71

    move-object v5, p1

    .line 589
    check-cast v5, Lcom/google/android/exoplayer/hls/TsChunk;

    .line 590
    .local v5, "tsChunk":Lcom/google/android/exoplayer/hls/TsChunk;
    iget-object v7, v5, Lcom/google/android/exoplayer/hls/TsChunk;->format:Lcom/google/android/exoplayer/chunk/Format;

    invoke-direct {p0, v7}, Lcom/google/android/exoplayer/hls/HlsChunkSource;->getVariantIndex(Lcom/google/android/exoplayer/chunk/Format;)I

    move-result v6

    .line 598
    .end local v5    # "tsChunk":Lcom/google/android/exoplayer/hls/TsChunk;
    .local v6, "variantIndex":I
    :goto_34
    iget-object v7, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->variantBlacklistTimes:[J

    aget-wide v8, v7, v6

    const-wide/16 v10, 0x0

    cmp-long v7, v8, v10

    if-eqz v7, :cond_81

    const/4 v0, 0x1

    .line 599
    .local v0, "alreadyBlacklisted":Z
    :goto_3f
    iget-object v7, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->variantBlacklistTimes:[J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    aput-wide v8, v7, v6

    .line 600
    if-eqz v0, :cond_83

    .line 602
    const-string v7, "HlsChunkSource"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Already blacklisted variant ("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "): "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p1, Lcom/google/android/exoplayer/chunk/Chunk;->dataSpec:Lcom/google/android/exoplayer/upstream/DataSpec;

    iget-object v9, v9, Lcom/google/android/exoplayer/upstream/DataSpec;->uri:Landroid/net/Uri;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 604
    const/4 v7, 0x0

    .line 619
    .end local v0    # "alreadyBlacklisted":Z
    .end local v3    # "responseCode":I
    .end local v4    # "responseCodeException":Lcom/google/android/exoplayer/upstream/HttpDataSource$InvalidResponseCodeException;
    .end local v6    # "variantIndex":I
    :goto_70
    return v7

    .line 591
    .restart local v3    # "responseCode":I
    .restart local v4    # "responseCodeException":Lcom/google/android/exoplayer/upstream/HttpDataSource$InvalidResponseCodeException;
    :cond_71
    instance-of v7, p1, Lcom/google/android/exoplayer/hls/HlsChunkSource$MediaPlaylistChunk;

    if-eqz v7, :cond_7b

    move-object v2, p1

    .line 592
    check-cast v2, Lcom/google/android/exoplayer/hls/HlsChunkSource$MediaPlaylistChunk;

    .line 593
    .local v2, "playlistChunk":Lcom/google/android/exoplayer/hls/HlsChunkSource$MediaPlaylistChunk;
    iget v6, v2, Lcom/google/android/exoplayer/hls/HlsChunkSource$MediaPlaylistChunk;->variantIndex:I

    .line 594
    .restart local v6    # "variantIndex":I
    goto :goto_34

    .end local v2    # "playlistChunk":Lcom/google/android/exoplayer/hls/HlsChunkSource$MediaPlaylistChunk;
    .end local v6    # "variantIndex":I
    :cond_7b
    move-object v1, p1

    .line 595
    check-cast v1, Lcom/google/android/exoplayer/hls/HlsChunkSource$EncryptionKeyChunk;

    .line 596
    .local v1, "encryptionChunk":Lcom/google/android/exoplayer/hls/HlsChunkSource$EncryptionKeyChunk;
    iget v6, v1, Lcom/google/android/exoplayer/hls/HlsChunkSource$EncryptionKeyChunk;->variantIndex:I

    .restart local v6    # "variantIndex":I
    goto :goto_34

    .line 598
    .end local v1    # "encryptionChunk":Lcom/google/android/exoplayer/hls/HlsChunkSource$EncryptionKeyChunk;
    :cond_81
    const/4 v0, 0x0

    goto :goto_3f

    .line 605
    .restart local v0    # "alreadyBlacklisted":Z
    :cond_83
    invoke-direct {p0}, Lcom/google/android/exoplayer/hls/HlsChunkSource;->allVariantsBlacklisted()Z

    move-result v7

    if-nez v7, :cond_b1

    .line 607
    const-string v7, "HlsChunkSource"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Blacklisted variant ("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "): "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p1, Lcom/google/android/exoplayer/chunk/Chunk;->dataSpec:Lcom/google/android/exoplayer/upstream/DataSpec;

    iget-object v9, v9, Lcom/google/android/exoplayer/upstream/DataSpec;->uri:Landroid/net/Uri;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 609
    const/4 v7, 0x1

    goto :goto_70

    .line 612
    :cond_b1
    const-string v7, "HlsChunkSource"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Final variant not blacklisted ("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "): "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p1, Lcom/google/android/exoplayer/chunk/Chunk;->dataSpec:Lcom/google/android/exoplayer/upstream/DataSpec;

    iget-object v9, v9, Lcom/google/android/exoplayer/upstream/DataSpec;->uri:Landroid/net/Uri;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 614
    iget-object v7, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->variantBlacklistTimes:[J

    const-wide/16 v8, 0x0

    aput-wide v8, v7, v6

    .line 615
    const/4 v7, 0x0

    goto :goto_70

    .line 619
    .end local v0    # "alreadyBlacklisted":Z
    .end local v3    # "responseCode":I
    .end local v4    # "responseCodeException":Lcom/google/android/exoplayer/upstream/HttpDataSource$InvalidResponseCodeException;
    .end local v6    # "variantIndex":I
    :cond_df
    const/4 v7, 0x0

    goto :goto_70
.end method

.method public prepare()Z
    .registers 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 254
    iget-boolean v3, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->prepareCalled:Z

    if-nez v3, :cond_13

    .line 255
    iput-boolean v1, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->prepareCalled:Z

    .line 257
    :try_start_8
    iget-object v3, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->trackSelector:Lcom/google/android/exoplayer/hls/HlsTrackSelector;

    iget-object v4, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->masterPlaylist:Lcom/google/android/exoplayer/hls/HlsMasterPlaylist;

    invoke-interface {v3, v4, p0}, Lcom/google/android/exoplayer/hls/HlsTrackSelector;->selectTracks(Lcom/google/android/exoplayer/hls/HlsMasterPlaylist;Lcom/google/android/exoplayer/hls/HlsTrackSelector$Output;)V

    .line 258
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/google/android/exoplayer/hls/HlsChunkSource;->selectTrack(I)V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_13} :catch_18

    .line 263
    :cond_13
    :goto_13
    iget-object v3, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->fatalError:Ljava/io/IOException;

    if-nez v3, :cond_1c

    :goto_17
    return v1

    .line 259
    :catch_18
    move-exception v0

    .line 260
    .local v0, "e":Ljava/io/IOException;
    iput-object v0, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->fatalError:Ljava/io/IOException;

    goto :goto_13

    .end local v0    # "e":Ljava/io/IOException;
    :cond_1c
    move v1, v2

    .line 263
    goto :goto_17
.end method

.method public reset()V
    .registers 2

    .prologue
    .line 376
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->fatalError:Ljava/io/IOException;

    .line 377
    return-void
.end method

.method public seek()V
    .registers 2

    .prologue
    .line 365
    iget-boolean v0, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->isMaster:Z

    if-eqz v0, :cond_9

    .line 366
    iget-object v0, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->timestampAdjusterProvider:Lcom/google/android/exoplayer/hls/PtsTimestampAdjusterProvider;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/hls/PtsTimestampAdjusterProvider;->reset()V

    .line 368
    :cond_9
    return-void
.end method

.method public selectTrack(I)V
    .registers 5
    .param p1, "index"    # I

    .prologue
    .line 350
    iput p1, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->selectedTrackIndex:I

    .line 351
    iget-object v1, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->tracks:Ljava/util/ArrayList;

    iget v2, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->selectedTrackIndex:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer/hls/HlsChunkSource$ExposedTrack;

    .line 352
    .local v0, "selectedTrack":Lcom/google/android/exoplayer/hls/HlsChunkSource$ExposedTrack;
    # getter for: Lcom/google/android/exoplayer/hls/HlsChunkSource$ExposedTrack;->defaultVariantIndex:I
    invoke-static {v0}, Lcom/google/android/exoplayer/hls/HlsChunkSource$ExposedTrack;->access$100(Lcom/google/android/exoplayer/hls/HlsChunkSource$ExposedTrack;)I

    move-result v1

    iput v1, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->selectedVariantIndex:I

    .line 353
    # getter for: Lcom/google/android/exoplayer/hls/HlsChunkSource$ExposedTrack;->variants:[Lcom/google/android/exoplayer/hls/Variant;
    invoke-static {v0}, Lcom/google/android/exoplayer/hls/HlsChunkSource$ExposedTrack;->access$000(Lcom/google/android/exoplayer/hls/HlsChunkSource$ExposedTrack;)[Lcom/google/android/exoplayer/hls/Variant;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->variants:[Lcom/google/android/exoplayer/hls/Variant;

    .line 354
    iget-object v1, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->variants:[Lcom/google/android/exoplayer/hls/Variant;

    array-length v1, v1

    new-array v1, v1, [Lcom/google/android/exoplayer/hls/HlsMediaPlaylist;

    iput-object v1, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->variantPlaylists:[Lcom/google/android/exoplayer/hls/HlsMediaPlaylist;

    .line 355
    iget-object v1, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->variants:[Lcom/google/android/exoplayer/hls/Variant;

    array-length v1, v1

    new-array v1, v1, [J

    iput-object v1, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->variantLastPlaylistLoadTimesMs:[J

    .line 356
    iget-object v1, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->variants:[Lcom/google/android/exoplayer/hls/Variant;

    array-length v1, v1

    new-array v1, v1, [J

    iput-object v1, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->variantBlacklistTimes:[J

    .line 357
    return-void
.end method
