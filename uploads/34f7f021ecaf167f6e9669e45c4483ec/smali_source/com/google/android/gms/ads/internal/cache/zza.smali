.class public Lcom/google/android/gms/ads/internal/cache/zza;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzji;
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final zzako:Ljava/lang/Object;

.field private final zzaxy:Ljava/lang/Runnable;

.field private zzaxz:Lcom/google/android/gms/ads/internal/cache/zzc;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private zzaya:Lcom/google/android/gms/ads/internal/cache/zzf;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/ads/internal/cache/zza$1;

    invoke-direct {v0, p0}, Lcom/google/android/gms/ads/internal/cache/zza$1;-><init>(Lcom/google/android/gms/ads/internal/cache/zza;)V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/cache/zza;->zzaxy:Ljava/lang/Runnable;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/cache/zza;->zzako:Ljava/lang/Object;

    return-void
.end method

.method private connect()V
    .registers 4

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/cache/zza;->zzako:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/cache/zza;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/cache/zza;->zzaxz:Lcom/google/android/gms/ads/internal/cache/zzc;

    if-eqz v0, :cond_d

    :cond_b
    monitor-exit v1

    :goto_c
    return-void

    :cond_d
    new-instance v0, Lcom/google/android/gms/ads/internal/cache/zza$3;

    invoke-direct {v0, p0}, Lcom/google/android/gms/ads/internal/cache/zza$3;-><init>(Lcom/google/android/gms/ads/internal/cache/zza;)V

    new-instance v2, Lcom/google/android/gms/ads/internal/cache/zza$4;

    invoke-direct {v2, p0}, Lcom/google/android/gms/ads/internal/cache/zza$4;-><init>(Lcom/google/android/gms/ads/internal/cache/zza;)V

    invoke-virtual {p0, v0, v2}, Lcom/google/android/gms/ads/internal/cache/zza;->zza(Lcom/google/android/gms/common/internal/zze$zzb;Lcom/google/android/gms/common/internal/zze$zzc;)Lcom/google/android/gms/ads/internal/cache/zzc;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/cache/zza;->zzaxz:Lcom/google/android/gms/ads/internal/cache/zzc;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/cache/zza;->zzaxz:Lcom/google/android/gms/ads/internal/cache/zzc;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/cache/zzc;->zzavd()V

    monitor-exit v1

    goto :goto_c

    :catchall_24
    move-exception v0

    monitor-exit v1
    :try_end_26
    .catchall {:try_start_3 .. :try_end_26} :catchall_24

    throw v0
.end method

.method private disconnect()V
    .registers 3

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/cache/zza;->zzako:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/cache/zza;->zzaxz:Lcom/google/android/gms/ads/internal/cache/zzc;

    if-nez v0, :cond_9

    monitor-exit v1

    :goto_8
    return-void

    :cond_9
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/cache/zza;->zzaxz:Lcom/google/android/gms/ads/internal/cache/zzc;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/cache/zzc;->isConnected()Z

    move-result v0

    if-nez v0, :cond_19

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/cache/zza;->zzaxz:Lcom/google/android/gms/ads/internal/cache/zzc;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/cache/zzc;->isConnecting()Z

    move-result v0

    if-eqz v0, :cond_1e

    :cond_19
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/cache/zza;->zzaxz:Lcom/google/android/gms/ads/internal/cache/zzc;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/cache/zzc;->disconnect()V

    :cond_1e
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/cache/zza;->zzaxz:Lcom/google/android/gms/ads/internal/cache/zzc;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/cache/zza;->zzaya:Lcom/google/android/gms/ads/internal/cache/zzf;

    invoke-static {}, Landroid/os/Binder;->flushPendingCommands()V

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzhc()Lcom/google/android/gms/internal/zzlj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzlj;->zzwk()V

    monitor-exit v1

    goto :goto_8

    :catchall_30
    move-exception v0

    monitor-exit v1
    :try_end_32
    .catchall {:try_start_3 .. :try_end_32} :catchall_30

    throw v0
.end method

.method static synthetic zza(Lcom/google/android/gms/ads/internal/cache/zza;Lcom/google/android/gms/ads/internal/cache/zzc;)Lcom/google/android/gms/ads/internal/cache/zzc;
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/cache/zza;->zzaxz:Lcom/google/android/gms/ads/internal/cache/zzc;

    return-object p1
.end method

.method static synthetic zza(Lcom/google/android/gms/ads/internal/cache/zza;Lcom/google/android/gms/ads/internal/cache/zzf;)Lcom/google/android/gms/ads/internal/cache/zzf;
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/cache/zza;->zzaya:Lcom/google/android/gms/ads/internal/cache/zzf;

    return-object p1
.end method

.method static synthetic zza(Lcom/google/android/gms/ads/internal/cache/zza;)V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/cache/zza;->disconnect()V

    return-void
.end method

.method static synthetic zzb(Lcom/google/android/gms/ads/internal/cache/zza;)V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/cache/zza;->connect()V

    return-void
.end method

.method static synthetic zzc(Lcom/google/android/gms/ads/internal/cache/zza;)Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/cache/zza;->zzako:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic zzd(Lcom/google/android/gms/ads/internal/cache/zza;)Lcom/google/android/gms/ads/internal/cache/zzc;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/cache/zza;->zzaxz:Lcom/google/android/gms/ads/internal/cache/zzc;

    return-object v0
.end method


