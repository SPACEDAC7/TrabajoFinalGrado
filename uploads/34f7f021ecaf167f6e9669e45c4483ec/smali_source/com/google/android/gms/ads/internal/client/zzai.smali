.class public Lcom/google/android/gms/ads/internal/client/zzai;
.super Lcom/google/android/gms/dynamic/zzg;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzji;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/dynamic/zzg",
        "<",
        "Lcom/google/android/gms/ads/internal/client/zzaa;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 2

    const-string v0, "com.google.android.gms.ads.MobileAdsSettingManagerCreatorImpl"

    invoke-direct {p0, v0}, Lcom/google/android/gms/dynamic/zzg;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected synthetic zzc(Landroid/os/IBinder;)Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/google/android/gms/ads/internal/client/zzai;->zzy(Landroid/os/IBinder;)Lcom/google/android/gms/ads/internal/client/zzaa;

    move-result-object v0

    return-object v0
.end method

.method public zzl(Landroid/content/Context;)Lcom/google/android/gms/ads/internal/client/zzz;
    .registers 6

    const/4 v1, 0x0

    :try_start_1
    invoke-static {p1}, Lcom/google/android/gms/dynamic/zze;->zzac(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/zzd;

    move-result-object v2

    invoke-virtual {p0, p1}, Lcom/google/android/gms/ads/internal/client/zzai;->zzcr(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/ads/internal/client/zzaa;

    const v3, 0x96b608

    invoke-interface {v0, v2, v3}, Lcom/google/android/gms/ads/internal/client/zzaa;->zza(Lcom/google/android/gms/dynamic/zzd;I)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/client/zzz$zza;->zzu(Landroid/os/IBinder;)Lcom/google/android/gms/ads/internal/client/zzz;
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_15} :catch_17
    .catch Lcom/google/android/gms/dynamic/zzg$zza; {:try_start_1 .. :try_end_15} :catch_1f

    move-result-object v0

    :goto_16
    return-object v0

    :catch_17
    move-exception v0

    const-string v2, "Could not get remote MobileAdsSettingManager."

    invoke-static {v2, v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v1

    goto :goto_16

    :catch_1f
    move-exception v0

    const-string v2, "Could not get remote MobileAdsSettingManager."

    invoke-static {v2, v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v1

    goto :goto_16
.end method

.method protected zzy(Landroid/os/IBinder;)Lcom/google/android/gms/ads/internal/client/zzaa;
    .registers 3

    invoke-static {p1}, Lcom/google/android/gms/ads/internal/client/zzaa$zza;->zzv(Landroid/os/IBinder;)Lcom/google/android/gms/ads/internal/client/zzaa;

    move-result-object v0

    return-object v0
.end method
