.class public Lcom/google/android/gms/internal/zzeu;
.super Lcom/google/android/gms/dynamic/zzg;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzji;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/dynamic/zzg",
        "<",
        "Lcom/google/android/gms/internal/zzej;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 2

    const-string v0, "com.google.android.gms.ads.NativeAdViewDelegateCreatorImpl"

    invoke-direct {p0, v0}, Lcom/google/android/gms/dynamic/zzg;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected zzal(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzej;
    .registers 3

    invoke-static {p1}, Lcom/google/android/gms/internal/zzej$zza;->zzad(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzej;

    move-result-object v0

    return-object v0
.end method

.method public zzb(Landroid/content/Context;Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;)Lcom/google/android/gms/internal/zzei;
    .registers 9

    :try_start_0
    invoke-static {p1}, Lcom/google/android/gms/dynamic/zze;->zzac(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/zzd;

    move-result-object v1

    invoke-static {p2}, Lcom/google/android/gms/dynamic/zze;->zzac(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/zzd;

    move-result-object v2

    invoke-static {p3}, Lcom/google/android/gms/dynamic/zze;->zzac(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/zzd;

    move-result-object v3

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzeu;->zzcr(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzej;

    const v4, 0x96b608

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/google/android/gms/internal/zzej;->zza(Lcom/google/android/gms/dynamic/zzd;Lcom/google/android/gms/dynamic/zzd;Lcom/google/android/gms/dynamic/zzd;I)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzei$zza;->zzac(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzei;
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_1c} :catch_1e
    .catch Lcom/google/android/gms/dynamic/zzg$zza; {:try_start_0 .. :try_end_1c} :catch_26

    move-result-object v0

    :goto_1d
    return-object v0

    :catch_1e
    move-exception v0

    :goto_1f
    const-string v1, "Could not create remote NativeAdViewDelegate."

    invoke-static {v1, v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    goto :goto_1d

    :catch_26
    move-exception v0

    goto :goto_1f
.end method

.method protected synthetic zzc(Landroid/os/IBinder;)Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzeu;->zzal(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzej;

    move-result-object v0

    return-object v0
.end method
