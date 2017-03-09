.class Lcom/buzzfeed/android/vcr/player/HLSPeakBitrateTrackSelector$1;
.super Ljava/lang/Object;
.source "HLSPeakBitrateTrackSelector.java"

# interfaces
.implements Lcom/google/android/exoplayer/hls/HlsTrackSelector$Output;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/buzzfeed/android/vcr/player/HLSPeakBitrateTrackSelector;->selectTracks(Lcom/google/android/exoplayer/hls/HlsMasterPlaylist;Lcom/google/android/exoplayer/hls/HlsTrackSelector$Output;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/buzzfeed/android/vcr/player/HLSPeakBitrateTrackSelector;

.field final synthetic val$output:Lcom/google/android/exoplayer/hls/HlsTrackSelector$Output;


# direct methods
.method constructor <init>(Lcom/buzzfeed/android/vcr/player/HLSPeakBitrateTrackSelector;Lcom/google/android/exoplayer/hls/HlsTrackSelector$Output;)V
    .registers 3
    .param p1, "this$0"    # Lcom/buzzfeed/android/vcr/player/HLSPeakBitrateTrackSelector;

    .prologue
    .line 36
    iput-object p1, p0, Lcom/buzzfeed/android/vcr/player/HLSPeakBitrateTrackSelector$1;->this$0:Lcom/buzzfeed/android/vcr/player/HLSPeakBitrateTrackSelector;

    iput-object p2, p0, Lcom/buzzfeed/android/vcr/player/HLSPeakBitrateTrackSelector$1;->val$output:Lcom/google/android/exoplayer/hls/HlsTrackSelector$Output;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public adaptiveTrack(Lcom/google/android/exoplayer/hls/HlsMasterPlaylist;[Lcom/google/android/exoplayer/hls/Variant;)V
    .registers 15
    .param p1, "playlist"    # Lcom/google/android/exoplayer/hls/HlsMasterPlaylist;
    .param p2, "variants"    # [Lcom/google/android/exoplayer/hls/Variant;

    .prologue
    const/4 v5, 0x0

    .line 39
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 40
    .local v1, "preferredVariantList":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer/hls/Variant;>;"
    const/4 v0, 0x0

    .line 42
    .local v0, "lowestBitrateVariant":Lcom/google/android/exoplayer/hls/Variant;
    array-length v6, p2

    move v4, v5

    :goto_9
    if-ge v4, v6, :cond_2f

    aget-object v3, p2, v4

    .line 43
    .local v3, "variant":Lcom/google/android/exoplayer/hls/Variant;
    iget-object v7, v3, Lcom/google/android/exoplayer/hls/Variant;->format:Lcom/google/android/exoplayer/chunk/Format;

    iget v7, v7, Lcom/google/android/exoplayer/chunk/Format;->bitrate:I

    int-to-long v8, v7

    iget-object v7, p0, Lcom/buzzfeed/android/vcr/player/HLSPeakBitrateTrackSelector$1;->this$0:Lcom/buzzfeed/android/vcr/player/HLSPeakBitrateTrackSelector;

    # getter for: Lcom/buzzfeed/android/vcr/player/HLSPeakBitrateTrackSelector;->mPeakBitrate:J
    invoke-static {v7}, Lcom/buzzfeed/android/vcr/player/HLSPeakBitrateTrackSelector;->access$000(Lcom/buzzfeed/android/vcr/player/HLSPeakBitrateTrackSelector;)J

    move-result-wide v10

    cmp-long v7, v8, v10

    if-gtz v7, :cond_1f

    .line 44
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 47
    :cond_1f
    if-eqz v0, :cond_2b

    iget-object v7, v3, Lcom/google/android/exoplayer/hls/Variant;->format:Lcom/google/android/exoplayer/chunk/Format;

    iget v7, v7, Lcom/google/android/exoplayer/chunk/Format;->bitrate:I

    iget-object v8, v0, Lcom/google/android/exoplayer/hls/Variant;->format:Lcom/google/android/exoplayer/chunk/Format;

    iget v8, v8, Lcom/google/android/exoplayer/chunk/Format;->bitrate:I

    if-ge v7, v8, :cond_2c

    .line 49
    :cond_2b
    move-object v0, v3

    .line 42
    :cond_2c
    add-int/lit8 v4, v4, 0x1

    goto :goto_9

    .line 53
    .end local v3    # "variant":Lcom/google/android/exoplayer/hls/Variant;
    :cond_2f
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_44

    .line 54
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    new-array v2, v4, [Lcom/google/android/exoplayer/hls/Variant;

    .line 55
    .local v2, "preferredVariants":[Lcom/google/android/exoplayer/hls/Variant;
    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 56
    iget-object v4, p0, Lcom/buzzfeed/android/vcr/player/HLSPeakBitrateTrackSelector$1;->val$output:Lcom/google/android/exoplayer/hls/HlsTrackSelector$Output;

    invoke-interface {v4, p1, v2}, Lcom/google/android/exoplayer/hls/HlsTrackSelector$Output;->adaptiveTrack(Lcom/google/android/exoplayer/hls/HlsMasterPlaylist;[Lcom/google/android/exoplayer/hls/Variant;)V

    .line 66
    .end local v2    # "preferredVariants":[Lcom/google/android/exoplayer/hls/Variant;
    :goto_43
    return-void

    .line 57
    :cond_44
    if-eqz v0, :cond_71

    .line 58
    # getter for: Lcom/buzzfeed/android/vcr/player/HLSPeakBitrateTrackSelector;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/buzzfeed/android/vcr/player/HLSPeakBitrateTrackSelector;->access$100()Ljava/lang/String;

    move-result-object v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "All variants are higher than the peak bitrate. bitrate="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/buzzfeed/android/vcr/player/HLSPeakBitrateTrackSelector$1;->this$0:Lcom/buzzfeed/android/vcr/player/HLSPeakBitrateTrackSelector;

    .line 59
    # getter for: Lcom/buzzfeed/android/vcr/player/HLSPeakBitrateTrackSelector;->mPeakBitrate:J
    invoke-static {v7}, Lcom/buzzfeed/android/vcr/player/HLSPeakBitrateTrackSelector;->access$000(Lcom/buzzfeed/android/vcr/player/HLSPeakBitrateTrackSelector;)J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 58
    invoke-static {v4, v6}, Lcom/buzzfeed/toolkit/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    iget-object v4, p0, Lcom/buzzfeed/android/vcr/player/HLSPeakBitrateTrackSelector$1;->val$output:Lcom/google/android/exoplayer/hls/HlsTrackSelector$Output;

    const/4 v6, 0x1

    new-array v6, v6, [Lcom/google/android/exoplayer/hls/Variant;

    aput-object v0, v6, v5

    invoke-interface {v4, p1, v6}, Lcom/google/android/exoplayer/hls/HlsTrackSelector$Output;->adaptiveTrack(Lcom/google/android/exoplayer/hls/HlsMasterPlaylist;[Lcom/google/android/exoplayer/hls/Variant;)V

    goto :goto_43

    .line 62
    :cond_71
    # getter for: Lcom/buzzfeed/android/vcr/player/HLSPeakBitrateTrackSelector;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/buzzfeed/android/vcr/player/HLSPeakBitrateTrackSelector;->access$100()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to select tracks below the peak bitrate. bitrate="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/buzzfeed/android/vcr/player/HLSPeakBitrateTrackSelector$1;->this$0:Lcom/buzzfeed/android/vcr/player/HLSPeakBitrateTrackSelector;

    .line 63
    # getter for: Lcom/buzzfeed/android/vcr/player/HLSPeakBitrateTrackSelector;->mPeakBitrate:J
    invoke-static {v6}, Lcom/buzzfeed/android/vcr/player/HLSPeakBitrateTrackSelector;->access$000(Lcom/buzzfeed/android/vcr/player/HLSPeakBitrateTrackSelector;)J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 62
    invoke-static {v4, v5}, Lcom/buzzfeed/toolkit/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    iget-object v4, p0, Lcom/buzzfeed/android/vcr/player/HLSPeakBitrateTrackSelector$1;->val$output:Lcom/google/android/exoplayer/hls/HlsTrackSelector$Output;

    invoke-interface {v4, p1, p2}, Lcom/google/android/exoplayer/hls/HlsTrackSelector$Output;->adaptiveTrack(Lcom/google/android/exoplayer/hls/HlsMasterPlaylist;[Lcom/google/android/exoplayer/hls/Variant;)V

    goto :goto_43
.end method

.method public fixedTrack(Lcom/google/android/exoplayer/hls/HlsMasterPlaylist;Lcom/google/android/exoplayer/hls/Variant;)V
    .registers 4
    .param p1, "playlist"    # Lcom/google/android/exoplayer/hls/HlsMasterPlaylist;
    .param p2, "variant"    # Lcom/google/android/exoplayer/hls/Variant;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/buzzfeed/android/vcr/player/HLSPeakBitrateTrackSelector$1;->val$output:Lcom/google/android/exoplayer/hls/HlsTrackSelector$Output;

    invoke-interface {v0, p1, p2}, Lcom/google/android/exoplayer/hls/HlsTrackSelector$Output;->fixedTrack(Lcom/google/android/exoplayer/hls/HlsMasterPlaylist;Lcom/google/android/exoplayer/hls/Variant;)V

    .line 71
    return-void
.end method
