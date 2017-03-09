.class public Lcom/google/ads/interactivemedia/v3/impl/ah;
.super Lcom/google/ads/interactivemedia/v3/impl/p;
.source "IMASDK"

# interfaces
.implements Lcom/google/ads/interactivemedia/v3/api/StreamDisplayContainer;


# instance fields
.field private a:Lcom/google/ads/interactivemedia/v3/api/player/VideoStreamPlayer;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/impl/p;-><init>()V

    return-void
.end method


# virtual methods
.method public getVideoStreamPlayer()Lcom/google/ads/interactivemedia/v3/api/player/VideoStreamPlayer;
    .registers 2

    .prologue
    .line 16
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/ah;->a:Lcom/google/ads/interactivemedia/v3/api/player/VideoStreamPlayer;

    return-object v0
.end method

.method public setVideoStreamPlayer(Lcom/google/ads/interactivemedia/v3/api/player/VideoStreamPlayer;)V
    .registers 2

    .prologue
    .line 21
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/ah;->a:Lcom/google/ads/interactivemedia/v3/api/player/VideoStreamPlayer;

    .line 22
    return-void
.end method
