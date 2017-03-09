.class public Lcom/google/ads/interactivemedia/v3/impl/g;
.super Lcom/google/ads/interactivemedia/v3/impl/af;
.source "IMASDK"


# instance fields
.field protected final a:Lcom/google/ads/interactivemedia/v3/api/player/AdProgressProvider;


# direct methods
.method public constructor <init>(Lcom/google/ads/interactivemedia/v3/api/player/AdProgressProvider;J)V
    .registers 4

    .prologue
    .line 13
    invoke-direct {p0, p2, p3}, Lcom/google/ads/interactivemedia/v3/impl/af;-><init>(J)V

    .line 14
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/g;->a:Lcom/google/ads/interactivemedia/v3/api/player/AdProgressProvider;

    .line 15
    return-void
.end method


# virtual methods
.method public a()Lcom/google/ads/interactivemedia/v3/api/player/VideoProgressUpdate;
    .registers 2

    .prologue
    .line 19
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/g;->a:Lcom/google/ads/interactivemedia/v3/api/player/AdProgressProvider;

    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/api/player/AdProgressProvider;->getAdProgress()Lcom/google/ads/interactivemedia/v3/api/player/VideoProgressUpdate;

    move-result-object v0

    return-object v0
.end method
