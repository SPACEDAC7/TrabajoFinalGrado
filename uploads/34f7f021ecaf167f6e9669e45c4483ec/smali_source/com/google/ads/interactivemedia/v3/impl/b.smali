.class public Lcom/google/ads/interactivemedia/v3/impl/b;
.super Lcom/google/ads/interactivemedia/v3/impl/p;
.source "IMASDK"

# interfaces
.implements Lcom/google/ads/interactivemedia/v3/api/AdDisplayContainer;


# instance fields
.field private a:Lcom/google/ads/interactivemedia/v3/api/player/VideoAdPlayer;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/impl/p;-><init>()V

    return-void
.end method


# virtual methods
.method public getPlayer()Lcom/google/ads/interactivemedia/v3/api/player/VideoAdPlayer;
    .registers 2

    .prologue
    .line 18
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/b;->a:Lcom/google/ads/interactivemedia/v3/api/player/VideoAdPlayer;

    return-object v0
.end method

.method public setPlayer(Lcom/google/ads/interactivemedia/v3/api/player/VideoAdPlayer;)V
    .registers 2

    .prologue
    .line 26
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/b;->a:Lcom/google/ads/interactivemedia/v3/api/player/VideoAdPlayer;

    .line 27
    return-void
.end method
