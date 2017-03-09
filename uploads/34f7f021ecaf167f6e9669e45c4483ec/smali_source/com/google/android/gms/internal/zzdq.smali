.class public Lcom/google/android/gms/internal/zzdq;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzji;
.end annotation


# instance fields
.field private final zzako:Ljava/lang/Object;

.field private volatile zzaoz:Z

.field private final zzbcs:Landroid/os/ConditionVariable;

.field private zzbct:Landroid/content/SharedPreferences;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzdq;->zzako:Ljava/lang/Object;

    new-instance v0, Landroid/os/ConditionVariable;

    invoke-direct {v0}, Landroid/os/ConditionVariable;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzdq;->zzbcs:Landroid/os/ConditionVariable;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzdq;->zzaoz:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzdq;->zzbct:Landroid/content/SharedPreferences;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzdq;)Landroid/content/SharedPreferences;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdq;->zzbct:Landroid/content/SharedPreferences;

    return-object v0
.end method


# virtual methods
.method public initialize(Landroid/content/Context;)V
    .registers 5

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzdq;->zzaoz:Z

    if-eqz v0, :cond_5

    :goto_4
    return-void

    :cond_5
    iget-object v1, p0, Lcom/google/android/gms/internal/zzdq;->zzako:Ljava/lang/Object;

    monitor-enter v1

    :try_start_8
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzdq;->zzaoz:Z

    if-eqz v0, :cond_11

    monitor-exit v1

    goto :goto_4

    :catchall_e
    move-exception v0

    monitor-exit v1
    :try_end_10
    .catchall {:try_start_8 .. :try_end_10} :catchall_e

    throw v0

    :cond_11
    :try_start_11
    invoke-static {p1}, Lcom/google/android/gms/common/zze;->getRemoteContext(Landroid/content/Context;)Landroid/content/Context;
    :try_end_14
    .catchall {:try_start_11 .. :try_end_14} :catchall_32

    move-result-object v0

    if-nez v0, :cond_1e

    :try_start_17
    iget-object v0, p0, Lcom/google/android/gms/internal/zzdq;->zzbcs:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V

    monitor-exit v1
    :try_end_1d
    .catchall {:try_start_17 .. :try_end_1d} :catchall_e

    goto :goto_4

    :cond_1e
    :try_start_1e
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzgw()Lcom/google/android/gms/internal/zzdp;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/zzdp;->zzm(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzdq;->zzbct:Landroid/content/SharedPreferences;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzdq;->zzaoz:Z
    :try_end_2b
    .catchall {:try_start_1e .. :try_end_2b} :catchall_32

    :try_start_2b
    iget-object v0, p0, Lcom/google/android/gms/internal/zzdq;->zzbcs:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V

    monitor-exit v1

    goto :goto_4

    :catchall_32
    move-exception v0

    iget-object v2, p0, Lcom/google/android/gms/internal/zzdq;->zzbcs:Landroid/os/ConditionVariable;

    invoke-virtual {v2}, Landroid/os/ConditionVariable;->open()V

    throw v0
    :try_end_39
    .catchall {:try_start_2b .. :try_end_39} :catchall_e
.end method

.method public zzd(Lcom/google/android/gms/internal/zzdn;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/zzdn",
            "<TT;>;)TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdq;->zzbcs:Landroid/os/ConditionVariable;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v2, v3}, Landroid/os/ConditionVariable;->block(J)Z

    move-result v0

    if-nez v0, :cond_12

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Flags.initialize() was not called!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_12
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzdq;->zzaoz:Z

    if-nez v0, :cond_24

    iget-object v1, p0, Lcom/google/android/gms/internal/zzdq;->zzako:Ljava/lang/Object;

    monitor-enter v1

    :try_start_19
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzdq;->zzaoz:Z

    if-nez v0, :cond_23

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzdn;->zzlp()Ljava/lang/Object;

    move-result-object v0

    monitor-exit v1

    :goto_22
    return-object v0

    :cond_23
    monitor-exit v1
    :try_end_24
    .catchall {:try_start_19 .. :try_end_24} :catchall_2e

    :cond_24
    new-instance v0, Lcom/google/android/gms/internal/zzdq$1;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/zzdq$1;-><init>(Lcom/google/android/gms/internal/zzdq;Lcom/google/android/gms/internal/zzdn;)V

    invoke-static {v0}, Lcom/google/android/gms/internal/zzlo;->zzb(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_22

    :catchall_2e
    move-exception v0

    :try_start_2f
    monitor-exit v1
    :try_end_30
    .catchall {:try_start_2f .. :try_end_30} :catchall_2e

    throw v0
.end method
