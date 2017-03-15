.class public Lcom/google/ads/doubleclick/DfpExtras;
.super Lcom/google/ads/mediation/admob/AdMobAdapterExtras;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/google/ads/mediation/admob/AdMobAdapterExtras;-><init>()V

    .line 17
    return-void
.end method

.method public constructor <init>(Lcom/google/ads/doubleclick/DfpExtras;)V
    .registers 3
    .param p1, "original"    # Lcom/google/ads/doubleclick/DfpExtras;

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/google/ads/mediation/admob/AdMobAdapterExtras;-><init>(Lcom/google/ads/mediation/admob/AdMobAdapterExtras;)V

    .line 27
    if-eqz p1, :cond_9

    .line 28
    iget-object v0, p1, Lcom/google/ads/doubleclick/DfpExtras;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/ads/doubleclick/DfpExtras;->a:Ljava/lang/String;

    .line 30
    :cond_9
    return-void
.end method


# virtual methods
.method public addExtra(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/ads/doubleclick/DfpExtras;
    .registers 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 79
    invoke-super {p0, p1, p2}, Lcom/google/ads/mediation/admob/AdMobAdapterExtras;->addExtra(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/ads/mediation/admob/AdMobAdapterExtras;

    .line 80
    return-object p0
.end method

.method public bridge synthetic addExtra(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/ads/mediation/admob/AdMobAdapterExtras;
    .registers 4
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 12
    invoke-virtual {p0, p1, p2}, Lcom/google/ads/doubleclick/DfpExtras;->addExtra(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/ads/doubleclick/DfpExtras;

    move-result-object v0

    return-object v0
.end method

.method public clearExtras()Lcom/google/ads/doubleclick/DfpExtras;
    .registers 1

    .prologue
    .line 73
    invoke-super {p0}, Lcom/google/ads/mediation/admob/AdMobAdapterExtras;->clearExtras()Lcom/google/ads/mediation/admob/AdMobAdapterExtras;

    .line 74
    return-object p0
.end method

.method public bridge synthetic clearExtras()Lcom/google/ads/mediation/admob/AdMobAdapterExtras;
    .registers 2

    .prologue
    .line 12
    invoke-virtual {p0}, Lcom/google/ads/doubleclick/DfpExtras;->clearExtras()Lcom/google/ads/doubleclick/DfpExtras;

    move-result-object v0

    return-object v0
.end method

.method public getPublisherProvidedId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 37
    iget-object v0, p0, Lcom/google/ads/doubleclick/DfpExtras;->a:Ljava/lang/String;

    return-object v0
.end method

.method public setExtras(Ljava/util/Map;)Lcom/google/ads/doubleclick/DfpExtras;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/google/ads/doubleclick/DfpExtras;"
        }
    .end annotation

    .prologue
    .line 67
    .local p1, "extras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-super {p0, p1}, Lcom/google/ads/mediation/admob/AdMobAdapterExtras;->setExtras(Ljava/util/Map;)Lcom/google/ads/mediation/admob/AdMobAdapterExtras;

    .line 68
    return-object p0
.end method

.method public bridge synthetic setExtras(Ljava/util/Map;)Lcom/google/ads/mediation/admob/AdMobAdapterExtras;
    .registers 3
    .param p1, "x0"    # Ljava/util/Map;

    .prologue
    .line 12
    invoke-virtual {p0, p1}, Lcom/google/ads/doubleclick/DfpExtras;->setExtras(Ljava/util/Map;)Lcom/google/ads/doubleclick/DfpExtras;

    move-result-object v0

    return-object v0
.end method

.method public setPlusOneOptOut(Z)Lcom/google/ads/doubleclick/DfpExtras;
    .registers 2
    .param p1, "plusOneOptOut"    # Z

    .prologue
    .line 55
    invoke-super {p0, p1}, Lcom/google/ads/mediation/admob/AdMobAdapterExtras;->setPlusOneOptOut(Z)Lcom/google/ads/mediation/admob/AdMobAdapterExtras;

    .line 56
    return-object p0
.end method

.method public bridge synthetic setPlusOneOptOut(Z)Lcom/google/ads/mediation/admob/AdMobAdapterExtras;
    .registers 3
    .param p1, "x0"    # Z

    .prologue
    .line 12
    invoke-virtual {p0, p1}, Lcom/google/ads/doubleclick/DfpExtras;->setPlusOneOptOut(Z)Lcom/google/ads/doubleclick/DfpExtras;

    move-result-object v0

    return-object v0
.end method

.method public setPublisherProvidedId(Ljava/lang/String;)Lcom/google/ads/doubleclick/DfpExtras;
    .registers 2
    .param p1, "publisherProvidedId"    # Ljava/lang/String;

    .prologue
    .line 46
    iput-object p1, p0, Lcom/google/ads/doubleclick/DfpExtras;->a:Ljava/lang/String;

    .line 47
    return-object p0
.end method

.method public setUseExactAdSize(Z)Lcom/google/ads/doubleclick/DfpExtras;
    .registers 2
    .param p1, "useExactAdSize"    # Z

    .prologue
    .line 61
    invoke-super {p0, p1}, Lcom/google/ads/mediation/admob/AdMobAdapterExtras;->setUseExactAdSize(Z)Lcom/google/ads/mediation/admob/AdMobAdapterExtras;

    .line 62
    return-object p0
.end method

.method public bridge synthetic setUseExactAdSize(Z)Lcom/google/ads/mediation/admob/AdMobAdapterExtras;
    .registers 3
    .param p1, "x0"    # Z

    .prologue
    .line 12
    invoke-virtual {p0, p1}, Lcom/google/ads/doubleclick/DfpExtras;->setUseExactAdSize(Z)Lcom/google/ads/doubleclick/DfpExtras;

    move-result-object v0

    return-object v0
.end method
