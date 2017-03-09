.class final Lcom/buzzfeed/ads/tracking/VendorImpressionTracker$2;
.super Ljava/lang/Object;
.source "VendorImpressionTracker.java"

# interfaces
.implements Lcom/google/android/gms/ads/formats/NativeCustomTemplateAd$OnCustomClickListener;


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
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCustomClick(Lcom/google/android/gms/ads/formats/NativeCustomTemplateAd;Ljava/lang/String;)V
    .registers 3
    .param p1, "nativeCustomTemplateAd"    # Lcom/google/android/gms/ads/formats/NativeCustomTemplateAd;
    .param p2, "s"    # Ljava/lang/String;

    .prologue
    .line 36
    return-void
.end method
