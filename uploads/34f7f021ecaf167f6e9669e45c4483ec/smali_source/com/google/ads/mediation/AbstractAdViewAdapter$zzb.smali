.class Lcom/google/ads/mediation/AbstractAdViewAdapter$zzb;
.super Lcom/google/android/gms/ads/mediation/NativeContentAdMapper;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/ads/mediation/AbstractAdViewAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "zzb"
.end annotation


# instance fields
.field private final zzgm:Lcom/google/android/gms/ads/formats/NativeContentAd;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/formats/NativeContentAd;)V
    .registers 4

    const/4 v1, 0x1

    invoke-direct {p0}, Lcom/google/android/gms/ads/mediation/NativeContentAdMapper;-><init>()V

    iput-object p1, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter$zzb;->zzgm:Lcom/google/android/gms/ads/formats/NativeContentAd;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/formats/NativeContentAd;->getHeadline()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/ads/mediation/AbstractAdViewAdapter$zzb;->setHeadline(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/google/android/gms/ads/formats/NativeContentAd;->getImages()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/ads/mediation/AbstractAdViewAdapter$zzb;->setImages(Ljava/util/List;)V

    invoke-virtual {p1}, Lcom/google/android/gms/ads/formats/NativeContentAd;->getBody()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/ads/mediation/AbstractAdViewAdapter$zzb;->setBody(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/google/android/gms/ads/formats/NativeContentAd;->getLogo()Lcom/google/android/gms/ads/formats/NativeAd$Image;

    move-result-object v0

    if-eqz v0, :cond_30

    invoke-virtual {p1}, Lcom/google/android/gms/ads/formats/NativeContentAd;->getLogo()Lcom/google/android/gms/ads/formats/NativeAd$Image;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/ads/mediation/AbstractAdViewAdapter$zzb;->setLogo(Lcom/google/android/gms/ads/formats/NativeAd$Image;)V

    :cond_30
    invoke-virtual {p1}, Lcom/google/android/gms/ads/formats/NativeContentAd;->getCallToAction()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/ads/mediation/AbstractAdViewAdapter$zzb;->setCallToAction(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/google/android/gms/ads/formats/NativeContentAd;->getAdvertiser()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/ads/mediation/AbstractAdViewAdapter$zzb;->setAdvertiser(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/google/ads/mediation/AbstractAdViewAdapter$zzb;->setOverrideImpressionRecording(Z)V

    invoke-virtual {p0, v1}, Lcom/google/ads/mediation/AbstractAdViewAdapter$zzb;->setOverrideClickHandling(Z)V

    return-void
.end method


# virtual methods
.method public trackView(Landroid/view/View;)V
    .registers 3

    instance-of v0, p1, Lcom/google/android/gms/ads/formats/NativeAdView;

    if-eqz v0, :cond_b

    check-cast p1, Lcom/google/android/gms/ads/formats/NativeAdView;

    iget-object v0, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter$zzb;->zzgm:Lcom/google/android/gms/ads/formats/NativeContentAd;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/ads/formats/NativeAdView;->setNativeAd(Lcom/google/android/gms/ads/formats/NativeAd;)V

    :cond_b
    return-void
.end method
