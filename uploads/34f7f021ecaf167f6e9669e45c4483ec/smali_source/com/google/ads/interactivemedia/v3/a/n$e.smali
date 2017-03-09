.class final Lcom/google/ads/interactivemedia/v3/a/n$e;
.super Ljava/lang/Object;
.source "IMASDK"

# interfaces
.implements Lcom/google/ads/interactivemedia/v3/a/n$c;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/ads/interactivemedia/v3/a/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "e"
.end annotation


# instance fields
.field private final a:I

.field private b:[Landroid/media/MediaCodecInfo;


# direct methods
.method public constructor <init>(Z)V
    .registers 3

    .prologue
    .line 419
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 420
    if-eqz p1, :cond_9

    const/4 v0, 0x1

    :goto_6
    iput v0, p0, Lcom/google/ads/interactivemedia/v3/a/n$e;->a:I

    .line 421
    return-void

    .line 420
    :cond_9
    const/4 v0, 0x0

    goto :goto_6
.end method

.method private c()V
    .registers 3

    .prologue
    .line 446
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/n$e;->b:[Landroid/media/MediaCodecInfo;

    if-nez v0, :cond_11

    .line 447
    new-instance v0, Landroid/media/MediaCodecList;

    iget v1, p0, Lcom/google/ads/interactivemedia/v3/a/n$e;->a:I

    invoke-direct {v0, v1}, Landroid/media/MediaCodecList;-><init>(I)V

    invoke-virtual {v0}, Landroid/media/MediaCodecList;->getCodecInfos()[Landroid/media/MediaCodecInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/n$e;->b:[Landroid/media/MediaCodecInfo;

    .line 449
    :cond_11
    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    .prologue
    .line 425
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/a/n$e;->c()V

    .line 426
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/n$e;->b:[Landroid/media/MediaCodecInfo;

    array-length v0, v0

    return v0
.end method

.method public a(I)Landroid/media/MediaCodecInfo;
    .registers 3

    .prologue
    .line 431
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/a/n$e;->c()V

    .line 432
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/n$e;->b:[Landroid/media/MediaCodecInfo;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public a(Ljava/lang/String;Landroid/media/MediaCodecInfo$CodecCapabilities;)Z
    .registers 4

    .prologue
    .line 442
    const-string v0, "secure-playback"

    invoke-virtual {p2, v0}, Landroid/media/MediaCodecInfo$CodecCapabilities;->isFeatureSupported(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public b()Z
    .registers 2

    .prologue
    .line 437
    const/4 v0, 0x1

    return v0
.end method
