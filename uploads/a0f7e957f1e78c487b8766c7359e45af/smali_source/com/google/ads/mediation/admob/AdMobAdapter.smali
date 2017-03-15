.class public Lcom/google/ads/mediation/admob/AdMobAdapter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/ads/mediation/MediationBannerAdapter;
.implements Lcom/google/ads/mediation/MediationInterstitialAdapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/ads/mediation/admob/AdMobAdapter$1;,
        Lcom/google/ads/mediation/admob/AdMobAdapter$b;,
        Lcom/google/ads/mediation/admob/AdMobAdapter$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/ads/mediation/MediationBannerAdapter",
        "<",
        "Lcom/google/ads/mediation/admob/AdMobAdapterExtras;",
        "Lcom/google/ads/mediation/admob/AdMobAdapterServerParameters;",
        ">;",
        "Lcom/google/ads/mediation/MediationInterstitialAdapter",
        "<",
        "Lcom/google/ads/mediation/admob/AdMobAdapterExtras;",
        "Lcom/google/ads/mediation/admob/AdMobAdapterServerParameters;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Lcom/google/ads/mediation/MediationBannerListener;

.field private b:Lcom/google/ads/mediation/MediationInterstitialListener;

.field private c:Lcom/google/ads/AdView;

.field private d:Lcom/google/ads/InterstitialAd;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 302
    return-void
.end method

