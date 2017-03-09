.class Lcom/google/android/gms/ads/BaseAdView;
.super Landroid/view/ViewGroup;


# instance fields
.field protected final zzakk:Lcom/google/android/gms/ads/internal/client/zzae;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .registers 4

    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/google/android/gms/ads/internal/client/zzae;

    invoke-direct {v0, p0, p2}, Lcom/google/android/gms/ads/internal/client/zzae;-><init>(Landroid/view/ViewGroup;I)V

    iput-object v0, p0, Lcom/google/android/gms/ads/BaseAdView;->zzakk:Lcom/google/android/gms/ads/internal/client/zzae;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 6

    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Lcom/google/android/gms/ads/internal/client/zzae;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p2, v1, p3}, Lcom/google/android/gms/ads/internal/client/zzae;-><init>(Landroid/view/ViewGroup;Landroid/util/AttributeSet;ZI)V

    iput-object v0, p0, Lcom/google/android/gms/ads/BaseAdView;->zzakk:Lcom/google/android/gms/ads/internal/client/zzae;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 7

    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Lcom/google/android/gms/ads/internal/client/zzae;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p2, v1, p4}, Lcom/google/android/gms/ads/internal/client/zzae;-><init>(Landroid/view/ViewGroup;Landroid/util/AttributeSet;ZI)V

    iput-object v0, p0, Lcom/google/android/gms/ads/BaseAdView;->zzakk:Lcom/google/android/gms/ads/internal/client/zzae;

    return-void
.end method


# virtual methods
.method public destroy()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/ads/BaseAdView;->zzakk:Lcom/google/android/gms/ads/internal/client/zzae;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/client/zzae;->destroy()V

    return-void
.end method

.method public getAdListener()Lcom/google/android/gms/ads/AdListener;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/ads/BaseAdView;->zzakk:Lcom/google/android/gms/ads/internal/client/zzae;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/client/zzae;->getAdListener()Lcom/google/android/gms/ads/AdListener;

    move-result-object v0

    return-object v0
.end method

.method public getAdSize()Lcom/google/android/gms/ads/AdSize;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/ads/BaseAdView;->zzakk:Lcom/google/android/gms/ads/internal/client/zzae;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/client/zzae;->getAdSize()Lcom/google/android/gms/ads/AdSize;

    move-result-object v0

    return-object v0
.end method

.method public getAdUnitId()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/ads/BaseAdView;->zzakk:Lcom/google/android/gms/ads/internal/client/zzae;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/client/zzae;->getAdUnitId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getInAppPurchaseListener()Lcom/google/android/gms/ads/purchase/InAppPurchaseListener;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/ads/BaseAdView;->zzakk:Lcom/google/android/gms/ads/internal/client/zzae;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/client/zzae;->getInAppPurchaseListener()Lcom/google/android/gms/ads/purchase/InAppPurchaseListener;

    move-result-object v0

    return-object v0
.end method

.method public getMediationAdapterClassName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/ads/BaseAdView;->zzakk:Lcom/google/android/gms/ads/internal/client/zzae;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/client/zzae;->getMediationAdapterClassName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isLoading()Z
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/ads/BaseAdView;->zzakk:Lcom/google/android/gms/ads/internal/client/zzae;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/client/zzae;->isLoading()Z

    move-result v0

    return v0
.end method

.method public loadAd(Lcom/google/android/gms/ads/AdRequest;)V
    .registers 4
    .annotation build Landroid/support/annotation/RequiresPermission;
        value = "android.permission.INTERNET"
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/ads/BaseAdView;->zzakk:Lcom/google/android/gms/ads/internal/client/zzae;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/AdRequest;->zzdt()Lcom/google/android/gms/ads/internal/client/zzad;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/internal/client/zzae;->zza(Lcom/google/android/gms/ads/internal/client/zzad;)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .registers 11

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/ads/BaseAdView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_26

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_26

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    sub-int v3, p4, p2

    sub-int/2addr v3, v1

    div-int/lit8 v3, v3, 0x2

    sub-int v4, p5, p3

    sub-int/2addr v4, v2

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v1, v3

    add-int/2addr v2, v4

    invoke-virtual {v0, v3, v4, v1, v2}, Landroid/view/View;->layout(IIII)V

    :cond_26
    return-void
.end method

