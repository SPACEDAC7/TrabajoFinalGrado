.class public Lcom/google/android/gms/internal/zzio;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/ads/purchase/InAppPurchase;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzji;
.end annotation


# instance fields
.field private final zzcfp:Lcom/google/android/gms/internal/zzif;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzif;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzio;->zzcfp:Lcom/google/android/gms/internal/zzif;

    return-void
.end method


# virtual methods
.method public getProductId()Ljava/lang/String;
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzio;->zzcfp:Lcom/google/android/gms/internal/zzif;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzif;->getProductId()Ljava/lang/String;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v0

    :goto_6
    return-object v0

    :catch_7
    move-exception v0

    const-string v1, "Could not forward getProductId to InAppPurchase"

    invoke-static {v1, v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    goto :goto_6
.end method

.method public recordPlayBillingResolution(I)V
    .registers 4

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzio;->zzcfp:Lcom/google/android/gms/internal/zzif;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/zzif;->recordPlayBillingResolution(I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    :goto_5
    return-void

    :catch_6
    move-exception v0

    const-string v1, "Could not forward recordPlayBillingResolution to InAppPurchase"

    invoke-static {v1, v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_5
.end method

.method public recordResolution(I)V
    .registers 4

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzio;->zzcfp:Lcom/google/android/gms/internal/zzif;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/zzif;->recordResolution(I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    :goto_5
    return-void

    :catch_6
    move-exception v0

    const-string v1, "Could not forward recordResolution to InAppPurchase"

    invoke-static {v1, v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_5
.end method
