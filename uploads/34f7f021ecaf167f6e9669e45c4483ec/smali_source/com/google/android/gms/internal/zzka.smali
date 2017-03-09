.class public Lcom/google/android/gms/internal/zzka;
.super Lcom/google/android/gms/ads/internal/reward/client/zzb$zza;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzji;
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final zzako:Ljava/lang/Object;

.field private final zzanu:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

.field private final zzcqx:Lcom/google/android/gms/internal/zzkb;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Lcom/google/android/gms/internal/zzkb;)V
    .registers 5

    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/reward/client/zzb$zza;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzka;->zzako:Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzka;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzka;->zzanu:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzka;->zzcqx:Lcom/google/android/gms/internal/zzkb;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/zzd;Lcom/google/android/gms/internal/zzgz;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;)V
    .registers 11

    new-instance v0, Lcom/google/android/gms/internal/zzkb;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;->zzkc()Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    move-result-object v3

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/zzkb;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/zzd;Lcom/google/android/gms/ads/internal/client/AdSizeParcel;Lcom/google/android/gms/internal/zzgz;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;)V

    invoke-direct {p0, p1, p4, v0}, Lcom/google/android/gms/internal/zzka;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Lcom/google/android/gms/internal/zzkb;)V

    return-void
.end method


# virtual methods
.method public destroy()V
    .registers 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzka;->zzh(Lcom/google/android/gms/dynamic/zzd;)V

    return-void
.end method

.method public isLoaded()Z
    .registers 3

    iget-object v1, p0, Lcom/google/android/gms/internal/zzka;->zzako:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/google/android/gms/internal/zzka;->zzcqx:Lcom/google/android/gms/internal/zzkb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzkb;->isLoaded()Z

    move-result v0

    monitor-exit v1

    return v0

    :catchall_b
    move-exception v0

    monitor-exit v1
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v0
.end method

.method public pause()V
    .registers 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzka;->zzf(Lcom/google/android/gms/dynamic/zzd;)V

    return-void
.end method

.method public resume()V
    .registers 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzka;->zzg(Lcom/google/android/gms/dynamic/zzd;)V

    return-void
.end method

.method public setUserId(Ljava/lang/String;)V
    .registers 3

    const-string v0, "RewardedVideoAd.setUserId() is deprecated. Please do not call this method."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzkx;->zzdi(Ljava/lang/String;)V

    return-void
.end method

.method public show()V
    .registers 3

    iget-object v1, p0, Lcom/google/android/gms/internal/zzka;->zzako:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/google/android/gms/internal/zzka;->zzcqx:Lcom/google/android/gms/internal/zzkb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzkb;->zztu()V

    monitor-exit v1

    return-void

    :catchall_a
    move-exception v0

    monitor-exit v1
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v0
.end method

.method public zza(Lcom/google/android/gms/ads/internal/reward/client/RewardedVideoAdRequestParcel;)V
    .registers 4

    iget-object v1, p0, Lcom/google/android/gms/internal/zzka;->zzako:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/google/android/gms/internal/zzka;->zzcqx:Lcom/google/android/gms/internal/zzkb;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzkb;->zza(Lcom/google/android/gms/ads/internal/reward/client/RewardedVideoAdRequestParcel;)V

    monitor-exit v1

    return-void

    :catchall_a
    move-exception v0

    monitor-exit v1
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v0
.end method

.method public zza(Lcom/google/android/gms/ads/internal/reward/client/zzd;)V
    .registers 4

    iget-object v1, p0, Lcom/google/android/gms/internal/zzka;->zzako:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/google/android/gms/internal/zzka;->zzcqx:Lcom/google/android/gms/internal/zzkb;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzkb;->zza(Lcom/google/android/gms/ads/internal/reward/client/zzd;)V

    monitor-exit v1

    return-void

    :catchall_a
    move-exception v0

    monitor-exit v1
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v0
.end method

.method public zzf(Lcom/google/android/gms/dynamic/zzd;)V
    .registers 4

    iget-object v1, p0, Lcom/google/android/gms/internal/zzka;->zzako:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/google/android/gms/internal/zzka;->zzcqx:Lcom/google/android/gms/internal/zzkb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzkb;->pause()V

    monitor-exit v1

    return-void

    :catchall_a
    move-exception v0

    monitor-exit v1
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v0
.end method

.method public zzg(Lcom/google/android/gms/dynamic/zzd;)V
    .registers 5

    iget-object v1, p0, Lcom/google/android/gms/internal/zzka;->zzako:Ljava/lang/Object;

    monitor-enter v1

    if-nez p1, :cond_14

    const/4 v0, 0x0

    :goto_6
    if-eqz v0, :cond_d

    :try_start_8
    iget-object v2, p0, Lcom/google/android/gms/internal/zzka;->zzcqx:Lcom/google/android/gms/internal/zzkb;

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/zzkb;->onContextChanged(Landroid/content/Context;)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_d} :catch_1b
    .catchall {:try_start_8 .. :try_end_d} :catchall_22

    :cond_d
    :goto_d
    :try_start_d
    iget-object v0, p0, Lcom/google/android/gms/internal/zzka;->zzcqx:Lcom/google/android/gms/internal/zzkb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzkb;->resume()V

    monitor-exit v1
    :try_end_13
    .catchall {:try_start_d .. :try_end_13} :catchall_22

    return-void

    :cond_14
    :try_start_14
    invoke-static {p1}, Lcom/google/android/gms/dynamic/zze;->zzae(Lcom/google/android/gms/dynamic/zzd;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_1a} :catch_1b
    .catchall {:try_start_14 .. :try_end_1a} :catchall_22

    goto :goto_6

    :catch_1b
    move-exception v0

    :try_start_1c
    const-string v2, "Unable to extract updated context."

    invoke-static {v2, v0}, Lcom/google/android/gms/internal/zzkx;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_d

    :catchall_22
    move-exception v0

    monitor-exit v1
    :try_end_24
    .catchall {:try_start_1c .. :try_end_24} :catchall_22

    throw v0
.end method

.method public zzh(Lcom/google/android/gms/dynamic/zzd;)V
    .registers 4

    iget-object v1, p0, Lcom/google/android/gms/internal/zzka;->zzako:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/google/android/gms/internal/zzka;->zzcqx:Lcom/google/android/gms/internal/zzkb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzkb;->destroy()V

    monitor-exit v1

    return-void

    :catchall_a
    move-exception v0

    monitor-exit v1
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v0
.end method
