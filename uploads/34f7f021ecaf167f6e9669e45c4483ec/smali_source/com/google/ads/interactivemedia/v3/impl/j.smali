.class public Lcom/google/ads/interactivemedia/v3/impl/j;
.super Ljava/lang/Object;
.source "IMASDK"

# interfaces
.implements Lcom/google/ads/interactivemedia/v3/api/AdsManagerLoadedEvent;


# instance fields
.field private final a:Lcom/google/ads/interactivemedia/v3/api/AdsManager;

.field private final b:Lcom/google/ads/interactivemedia/v3/api/StreamManager;

.field private final c:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/google/ads/interactivemedia/v3/api/AdsManager;Ljava/lang/Object;)V
    .registers 4

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/j;->a:Lcom/google/ads/interactivemedia/v3/api/AdsManager;

    .line 21
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/j;->b:Lcom/google/ads/interactivemedia/v3/api/StreamManager;

    .line 22
    iput-object p2, p0, Lcom/google/ads/interactivemedia/v3/impl/j;->c:Ljava/lang/Object;

    .line 23
    return-void
.end method

.method constructor <init>(Lcom/google/ads/interactivemedia/v3/api/StreamManager;Ljava/lang/Object;)V
    .registers 4

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/j;->a:Lcom/google/ads/interactivemedia/v3/api/AdsManager;

    .line 27
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/j;->b:Lcom/google/ads/interactivemedia/v3/api/StreamManager;

    .line 28
    iput-object p2, p0, Lcom/google/ads/interactivemedia/v3/impl/j;->c:Ljava/lang/Object;

    .line 29
    return-void
.end method


# virtual methods
.method public getAdsManager()Lcom/google/ads/interactivemedia/v3/api/AdsManager;
    .registers 2

    .prologue
    .line 37
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/j;->a:Lcom/google/ads/interactivemedia/v3/api/AdsManager;

    return-object v0
.end method

.method public getStreamManager()Lcom/google/ads/interactivemedia/v3/api/StreamManager;
    .registers 2

    .prologue
    .line 46
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/j;->b:Lcom/google/ads/interactivemedia/v3/api/StreamManager;

    return-object v0
.end method

.method public getUserRequestContext()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 58
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/j;->c:Ljava/lang/Object;

    return-object v0
.end method
