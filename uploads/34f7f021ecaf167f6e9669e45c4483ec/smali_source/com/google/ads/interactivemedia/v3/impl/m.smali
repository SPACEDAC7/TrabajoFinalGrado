.class public Lcom/google/ads/interactivemedia/v3/impl/m;
.super Ljava/lang/Object;
.source "IMASDK"

# interfaces
.implements Lcom/google/ads/interactivemedia/v3/api/AdsRequest;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/ads/interactivemedia/v3/impl/m$a;
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Lcom/google/ads/interactivemedia/v3/api/AdDisplayContainer;

.field private c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/lang/String;

.field private e:Lcom/google/ads/interactivemedia/v3/api/player/ContentProgressProvider;

.field private f:Lcom/google/ads/interactivemedia/v3/impl/m$a;

.field private transient g:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    sget-object v0, Lcom/google/ads/interactivemedia/v3/impl/m$a;->UNKNOWN:Lcom/google/ads/interactivemedia/v3/impl/m$a;

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/m;->f:Lcom/google/ads/interactivemedia/v3/impl/m$a;

    return-void
.end method


# virtual methods
.method public a()Lcom/google/ads/interactivemedia/v3/impl/m$a;
    .registers 2

    .prologue
    .line 145
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/m;->f:Lcom/google/ads/interactivemedia/v3/impl/m$a;

    return-object v0
.end method

.method public getAdDisplayContainer()Lcom/google/ads/interactivemedia/v3/api/AdDisplayContainer;
    .registers 2

    .prologue
    .line 111
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/m;->b:Lcom/google/ads/interactivemedia/v3/api/AdDisplayContainer;

    return-object v0
.end method

.method public getAdTagUrl()Ljava/lang/String;
    .registers 2

    .prologue
    .line 54
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/m;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getAdsResponse()Ljava/lang/String;
    .registers 2

    .prologue
    .line 136
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/m;->d:Ljava/lang/String;

    return-object v0
.end method

.method public getContentProgressProvider()Lcom/google/ads/interactivemedia/v3/api/player/ContentProgressProvider;
    .registers 2

    .prologue
    .line 126
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/m;->e:Lcom/google/ads/interactivemedia/v3/api/player/ContentProgressProvider;

    return-object v0
.end method

.method public getExtraParameter(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 74
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/m;->c:Ljava/util/Map;

    if-nez v0, :cond_6

    .line 75
    const/4 v0, 0x0

    .line 77
    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/m;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_5
.end method

.method public getExtraParameters()Ljava/util/Map;
    .registers 2
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

    .prologue
    .line 85
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/m;->c:Ljava/util/Map;

    return-object v0
.end method

.method public getUserRequestContext()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 103
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/m;->g:Ljava/lang/Object;

    return-object v0
.end method

.method public setAdDisplayContainer(Lcom/google/ads/interactivemedia/v3/api/AdDisplayContainer;)V
    .registers 2

    .prologue
    .line 121
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/m;->b:Lcom/google/ads/interactivemedia/v3/api/AdDisplayContainer;

    .line 122
    return-void
.end method

.method public setAdTagUrl(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 46
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/m;->a:Ljava/lang/String;

    .line 47
    return-void
.end method

.method public setAdWillAutoPlay(Z)V
    .registers 3

    .prologue
    .line 150
    if-eqz p1, :cond_7

    .line 151
    sget-object v0, Lcom/google/ads/interactivemedia/v3/impl/m$a;->AUTO:Lcom/google/ads/interactivemedia/v3/impl/m$a;

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/m;->f:Lcom/google/ads/interactivemedia/v3/impl/m$a;

    .line 155
    :goto_6
    return-void

    .line 153
    :cond_7
    sget-object v0, Lcom/google/ads/interactivemedia/v3/impl/m$a;->CLICK:Lcom/google/ads/interactivemedia/v3/impl/m$a;

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/m;->f:Lcom/google/ads/interactivemedia/v3/impl/m$a;

    goto :goto_6
.end method

.method public setAdsResponse(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 141
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/m;->d:Ljava/lang/String;

    .line 142
    return-void
.end method

.method public setContentProgressProvider(Lcom/google/ads/interactivemedia/v3/api/player/ContentProgressProvider;)V
    .registers 2

    .prologue
    .line 131
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/m;->e:Lcom/google/ads/interactivemedia/v3/api/player/ContentProgressProvider;

    .line 132
    return-void
.end method

.method public setExtraParameter(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 63
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/m;->c:Ljava/util/Map;

    if-nez v0, :cond_b

    .line 64
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/m;->c:Ljava/util/Map;

    .line 66
    :cond_b
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/m;->c:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    return-void
.end method

.method public setUserRequestContext(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 95
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/m;->g:Ljava/lang/Object;

    .line 96
    return-void
.end method
