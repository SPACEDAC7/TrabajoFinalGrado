.class public abstract Lcom/google/ads/interactivemedia/v3/impl/data/k;
.super Ljava/lang/Object;
.source "IMASDK"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/ads/interactivemedia/v3/impl/data/k$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static builder()Lcom/google/ads/interactivemedia/v3/impl/data/k$a;
    .registers 1

    .prologue
    .line 59
    new-instance v0, Lcom/google/ads/interactivemedia/v3/impl/data/h$a;

    invoke-direct {v0}, Lcom/google/ads/interactivemedia/v3/impl/data/h$a;-><init>()V

    return-object v0
.end method

.method public static create(Lcom/google/ads/interactivemedia/v3/api/AdsRequest;Ljava/lang/String;Ljava/lang/String;Lcom/google/ads/interactivemedia/v3/api/ImaSdkSettings;Lcom/google/ads/interactivemedia/v3/impl/h$b;Z)Lcom/google/ads/interactivemedia/v3/impl/data/k;
    .registers 12

    .prologue
    .line 29
    invoke-interface {p0}, Lcom/google/ads/interactivemedia/v3/api/AdsRequest;->getAdTagUrl()Ljava/lang/String;

    move-result-object v1

    .line 30
    invoke-interface {p0}, Lcom/google/ads/interactivemedia/v3/api/AdsRequest;->getAdsResponse()Ljava/lang/String;

    move-result-object v2

    .line 31
    invoke-interface {p0}, Lcom/google/ads/interactivemedia/v3/api/AdsRequest;->getExtraParameters()Ljava/util/Map;

    move-result-object v3

    move-object v0, p0

    .line 32
    check-cast v0, Lcom/google/ads/interactivemedia/v3/impl/m;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/impl/m;->a()Lcom/google/ads/interactivemedia/v3/impl/m$a;

    move-result-object v4

    .line 34
    invoke-interface {p0}, Lcom/google/ads/interactivemedia/v3/api/AdsRequest;->getAdDisplayContainer()Lcom/google/ads/interactivemedia/v3/api/AdDisplayContainer;

    move-result-object v0

    check-cast v0, Lcom/google/ads/interactivemedia/v3/impl/b;

    .line 33
    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/impl/data/k;->getCompanionSlots(Lcom/google/ads/interactivemedia/v3/impl/p;)Ljava/util/Map;

    move-result-object v0

    .line 36
    invoke-static {}, Lcom/google/ads/interactivemedia/v3/impl/data/k;->builder()Lcom/google/ads/interactivemedia/v3/impl/data/k$a;

    move-result-object v5

    invoke-interface {v5, v1}, Lcom/google/ads/interactivemedia/v3/impl/data/k$a;->adTagUrl(Ljava/lang/String;)Lcom/google/ads/interactivemedia/v3/impl/data/k$a;

    move-result-object v1

    invoke-interface {v1, v2}, Lcom/google/ads/interactivemedia/v3/impl/data/k$a;->adsResponse(Ljava/lang/String;)Lcom/google/ads/interactivemedia/v3/impl/data/k$a;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/google/ads/interactivemedia/v3/impl/data/k$a;->env(Ljava/lang/String;)Lcom/google/ads/interactivemedia/v3/impl/data/k$a;

    move-result-object v1

    .line 37
    invoke-interface {v1, p2}, Lcom/google/ads/interactivemedia/v3/impl/data/k$a;->network(Ljava/lang/String;)Lcom/google/ads/interactivemedia/v3/impl/data/k$a;

    move-result-object v1

    invoke-interface {v1, v3}, Lcom/google/ads/interactivemedia/v3/impl/data/k$a;->extraParameters(Ljava/util/Map;)Lcom/google/ads/interactivemedia/v3/impl/data/k$a;

    move-result-object v1

    invoke-interface {v1, p3}, Lcom/google/ads/interactivemedia/v3/impl/data/k$a;->settings(Lcom/google/ads/interactivemedia/v3/api/ImaSdkSettings;)Lcom/google/ads/interactivemedia/v3/impl/data/k$a;

    move-result-object v1

    .line 38
    invoke-interface {v1, v4}, Lcom/google/ads/interactivemedia/v3/impl/data/k$a;->videoPlayActivation(Lcom/google/ads/interactivemedia/v3/impl/m$a;)Lcom/google/ads/interactivemedia/v3/impl/data/k$a;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/google/ads/interactivemedia/v3/impl/data/k$a;->companionSlots(Ljava/util/Map;)Lcom/google/ads/interactivemedia/v3/impl/data/k$a;

    move-result-object v0

    .line 39
    invoke-interface {v0, p4}, Lcom/google/ads/interactivemedia/v3/impl/data/k$a;->marketAppInfo(Lcom/google/ads/interactivemedia/v3/impl/h$b;)Lcom/google/ads/interactivemedia/v3/impl/data/k$a;

    move-result-object v0

    invoke-static {p5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/ads/interactivemedia/v3/impl/data/k$a;->isTv(Ljava/lang/Boolean;)Lcom/google/ads/interactivemedia/v3/impl/data/k$a;

    move-result-object v0

    .line 40
    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/impl/data/k$a;->build()Lcom/google/ads/interactivemedia/v3/impl/data/k;

    move-result-object v0

    .line 36
    return-object v0
.end method

.method public static createFromStreamRequest(Lcom/google/ads/interactivemedia/v3/api/StreamRequest;Ljava/lang/String;Ljava/lang/String;Lcom/google/ads/interactivemedia/v3/api/ImaSdkSettings;Lcom/google/ads/interactivemedia/v3/impl/h$b;ZLjava/lang/String;)Lcom/google/ads/interactivemedia/v3/impl/data/k;
    .registers 10

    .prologue
    .line 46
    .line 47
    invoke-interface {p0}, Lcom/google/ads/interactivemedia/v3/api/StreamRequest;->getStreamDisplayContainer()Lcom/google/ads/interactivemedia/v3/api/StreamDisplayContainer;

    move-result-object v0

    check-cast v0, Lcom/google/ads/interactivemedia/v3/impl/ah;

    .line 46
    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/impl/data/k;->getCompanionSlots(Lcom/google/ads/interactivemedia/v3/impl/p;)Ljava/util/Map;

    move-result-object v0

    .line 49
    invoke-static {}, Lcom/google/ads/interactivemedia/v3/impl/data/k;->builder()Lcom/google/ads/interactivemedia/v3/impl/data/k$a;

    move-result-object v1

    invoke-interface {p0}, Lcom/google/ads/interactivemedia/v3/api/StreamRequest;->getAssetKey()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/google/ads/interactivemedia/v3/impl/data/k$a;->assetKey(Ljava/lang/String;)Lcom/google/ads/interactivemedia/v3/impl/data/k$a;

    move-result-object v1

    .line 50
    invoke-interface {p0}, Lcom/google/ads/interactivemedia/v3/api/StreamRequest;->getContentSourceId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/google/ads/interactivemedia/v3/impl/data/k$a;->contentSourceId(Ljava/lang/String;)Lcom/google/ads/interactivemedia/v3/impl/data/k$a;

    move-result-object v1

    invoke-interface {p0}, Lcom/google/ads/interactivemedia/v3/api/StreamRequest;->getVideoId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/google/ads/interactivemedia/v3/impl/data/k$a;->videoId(Ljava/lang/String;)Lcom/google/ads/interactivemedia/v3/impl/data/k$a;

    move-result-object v1

    .line 51
    invoke-interface {p0}, Lcom/google/ads/interactivemedia/v3/api/StreamRequest;->getApiKey()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/google/ads/interactivemedia/v3/impl/data/k$a;->apiKey(Ljava/lang/String;)Lcom/google/ads/interactivemedia/v3/impl/data/k$a;

    move-result-object v1

    invoke-interface {p0}, Lcom/google/ads/interactivemedia/v3/api/StreamRequest;->isPrerollRequested()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/google/ads/interactivemedia/v3/impl/data/k$a;->attemptPreroll(Ljava/lang/Boolean;)Lcom/google/ads/interactivemedia/v3/impl/data/k$a;

    move-result-object v1

    .line 52
    invoke-interface {p0}, Lcom/google/ads/interactivemedia/v3/api/StreamRequest;->getAdTagParameters()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/google/ads/interactivemedia/v3/impl/data/k$a;->adTagParameters(Ljava/util/Map;)Lcom/google/ads/interactivemedia/v3/impl/data/k$a;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/google/ads/interactivemedia/v3/impl/data/k$a;->env(Ljava/lang/String;)Lcom/google/ads/interactivemedia/v3/impl/data/k$a;

    move-result-object v1

    invoke-interface {v1, p2}, Lcom/google/ads/interactivemedia/v3/impl/data/k$a;->network(Ljava/lang/String;)Lcom/google/ads/interactivemedia/v3/impl/data/k$a;

    move-result-object v1

    .line 53
    invoke-interface {v1, p3}, Lcom/google/ads/interactivemedia/v3/impl/data/k$a;->settings(Lcom/google/ads/interactivemedia/v3/api/ImaSdkSettings;)Lcom/google/ads/interactivemedia/v3/impl/data/k$a;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/google/ads/interactivemedia/v3/impl/data/k$a;->companionSlots(Ljava/util/Map;)Lcom/google/ads/interactivemedia/v3/impl/data/k$a;

    move-result-object v0

    invoke-interface {v0, p4}, Lcom/google/ads/interactivemedia/v3/impl/data/k$a;->marketAppInfo(Lcom/google/ads/interactivemedia/v3/impl/h$b;)Lcom/google/ads/interactivemedia/v3/impl/data/k$a;

    move-result-object v0

    invoke-static {p5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/ads/interactivemedia/v3/impl/data/k$a;->isTv(Ljava/lang/Boolean;)Lcom/google/ads/interactivemedia/v3/impl/data/k$a;

    move-result-object v0

    .line 54
    invoke-interface {v0, p6}, Lcom/google/ads/interactivemedia/v3/impl/data/k$a;->msParameter(Ljava/lang/String;)Lcom/google/ads/interactivemedia/v3/impl/data/k$a;

    move-result-object v0

    .line 55
    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/impl/data/k$a;->build()Lcom/google/ads/interactivemedia/v3/impl/data/k;

    move-result-object v0

    .line 49
    return-object v0
.end method

.method private static getCompanionSlots(Lcom/google/ads/interactivemedia/v3/impl/p;)Ljava/util/Map;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/ads/interactivemedia/v3/impl/p;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 103
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/impl/p;->a()Ljava/util/Map;

    move-result-object v2

    .line 104
    if-eqz v2, :cond_56

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_56

    .line 105
    new-instance v3, Lcom/google/c/b/n$a;

    invoke-direct {v3}, Lcom/google/c/b/n$a;-><init>()V

    .line 106
    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_19
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_51

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 107
    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/ads/interactivemedia/v3/api/CompanionAdSlot;

    .line 108
    invoke-interface {v1}, Lcom/google/ads/interactivemedia/v3/api/CompanionAdSlot;->getWidth()I

    move-result v5

    invoke-interface {v1}, Lcom/google/ads/interactivemedia/v3/api/CompanionAdSlot;->getHeight()I

    move-result v1

    const/16 v6, 0x17

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "x"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Lcom/google/c/b/n$a;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/c/b/n$a;

    goto :goto_19

    .line 110
    :cond_51
    invoke-virtual {v3}, Lcom/google/c/b/n$a;->a()Lcom/google/c/b/n;

    move-result-object v0

    .line 112
    :goto_55
    return-object v0

    :cond_56
    const/4 v0, 0x0

    goto :goto_55
.end method


# virtual methods
.method public abstract adTagParameters()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract adTagUrl()Ljava/lang/String;
.end method

.method public abstract adsResponse()Ljava/lang/String;
.end method

.method public abstract apiKey()Ljava/lang/String;
.end method

.method public abstract assetKey()Ljava/lang/String;
.end method

.method public abstract attemptPreroll()Ljava/lang/Boolean;
.end method

.method public abstract companionSlots()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract contentSourceId()Ljava/lang/String;
.end method

.method public abstract env()Ljava/lang/String;
.end method

.method public abstract extraParameters()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract isTv()Ljava/lang/Boolean;
.end method

.method public abstract marketAppInfo()Lcom/google/ads/interactivemedia/v3/impl/h$b;
.end method

.method public abstract msParameter()Ljava/lang/String;
.end method

.method public abstract network()Ljava/lang/String;
.end method

.method public abstract settings()Lcom/google/ads/interactivemedia/v3/api/ImaSdkSettings;
.end method

.method public abstract videoId()Ljava/lang/String;
.end method

.method public abstract videoPlayActivation()Lcom/google/ads/interactivemedia/v3/impl/m$a;
.end method
