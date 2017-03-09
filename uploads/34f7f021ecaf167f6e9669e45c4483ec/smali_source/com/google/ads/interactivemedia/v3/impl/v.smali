.class public Lcom/google/ads/interactivemedia/v3/impl/v;
.super Ljava/lang/Object;
.source "IMASDK"

# interfaces
.implements Lcom/google/ads/interactivemedia/v3/api/CuePoint;


# instance fields
.field private final a:D

.field private final b:D

.field private final c:Z


# direct methods
.method constructor <init>(DDZ)V
    .registers 7

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-wide p1, p0, Lcom/google/ads/interactivemedia/v3/impl/v;->a:D

    .line 16
    iput-wide p3, p0, Lcom/google/ads/interactivemedia/v3/impl/v;->b:D

    .line 17
    iput-boolean p5, p0, Lcom/google/ads/interactivemedia/v3/impl/v;->c:Z

    .line 18
    return-void
.end method


# virtual methods
.method public getEndTime()D
    .registers 3

    .prologue
    .line 27
    iget-wide v0, p0, Lcom/google/ads/interactivemedia/v3/impl/v;->b:D

    return-wide v0
.end method

.method public getStartTime()D
    .registers 3

    .prologue
    .line 22
    iget-wide v0, p0, Lcom/google/ads/interactivemedia/v3/impl/v;->a:D

    return-wide v0
.end method

.method public isPlayed()Z
    .registers 2

    .prologue
    .line 32
    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/impl/v;->c:Z

    return v0
.end method
