.class public final Lcom/google/ads/interactivemedia/v3/a/e;
.super Ljava/lang/Object;
.source "IMASDK"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x10
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Landroid/media/MediaCodecInfo$CodecCapabilities;

.field public final c:Z


# direct methods
.method constructor <init>(Ljava/lang/String;Landroid/media/MediaCodecInfo$CodecCapabilities;)V
    .registers 4

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/a/e;->a:Ljava/lang/String;

    .line 55
    iput-object p2, p0, Lcom/google/ads/interactivemedia/v3/a/e;->b:Landroid/media/MediaCodecInfo$CodecCapabilities;

    .line 56
    invoke-static {p2}, Lcom/google/ads/interactivemedia/v3/a/e;->a(Landroid/media/MediaCodecInfo$CodecCapabilities;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/a/e;->c:Z

    .line 57
    return-void
.end method

.method private static a(Landroid/media/MediaCodecInfo$CodecCapabilities;)Z
    .registers 3

    .prologue
    .line 60
    if-eqz p0, :cond_10

    sget v0, Lcom/google/ads/interactivemedia/v3/a/f/q;->a:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_10

    invoke-static {p0}, Lcom/google/ads/interactivemedia/v3/a/e;->b(Landroid/media/MediaCodecInfo$CodecCapabilities;)Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method private static b(Landroid/media/MediaCodecInfo$CodecCapabilities;)Z
    .registers 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    .prologue
    .line 65
    const-string v0, "adaptive-playback"

    invoke-virtual {p0, v0}, Landroid/media/MediaCodecInfo$CodecCapabilities;->isFeatureSupported(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
