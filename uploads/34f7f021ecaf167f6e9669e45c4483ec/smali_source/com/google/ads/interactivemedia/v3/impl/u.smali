.class public Lcom/google/ads/interactivemedia/v3/impl/u;
.super Lcom/google/ads/interactivemedia/v3/impl/af;
.source "IMASDK"


# instance fields
.field protected final a:Lcom/google/ads/interactivemedia/v3/api/player/ContentProgressProvider;


# direct methods
.method public constructor <init>(Lcom/google/ads/interactivemedia/v3/api/player/ContentProgressProvider;J)V
    .registers 4

    .prologue
    .line 16
    invoke-direct {p0, p2, p3}, Lcom/google/ads/interactivemedia/v3/impl/af;-><init>(J)V

    .line 17
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/u;->a:Lcom/google/ads/interactivemedia/v3/api/player/ContentProgressProvider;

    .line 18
    return-void
.end method


# virtual methods
.method public a()Lcom/google/ads/interactivemedia/v3/api/player/VideoProgressUpdate;
    .registers 3

    .prologue
    .line 22
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/u;->a:Lcom/google/ads/interactivemedia/v3/api/player/ContentProgressProvider;

    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/api/player/ContentProgressProvider;->getContentProgress()Lcom/google/ads/interactivemedia/v3/api/player/VideoProgressUpdate;

    move-result-object v0

    .line 23
    if-nez v0, :cond_11

    .line 24
    const-string v0, "IMASDK"

    const-string v1, "ContentProgressProvider.getContentProgress() is null. Use VideoProgressUpdate.VIDEO_TIME_NOT_READY instead."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    sget-object v0, Lcom/google/ads/interactivemedia/v3/api/player/VideoProgressUpdate;->VIDEO_TIME_NOT_READY:Lcom/google/ads/interactivemedia/v3/api/player/VideoProgressUpdate;

    .line 28
    :cond_11
    return-object v0
.end method
