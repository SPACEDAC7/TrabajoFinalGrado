.class public Lcom/google/android/gms/internal/zzcz;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzji;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzcz$zza;,
        Lcom/google/android/gms/internal/zzcz$zzb;
    }
.end annotation


# instance fields
.field private final zzavz:Ljava/lang/Object;

.field private zzawa:Lcom/google/android/gms/internal/zzcz$zza;

.field private zzawb:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzcz;->zzavz:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzcz;->zzawa:Lcom/google/android/gms/internal/zzcz$zza;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzcz;->zzawb:Z

    return-void
.end method


# virtual methods
.method public getActivity()Landroid/app/Activity;
    .registers 4
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcz;->zzavz:Ljava/lang/Object;

    monitor-enter v1

    :try_start_4
    invoke-static {}, Lcom/google/android/gms/common/util/zzs;->zzayq()Z

    move-result v2

    if-nez v2, :cond_c

    monitor-exit v1

    :goto_b
    return-object v0

    :cond_c
    iget-object v2, p0, Lcom/google/android/gms/internal/zzcz;->zzawa:Lcom/google/android/gms/internal/zzcz$zza;

    if-eqz v2, :cond_1b

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcz;->zzawa:Lcom/google/android/gms/internal/zzcz$zza;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcz$zza;->getActivity()Landroid/app/Activity;

    move-result-object v0

    monitor-exit v1

    goto :goto_b

    :catchall_18
    move-exception v0

    monitor-exit v1
    :try_end_1a
    .catchall {:try_start_4 .. :try_end_1a} :catchall_18

    throw v0

    :cond_1b
    :try_start_1b
    monitor-exit v1
    :try_end_1c
    .catchall {:try_start_1b .. :try_end_1c} :catchall_18

    goto :goto_b
.end method

.method public getContext()Landroid/content/Context;
    .registers 4
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcz;->zzavz:Ljava/lang/Object;

    monitor-enter v1

    :try_start_4
    invoke-static {}, Lcom/google/android/gms/common/util/zzs;->zzayq()Z

    move-result v2

    if-nez v2, :cond_c

    monitor-exit v1

    :goto_b
    return-object v0

    :cond_c
    iget-object v2, p0, Lcom/google/android/gms/internal/zzcz;->zzawa:Lcom/google/android/gms/internal/zzcz$zza;

    if-eqz v2, :cond_1b

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcz;->zzawa:Lcom/google/android/gms/internal/zzcz$zza;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcz$zza;->getContext()Landroid/content/Context;

    move-result-object v0

    monitor-exit v1

    goto :goto_b

    :catchall_18
    move-exception v0

    monitor-exit v1
    :try_end_1a
    .catchall {:try_start_4 .. :try_end_1a} :catchall_18

    throw v0

    :cond_1b
    :try_start_1b
    monitor-exit v1
    :try_end_1c
    .catchall {:try_start_1b .. :try_end_1c} :catchall_18

    goto :goto_b
.end method

.method public initialize(Landroid/content/Context;)V
    .registers 6

    iget-object v2, p0, Lcom/google/android/gms/internal/zzcz;->zzavz:Ljava/lang/Object;

    monitor-enter v2

    :try_start_3
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzcz;->zzawb:Z

    if-nez v0, :cond_4c

    invoke-static {}, Lcom/google/android/gms/common/util/zzs;->zzayq()Z

    move-result v0

    if-nez v0, :cond_f

    monitor-exit v2

    :goto_e
    return-void

    :cond_f
    sget-object v0, Lcom/google/android/gms/internal/zzdr;->zzbfz:Lcom/google/android/gms/internal/zzdn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzdn;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_22

    monitor-exit v2

    goto :goto_e

    :catchall_1f
    move-exception v0

    monitor-exit v2
    :try_end_21
    .catchall {:try_start_3 .. :try_end_21} :catchall_1f

    throw v0

    :cond_22
    const/4 v1, 0x0

    :try_start_23
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_2a

    move-object v0, p1

    :cond_2a
    instance-of v3, v0, Landroid/app/Application;

    if-eqz v3, :cond_4e

    check-cast v0, Landroid/app/Application;

    :goto_30
    if-nez v0, :cond_39

    const-string v0, "Can not cast Context to Application"

    invoke-static {v0}, Lcom/google/android/gms/internal/zzkx;->zzdi(Ljava/lang/String;)V

    monitor-exit v2

    goto :goto_e

    :cond_39
    iget-object v1, p0, Lcom/google/android/gms/internal/zzcz;->zzawa:Lcom/google/android/gms/internal/zzcz$zza;

    if-nez v1, :cond_44

    new-instance v1, Lcom/google/android/gms/internal/zzcz$zza;

    invoke-direct {v1}, Lcom/google/android/gms/internal/zzcz$zza;-><init>()V

    iput-object v1, p0, Lcom/google/android/gms/internal/zzcz;->zzawa:Lcom/google/android/gms/internal/zzcz$zza;

    :cond_44
    iget-object v1, p0, Lcom/google/android/gms/internal/zzcz;->zzawa:Lcom/google/android/gms/internal/zzcz$zza;

    invoke-virtual {v1, v0, p1}, Lcom/google/android/gms/internal/zzcz$zza;->zza(Landroid/app/Application;Landroid/content/Context;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzcz;->zzawb:Z

    :cond_4c
    monitor-exit v2
    :try_end_4d
    .catchall {:try_start_23 .. :try_end_4d} :catchall_1f

    goto :goto_e

    :cond_4e
    move-object v0, v1

    goto :goto_30
.end method

.method public zza(Lcom/google/android/gms/internal/zzcz$zzb;)V
    .registers 4

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcz;->zzavz:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    invoke-static {}, Lcom/google/android/gms/common/util/zzs;->zzayq()Z

    move-result v0

    if-nez v0, :cond_b

    monitor-exit v1

    :goto_a
    return-void

    :cond_b
    sget-object v0, Lcom/google/android/gms/internal/zzdr;->zzbfz:Lcom/google/android/gms/internal/zzdn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzdn;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1e

    monitor-exit v1

    goto :goto_a

    :catchall_1b
    move-exception v0

    monitor-exit v1
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_1b

    throw v0

    :cond_1e
    :try_start_1e
    iget-object v0, p0, Lcom/google/android/gms/internal/zzcz;->zzawa:Lcom/google/android/gms/internal/zzcz$zza;

    if-nez v0, :cond_29

    new-instance v0, Lcom/google/android/gms/internal/zzcz$zza;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzcz$zza;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzcz;->zzawa:Lcom/google/android/gms/internal/zzcz$zza;

    :cond_29
    iget-object v0, p0, Lcom/google/android/gms/internal/zzcz;->zzawa:Lcom/google/android/gms/internal/zzcz$zza;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzcz$zza;->zza(Lcom/google/android/gms/internal/zzcz$zzb;)V

    monitor-exit v1
    :try_end_2f
    .catchall {:try_start_1e .. :try_end_2f} :catchall_1b

    goto :goto_a
.end method
