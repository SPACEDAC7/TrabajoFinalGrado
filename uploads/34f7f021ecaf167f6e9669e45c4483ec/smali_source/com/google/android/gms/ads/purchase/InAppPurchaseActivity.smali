.class public Lcom/google/android/gms/ads/purchase/InAppPurchaseActivity;
.super Landroid/app/Activity;


# static fields
.field public static final CLASS_NAME:Ljava/lang/String; = "com.google.android.gms.ads.purchase.InAppPurchaseActivity"

.field public static final SIMPLE_CLASS_NAME:Ljava/lang/String; = "InAppPurchaseActivity"


# instance fields
.field private Y:Lcom/google/android/gms/internal/zzih;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 6

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/purchase/InAppPurchaseActivity;->Y:Lcom/google/android/gms/internal/zzih;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/google/android/gms/ads/purchase/InAppPurchaseActivity;->Y:Lcom/google/android/gms/internal/zzih;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/gms/internal/zzih;->onActivityResult(IILandroid/content/Intent;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_d

    :cond_9
    :goto_9
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    return-void

    :catch_d
    move-exception v0

    const-string v1, "Could not forward onActivityResult to in-app purchase manager:"

    invoke-static {v1, v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_9
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 4

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzm;->zzks()Lcom/google/android/gms/ads/internal/client/zzl;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/ads/internal/client/zzl;->zzb(Landroid/app/Activity;)Lcom/google/android/gms/internal/zzih;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/ads/purchase/InAppPurchaseActivity;->Y:Lcom/google/android/gms/internal/zzih;

    iget-object v0, p0, Lcom/google/android/gms/ads/purchase/InAppPurchaseActivity;->Y:Lcom/google/android/gms/internal/zzih;

    if-nez v0, :cond_1a

    const-string v0, "Could not create in-app purchase manager."

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzdi(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/ads/purchase/InAppPurchaseActivity;->finish()V

    :goto_19
    return-void

    :cond_1a
    :try_start_1a
    iget-object v0, p0, Lcom/google/android/gms/ads/purchase/InAppPurchaseActivity;->Y:Lcom/google/android/gms/internal/zzih;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzih;->onCreate()V
    :try_end_1f
    .catch Landroid/os/RemoteException; {:try_start_1a .. :try_end_1f} :catch_20

    goto :goto_19

    :catch_20
    move-exception v0

    const-string v1, "Could not forward onCreate to in-app purchase manager:"

    invoke-static {v1, v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p0}, Lcom/google/android/gms/ads/purchase/InAppPurchaseActivity;->finish()V

    goto :goto_19
.end method

.method protected onDestroy()V
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/purchase/InAppPurchaseActivity;->Y:Lcom/google/android/gms/internal/zzih;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/google/android/gms/ads/purchase/InAppPurchaseActivity;->Y:Lcom/google/android/gms/internal/zzih;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzih;->onDestroy()V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_d

    :cond_9
    :goto_9
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void

    :catch_d
    move-exception v0

    const-string v1, "Could not forward onDestroy to in-app purchase manager:"

    invoke-static {v1, v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_9
.end method
