.class Lcom/buzzfeed/android/vcr/player/HLSPeakBitrateTrackSelector;
.super Ljava/lang/Object;
.source "HLSPeakBitrateTrackSelector.java"

# interfaces
.implements Lcom/google/android/exoplayer/hls/HlsTrackSelector;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mDefaultHlsTrackSelector:Lcom/google/android/exoplayer/hls/DefaultHlsTrackSelector;

.field private final mPeakBitrate:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 21
    const-class v0, Lcom/buzzfeed/android/vcr/player/HLSPeakBitrateTrackSelector;

    invoke-static {v0}, Lcom/buzzfeed/toolkit/util/LogUtil;->makeLogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/buzzfeed/android/vcr/player/HLSPeakBitrateTrackSelector;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;J)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "peakBitrate"    # J

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-wide p2, p0, Lcom/buzzfeed/android/vcr/player/HLSPeakBitrateTrackSelector;->mPeakBitrate:J

    .line 28
    invoke-static {p1}, Lcom/google/android/exoplayer/hls/DefaultHlsTrackSelector;->newDefaultInstance(Landroid/content/Context;)Lcom/google/android/exoplayer/hls/DefaultHlsTrackSelector;

    move-result-object v0

    iput-object v0, p0, Lcom/buzzfeed/android/vcr/player/HLSPeakBitrateTrackSelector;->mDefaultHlsTrackSelector:Lcom/google/android/exoplayer/hls/DefaultHlsTrackSelector;

    .line 29
    return-void
.end method

.method static synthetic access$000(Lcom/buzzfeed/android/vcr/player/HLSPeakBitrateTrackSelector;)J
    .registers 3
    .param p0, "x0"    # Lcom/buzzfeed/android/vcr/player/HLSPeakBitrateTrackSelector;

    .prologue
    .line 20
    iget-wide v0, p0, Lcom/buzzfeed/android/vcr/player/HLSPeakBitrateTrackSelector;->mPeakBitrate:J

    return-wide v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .registers 1

    .prologue
    .line 20
    sget-object v0, Lcom/buzzfeed/android/vcr/player/HLSPeakBitrateTrackSelector;->TAG:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public selectTracks(Lcom/google/android/exoplayer/hls/HlsMasterPlaylist;Lcom/google/android/exoplayer/hls/HlsTrackSelector$Output;)V
    .registers 5
    .param p1, "playlist"    # Lcom/google/android/exoplayer/hls/HlsMasterPlaylist;
    .param p2, "output"    # Lcom/google/android/exoplayer/hls/HlsTrackSelector$Output;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 36
    iget-object v0, p0, Lcom/buzzfeed/android/vcr/player/HLSPeakBitrateTrackSelector;->mDefaultHlsTrackSelector:Lcom/google/android/exoplayer/hls/DefaultHlsTrackSelector;

    new-instance v1, Lcom/buzzfeed/android/vcr/player/HLSPeakBitrateTrackSelector$1;

    invoke-direct {v1, p0, p2}, Lcom/buzzfeed/android/vcr/player/HLSPeakBitrateTrackSelector$1;-><init>(Lcom/buzzfeed/android/vcr/player/HLSPeakBitrateTrackSelector;Lcom/google/android/exoplayer/hls/HlsTrackSelector$Output;)V

    invoke-virtual {v0, p1, v1}, Lcom/google/android/exoplayer/hls/DefaultHlsTrackSelector;->selectTracks(Lcom/google/android/exoplayer/hls/HlsMasterPlaylist;Lcom/google/android/exoplayer/hls/HlsTrackSelector$Output;)V

    .line 73
    return-void
.end method