.method protected onMeasure(II)V
    .registers 7

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/ads/BaseAdView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_36

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v3, 0x8

    if-eq v1, v3, :cond_36

    invoke-virtual {p0, v2, p1, p2}, Lcom/google/android/gms/ads/BaseAdView;->measureChild(Landroid/view/View;II)V

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    :goto_1a
    invoke-virtual {p0}, Lcom/google/android/gms/ads/BaseAdView;->getSuggestedMinimumWidth()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {p0}, Lcom/google/android/gms/ads/BaseAdView;->getSuggestedMinimumHeight()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {v1, p1}, Landroid/view/View;->resolveSize(II)I

    move-result v1

    invoke-static {v0, p2}, Landroid/view/View;->resolveSize(II)I

    move-result v0

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/ads/BaseAdView;->setMeasuredDimension(II)V

    return-void

    :cond_36
    const/4 v1, 0x0

    :try_start_37
    invoke-virtual {p0}, Lcom/google/android/gms/ads/BaseAdView;->getAdSize()Lcom/google/android/gms/ads/AdSize;
    :try_end_3a
    .catch Ljava/lang/NullPointerException; {:try_start_37 .. :try_end_3a} :catch_4b

    move-result-object v1

    move-object v2, v1

    :goto_3c
    if-eqz v2, :cond_53

    invoke-virtual {p0}, Lcom/google/android/gms/ads/BaseAdView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/google/android/gms/ads/AdSize;->getWidthInPixels(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v2, v0}, Lcom/google/android/gms/ads/AdSize;->getHeightInPixels(Landroid/content/Context;)I

    move-result v0

    goto :goto_1a

    :catch_4b
    move-exception v2

    const-string v3, "Unable to retrieve ad size."

    invoke-static {v3, v2}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v2, v1

    goto :goto_3c

    :cond_53
    move v1, v0

    goto :goto_1a
.end method

.method public pause()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/ads/BaseAdView;->zzakk:Lcom/google/android/gms/ads/internal/client/zzae;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/client/zzae;->pause()V

    return-void
.end method

.method public resume()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/ads/BaseAdView;->zzakk:Lcom/google/android/gms/ads/internal/client/zzae;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/client/zzae;->resume()V

    return-void
.end method

.method public setAdListener(Lcom/google/android/gms/ads/AdListener;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/ads/BaseAdView;->zzakk:Lcom/google/android/gms/ads/internal/client/zzae;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/internal/client/zzae;->setAdListener(Lcom/google/android/gms/ads/AdListener;)V

    if-eqz p1, :cond_13

    instance-of v0, p1, Lcom/google/android/gms/ads/internal/client/zza;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/google/android/gms/ads/BaseAdView;->zzakk:Lcom/google/android/gms/ads/internal/client/zzae;

    check-cast p1, Lcom/google/android/gms/ads/internal/client/zza;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/internal/client/zzae;->zza(Lcom/google/android/gms/ads/internal/client/zza;)V

    :cond_12
    :goto_12
    return-void

    :cond_13
    if-nez p1, :cond_12

    iget-object v0, p0, Lcom/google/android/gms/ads/BaseAdView;->zzakk:Lcom/google/android/gms/ads/internal/client/zzae;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/internal/client/zzae;->zza(Lcom/google/android/gms/ads/internal/client/zza;)V

    goto :goto_12
.end method

.method public setAdSize(Lcom/google/android/gms/ads/AdSize;)V
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/ads/BaseAdView;->zzakk:Lcom/google/android/gms/ads/internal/client/zzae;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/google/android/gms/ads/AdSize;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/internal/client/zzae;->setAdSizes([Lcom/google/android/gms/ads/AdSize;)V

    return-void
.end method

.method public setAdUnitId(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/ads/BaseAdView;->zzakk:Lcom/google/android/gms/ads/internal/client/zzae;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/internal/client/zzae;->setAdUnitId(Ljava/lang/String;)V

    return-void
.end method

.method public setInAppPurchaseListener(Lcom/google/android/gms/ads/purchase/InAppPurchaseListener;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/ads/BaseAdView;->zzakk:Lcom/google/android/gms/ads/internal/client/zzae;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/internal/client/zzae;->setInAppPurchaseListener(Lcom/google/android/gms/ads/purchase/InAppPurchaseListener;)V

    return-void
.end method

.method public setPlayStorePurchaseParams(Lcom/google/android/gms/ads/purchase/PlayStorePurchaseListener;Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/ads/BaseAdView;->zzakk:Lcom/google/android/gms/ads/internal/client/zzae;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/ads/internal/client/zzae;->setPlayStorePurchaseParams(Lcom/google/android/gms/ads/purchase/PlayStorePurchaseListener;Ljava/lang/String;)V

    return-void
.end method
