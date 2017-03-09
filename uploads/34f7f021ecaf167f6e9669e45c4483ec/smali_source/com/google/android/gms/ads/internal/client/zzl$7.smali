.class Lcom/google/android/gms/ads/internal/client/zzl$7;
.super Lcom/google/android/gms/ads/internal/client/zzl$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/ads/internal/client/zzl;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/zzgz;)Lcom/google/android/gms/ads/internal/reward/client/zzb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/ads/internal/client/zzl$zza",
        "<",
        "Lcom/google/android/gms/ads/internal/reward/client/zzb;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic zzang:Landroid/content/Context;

.field final synthetic zzbah:Lcom/google/android/gms/internal/zzgz;

.field final synthetic zzbai:Lcom/google/android/gms/ads/internal/client/zzl;


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/internal/client/zzl;Landroid/content/Context;Lcom/google/android/gms/internal/zzgz;)V
    .registers 4

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/client/zzl$7;->zzbai:Lcom/google/android/gms/ads/internal/client/zzl;

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/client/zzl$7;->zzang:Landroid/content/Context;

    iput-object p3, p0, Lcom/google/android/gms/ads/internal/client/zzl$7;->zzbah:Lcom/google/android/gms/internal/zzgz;

    invoke-direct {p0, p1}, Lcom/google/android/gms/ads/internal/client/zzl$zza;-><init>(Lcom/google/android/gms/ads/internal/client/zzl;)V

    return-void
.end method


# virtual methods
.method public synthetic zzb(Lcom/google/android/gms/ads/internal/client/zzx;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/android/gms/ads/internal/client/zzl$7;->zzf(Lcom/google/android/gms/ads/internal/client/zzx;)Lcom/google/android/gms/ads/internal/reward/client/zzb;

    move-result-object v0

    return-object v0
.end method

.method public zzf(Lcom/google/android/gms/ads/internal/client/zzx;)Lcom/google/android/gms/ads/internal/reward/client/zzb;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzl$7;->zzang:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/dynamic/zze;->zzac(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/zzd;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/client/zzl$7;->zzbah:Lcom/google/android/gms/internal/zzgz;

    const v2, 0x96b608

    invoke-interface {p1, v0, v1, v2}, Lcom/google/android/gms/ads/internal/client/zzx;->createRewardedVideoAd(Lcom/google/android/gms/dynamic/zzd;Lcom/google/android/gms/internal/zzgz;I)Lcom/google/android/gms/ads/internal/reward/client/zzb;

    move-result-object v0

    return-object v0
.end method

.method public synthetic zzkh()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/client/zzl$7;->zzkl()Lcom/google/android/gms/ads/internal/reward/client/zzb;

    move-result-object v0

    return-object v0
.end method

.method public zzkl()Lcom/google/android/gms/ads/internal/reward/client/zzb;
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzl$7;->zzbai:Lcom/google/android/gms/ads/internal/client/zzl;

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/client/zzl;->zzf(Lcom/google/android/gms/ads/internal/client/zzl;)Lcom/google/android/gms/ads/internal/reward/client/zzf;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/client/zzl$7;->zzang:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/client/zzl$7;->zzbah:Lcom/google/android/gms/internal/zzgz;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/ads/internal/reward/client/zzf;->zzb(Landroid/content/Context;Lcom/google/android/gms/internal/zzgz;)Lcom/google/android/gms/ads/internal/reward/client/zzb;

    move-result-object v0

    if-eqz v0, :cond_11

    :goto_10
    return-object v0

    :cond_11
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzl$7;->zzbai:Lcom/google/android/gms/ads/internal/client/zzl;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/client/zzl$7;->zzang:Landroid/content/Context;

    const-string v2, "rewarded_video"

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/ads/internal/client/zzl;->zza(Lcom/google/android/gms/ads/internal/client/zzl;Landroid/content/Context;Ljava/lang/String;)V

    new-instance v0, Lcom/google/android/gms/ads/internal/client/zzan;

    invoke-direct {v0}, Lcom/google/android/gms/ads/internal/client/zzan;-><init>()V

    goto :goto_10
.end method