.method private a(Landroid/app/Activity;Lcom/google/ads/mediation/admob/AdMobAdapterServerParameters;Lcom/google/ads/mediation/MediationAdRequest;Lcom/google/ads/mediation/admob/AdMobAdapterExtras;)Lcom/google/ads/AdRequest;
    .registers 8

    .prologue
    .line 88
    new-instance v0, Lcom/google/ads/mediation/admob/AdMobAdapterExtras;

    invoke-direct {v0, p4}, Lcom/google/ads/mediation/admob/AdMobAdapterExtras;-><init>(Lcom/google/ads/mediation/admob/AdMobAdapterExtras;)V

    .line 91
    const-string v1, "_norefresh"

    const-string v2, "t"

    invoke-virtual {v0, v1, v2}, Lcom/google/ads/mediation/admob/AdMobAdapterExtras;->addExtra(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/ads/mediation/admob/AdMobAdapterExtras;

    .line 94
    const-string v1, "gw"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/ads/mediation/admob/AdMobAdapterExtras;->addExtra(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/ads/mediation/admob/AdMobAdapterExtras;

    .line 96
    iget-object v1, p2, Lcom/google/ads/mediation/admob/AdMobAdapterServerParameters;->allowHouseAds:Ljava/lang/String;

    if-eqz v1, :cond_21

    .line 97
    const-string v1, "mad_hac"

    iget-object v2, p2, Lcom/google/ads/mediation/admob/AdMobAdapterServerParameters;->allowHouseAds:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/ads/mediation/admob/AdMobAdapterExtras;->addExtra(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/ads/mediation/admob/AdMobAdapterExtras;

    .line 101
    :cond_21
    new-instance v1, Lcom/google/ads/AdRequest;

    invoke-direct {v1}, Lcom/google/ads/AdRequest;-><init>()V

    invoke-virtual {p3}, Lcom/google/ads/mediation/MediationAdRequest;->getBirthday()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/ads/AdRequest;->setBirthday(Ljava/util/Date;)Lcom/google/ads/AdRequest;

    move-result-object v1

    invoke-virtual {p3}, Lcom/google/ads/mediation/MediationAdRequest;->getGender()Lcom/google/ads/AdRequest$Gender;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/ads/AdRequest;->setGender(Lcom/google/ads/AdRequest$Gender;)Lcom/google/ads/AdRequest;

    move-result-object v1

    invoke-virtual {p3}, Lcom/google/ads/mediation/MediationAdRequest;->getKeywords()Ljava/util/Set;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/ads/AdRequest;->setKeywords(Ljava/util/Set;)Lcom/google/ads/AdRequest;

    move-result-object v1

    invoke-virtual {p3}, Lcom/google/ads/mediation/MediationAdRequest;->getLocation()Landroid/location/Location;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/ads/AdRequest;->setLocation(Landroid/location/Location;)Lcom/google/ads/AdRequest;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/ads/AdRequest;->setNetworkExtras(Lcom/google/ads/mediation/NetworkExtras;)Lcom/google/ads/AdRequest;

    move-result-object v0

    .line 108
    invoke-virtual {p3}, Lcom/google/ads/mediation/MediationAdRequest;->isTesting()Z

    move-result v1

    if-eqz v1, :cond_57

    .line 114
    invoke-static {p1}, Lcom/google/ads/util/AdUtil;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/ads/AdRequest;->addTestDevice(Ljava/lang/String;)Lcom/google/ads/AdRequest;

    .line 117
    :cond_57
    return-object v0
.end method

.method static synthetic a(Lcom/google/ads/mediation/admob/AdMobAdapter;)Lcom/google/ads/mediation/MediationBannerListener;
    .registers 2

    .prologue
    .line 25
    iget-object v0, p0, Lcom/google/ads/mediation/admob/AdMobAdapter;->a:Lcom/google/ads/mediation/MediationBannerListener;

    return-object v0
.end method

.method private a()V
    .registers 3

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/google/ads/mediation/admob/AdMobAdapter;->b()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 61
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Adapter has already been destroyed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 63
    :cond_e
    return-void
.end method

.method static synthetic b(Lcom/google/ads/mediation/admob/AdMobAdapter;)Lcom/google/ads/mediation/MediationInterstitialListener;
    .registers 2

    .prologue
    .line 25
    iget-object v0, p0, Lcom/google/ads/mediation/admob/AdMobAdapter;->b:Lcom/google/ads/mediation/MediationInterstitialListener;

    return-object v0
.end method

.method private b()Z
    .registers 2

    .prologue
    .line 70
    iget-object v0, p0, Lcom/google/ads/mediation/admob/AdMobAdapter;->c:Lcom/google/ads/AdView;

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/google/ads/mediation/admob/AdMobAdapter;->d:Lcom/google/ads/InterstitialAd;

    if-nez v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method


# virtual methods
.method protected a(Landroid/app/Activity;Lcom/google/ads/AdSize;Ljava/lang/String;)Lcom/google/ads/AdView;
    .registers 5

    .prologue
    .line 127
    new-instance v0, Lcom/google/ads/AdView;

    invoke-direct {v0, p1, p2, p3}, Lcom/google/ads/AdView;-><init>(Landroid/app/Activity;Lcom/google/ads/AdSize;Ljava/lang/String;)V

    return-object v0
.end method

.method protected a(Landroid/app/Activity;Ljava/lang/String;)Lcom/google/ads/InterstitialAd;
    .registers 4

    .prologue
    .line 131
    new-instance v0, Lcom/google/ads/InterstitialAd;

    invoke-direct {v0, p1, p2}, Lcom/google/ads/InterstitialAd;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    return-object v0
.end method

.method public destroy()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 220
    invoke-direct {p0}, Lcom/google/ads/mediation/admob/AdMobAdapter;->a()V

    .line 223
    iget-object v0, p0, Lcom/google/ads/mediation/admob/AdMobAdapter;->c:Lcom/google/ads/AdView;

    if-eqz v0, :cond_14

    .line 224
    iget-object v0, p0, Lcom/google/ads/mediation/admob/AdMobAdapter;->c:Lcom/google/ads/AdView;

    invoke-virtual {v0}, Lcom/google/ads/AdView;->stopLoading()V

    .line 225
    iget-object v0, p0, Lcom/google/ads/mediation/admob/AdMobAdapter;->c:Lcom/google/ads/AdView;

    invoke-virtual {v0}, Lcom/google/ads/AdView;->destroy()V

    .line 226
    iput-object v1, p0, Lcom/google/ads/mediation/admob/AdMobAdapter;->c:Lcom/google/ads/AdView;

    .line 229
    :cond_14
    iget-object v0, p0, Lcom/google/ads/mediation/admob/AdMobAdapter;->d:Lcom/google/ads/InterstitialAd;

    if-eqz v0, :cond_1f

    .line 230
    iget-object v0, p0, Lcom/google/ads/mediation/admob/AdMobAdapter;->d:Lcom/google/ads/InterstitialAd;

    invoke-virtual {v0}, Lcom/google/ads/InterstitialAd;->stopLoading()V

    .line 231
    iput-object v1, p0, Lcom/google/ads/mediation/admob/AdMobAdapter;->d:Lcom/google/ads/InterstitialAd;

    .line 233
    :cond_1f
    return-void
.end method

.method public getAdditionalParametersType()Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<",
            "Lcom/google/ads/mediation/admob/AdMobAdapterExtras;",
            ">;"
        }
    .end annotation

    .prologue
    .line 145
    const-class v0, Lcom/google/ads/mediation/admob/AdMobAdapterExtras;

    return-object v0
.end method

.method public getBannerView()Landroid/view/View;
    .registers 2

    .prologue
    .line 212
    iget-object v0, p0, Lcom/google/ads/mediation/admob/AdMobAdapter;->c:Lcom/google/ads/AdView;

    return-object v0
.end method

.method public getServerParametersType()Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<",
            "Lcom/google/ads/mediation/admob/AdMobAdapterServerParameters;",
            ">;"
        }
    .end annotation

    .prologue
    .line 153
    const-class v0, Lcom/google/ads/mediation/admob/AdMobAdapterServerParameters;

    return-object v0
.end method

.method public bridge synthetic requestBannerAd(Lcom/google/ads/mediation/MediationBannerListener;Landroid/app/Activity;Lcom/google/ads/mediation/MediationServerParameters;Lcom/google/ads/AdSize;Lcom/google/ads/mediation/MediationAdRequest;Lcom/google/ads/mediation/NetworkExtras;)V
    .registers 14
    .param p1, "x0"    # Lcom/google/ads/mediation/MediationBannerListener;
    .param p2, "x1"    # Landroid/app/Activity;
    .param p3, "x2"    # Lcom/google/ads/mediation/MediationServerParameters;
    .param p4, "x3"    # Lcom/google/ads/AdSize;
    .param p5, "x4"    # Lcom/google/ads/mediation/MediationAdRequest;
    .param p6, "x5"    # Lcom/google/ads/mediation/NetworkExtras;

    .prologue
    .line 25
    move-object v3, p3

    check-cast v3, Lcom/google/ads/mediation/admob/AdMobAdapterServerParameters;

    move-object v6, p6

    check-cast v6, Lcom/google/ads/mediation/admob/AdMobAdapterExtras;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/google/ads/mediation/admob/AdMobAdapter;->requestBannerAd(Lcom/google/ads/mediation/MediationBannerListener;Landroid/app/Activity;Lcom/google/ads/mediation/admob/AdMobAdapterServerParameters;Lcom/google/ads/AdSize;Lcom/google/ads/mediation/MediationAdRequest;Lcom/google/ads/mediation/admob/AdMobAdapterExtras;)V

    return-void
.end method

.method public requestBannerAd(Lcom/google/ads/mediation/MediationBannerListener;Landroid/app/Activity;Lcom/google/ads/mediation/admob/AdMobAdapterServerParameters;Lcom/google/ads/AdSize;Lcom/google/ads/mediation/MediationAdRequest;Lcom/google/ads/mediation/admob/AdMobAdapterExtras;)V
    .registers 10
    .param p1, "listener"    # Lcom/google/ads/mediation/MediationBannerListener;
    .param p2, "activity"    # Landroid/app/Activity;
    .param p3, "serverParameters"    # Lcom/google/ads/mediation/admob/AdMobAdapterServerParameters;
    .param p4, "adSize"    # Lcom/google/ads/AdSize;
    .param p5, "mediationAdRequest"    # Lcom/google/ads/mediation/MediationAdRequest;
    .param p6, "extras"    # Lcom/google/ads/mediation/admob/AdMobAdapterExtras;

    .prologue
    .line 167
    iput-object p1, p0, Lcom/google/ads/mediation/admob/AdMobAdapter;->a:Lcom/google/ads/mediation/MediationBannerListener;

    .line 176
    invoke-virtual {p4}, Lcom/google/ads/AdSize;->isAutoHeight()Z

    move-result v0

    if-nez v0, :cond_e

    invoke-virtual {p4}, Lcom/google/ads/AdSize;->isFullWidth()Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 202
    :cond_e
    iget-object v0, p3, Lcom/google/ads/mediation/admob/AdMobAdapterServerParameters;->adUnitId:Ljava/lang/String;

    invoke-virtual {p0, p2, p4, v0}, Lcom/google/ads/mediation/admob/AdMobAdapter;->a(Landroid/app/Activity;Lcom/google/ads/AdSize;Ljava/lang/String;)Lcom/google/ads/AdView;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ads/mediation/admob/AdMobAdapter;->c:Lcom/google/ads/AdView;

    .line 203
    iget-object v0, p0, Lcom/google/ads/mediation/admob/AdMobAdapter;->c:Lcom/google/ads/AdView;

    new-instance v1, Lcom/google/ads/mediation/admob/AdMobAdapter$a;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/google/ads/mediation/admob/AdMobAdapter$a;-><init>(Lcom/google/ads/mediation/admob/AdMobAdapter;Lcom/google/ads/mediation/admob/AdMobAdapter$1;)V

    invoke-virtual {v0, v1}, Lcom/google/ads/AdView;->setAdListener(Lcom/google/ads/AdListener;)V

    .line 204
    iget-object v0, p0, Lcom/google/ads/mediation/admob/AdMobAdapter;->c:Lcom/google/ads/AdView;

    invoke-direct {p0, p2, p3, p5, p6}, Lcom/google/ads/mediation/admob/AdMobAdapter;->a(Landroid/app/Activity;Lcom/google/ads/mediation/admob/AdMobAdapterServerParameters;Lcom/google/ads/mediation/MediationAdRequest;Lcom/google/ads/mediation/admob/AdMobAdapterExtras;)Lcom/google/ads/AdRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/ads/AdView;->loadAd(Lcom/google/ads/AdRequest;)V

    .line 205
    :goto_2a
    return-void

    .line 184
    :cond_2b
    if-eqz p6, :cond_33

    invoke-virtual {p6}, Lcom/google/ads/mediation/admob/AdMobAdapterExtras;->getUseExactAdSize()Z

    move-result v0

    if-nez v0, :cond_e

    .line 187
    :cond_33
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/google/ads/AdSize;

    const/4 v1, 0x0

    sget-object v2, Lcom/google/ads/AdSize;->BANNER:Lcom/google/ads/AdSize;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/google/ads/AdSize;->IAB_BANNER:Lcom/google/ads/AdSize;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/google/ads/AdSize;->IAB_LEADERBOARD:Lcom/google/ads/AdSize;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/google/ads/AdSize;->IAB_MRECT:Lcom/google/ads/AdSize;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/google/ads/AdSize;->IAB_WIDE_SKYSCRAPER:Lcom/google/ads/AdSize;

    aput-object v2, v0, v1

    invoke-virtual {p4, v0}, Lcom/google/ads/AdSize;->findBestSize([Lcom/google/ads/AdSize;)Lcom/google/ads/AdSize;

    move-result-object p4

    .line 195
    if-nez p4, :cond_e

    .line 196
    sget-object v0, Lcom/google/ads/AdRequest$ErrorCode;->NO_FILL:Lcom/google/ads/AdRequest$ErrorCode;

    invoke-interface {p1, p0, v0}, Lcom/google/ads/mediation/MediationBannerListener;->onFailedToReceiveAd(Lcom/google/ads/mediation/MediationBannerAdapter;Lcom/google/ads/AdRequest$ErrorCode;)V

    goto :goto_2a
.end method

.method public bridge synthetic requestInterstitialAd(Lcom/google/ads/mediation/MediationInterstitialListener;Landroid/app/Activity;Lcom/google/ads/mediation/MediationServerParameters;Lcom/google/ads/mediation/MediationAdRequest;Lcom/google/ads/mediation/NetworkExtras;)V
    .registers 12
    .param p1, "x0"    # Lcom/google/ads/mediation/MediationInterstitialListener;
    .param p2, "x1"    # Landroid/app/Activity;
    .param p3, "x2"    # Lcom/google/ads/mediation/MediationServerParameters;
    .param p4, "x3"    # Lcom/google/ads/mediation/MediationAdRequest;
    .param p5, "x4"    # Lcom/google/ads/mediation/NetworkExtras;

    .prologue
    .line 25
    move-object v3, p3

    check-cast v3, Lcom/google/ads/mediation/admob/AdMobAdapterServerParameters;

    move-object v5, p5

    check-cast v5, Lcom/google/ads/mediation/admob/AdMobAdapterExtras;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/google/ads/mediation/admob/AdMobAdapter;->requestInterstitialAd(Lcom/google/ads/mediation/MediationInterstitialListener;Landroid/app/Activity;Lcom/google/ads/mediation/admob/AdMobAdapterServerParameters;Lcom/google/ads/mediation/MediationAdRequest;Lcom/google/ads/mediation/admob/AdMobAdapterExtras;)V

    return-void
.end method

.method public requestInterstitialAd(Lcom/google/ads/mediation/MediationInterstitialListener;Landroid/app/Activity;Lcom/google/ads/mediation/admob/AdMobAdapterServerParameters;Lcom/google/ads/mediation/MediationAdRequest;Lcom/google/ads/mediation/admob/AdMobAdapterExtras;)V
    .registers 9
    .param p1, "listener"    # Lcom/google/ads/mediation/MediationInterstitialListener;
    .param p2, "activity"    # Landroid/app/Activity;
    .param p3, "serverParameters"    # Lcom/google/ads/mediation/admob/AdMobAdapterServerParameters;
    .param p4, "mediationAdRequest"    # Lcom/google/ads/mediation/MediationAdRequest;
    .param p5, "extras"    # Lcom/google/ads/mediation/admob/AdMobAdapterExtras;

    .prologue
    .line 246
    iput-object p1, p0, Lcom/google/ads/mediation/admob/AdMobAdapter;->b:Lcom/google/ads/mediation/MediationInterstitialListener;

    .line 248
    iget-object v0, p3, Lcom/google/ads/mediation/admob/AdMobAdapterServerParameters;->adUnitId:Ljava/lang/String;

    invoke-virtual {p0, p2, v0}, Lcom/google/ads/mediation/admob/AdMobAdapter;->a(Landroid/app/Activity;Ljava/lang/String;)Lcom/google/ads/InterstitialAd;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ads/mediation/admob/AdMobAdapter;->d:Lcom/google/ads/InterstitialAd;

    .line 249
    iget-object v0, p0, Lcom/google/ads/mediation/admob/AdMobAdapter;->d:Lcom/google/ads/InterstitialAd;

    new-instance v1, Lcom/google/ads/mediation/admob/AdMobAdapter$b;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/google/ads/mediation/admob/AdMobAdapter$b;-><init>(Lcom/google/ads/mediation/admob/AdMobAdapter;Lcom/google/ads/mediation/admob/AdMobAdapter$1;)V

    invoke-virtual {v0, v1}, Lcom/google/ads/InterstitialAd;->setAdListener(Lcom/google/ads/AdListener;)V

    .line 250
    iget-object v0, p0, Lcom/google/ads/mediation/admob/AdMobAdapter;->d:Lcom/google/ads/InterstitialAd;

    invoke-direct {p0, p2, p3, p4, p5}, Lcom/google/ads/mediation/admob/AdMobAdapter;->a(Landroid/app/Activity;Lcom/google/ads/mediation/admob/AdMobAdapterServerParameters;Lcom/google/ads/mediation/MediationAdRequest;Lcom/google/ads/mediation/admob/AdMobAdapterExtras;)Lcom/google/ads/AdRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/ads/InterstitialAd;->loadAd(Lcom/google/ads/AdRequest;)V

    .line 251
    return-void
.end method

.method public showInterstitial()V
    .registers 2

    .prologue
    .line 255
    iget-object v0, p0, Lcom/google/ads/mediation/admob/AdMobAdapter;->d:Lcom/google/ads/InterstitialAd;

    invoke-virtual {v0}, Lcom/google/ads/InterstitialAd;->show()V

    .line 256
    return-void
.end method
