.class public Lcom/google/android/gms/ads/internal/request/zze;
.super Lcom/google/android/gms/common/internal/zze;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzji;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/internal/zze",
        "<",
        "Lcom/google/android/gms/ads/internal/request/zzk;",
        ">;"
    }
.end annotation


# instance fields
.field final zzcjs:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/zze$zzb;Lcom/google/android/gms/common/internal/zze$zzc;I)V
    .registers 13

    const/16 v3, 0x8

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/common/internal/zze;-><init>(Landroid/content/Context;Landroid/os/Looper;ILcom/google/android/gms/common/internal/zze$zzb;Lcom/google/android/gms/common/internal/zze$zzc;Ljava/lang/String;)V

    iput p5, p0, Lcom/google/android/gms/ads/internal/request/zze;->zzcjs:I

    return-void
.end method


# virtual methods
.method protected zzbd(Landroid/os/IBinder;)Lcom/google/android/gms/ads/internal/request/zzk;
    .registers 3

    invoke-static {p1}, Lcom/google/android/gms/ads/internal/request/zzk$zza;->zzbe(Landroid/os/IBinder;)Lcom/google/android/gms/ads/internal/request/zzk;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic zzh(Landroid/os/IBinder;)Landroid/os/IInterface;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/google/android/gms/ads/internal/request/zze;->zzbd(Landroid/os/IBinder;)Lcom/google/android/gms/ads/internal/request/zzk;

    move-result-object v0

    return-object v0
.end method

.method protected zzjx()Ljava/lang/String;
    .registers 2

    const-string v0, "com.google.android.gms.ads.service.START"

    return-object v0
.end method

.method protected zzjy()Ljava/lang/String;
    .registers 2

    const-string v0, "com.google.android.gms.ads.internal.request.IAdRequestService"

    return-object v0
.end method

.method public zzte()Lcom/google/android/gms/ads/internal/request/zzk;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/DeadObjectException;
        }
    .end annotation

    invoke-super {p0}, Lcom/google/android/gms/common/internal/zze;->zzavg()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/ads/internal/request/zzk;

    return-object v0
.end method
