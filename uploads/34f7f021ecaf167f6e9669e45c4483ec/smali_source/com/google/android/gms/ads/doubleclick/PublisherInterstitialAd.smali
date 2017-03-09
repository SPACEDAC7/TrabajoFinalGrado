.class public final Lcom/google/android/gms/ads/doubleclick/PublisherInterstitialAd;
.super Ljava/lang/Object;


# instance fields
.field private final zzakm:Lcom/google/android/gms/ads/internal/client/zzaf;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/ads/internal/client/zzaf;

    invoke-direct {v0, p1, p0}, Lcom/google/android/gms/ads/internal/client/zzaf;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/doubleclick/PublisherInterstitialAd;)V

    iput-object v0, p0, Lcom/google/android/gms/ads/doubleclick/PublisherInterstitialAd;->zzakm:Lcom/google/android/gms/ads/internal/client/zzaf;

    return-void
.end method


# virtual methods
.method public getAdListener()Lcom/google/android/gms/ads/AdListener;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/ads/doubleclick/PublisherInterstitialAd;->zzakm:Lcom/google/android/gms/ads/internal/client/zzaf;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/client/zzaf;->getAdListener()Lcom/google/android/gms/ads/AdListener;

    move-result-object v0

    return-object v0
.end method

.method public getAdUnitId()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/ads/doubleclick/PublisherInterstitialAd;->zzakm:Lcom/google/android/gms/ads/internal/client/zzaf;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/client/zzaf;->getAdUnitId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAppEventListener()Lcom/google/android/gms/ads/doubleclick/AppEventListener;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/ads/doubleclick/PublisherInterstitialAd;->zzakm:Lcom/google/android/gms/ads/internal/client/zzaf;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/client/zzaf;->getAppEventListener()Lcom/google/android/gms/ads/doubleclick/AppEventListener;

    move-result-object v0

    return-object v0
.end method

.method public getMediationAdapterClassName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/ads/doubleclick/PublisherInterstitialAd;->zzakm:Lcom/google/android/gms/ads/internal/client/zzaf;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/client/zzaf;->getMediationAdapterClassName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOnCustomRenderedAdLoadedListener()Lcom/google/android/gms/ads/doubleclick/OnCustomRenderedAdLoadedListener;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/ads/doubleclick/PublisherInterstitialAd;->zzakm:Lcom/google/android/gms/ads/internal/client/zzaf;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/client/zzaf;->getOnCustomRenderedAdLoadedListener()Lcom/google/android/gms/ads/doubleclick/OnCustomRenderedAdLoadedListener;

    move-result-object v0

    return-object v0
.end method

.method public isLoaded()Z
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/ads/doubleclick/PublisherInterstitialAd;->zzakm:Lcom/google/android/gms/ads/internal/client/zzaf;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/client/zzaf;->isLoaded()Z

    move-result v0

    return v0
.end method

.method public isLoading()Z
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/ads/doubleclick/PublisherInterstitialAd;->zzakm:Lcom/google/android/gms/ads/internal/client/zzaf;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/client/zzaf;->isLoading()Z

    move-result v0

    return v0
.end method

.method public loadAd(Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest;)V
    .registers 4
    .annotation build Landroid/support/annotation/RequiresPermission;
        value = "android.permission.INTERNET"
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/ads/doubleclick/PublisherInterstitialAd;->zzakm:Lcom/google/android/gms/ads/internal/client/zzaf;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest;->zzdt()Lcom/google/android/gms/ads/internal/client/zzad;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/internal/client/zzaf;->zza(Lcom/google/android/gms/ads/internal/client/zzad;)V

    return-void
.end method

.method public setAdListener(Lcom/google/android/gms/ads/AdListener;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/ads/doubleclick/PublisherInterstitialAd;->zzakm:Lcom/google/android/gms/ads/internal/client/zzaf;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/internal/client/zzaf;->setAdListener(Lcom/google/android/gms/ads/AdListener;)V

    return-void
.end method

.method public setAdUnitId(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/ads/doubleclick/PublisherInterstitialAd;->zzakm:Lcom/google/android/gms/ads/internal/client/zzaf;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/internal/client/zzaf;->setAdUnitId(Ljava/lang/String;)V

    return-void
.end method

.method public setAppEventListener(Lcom/google/android/gms/ads/doubleclick/AppEventListener;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/ads/doubleclick/PublisherInterstitialAd;->zzakm:Lcom/google/android/gms/ads/internal/client/zzaf;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/internal/client/zzaf;->setAppEventListener(Lcom/google/android/gms/ads/doubleclick/AppEventListener;)V

    return-void
.end method

.method public setCorrelator(Lcom/google/android/gms/ads/Correlator;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/ads/doubleclick/PublisherInterstitialAd;->zzakm:Lcom/google/android/gms/ads/internal/client/zzaf;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/internal/client/zzaf;->setCorrelator(Lcom/google/android/gms/ads/Correlator;)V

    return-void
.end method

.method public setOnCustomRenderedAdLoadedListener(Lcom/google/android/gms/ads/doubleclick/OnCustomRenderedAdLoadedListener;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/ads/doubleclick/PublisherInterstitialAd;->zzakm:Lcom/google/android/gms/ads/internal/client/zzaf;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/internal/client/zzaf;->setOnCustomRenderedAdLoadedListener(Lcom/google/android/gms/ads/doubleclick/OnCustomRenderedAdLoadedListener;)V

    return-void
.end method

.method public show()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/ads/doubleclick/PublisherInterstitialAd;->zzakm:Lcom/google/android/gms/ads/internal/client/zzaf;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/client/zzaf;->show()V

    return-void
.end method
