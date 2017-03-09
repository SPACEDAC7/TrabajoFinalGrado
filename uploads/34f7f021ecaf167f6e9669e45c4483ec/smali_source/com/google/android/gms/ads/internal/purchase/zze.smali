.class public Lcom/google/android/gms/ads/internal/purchase/zze;
.super Lcom/google/android/gms/internal/zzih$zza;

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzji;
.end annotation


# instance fields
.field private final mActivity:Landroid/app/Activity;

.field private zzcfg:Lcom/google/android/gms/ads/internal/purchase/zzb;

.field zzcfh:Lcom/google/android/gms/ads/internal/purchase/zzh;

.field private zzcfj:Lcom/google/android/gms/ads/internal/purchase/zzk;

.field private zzcfo:Landroid/content/Context;

.field private zzcfp:Lcom/google/android/gms/internal/zzif;

.field private zzcfq:Lcom/google/android/gms/ads/internal/purchase/zzf;

.field private zzcfr:Lcom/google/android/gms/ads/internal/purchase/zzj;

.field private zzcfs:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .registers 3

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzih$zza;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/purchase/zze;->zzcfs:Ljava/lang/String;

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/purchase/zze;->mActivity:Landroid/app/Activity;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/purchase/zze;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/purchase/zzh;->zzq(Landroid/content/Context;)Lcom/google/android/gms/ads/internal/purchase/zzh;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/purchase/zze;->zzcfh:Lcom/google/android/gms/ads/internal/purchase/zzh;

    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 9

    const/4 v4, 0x0

    const/16 v0, 0x3e9

    if-ne p1, v0, :cond_36

    const/4 v0, 0x0

    :try_start_6
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzha()Lcom/google/android/gms/ads/internal/purchase/zzi;

    move-result-object v1

    invoke-virtual {v1, p3}, Lcom/google/android/gms/ads/internal/purchase/zzi;->zzd(Landroid/content/Intent;)I

    move-result v1

    const/4 v2, -0x1

    if-ne p2, v2, :cond_37

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzha()Lcom/google/android/gms/ads/internal/purchase/zzi;

    if-nez v1, :cond_37

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/purchase/zze;->zzcfj:Lcom/google/android/gms/ads/internal/purchase/zzk;

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/purchase/zze;->zzcfs:Ljava/lang/String;

    invoke-virtual {v2, v3, p2, p3}, Lcom/google/android/gms/ads/internal/purchase/zzk;->zza(Ljava/lang/String;ILandroid/content/Intent;)Z

    move-result v2

    if-eqz v2, :cond_21

    const/4 v0, 0x1

    :cond_21
    :goto_21
    iget-object v2, p0, Lcom/google/android/gms/ads/internal/purchase/zze;->zzcfp:Lcom/google/android/gms/internal/zzif;

    invoke-interface {v2, v1}, Lcom/google/android/gms/internal/zzif;->recordPlayBillingResolution(I)V

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/purchase/zze;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/purchase/zze;->zzcfp:Lcom/google/android/gms/internal/zzif;

    invoke-interface {v1}, Lcom/google/android/gms/internal/zzif;->getProductId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v0, p2, p3}, Lcom/google/android/gms/ads/internal/purchase/zze;->zza(Ljava/lang/String;ZILandroid/content/Intent;)V
    :try_end_34
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_34} :catch_3f
    .catchall {:try_start_6 .. :try_end_34} :catchall_4d

    iput-object v4, p0, Lcom/google/android/gms/ads/internal/purchase/zze;->zzcfs:Ljava/lang/String;

    :cond_36
    :goto_36
    return-void

    :cond_37
    :try_start_37
    iget-object v2, p0, Lcom/google/android/gms/ads/internal/purchase/zze;->zzcfh:Lcom/google/android/gms/ads/internal/purchase/zzh;

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/purchase/zze;->zzcfq:Lcom/google/android/gms/ads/internal/purchase/zzf;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/ads/internal/purchase/zzh;->zza(Lcom/google/android/gms/ads/internal/purchase/zzf;)V
    :try_end_3e
    .catch Landroid/os/RemoteException; {:try_start_37 .. :try_end_3e} :catch_3f
    .catchall {:try_start_37 .. :try_end_3e} :catchall_4d

    goto :goto_21

    :catch_3f
    move-exception v0

    :try_start_40
    const-string v0, "Fail to process purchase result."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzkx;->zzdi(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/purchase/zze;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V
    :try_end_4a
    .catchall {:try_start_40 .. :try_end_4a} :catchall_4d

    iput-object v4, p0, Lcom/google/android/gms/ads/internal/purchase/zze;->zzcfs:Ljava/lang/String;

    goto :goto_36

    :catchall_4d
    move-exception v0

    iput-object v4, p0, Lcom/google/android/gms/ads/internal/purchase/zze;->zzcfs:Ljava/lang/String;

    throw v0
.end method

.method public onCreate()V
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/purchase/zze;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/purchase/GInAppPurchaseManagerInfoParcel;->zzc(Landroid/content/Intent;)Lcom/google/android/gms/ads/internal/purchase/GInAppPurchaseManagerInfoParcel;

    move-result-object v0

    iget-object v1, v0, Lcom/google/android/gms/ads/internal/purchase/GInAppPurchaseManagerInfoParcel;->zzcfc:Lcom/google/android/gms/ads/internal/purchase/zzj;

    iput-object v1, p0, Lcom/google/android/gms/ads/internal/purchase/zze;->zzcfr:Lcom/google/android/gms/ads/internal/purchase/zzj;

    iget-object v1, v0, Lcom/google/android/gms/ads/internal/purchase/GInAppPurchaseManagerInfoParcel;->zzasf:Lcom/google/android/gms/ads/internal/purchase/zzk;

    iput-object v1, p0, Lcom/google/android/gms/ads/internal/purchase/zze;->zzcfj:Lcom/google/android/gms/ads/internal/purchase/zzk;

    iget-object v1, v0, Lcom/google/android/gms/ads/internal/purchase/GInAppPurchaseManagerInfoParcel;->zzcfa:Lcom/google/android/gms/internal/zzif;

    iput-object v1, p0, Lcom/google/android/gms/ads/internal/purchase/zze;->zzcfp:Lcom/google/android/gms/internal/zzif;

    new-instance v1, Lcom/google/android/gms/ads/internal/purchase/zzb;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/purchase/zze;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/android/gms/ads/internal/purchase/zzb;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/google/android/gms/ads/internal/purchase/zze;->zzcfg:Lcom/google/android/gms/ads/internal/purchase/zzb;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/purchase/GInAppPurchaseManagerInfoParcel;->zzcfb:Landroid/content/Context;

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/purchase/zze;->zzcfo:Landroid/content/Context;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/purchase/zze;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_5a

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/purchase/zze;->mActivity:Landroid/app/Activity;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzgo()Lcom/google/android/gms/internal/zzlc;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzlc;->zzvw()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    :goto_43
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.vending.billing.InAppBillingService.BIND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.android.vending"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {}, Lcom/google/android/gms/common/stats/zza;->zzaxr()Lcom/google/android/gms/common/stats/zza;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/purchase/zze;->mActivity:Landroid/app/Activity;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, p0, v3}, Lcom/google/android/gms/common/stats/zza;->zza(Landroid/content/Context;Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    return-void

    :cond_5a
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/purchase/zze;->mActivity:Landroid/app/Activity;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzgo()Lcom/google/android/gms/internal/zzlc;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzlc;->zzvx()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_43
.end method

.method public onDestroy()V
    .registers 3

    invoke-static {}, Lcom/google/android/gms/common/stats/zza;->zzaxr()Lcom/google/android/gms/common/stats/zza;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/purchase/zze;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, v1, p0}, Lcom/google/android/gms/common/stats/zza;->zza(Landroid/content/Context;Landroid/content/ServiceConnection;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/purchase/zze;->zzcfg:Lcom/google/android/gms/ads/internal/purchase/zzb;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/purchase/zzb;->destroy()V

    return-void
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 11

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/purchase/zze;->zzcfg:Lcom/google/android/gms/ads/internal/purchase/zzb;

    invoke-virtual {v1, p2}, Lcom/google/android/gms/ads/internal/purchase/zzb;->zzav(Landroid/os/IBinder;)V

    :try_start_5
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/purchase/zze;->zzcfj:Lcom/google/android/gms/ads/internal/purchase/zzk;

    invoke-virtual {v1}, Lcom/google/android/gms/ads/internal/purchase/zzk;->zzrv()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/ads/internal/purchase/zze;->zzcfs:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/purchase/zze;->zzcfg:Lcom/google/android/gms/ads/internal/purchase/zzb;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/purchase/zze;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/purchase/zze;->zzcfp:Lcom/google/android/gms/internal/zzif;

    invoke-interface {v3}, Lcom/google/android/gms/internal/zzif;->getProductId()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/gms/ads/internal/purchase/zze;->zzcfs:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v4}, Lcom/google/android/gms/ads/internal/purchase/zzb;->zzb(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    const-string v1, "BUY_INTENT"

    invoke-virtual {v3, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Landroid/app/PendingIntent;

    move-object v2, v0

    if-nez v2, :cond_4b

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzha()Lcom/google/android/gms/ads/internal/purchase/zzi;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/google/android/gms/ads/internal/purchase/zzi;->zzd(Landroid/os/Bundle;)I

    move-result v1

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/purchase/zze;->zzcfp:Lcom/google/android/gms/internal/zzif;

    invoke-interface {v2, v1}, Lcom/google/android/gms/internal/zzif;->recordPlayBillingResolution(I)V

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/purchase/zze;->zzcfp:Lcom/google/android/gms/internal/zzif;

    invoke-interface {v2}, Lcom/google/android/gms/internal/zzif;->getProductId()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {p0, v2, v3, v1, v4}, Lcom/google/android/gms/ads/internal/purchase/zze;->zza(Ljava/lang/String;ZILandroid/content/Intent;)V

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/purchase/zze;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    :goto_4a
    return-void

    :cond_4b
    new-instance v1, Lcom/google/android/gms/ads/internal/purchase/zzf;

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/purchase/zze;->zzcfp:Lcom/google/android/gms/internal/zzif;

    invoke-interface {v3}, Lcom/google/android/gms/internal/zzif;->getProductId()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/gms/ads/internal/purchase/zze;->zzcfs:Ljava/lang/String;

    invoke-direct {v1, v3, v4}, Lcom/google/android/gms/ads/internal/purchase/zzf;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/google/android/gms/ads/internal/purchase/zze;->zzcfq:Lcom/google/android/gms/ads/internal/purchase/zzf;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/purchase/zze;->zzcfh:Lcom/google/android/gms/ads/internal/purchase/zzh;

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/purchase/zze;->zzcfq:Lcom/google/android/gms/ads/internal/purchase/zzf;

    invoke-virtual {v1, v3}, Lcom/google/android/gms/ads/internal/purchase/zzh;->zzb(Lcom/google/android/gms/ads/internal/purchase/zzf;)V

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/purchase/zze;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v2

    const/16 v3, 0x3e9

    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual/range {v1 .. v7}, Landroid/app/Activity;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;III)V
    :try_end_8c
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_8c} :catch_8d
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_5 .. :try_end_8c} :catch_99

    goto :goto_4a

    :catch_8d
    move-exception v1

    :goto_8e
    const-string v2, "Error when connecting in-app billing service"

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/zzkx;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/purchase/zze;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    goto :goto_4a

    :catch_99
    move-exception v1

    goto :goto_8e
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 3

    const-string v0, "In-app billing service disconnected."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzkx;->zzdh(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/purchase/zze;->zzcfg:Lcom/google/android/gms/ads/internal/purchase/zzb;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/purchase/zzb;->destroy()V

    return-void
.end method

.method protected zza(Ljava/lang/String;ZILandroid/content/Intent;)V
    .registers 11

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/purchase/zze;->zzcfr:Lcom/google/android/gms/ads/internal/purchase/zzj;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/purchase/zze;->zzcfr:Lcom/google/android/gms/ads/internal/purchase/zzj;

    iget-object v5, p0, Lcom/google/android/gms/ads/internal/purchase/zze;->zzcfq:Lcom/google/android/gms/ads/internal/purchase/zzf;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/ads/internal/purchase/zzj;->zza(Ljava/lang/String;ZILandroid/content/Intent;Lcom/google/android/gms/ads/internal/purchase/zzf;)V

    :cond_f
    return-void
.end method
