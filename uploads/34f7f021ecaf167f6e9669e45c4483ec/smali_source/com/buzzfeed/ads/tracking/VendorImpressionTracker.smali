.class public Lcom/buzzfeed/ads/tracking/VendorImpressionTracker;
.super Ljava/lang/Object;
.source "VendorImpressionTracker.java"


# static fields
.field public static final TAG:Ljava/lang/String;

.field private static sAdUnit:Ljava/lang/String;

.field private static sNativeCustomTemplateID:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 15
    const-class v0, Lcom/buzzfeed/ads/tracking/VendorImpressionTracker;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/buzzfeed/ads/tracking/VendorImpressionTracker;->TAG:Ljava/lang/String;

    .line 16
    const-string v0, "10178413"

    sput-object v0, Lcom/buzzfeed/ads/tracking/VendorImpressionTracker;->sNativeCustomTemplateID:Ljava/lang/String;

    .line 17
    const-string v0, "/6556/bfd.partnerpost.mobile"

    sput-object v0, Lcom/buzzfeed/ads/tracking/VendorImpressionTracker;->sAdUnit:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static makeRequest(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    .registers 8
    .param p0, "buzzId"    # Ljava/lang/String;
    .param p1, "username"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 22
    new-instance v1, Lcom/google/android/gms/ads/AdLoader$Builder;

    sget-object v2, Lcom/buzzfeed/ads/tracking/VendorImpressionTracker;->sAdUnit:Ljava/lang/String;

    invoke-direct {v1, p2, v2}, Lcom/google/android/gms/ads/AdLoader$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 24
    .local v1, "builder":Lcom/google/android/gms/ads/AdLoader$Builder;
    sget-object v2, Lcom/buzzfeed/ads/tracking/VendorImpressionTracker;->sNativeCustomTemplateID:Ljava/lang/String;

    new-instance v3, Lcom/buzzfeed/ads/tracking/VendorImpressionTracker$1;

    invoke-direct {v3}, Lcom/buzzfeed/ads/tracking/VendorImpressionTracker$1;-><init>()V

    new-instance v4, Lcom/buzzfeed/ads/tracking/VendorImpressionTracker$2;

    invoke-direct {v4}, Lcom/buzzfeed/ads/tracking/VendorImpressionTracker$2;-><init>()V

    invoke-virtual {v1, v2, v3, v4}, Lcom/google/android/gms/ads/AdLoader$Builder;->forCustomTemplateAd(Ljava/lang/String;Lcom/google/android/gms/ads/formats/NativeCustomTemplateAd$OnCustomTemplateAdLoadedListener;Lcom/google/android/gms/ads/formats/NativeCustomTemplateAd$OnCustomClickListener;)Lcom/google/android/gms/ads/AdLoader$Builder;

    .line 39
    new-instance v2, Lcom/buzzfeed/ads/tracking/VendorImpressionTracker$3;

    invoke-direct {v2}, Lcom/buzzfeed/ads/tracking/VendorImpressionTracker$3;-><init>()V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/ads/AdLoader$Builder;->withAdListener(Lcom/google/android/gms/ads/AdListener;)Lcom/google/android/gms/ads/AdLoader$Builder;

    move-result-object v2

    .line 53
    invoke-virtual {v2}, Lcom/google/android/gms/ads/AdLoader$Builder;->build()Lcom/google/android/gms/ads/AdLoader;

    move-result-object v0

    .line 55
    .local v0, "adLoader":Lcom/google/android/gms/ads/AdLoader;
    new-instance v2, Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest$Builder;

    invoke-direct {v2}, Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest$Builder;-><init>()V

    const-string v3, "bid"

    .line 56
    invoke-virtual {v2, v3, p0}, Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest$Builder;->addCustomTargeting(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest$Builder;

    move-result-object v2

    const-string/jumbo v3, "user"

    .line 57
    invoke-virtual {v2, v3, p1}, Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest$Builder;->addCustomTargeting(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest$Builder;

    move-result-object v2

    const-string v3, "pos"

    const-string/jumbo v4, "story-bpage"

    .line 58
    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest$Builder;->addCustomTargeting(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest$Builder;

    move-result-object v2

    const-string v3, "nsfw"

    const-string v4, "0"

    .line 59
    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest$Builder;->addCustomTargeting(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest$Builder;

    move-result-object v2

    const-string/jumbo v3, "trending"

    const-string v4, "0"

    .line 60
    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest$Builder;->addCustomTargeting(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest$Builder;

    move-result-object v2

    const-string/jumbo v3, "wid"

    const-string v4, "1"

    .line 61
    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest$Builder;->addCustomTargeting(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest$Builder;

    move-result-object v2

    .line 62
    invoke-virtual {v2}, Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest$Builder;->build()Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest;

    move-result-object v2

    .line 55
    invoke-virtual {v0, v2}, Lcom/google/android/gms/ads/AdLoader;->loadAd(Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest;)V

    .line 63
    return-void
.end method