# virtual methods
.method public initialize(Landroid/content/Context;)V
    .registers 4

    if-nez p1, :cond_3

    :goto_2
    return-void

    :cond_3
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/cache/zza;->zzako:Ljava/lang/Object;

    monitor-enter v1

    :try_start_6
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/cache/zza;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_f

    monitor-exit v1

    goto :goto_2

    :catchall_c
    move-exception v0

    monitor-exit v1
    :try_end_e
    .catchall {:try_start_6 .. :try_end_e} :catchall_c

    throw v0

    :cond_f
    :try_start_f
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/cache/zza;->mContext:Landroid/content/Context;

    sget-object v0, Lcom/google/android/gms/internal/zzdr;->zzbkr:Lcom/google/android/gms/internal/zzdn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzdn;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_28

    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/cache/zza;->connect()V

    :cond_26
    :goto_26
    monitor-exit v1

    goto :goto_2

    :cond_28
    sget-object v0, Lcom/google/android/gms/internal/zzdr;->zzbkq:Lcom/google/android/gms/internal/zzdn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzdn;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_26

    new-instance v0, Lcom/google/android/gms/ads/internal/cache/zza$2;

    invoke-direct {v0, p0}, Lcom/google/android/gms/ads/internal/cache/zza$2;-><init>(Lcom/google/android/gms/ads/internal/cache/zza;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/ads/internal/cache/zza;->zza(Lcom/google/android/gms/internal/zzcz$zzb;)V
    :try_end_3e
    .catchall {:try_start_f .. :try_end_3e} :catchall_c

    goto :goto_26
.end method

.method public zza(Lcom/google/android/gms/ads/internal/cache/CacheOffering;)Lcom/google/android/gms/ads/internal/cache/CacheEntryParcel;
    .registers 5

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/cache/zza;->zzako:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/cache/zza;->zzaya:Lcom/google/android/gms/ads/internal/cache/zzf;

    if-nez v0, :cond_e

    new-instance v0, Lcom/google/android/gms/ads/internal/cache/CacheEntryParcel;

    invoke-direct {v0}, Lcom/google/android/gms/ads/internal/cache/CacheEntryParcel;-><init>()V

    monitor-exit v1
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_16

    :goto_d
    return-object v0

    :cond_e
    :try_start_e
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/cache/zza;->zzaya:Lcom/google/android/gms/ads/internal/cache/zzf;

    invoke-interface {v0, p1}, Lcom/google/android/gms/ads/internal/cache/zzf;->zza(Lcom/google/android/gms/ads/internal/cache/CacheOffering;)Lcom/google/android/gms/ads/internal/cache/CacheEntryParcel;
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_13} :catch_19
    .catchall {:try_start_e .. :try_end_13} :catchall_16

    move-result-object v0

    :try_start_14
    monitor-exit v1

    goto :goto_d

    :catchall_16
    move-exception v0

    monitor-exit v1
    :try_end_18
    .catchall {:try_start_14 .. :try_end_18} :catchall_16

    throw v0

    :catch_19
    move-exception v0

    :try_start_1a
    const-string v2, "Unable to call into cache service."

    invoke-static {v2, v0}, Lcom/google/android/gms/internal/zzkx;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v0, Lcom/google/android/gms/ads/internal/cache/CacheEntryParcel;

    invoke-direct {v0}, Lcom/google/android/gms/ads/internal/cache/CacheEntryParcel;-><init>()V

    monitor-exit v1
    :try_end_25
    .catchall {:try_start_1a .. :try_end_25} :catchall_16

    goto :goto_d
.end method

.method protected zza(Lcom/google/android/gms/common/internal/zze$zzb;Lcom/google/android/gms/common/internal/zze$zzc;)Lcom/google/android/gms/ads/internal/cache/zzc;
    .registers 6

    new-instance v0, Lcom/google/android/gms/ads/internal/cache/zzc;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/cache/zza;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzhc()Lcom/google/android/gms/internal/zzlj;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzlj;->zzwj()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v1, v2, p1, p2}, Lcom/google/android/gms/ads/internal/cache/zzc;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/zze$zzb;Lcom/google/android/gms/common/internal/zze$zzc;)V

    return-object v0
.end method

.method protected zza(Lcom/google/android/gms/internal/zzcz$zzb;)V
    .registers 3

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzgp()Lcom/google/android/gms/internal/zzcz;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzcz;->zza(Lcom/google/android/gms/internal/zzcz$zzb;)V

    return-void
.end method

.method public zzjt()V
    .registers 7

    sget-object v0, Lcom/google/android/gms/internal/zzdr;->zzbks:Lcom/google/android/gms/internal/zzdn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzdn;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_35

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/cache/zza;->zzako:Ljava/lang/Object;

    monitor-enter v1

    :try_start_11
    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/cache/zza;->connect()V

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzgm()Lcom/google/android/gms/internal/zzlb;

    sget-object v0, Lcom/google/android/gms/internal/zzlb;->zzcvl:Landroid/os/Handler;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/cache/zza;->zzaxy:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzgm()Lcom/google/android/gms/internal/zzlb;

    sget-object v2, Lcom/google/android/gms/internal/zzlb;->zzcvl:Landroid/os/Handler;

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/cache/zza;->zzaxy:Ljava/lang/Runnable;

    sget-object v0, Lcom/google/android/gms/internal/zzdr;->zzbkt:Lcom/google/android/gms/internal/zzdn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzdn;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    monitor-exit v1

    :cond_35
    return-void

    :catchall_36
    move-exception v0

    monitor-exit v1
    :try_end_38
    .catchall {:try_start_11 .. :try_end_38} :catchall_36

    throw v0
.end method
