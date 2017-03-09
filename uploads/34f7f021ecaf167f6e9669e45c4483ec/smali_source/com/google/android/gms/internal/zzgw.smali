.class public Lcom/google/android/gms/internal/zzgw;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzgo;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzji;
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final zzako:Ljava/lang/Object;

.field private final zzamf:Lcom/google/android/gms/internal/zzgz;

.field private final zzasz:Z

.field private final zzbwc:Lcom/google/android/gms/internal/zzgq;

.field private final zzbwe:Z

.field private final zzbws:Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;

.field private final zzbwt:J

.field private final zzbwu:J

.field private final zzbwv:I

.field private zzbww:Z

.field private final zzbwx:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/google/android/gms/internal/zzlt",
            "<",
            "Lcom/google/android/gms/internal/zzgu;",
            ">;",
            "Lcom/google/android/gms/internal/zzgt;",
            ">;"
        }
    .end annotation
.end field

.field private zzbwy:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/zzgu;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;Lcom/google/android/gms/internal/zzgz;Lcom/google/android/gms/internal/zzgq;ZZJJI)V
    .registers 13

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzgw;->zzako:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzgw;->zzbww:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzgw;->zzbwx:Ljava/util/Map;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzgw;->zzbwy:Ljava/util/List;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzgw;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzgw;->zzbws:Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzgw;->zzamf:Lcom/google/android/gms/internal/zzgz;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzgw;->zzbwc:Lcom/google/android/gms/internal/zzgq;

    iput-boolean p5, p0, Lcom/google/android/gms/internal/zzgw;->zzasz:Z

    iput-boolean p6, p0, Lcom/google/android/gms/internal/zzgw;->zzbwe:Z

    iput-wide p7, p0, Lcom/google/android/gms/internal/zzgw;->zzbwt:J

    iput-wide p9, p0, Lcom/google/android/gms/internal/zzgw;->zzbwu:J

    iput p11, p0, Lcom/google/android/gms/internal/zzgw;->zzbwv:I

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzgw;)Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzgw;->zzako:Ljava/lang/Object;

    return-object v0
.end method

.method private zza(Lcom/google/android/gms/internal/zzlt;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzlt",
            "<",
            "Lcom/google/android/gms/internal/zzgu;",
            ">;)V"
        }
    .end annotation

    sget-object v0, Lcom/google/android/gms/internal/zzlb;->zzcvl:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/internal/zzgw$2;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/zzgw$2;-><init>(Lcom/google/android/gms/internal/zzgw;Lcom/google/android/gms/internal/zzlt;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/zzgw;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzgw;->zzbww:Z

    return v0
.end method

.method static synthetic zzc(Lcom/google/android/gms/internal/zzgw;)J
    .registers 3

    iget-wide v0, p0, Lcom/google/android/gms/internal/zzgw;->zzbwt:J

    return-wide v0
.end method

.method static synthetic zzd(Lcom/google/android/gms/internal/zzgw;)J
    .registers 3

    iget-wide v0, p0, Lcom/google/android/gms/internal/zzgw;->zzbwu:J

    return-wide v0
.end method

.method private zze(Ljava/util/List;)Lcom/google/android/gms/internal/zzgu;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/zzlt",
            "<",
            "Lcom/google/android/gms/internal/zzgu;",
            ">;>;)",
            "Lcom/google/android/gms/internal/zzgu;"
        }
    .end annotation

    iget-object v2, p0, Lcom/google/android/gms/internal/zzgw;->zzako:Ljava/lang/Object;

    monitor-enter v2

    :try_start_3
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzgw;->zzbww:Z

    if-eqz v0, :cond_f

    new-instance v1, Lcom/google/android/gms/internal/zzgu;

    const/4 v0, -0x1

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/zzgu;-><init>(I)V

    monitor-exit v2

    :goto_e
    return-object v1

    :cond_f
    monitor-exit v2
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_3c

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_14
    :goto_14
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzlt;

    :try_start_20
    invoke-interface {v0}, Lcom/google/android/gms/internal/zzlt;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/zzgu;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzgw;->zzbwy:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz v1, :cond_14

    iget v3, v1, Lcom/google/android/gms/internal/zzgu;->zzbwl:I

    if-nez v3, :cond_14

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzgw;->zza(Lcom/google/android/gms/internal/zzlt;)V
    :try_end_34
    .catch Ljava/lang/InterruptedException; {:try_start_20 .. :try_end_34} :catch_35
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_20 .. :try_end_34} :catch_4a

    goto :goto_e

    :catch_35
    move-exception v0

    :goto_36
    const-string v1, "Exception while processing an adapter; continuing with other adapters"

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzkx;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_14

    :catchall_3c
    move-exception v0

    :try_start_3d
    monitor-exit v2
    :try_end_3e
    .catchall {:try_start_3d .. :try_end_3e} :catchall_3c

    throw v0

    :cond_3f
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzgw;->zza(Lcom/google/android/gms/internal/zzlt;)V

    new-instance v1, Lcom/google/android/gms/internal/zzgu;

    const/4 v0, 0x1

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/zzgu;-><init>(I)V

    goto :goto_e

    :catch_4a
    move-exception v0

    goto :goto_36
