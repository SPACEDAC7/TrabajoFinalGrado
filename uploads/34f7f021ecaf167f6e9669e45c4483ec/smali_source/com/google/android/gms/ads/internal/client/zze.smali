.class public Lcom/google/android/gms/ads/internal/client/zze;
.super Lcom/google/android/gms/dynamic/zzg;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzji;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/dynamic/zzg",
        "<",
        "Lcom/google/android/gms/ads/internal/client/zzv;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 2

    const-string v0, "com.google.android.gms.ads.AdManagerCreatorImpl"

    invoke-direct {p0, v0}, Lcom/google/android/gms/dynamic/zzg;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public zza(Landroid/content/Context;Lcom/google/android/gms/ads/internal/client/AdSizeParcel;Ljava/lang/String;Lcom/google/android/gms/internal/zzgz;I)Lcom/google/android/gms/ads/internal/client/zzu;
    .registers 13

    :try_start_0
    invoke-static {p1}, Lcom/google/android/gms/dynamic/zze;->zzac(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/zzd;

    move-result-object v1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/ads/internal/client/zze;->zzcr(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/ads/internal/client/zzv;

    const v5, 0x96b608

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v6, p5

    invoke-interface/range {v0 .. v6}, Lcom/google/android/gms/ads/internal/client/zzv;->zza(Lcom/google/android/gms/dynamic/zzd;Lcom/google/android/gms/ads/internal/client/AdSizeParcel;Ljava/lang/String;Lcom/google/android/gms/internal/zzgz;II)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/client/zzu$zza;->zzq(Landroid/os/IBinder;)Lcom/google/android/gms/ads/internal/client/zzu;
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_18} :catch_1a
    .catch Lcom/google/android/gms/dynamic/zzg$zza; {:try_start_0 .. :try_end_18} :catch_22

    move-result-object v0

    :goto_19
    return-object v0

    :catch_1a
    move-exception v0

    :goto_1b
    const-string v1, "Could not create remote AdManager."

    invoke-static {v1, v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zza(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    goto :goto_19

    :catch_22
    move-exception v0

    goto :goto_1b
.end method

.method protected synthetic zzc(Landroid/os/IBinder;)Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/google/android/gms/ads/internal/client/zze;->zzk(Landroid/os/IBinder;)Lcom/google/android/gms/ads/internal/client/zzv;

    move-result-object v0

    return-object v0
.end method

.method protected zzk(Landroid/os/IBinder;)Lcom/google/android/gms/ads/internal/client/zzv;
    .registers 3

    invoke-static {p1}, Lcom/google/android/gms/ads/internal/client/zzv$zza;->zzr(Landroid/os/IBinder;)Lcom/google/android/gms/ads/internal/client/zzv;

    move-result-object v0

    return-object v0
.end method
