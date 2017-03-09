.class public final Lcom/google/android/gms/internal/zzgs;
.super Lcom/google/android/gms/internal/zzhb$zza;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzji;
.end annotation


# instance fields
.field private final zzako:Ljava/lang/Object;

.field private zzbvy:Lcom/google/android/gms/internal/zzgu$zza;

.field private zzbvz:Lcom/google/android/gms/internal/zzgr;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzhb$zza;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzgs;->zzako:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public onAdClicked()V
    .registers 3

    iget-object v1, p0, Lcom/google/android/gms/internal/zzgs;->zzako:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/google/android/gms/internal/zzgs;->zzbvz:Lcom/google/android/gms/internal/zzgr;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/google/android/gms/internal/zzgs;->zzbvz:Lcom/google/android/gms/internal/zzgr;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzgr;->zzes()V

    :cond_c
    monitor-exit v1

    return-void

    :catchall_e
    move-exception v0

    monitor-exit v1
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw v0
.end method

.method public onAdClosed()V
    .registers 3

    iget-object v1, p0, Lcom/google/android/gms/internal/zzgs;->zzako:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/google/android/gms/internal/zzgs;->zzbvz:Lcom/google/android/gms/internal/zzgr;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/google/android/gms/internal/zzgs;->zzbvz:Lcom/google/android/gms/internal/zzgr;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzgr;->zzet()V

    :cond_c
    monitor-exit v1

    return-void

    :catchall_e
    move-exception v0

    monitor-exit v1
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw v0
.end method

.method public onAdFailedToLoad(I)V
    .registers 5

    iget-object v1, p0, Lcom/google/android/gms/internal/zzgs;->zzako:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/google/android/gms/internal/zzgs;->zzbvy:Lcom/google/android/gms/internal/zzgu$zza;

    if-eqz v0, :cond_13

    const/4 v0, 0x3

    if-ne p1, v0, :cond_15

    const/4 v0, 0x1

    :goto_b
    iget-object v2, p0, Lcom/google/android/gms/internal/zzgs;->zzbvy:Lcom/google/android/gms/internal/zzgu$zza;

    invoke-interface {v2, v0}, Lcom/google/android/gms/internal/zzgu$zza;->zzad(I)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzgs;->zzbvy:Lcom/google/android/gms/internal/zzgu$zza;

    :cond_13
    monitor-exit v1

    return-void

    :cond_15
    const/4 v0, 0x2

    goto :goto_b

    :catchall_17
    move-exception v0

    monitor-exit v1
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_17

    throw v0
.end method

.method public onAdImpression()V
    .registers 3

    iget-object v1, p0, Lcom/google/android/gms/internal/zzgs;->zzako:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/google/android/gms/internal/zzgs;->zzbvz:Lcom/google/android/gms/internal/zzgr;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/google/android/gms/internal/zzgs;->zzbvz:Lcom/google/android/gms/internal/zzgr;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzgr;->zzex()V

    :cond_c
    monitor-exit v1

    return-void

    :catchall_e
    move-exception v0

    monitor-exit v1
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw v0
.end method

.method public onAdLeftApplication()V
    .registers 3

    iget-object v1, p0, Lcom/google/android/gms/internal/zzgs;->zzako:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/google/android/gms/internal/zzgs;->zzbvz:Lcom/google/android/gms/internal/zzgr;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/google/android/gms/internal/zzgs;->zzbvz:Lcom/google/android/gms/internal/zzgr;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzgr;->zzeu()V

    :cond_c
    monitor-exit v1

    return-void

    :catchall_e
    move-exception v0

    monitor-exit v1
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw v0
.end method

.method public onAdLoaded()V
    .registers 4

    iget-object v1, p0, Lcom/google/android/gms/internal/zzgs;->zzako:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/google/android/gms/internal/zzgs;->zzbvy:Lcom/google/android/gms/internal/zzgu$zza;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/google/android/gms/internal/zzgs;->zzbvy:Lcom/google/android/gms/internal/zzgu$zza;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Lcom/google/android/gms/internal/zzgu$zza;->zzad(I)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzgs;->zzbvy:Lcom/google/android/gms/internal/zzgu$zza;

    monitor-exit v1

    :goto_11
    return-void

    :cond_12
    iget-object v0, p0, Lcom/google/android/gms/internal/zzgs;->zzbvz:Lcom/google/android/gms/internal/zzgr;

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/google/android/gms/internal/zzgs;->zzbvz:Lcom/google/android/gms/internal/zzgr;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzgr;->zzew()V

    :cond_1b
    monitor-exit v1

    goto :goto_11

    :catchall_1d
    move-exception v0

    monitor-exit v1
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_1d

    throw v0
.end method

.method public onAdOpened()V
    .registers 3

    iget-object v1, p0, Lcom/google/android/gms/internal/zzgs;->zzako:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/google/android/gms/internal/zzgs;->zzbvz:Lcom/google/android/gms/internal/zzgr;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/google/android/gms/internal/zzgs;->zzbvz:Lcom/google/android/gms/internal/zzgr;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzgr;->zzev()V

    :cond_c
    monitor-exit v1

    return-void

    :catchall_e
    move-exception v0

    monitor-exit v1
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw v0
.end method

.method public zza(Lcom/google/android/gms/internal/zzgr;)V
    .registers 4
    .param p1    # Lcom/google/android/gms/internal/zzgr;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    iget-object v1, p0, Lcom/google/android/gms/internal/zzgs;->zzako:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iput-object p1, p0, Lcom/google/android/gms/internal/zzgs;->zzbvz:Lcom/google/android/gms/internal/zzgr;

    monitor-exit v1

    return-void

    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v0
.end method

.method public zza(Lcom/google/android/gms/internal/zzgu$zza;)V
    .registers 4

    iget-object v1, p0, Lcom/google/android/gms/internal/zzgs;->zzako:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iput-object p1, p0, Lcom/google/android/gms/internal/zzgs;->zzbvy:Lcom/google/android/gms/internal/zzgu$zza;

    monitor-exit v1

    return-void

    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v0
.end method

.method public zza(Lcom/google/android/gms/internal/zzhc;)V
    .registers 5

    iget-object v1, p0, Lcom/google/android/gms/internal/zzgs;->zzako:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/google/android/gms/internal/zzgs;->zzbvy:Lcom/google/android/gms/internal/zzgu$zza;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/google/android/gms/internal/zzgs;->zzbvy:Lcom/google/android/gms/internal/zzgu$zza;

    const/4 v2, 0x0

    invoke-interface {v0, v2, p1}, Lcom/google/android/gms/internal/zzgu$zza;->zza(ILcom/google/android/gms/internal/zzhc;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzgs;->zzbvy:Lcom/google/android/gms/internal/zzgu$zza;

    monitor-exit v1

    :goto_11
    return-void

    :cond_12
    iget-object v0, p0, Lcom/google/android/gms/internal/zzgs;->zzbvz:Lcom/google/android/gms/internal/zzgr;

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/google/android/gms/internal/zzgs;->zzbvz:Lcom/google/android/gms/internal/zzgr;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzgr;->zzew()V

    :cond_1b
    monitor-exit v1

    goto :goto_11

    :catchall_1d
    move-exception v0

    monitor-exit v1
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_1d

    throw v0
.end method
