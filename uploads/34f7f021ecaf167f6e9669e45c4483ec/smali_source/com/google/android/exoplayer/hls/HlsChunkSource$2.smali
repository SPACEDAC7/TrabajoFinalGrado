.class Lcom/google/android/exoplayer/hls/HlsChunkSource$2;
.super Ljava/lang/Object;
.source "HlsChunkSource.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/exoplayer/hls/HlsChunkSource;->adaptiveTrack(Lcom/google/android/exoplayer/hls/HlsMasterPlaylist;[Lcom/google/android/exoplayer/hls/Variant;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/google/android/exoplayer/hls/Variant;",
        ">;"
    }
.end annotation


# instance fields
.field private final formatComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/google/android/exoplayer/chunk/Format;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/google/android/exoplayer/hls/HlsChunkSource;


# direct methods
.method constructor <init>(Lcom/google/android/exoplayer/hls/HlsChunkSource;)V
    .registers 3
    .param p1, "this$0"    # Lcom/google/android/exoplayer/hls/HlsChunkSource;

    .prologue
    .line 626
    iput-object p1, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource$2;->this$0:Lcom/google/android/exoplayer/hls/HlsChunkSource;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 627
    new-instance v0, Lcom/google/android/exoplayer/chunk/Format$DecreasingBandwidthComparator;

    invoke-direct {v0}, Lcom/google/android/exoplayer/chunk/Format$DecreasingBandwidthComparator;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource$2;->formatComparator:Ljava/util/Comparator;

    return-void
.end method


# virtual methods
.method public compare(Lcom/google/android/exoplayer/hls/Variant;Lcom/google/android/exoplayer/hls/Variant;)I
    .registers 6
    .param p1, "first"    # Lcom/google/android/exoplayer/hls/Variant;
    .param p2, "second"    # Lcom/google/android/exoplayer/hls/Variant;

    .prologue
    .line 631
    iget-object v0, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource$2;->formatComparator:Ljava/util/Comparator;

    iget-object v1, p1, Lcom/google/android/exoplayer/hls/Variant;->format:Lcom/google/android/exoplayer/chunk/Format;

    iget-object v2, p2, Lcom/google/android/exoplayer/hls/Variant;->format:Lcom/google/android/exoplayer/chunk/Format;

    invoke-interface {v0, v1, v2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4

    .prologue
    .line 626
    check-cast p1, Lcom/google/android/exoplayer/hls/Variant;

    check-cast p2, Lcom/google/android/exoplayer/hls/Variant;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer/hls/HlsChunkSource$2;->compare(Lcom/google/android/exoplayer/hls/Variant;Lcom/google/android/exoplayer/hls/Variant;)I

    move-result v0

    return v0
.end method
