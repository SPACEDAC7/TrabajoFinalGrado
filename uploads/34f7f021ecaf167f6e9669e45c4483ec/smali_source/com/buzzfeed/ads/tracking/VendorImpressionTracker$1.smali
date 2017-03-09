.class final Lcom/buzzfeed/ads/tracking/VendorImpressionTracker$1;
.super Ljava/lang/Object;
.source "VendorImpressionTracker.java"

# interfaces
.implements Lcom/google/android/gms/ads/formats/NativeCustomTemplateAd$OnCustomTemplateAdLoadedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/buzzfeed/ads/tracking/VendorImpressionTracker;->makeRequest(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCustomTemplateAdLoaded(Lcom/google/android/gms/ads/formats/NativeCustomTemplateAd;)V
    .registers 4
    .param p1, "ad"    # Lcom/google/android/gms/ads/formats/NativeCustomTemplateAd;

    .prologue
    .line 29
    invoke-interface {p1}, Lcom/google/android/gms/ads/formats/NativeCustomTemplateAd;->recordImpression()V

    .line 30
    sget-object v0, Lcom/buzzfeed/ads/tracking/VendorImpressionTracker;->TAG:Ljava/lang/String;

    const-string v1, "Vendor native bpage impression has been recorded"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    return-void
.end method
