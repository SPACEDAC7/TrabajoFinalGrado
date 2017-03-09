.class final Lcom/google/android/exoplayer/hls/HlsChunkSource$ExposedTrack;
.super Ljava/lang/Object;
.source "HlsChunkSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer/hls/HlsChunkSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ExposedTrack"
.end annotation


# instance fields
.field private final adaptiveMaxHeight:I

.field private final adaptiveMaxWidth:I

.field private final defaultVariantIndex:I

.field private final variants:[Lcom/google/android/exoplayer/hls/Variant;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer/hls/Variant;)V
    .registers 5
    .param p1, "fixedVariant"    # Lcom/google/android/exoplayer/hls/Variant;

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 871
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 872
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/google/android/exoplayer/hls/Variant;

    aput-object p1, v0, v2

    iput-object v0, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource$ExposedTrack;->variants:[Lcom/google/android/exoplayer/hls/Variant;

    .line 873
    iput v2, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource$ExposedTrack;->defaultVariantIndex:I

    .line 874
    iput v1, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource$ExposedTrack;->adaptiveMaxWidth:I

    .line 875
    iput v1, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource$ExposedTrack;->adaptiveMaxHeight:I

    .line 876
    return-void
.end method

.method public constructor <init>([Lcom/google/android/exoplayer/hls/Variant;III)V
    .registers 5
    .param p1, "adaptiveVariants"    # [Lcom/google/android/exoplayer/hls/Variant;
    .param p2, "defaultVariantIndex"    # I
    .param p3, "maxWidth"    # I
    .param p4, "maxHeight"    # I

    .prologue
    .line 879
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 880
    iput-object p1, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource$ExposedTrack;->variants:[Lcom/google/android/exoplayer/hls/Variant;

    .line 881
    iput p2, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource$ExposedTrack;->defaultVariantIndex:I

    .line 882
    iput p3, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource$ExposedTrack;->adaptiveMaxWidth:I

    .line 883
    iput p4, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource$ExposedTrack;->adaptiveMaxHeight:I

    .line 884
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/exoplayer/hls/HlsChunkSource$ExposedTrack;)[Lcom/google/android/exoplayer/hls/Variant;
    .registers 2
    .param p0, "x0"    # Lcom/google/android/exoplayer/hls/HlsChunkSource$ExposedTrack;

    .prologue
    .line 863
    iget-object v0, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource$ExposedTrack;->variants:[Lcom/google/android/exoplayer/hls/Variant;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/exoplayer/hls/HlsChunkSource$ExposedTrack;)I
    .registers 2
    .param p0, "x0"    # Lcom/google/android/exoplayer/hls/HlsChunkSource$ExposedTrack;

    .prologue
    .line 863
    iget v0, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource$ExposedTrack;->defaultVariantIndex:I

    return v0
.end method

.method static synthetic access$200(Lcom/google/android/exoplayer/hls/HlsChunkSource$ExposedTrack;)I
    .registers 2
    .param p0, "x0"    # Lcom/google/android/exoplayer/hls/HlsChunkSource$ExposedTrack;

    .prologue
    .line 863
    iget v0, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource$ExposedTrack;->adaptiveMaxWidth:I

    return v0
.end method

.method static synthetic access$300(Lcom/google/android/exoplayer/hls/HlsChunkSource$ExposedTrack;)I
    .registers 2
    .param p0, "x0"    # Lcom/google/android/exoplayer/hls/HlsChunkSource$ExposedTrack;

    .prologue
    .line 863
    iget v0, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource$ExposedTrack;->adaptiveMaxHeight:I

    return v0
.end method