.end method

.method static synthetic zze(Lcom/google/android/gms/internal/zzgw;)Ljava/util/Map;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzgw;->zzbwx:Ljava/util/Map;

    return-object v0
.end method

.method private zzf(Ljava/util/List;)Lcom/google/android/gms/internal/zzgu;
    .registers 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/zzlt",
            "<",
            "Lcom/google/android/gms/internal/zzgu;",
            ">;>;)",
            "Lcom/google/android/gms/internal/zzgu;"
        }
    .end annotation

    iget-object v1, p0, Lcom/google/android/gms/internal/zzgw;->zzako:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzgw;->zzbww:Z

    if-eqz v0, :cond_f

    new-instance v2, Lcom/google/android/gms/internal/zzgu;

    const/4 v0, -0x1

    invoke-direct {v2, v0}, Lcom/google/android/gms/internal/zzgu;-><init>(I)V

    monitor-exit v1

    :cond_e
    :goto_e
    return-object v2

    :cond_f
    monitor-exit v1
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_80

    const/4 v4, -0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzgw;->zzbwc:Lcom/google/android/gms/internal/zzgq;

    iget-wide v0, v0, Lcom/google/android/gms/internal/zzgq;->zzbvu:J

    const-wide/16 v6, -0x1

    cmp-long v0, v0, v6

    if-eqz v0, :cond_83

    iget-object v0, p0, Lcom/google/android/gms/internal/zzgw;->zzbwc:Lcom/google/android/gms/internal/zzgq;

    iget-wide v0, v0, Lcom/google/android/gms/internal/zzgq;->zzbvu:J

    :goto_21
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move-wide v6, v0

    :goto_26
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b9

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzlt;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzgs()Lcom/google/android/gms/common/util/zze;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/common/util/zze;->currentTimeMillis()J

    move-result-wide v10

    const-wide/16 v12, 0x0

    cmp-long v1, v6, v12

    if-nez v1, :cond_86

    :try_start_40
    invoke-interface {v0}, Lcom/google/android/gms/internal/zzlt;->isDone()Z

    move-result v1

    if-eqz v1, :cond_86

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzlt;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/zzgu;

    :goto_4c
    iget-object v5, p0, Lcom/google/android/gms/internal/zzgw;->zzbwy:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz v1, :cond_cc

    iget v5, v1, Lcom/google/android/gms/internal/zzgu;->zzbwl:I

    if-nez v5, :cond_cc

    iget-object v5, v1, Lcom/google/android/gms/internal/zzgu;->zzbwq:Lcom/google/android/gms/internal/zzhc;

    if-eqz v5, :cond_cc

    invoke-interface {v5}, Lcom/google/android/gms/internal/zzhc;->zzok()I

    move-result v9

    if-le v9, v4, :cond_cc

    invoke-interface {v5}, Lcom/google/android/gms/internal/zzhc;->zzok()I
    :try_end_64
    .catch Ljava/lang/InterruptedException; {:try_start_40 .. :try_end_64} :catch_c6
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_40 .. :try_end_64} :catch_c8
    .catch Landroid/os/RemoteException; {:try_start_40 .. :try_end_64} :catch_8f
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_40 .. :try_end_64} :catch_ca
    .catchall {:try_start_40 .. :try_end_64} :catchall_a7

    move-result v2

    move-object v14, v1

    move-object v1, v0

    move-object v0, v14

    :goto_68
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzgs()Lcom/google/android/gms/common/util/zze;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/android/gms/common/util/zze;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v10

    sub-long v4, v6, v4

    const-wide/16 v6, 0x0

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    move-object v3, v1

    move-object v14, v0

    move-wide v0, v4

    move v4, v2

    move-object v2, v14

    :goto_7e
    move-wide v6, v0

    goto :goto_26

    :catchall_80
    move-exception v0

    :try_start_81
    monitor-exit v1
    :try_end_82
    .catchall {:try_start_81 .. :try_end_82} :catchall_80

    throw v0

    :cond_83
    const-wide/16 v0, 0x2710

    goto :goto_21

    :cond_86
    :try_start_86
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v6, v7, v1}, Lcom/google/android/gms/internal/zzlt;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/zzgu;
    :try_end_8e
    .catch Ljava/lang/InterruptedException; {:try_start_86 .. :try_end_8e} :catch_c6
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_86 .. :try_end_8e} :catch_c8
    .catch Landroid/os/RemoteException; {:try_start_86 .. :try_end_8e} :catch_8f
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_86 .. :try_end_8e} :catch_ca
    .catchall {:try_start_86 .. :try_end_8e} :catchall_a7

    goto :goto_4c

    :catch_8f
    move-exception v0

    :goto_90
    :try_start_90
    const-string v1, "Exception while processing an adapter; continuing with other adapters"

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzkx;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_95
    .catchall {:try_start_90 .. :try_end_95} :catchall_a7

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzgs()Lcom/google/android/gms/common/util/zze;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/zze;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, v10

    sub-long v0, v6, v0

    const-wide/16 v6, 0x0

    invoke-static {v0, v1, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    goto :goto_7e

    :catchall_a7
    move-exception v0

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzgs()Lcom/google/android/gms/common/util/zze;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/common/util/zze;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v10

    sub-long v2, v6, v2

    const-wide/16 v4, 0x0

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    throw v0

    :cond_b9
    invoke-direct {p0, v3}, Lcom/google/android/gms/internal/zzgw;->zza(Lcom/google/android/gms/internal/zzlt;)V

    if-nez v2, :cond_e

    new-instance v2, Lcom/google/android/gms/internal/zzgu;

    const/4 v0, 0x1

    invoke-direct {v2, v0}, Lcom/google/android/gms/internal/zzgu;-><init>(I)V

    goto/16 :goto_e

    :catch_c6
    move-exception v0

    goto :goto_90

    :catch_c8
    move-exception v0

    goto :goto_90

    :catch_ca
    move-exception v0

    goto :goto_90

    :cond_cc
    move-object v0, v2

    move-object v1, v3

    move v2, v4

    goto :goto_68
.end method


# virtual methods
.method public cancel()V
    .registers 4

    iget-object v1, p0, Lcom/google/android/gms/internal/zzgw;->zzako:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x1

    :try_start_4
    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzgw;->zzbww:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/zzgw;->zzbwx:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_10
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_23

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzgt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzgt;->cancel()V

    goto :goto_10

    :catchall_20
    move-exception v0

    monitor-exit v1
    :try_end_22
    .catchall {:try_start_4 .. :try_end_22} :catchall_20

    throw v0

    :cond_23
    :try_start_23
    monitor-exit v1
    :try_end_24
    .catchall {:try_start_23 .. :try_end_24} :catchall_20

    return-void
.end method

.method public zzd(Ljava/util/List;)Lcom/google/android/gms/internal/zzgu;
    .registers 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/zzgp;",
            ">;)",
            "Lcom/google/android/gms/internal/zzgu;"
        }
    .end annotation

    const-string v1, "Starting mediation."

    invoke-static {v1}, Lcom/google/android/gms/internal/zzkx;->zzdg(Ljava/lang/String;)V

    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v14

    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :cond_12
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_98

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/gms/internal/zzgp;

    const-string v2, "Trying mediation network: "

    iget-object v1, v6, Lcom/google/android/gms/internal/zzgp;->zzbut:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_92

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_30
    invoke-static {v1}, Lcom/google/android/gms/internal/zzkx;->zzdh(Ljava/lang/String;)V

    iget-object v1, v6, Lcom/google/android/gms/internal/zzgp;->zzbuu:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :goto_39
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_12

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    new-instance v1, Lcom/google/android/gms/internal/zzgt;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/internal/zzgw;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/internal/zzgw;->zzamf:Lcom/google/android/gms/internal/zzgz;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/gms/internal/zzgw;->zzbwc:Lcom/google/android/gms/internal/zzgq;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/gms/internal/zzgw;->zzbws:Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;

    iget-object v7, v7, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzcju:Lcom/google/android/gms/ads/internal/client/AdRequestParcel;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/android/gms/internal/zzgw;->zzbws:Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;

    iget-object v8, v8, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzarm:Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/google/android/gms/internal/zzgw;->zzbws:Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;

    iget-object v9, v9, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzari:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    move-object/from16 v0, p0

    iget-boolean v10, v0, Lcom/google/android/gms/internal/zzgw;->zzasz:Z

    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/google/android/gms/internal/zzgw;->zzbwe:Z

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/gms/internal/zzgw;->zzbws:Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;

    iget-object v12, v12, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzasa:Lcom/google/android/gms/ads/internal/formats/NativeAdOptionsParcel;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/gms/internal/zzgw;->zzbws:Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;

    iget-object v13, v13, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzase:Ljava/util/List;

    invoke-direct/range {v1 .. v13}, Lcom/google/android/gms/internal/zzgt;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/zzgz;Lcom/google/android/gms/internal/zzgq;Lcom/google/android/gms/internal/zzgp;Lcom/google/android/gms/ads/internal/client/AdRequestParcel;Lcom/google/android/gms/ads/internal/client/AdSizeParcel;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;ZZLcom/google/android/gms/ads/internal/formats/NativeAdOptionsParcel;Ljava/util/List;)V

    new-instance v2, Lcom/google/android/gms/internal/zzgw$1;

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v1}, Lcom/google/android/gms/internal/zzgw$1;-><init>(Lcom/google/android/gms/internal/zzgw;Lcom/google/android/gms/internal/zzgt;)V

    invoke-static {v14, v2}, Lcom/google/android/gms/internal/zzla;->zza(Ljava/util/concurrent/ExecutorService;Ljava/util/concurrent/Callable;)Lcom/google/android/gms/internal/zzlt;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gms/internal/zzgw;->zzbwx:Ljava/util/Map;

    invoke-interface {v3, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v15, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_39

    :cond_92
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_30

    :cond_98
    move-object/from16 v0, p0

    iget v1, v0, Lcom/google/android/gms/internal/zzgw;->zzbwv:I

    packed-switch v1, :pswitch_data_ae

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/google/android/gms/internal/zzgw;->zze(Ljava/util/List;)Lcom/google/android/gms/internal/zzgu;

    move-result-object v1

    :goto_a5
    return-object v1

    :pswitch_a6
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/google/android/gms/internal/zzgw;->zzf(Ljava/util/List;)Lcom/google/android/gms/internal/zzgu;

    move-result-object v1

    goto :goto_a5

    nop

    :pswitch_data_ae
    .packed-switch 0x2
        :pswitch_a6
    .end packed-switch
.end method

.method public zzoe()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/zzgu;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzgw;->zzbwy:Ljava/util/List;

    return-object v0
.end method
