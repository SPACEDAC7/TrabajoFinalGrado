.class public Lcom/google/ads/interactivemedia/v3/impl/f;
.super Ljava/lang/Object;
.source "IMASDK"

# interfaces
.implements Lcom/google/ads/interactivemedia/v3/api/AdProgressInfo;


# instance fields
.field private final a:D

.field private final b:D

.field private final c:I

.field private final d:I

.field private final e:D


# direct methods
.method constructor <init>(DDIID)V
    .registers 10

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-wide p1, p0, Lcom/google/ads/interactivemedia/v3/impl/f;->a:D

    .line 19
    iput-wide p3, p0, Lcom/google/ads/interactivemedia/v3/impl/f;->b:D

    .line 20
    iput p5, p0, Lcom/google/ads/interactivemedia/v3/impl/f;->c:I

    .line 21
    iput p6, p0, Lcom/google/ads/interactivemedia/v3/impl/f;->d:I

    .line 22
    iput-wide p7, p0, Lcom/google/ads/interactivemedia/v3/impl/f;->e:D

    .line 23
    return-void
.end method


# virtual methods
.method public getAdBreakDuration()D
    .registers 3

    .prologue
    .line 47
    iget-wide v0, p0, Lcom/google/ads/interactivemedia/v3/impl/f;->e:D

    return-wide v0
.end method

.method public getAdPosition()I
    .registers 2

    .prologue
    .line 37
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/impl/f;->c:I

    return v0
.end method

.method public getCurrentTime()D
    .registers 3

    .prologue
    .line 27
    iget-wide v0, p0, Lcom/google/ads/interactivemedia/v3/impl/f;->a:D

    return-wide v0
.end method

.method public getDuration()D
    .registers 3

    .prologue
    .line 32
    iget-wide v0, p0, Lcom/google/ads/interactivemedia/v3/impl/f;->b:D

    return-wide v0
.end method

.method public getTotalAds()I
    .registers 2

    .prologue
    .line 42
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/impl/f;->d:I

    return v0
.end method
