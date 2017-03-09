.class Lcom/buzzfeed/android/vcr/player/HLSFixedVariantTrackSelector$1;
.super Ljava/lang/Object;
.source "HLSFixedVariantTrackSelector.java"

# interfaces
.implements Lcom/google/android/exoplayer/hls/HlsTrackSelector$Output;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/buzzfeed/android/vcr/player/HLSFixedVariantTrackSelector;->selectTracks(Lcom/google/android/exoplayer/hls/HlsMasterPlaylist;Lcom/google/android/exoplayer/hls/HlsTrackSelector$Output;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/buzzfeed/android/vcr/player/HLSFixedVariantTrackSelector;

.field final synthetic val$output:Lcom/google/android/exoplayer/hls/HlsTrackSelector$Output;


# direct methods
.method constructor <init>(Lcom/buzzfeed/android/vcr/player/HLSFixedVariantTrackSelector;Lcom/google/android/exoplayer/hls/HlsTrackSelector$Output;)V
    .registers 3
    .param p1, "this$0"    # Lcom/buzzfeed/android/vcr/player/HLSFixedVariantTrackSelector;

    .prologue
    .line 31
    iput-object p1, p0, Lcom/buzzfeed/android/vcr/player/HLSFixedVariantTrackSelector$1;->this$0:Lcom/buzzfeed/android/vcr/player/HLSFixedVariantTrackSelector;

    iput-object p2, p0, Lcom/buzzfeed/android/vcr/player/HLSFixedVariantTrackSelector$1;->val$output:Lcom/google/android/exoplayer/hls/HlsTrackSelector$Output;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public adaptiveTrack(Lcom/google/android/exoplayer/hls/HlsMasterPlaylist;[Lcom/google/android/exoplayer/hls/Variant;)V
    .registers 7
    .param p1, "playlist"    # Lcom/google/android/exoplayer/hls/HlsMasterPlaylist;
    .param p2, "variants"    # [Lcom/google/android/exoplayer/hls/Variant;

    .prologue
    const/4 v3, 0x0

    .line 34
    array-length v1, p2

    if-lez v1, :cond_13

    aget-object v0, p2, v3

    .line 36
    .local v0, "initialVariant":Lcom/google/android/exoplayer/hls/Variant;
    :goto_6
    if-eqz v0, :cond_15

    .line 37
    iget-object v1, p0, Lcom/buzzfeed/android/vcr/player/HLSFixedVariantTrackSelector$1;->val$output:Lcom/google/android/exoplayer/hls/HlsTrackSelector$Output;

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/google/android/exoplayer/hls/Variant;

    aput-object v0, v2, v3

    invoke-interface {v1, p1, v2}, Lcom/google/android/exoplayer/hls/HlsTrackSelector$Output;->adaptiveTrack(Lcom/google/android/exoplayer/hls/HlsMasterPlaylist;[Lcom/google/android/exoplayer/hls/Variant;)V

    .line 42
    :goto_12
    return-void

    .line 34
    .end local v0    # "initialVariant":Lcom/google/android/exoplayer/hls/Variant;
    :cond_13
    const/4 v0, 0x0

    goto :goto_6

    .line 39
    .restart local v0    # "initialVariant":Lcom/google/android/exoplayer/hls/Variant;
    :cond_15
    # getter for: Lcom/buzzfeed/android/vcr/player/HLSFixedVariantTrackSelector;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/buzzfeed/android/vcr/player/HLSFixedVariantTrackSelector;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Unable to select initial variant."

    invoke-static {v1, v2}, Lcom/buzzfeed/toolkit/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    iget-object v1, p0, Lcom/buzzfeed/android/vcr/player/HLSFixedVariantTrackSelector$1;->val$output:Lcom/google/android/exoplayer/hls/HlsTrackSelector$Output;

    invoke-interface {v1, p1, p2}, Lcom/google/android/exoplayer/hls/HlsTrackSelector$Output;->adaptiveTrack(Lcom/google/android/exoplayer/hls/HlsMasterPlaylist;[Lcom/google/android/exoplayer/hls/Variant;)V

    goto :goto_12
.end method

.method public fixedTrack(Lcom/google/android/exoplayer/hls/HlsMasterPlaylist;Lcom/google/android/exoplayer/hls/Variant;)V
    .registers 4
    .param p1, "playlist"    # Lcom/google/android/exoplayer/hls/HlsMasterPlaylist;
    .param p2, "variant"    # Lcom/google/android/exoplayer/hls/Variant;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/buzzfeed/android/vcr/player/HLSFixedVariantTrackSelector$1;->val$output:Lcom/google/android/exoplayer/hls/HlsTrackSelector$Output;

    invoke-interface {v0, p1, p2}, Lcom/google/android/exoplayer/hls/HlsTrackSelector$Output;->fixedTrack(Lcom/google/android/exoplayer/hls/HlsMasterPlaylist;Lcom/google/android/exoplayer/hls/Variant;)V

    .line 47
    return-void
.end method
