.class public Lcom/google/ads/mediation/admob/AdMobAdapterExtras;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/ads/mediation/NetworkExtras;


# instance fields
.field private a:Z

.field private b:Z

.field private c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-boolean v0, p0, Lcom/google/ads/mediation/admob/AdMobAdapterExtras;->a:Z

    .line 64
    iput-boolean v0, p0, Lcom/google/ads/mediation/admob/AdMobAdapterExtras;->b:Z

    .line 22
    invoke-virtual {p0}, Lcom/google/ads/mediation/admob/AdMobAdapterExtras;->clearExtras()Lcom/google/ads/mediation/admob/AdMobAdapterExtras;

    .line 23
    return-void
.end method

.method public constructor <init>(Lcom/google/ads/mediation/admob/AdMobAdapterExtras;)V
    .registers 4
    .param p1, "original"    # Lcom/google/ads/mediation/admob/AdMobAdapterExtras;

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/google/ads/mediation/admob/AdMobAdapterExtras;-><init>()V

    .line 33
    if-eqz p1, :cond_14

    .line 34
    iget-boolean v0, p1, Lcom/google/ads/mediation/admob/AdMobAdapterExtras;->a:Z

    iput-boolean v0, p0, Lcom/google/ads/mediation/admob/AdMobAdapterExtras;->a:Z

    .line 35
    iget-boolean v0, p1, Lcom/google/ads/mediation/admob/AdMobAdapterExtras;->b:Z

    iput-boolean v0, p0, Lcom/google/ads/mediation/admob/AdMobAdapterExtras;->b:Z

    .line 36
    iget-object v0, p0, Lcom/google/ads/mediation/admob/AdMobAdapterExtras;->c:Ljava/util/Map;

    iget-object v1, p1, Lcom/google/ads/mediation/admob/AdMobAdapterExtras;->c:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 38
    :cond_14
    return-void
.end method


# virtual methods
.method public addExtra(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/ads/mediation/admob/AdMobAdapterExtras;
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 136
    iget-object v0, p0, Lcom/google/ads/mediation/admob/AdMobAdapterExtras;->c:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    return-object p0
.end method

.method public clearExtras()Lcom/google/ads/mediation/admob/AdMobAdapterExtras;
    .registers 2

    .prologue
    .line 123
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/ads/mediation/admob/AdMobAdapterExtras;->c:Ljava/util/Map;

    .line 124
    return-object p0
.end method

.method public getExtras()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 99
    iget-object v0, p0, Lcom/google/ads/mediation/admob/AdMobAdapterExtras;->c:Ljava/util/Map;

    return-object v0
.end method

.method public getPlusOneOptOut()Z
    .registers 2

    .prologue
    .line 60
    iget-boolean v0, p0, Lcom/google/ads/mediation/admob/AdMobAdapterExtras;->a:Z

    return v0
.end method

.method public getUseExactAdSize()Z
    .registers 2

    .prologue
    .line 87
    iget-boolean v0, p0, Lcom/google/ads/mediation/admob/AdMobAdapterExtras;->b:Z

    return v0
.end method

.method public setExtras(Ljava/util/Map;)Lcom/google/ads/mediation/admob/AdMobAdapterExtras;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/google/ads/mediation/admob/AdMobAdapterExtras;"
        }
    .end annotation

    .prologue
    .line 110
    .local p1, "extras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    if-nez p1, :cond_a

    .line 111
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Argument \'extras\' may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 113
    :cond_a
    iput-object p1, p0, Lcom/google/ads/mediation/admob/AdMobAdapterExtras;->c:Ljava/util/Map;

    .line 114
    return-object p0
.end method

.method public setPlusOneOptOut(Z)Lcom/google/ads/mediation/admob/AdMobAdapterExtras;
    .registers 2
    .param p1, "plusOneOptOut"    # Z

    .prologue
    .line 51
    iput-boolean p1, p0, Lcom/google/ads/mediation/admob/AdMobAdapterExtras;->a:Z

    .line 52
    return-object p0
.end method

.method public setUseExactAdSize(Z)Lcom/google/ads/mediation/admob/AdMobAdapterExtras;
    .registers 2
    .param p1, "useExactAdSize"    # Z

    .prologue
    .line 77
    iput-boolean p1, p0, Lcom/google/ads/mediation/admob/AdMobAdapterExtras;->b:Z

    .line 78
    return-object p0
.end method
