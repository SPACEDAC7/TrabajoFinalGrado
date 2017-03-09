.class public Lcom/google/android/gms/internal/zziz;
.super Lcom/google/android/gms/internal/zzkw;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzji;
.end annotation


# instance fields
.field private final zzako:Ljava/lang/Object;

.field private final zzcge:Lcom/google/android/gms/internal/zziu$zza;

.field private final zzcgf:Lcom/google/android/gms/internal/zzko$zza;

.field private final zzcgg:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

.field private final zzchg:Lcom/google/android/gms/internal/zzjb;

.field private zzchh:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/google/android/gms/internal/zzko;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/zzq;Lcom/google/android/gms/internal/zzko$zza;Lcom/google/android/gms/internal/zzav;Lcom/google/android/gms/internal/zziu$zza;Lcom/google/android/gms/internal/zzdz;)V
    .registers 14

    new-instance v0, Lcom/google/android/gms/internal/zzjb;

    new-instance v3, Lcom/google/android/gms/internal/zzli;

    invoke-direct {v3, p1}, Lcom/google/android/gms/internal/zzli;-><init>(Landroid/content/Context;)V

    move-object v1, p1

    move-object v2, p2

    move-object v4, p4

    move-object v5, p3

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/zzjb;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/zzq;Lcom/google/android/gms/internal/zzli;Lcom/google/android/gms/internal/zzav;Lcom/google/android/gms/internal/zzko$zza;Lcom/google/android/gms/internal/zzdz;)V

    invoke-direct {p0, p3, p5, v0}, Lcom/google/android/gms/internal/zziz;-><init>(Lcom/google/android/gms/internal/zzko$zza;Lcom/google/android/gms/internal/zziu$zza;Lcom/google/android/gms/internal/zzjb;)V

    return-void
.end method

.method constructor <init>(Lcom/google/android/gms/internal/zzko$zza;Lcom/google/android/gms/internal/zziu$zza;Lcom/google/android/gms/internal/zzjb;)V
    .registers 5

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzkw;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zziz;->zzako:Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/zziz;->zzcgf:Lcom/google/android/gms/internal/zzko$zza;

    iget-object v0, p1, Lcom/google/android/gms/internal/zzko$zza;->zzcsu:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iput-object v0, p0, Lcom/google/android/gms/internal/zziz;->zzcgg:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iput-object p2, p0, Lcom/google/android/gms/internal/zziz;->zzcge:Lcom/google/android/gms/internal/zziu$zza;

    iput-object p3, p0, Lcom/google/android/gms/internal/zziz;->zzchg:Lcom/google/android/gms/internal/zzjb;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zziz;)Lcom/google/android/gms/internal/zziu$zza;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zziz;->zzcge:Lcom/google/android/gms/internal/zziu$zza;

    return-object v0
.end method

.method private zzaq(I)Lcom/google/android/gms/internal/zzko;
    .registers 41

    new-instance v2, Lcom/google/android/gms/internal/zzko;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gms/internal/zziz;->zzcgf:Lcom/google/android/gms/internal/zzko$zza;

    iget-object v3, v3, Lcom/google/android/gms/internal/zzko$zza;->zzcmx:Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;

    iget-object v3, v3, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzcju:Lcom/google/android/gms/ads/internal/client/AdRequestParcel;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/zziz;->zzcgg:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget v9, v6, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->orientation:I

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/zziz;->zzcgg:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget-wide v10, v6, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzbvq:J

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/zziz;->zzcgf:Lcom/google/android/gms/internal/zzko$zza;

    iget-object v6, v6, Lcom/google/android/gms/internal/zzko$zza;->zzcmx:Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;

    iget-object v12, v6, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzcjx:Ljava/lang/String;

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/zziz;->zzcgg:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget-wide v0, v6, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzclc:J

    move-wide/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/zziz;->zzcgf:Lcom/google/android/gms/internal/zzko$zza;

    iget-object v0, v6, Lcom/google/android/gms/internal/zzko$zza;->zzarm:Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/zziz;->zzcgg:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget-wide v0, v6, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzcla:J

    move-wide/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/zziz;->zzcgf:Lcom/google/android/gms/internal/zzko$zza;

    iget-wide v0, v6, Lcom/google/android/gms/internal/zzko$zza;->zzcso:J

    move-wide/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/zziz;->zzcgg:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget-wide v0, v6, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzclf:J

    move-wide/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/zziz;->zzcgg:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget-object v0, v6, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzclg:Ljava/lang/String;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/zziz;->zzcgf:Lcom/google/android/gms/internal/zzko$zza;

    iget-object v0, v6, Lcom/google/android/gms/internal/zzko$zza;->zzcsi:Lorg/json/JSONObject;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/zziz;->zzcgf:Lcom/google/android/gms/internal/zzko$zza;

    iget-object v6, v6, Lcom/google/android/gms/internal/zzko$zza;->zzcsu:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget-boolean v0, v6, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzclt:Z

    move/from16 v34, v0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/zziz;->zzcgf:Lcom/google/android/gms/internal/zzko$zza;

    iget-object v6, v6, Lcom/google/android/gms/internal/zzko$zza;->zzcsu:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget-object v0, v6, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzclu:Lcom/google/android/gms/ads/internal/request/AutoClickProtectionConfigurationParcel;

    move-object/from16 v35, v0

    const/16 v36, 0x0

    const/16 v37, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/zziz;->zzcgg:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget-object v0, v6, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzclx:Ljava/lang/String;

    move-object/from16 v38, v0

    move/from16 v6, p1

    invoke-direct/range {v2 .. v38}, Lcom/google/android/gms/internal/zzko;-><init>(Lcom/google/android/gms/ads/internal/client/AdRequestParcel;Lcom/google/android/gms/internal/zzmd;Ljava/util/List;ILjava/util/List;Ljava/util/List;IJLjava/lang/String;ZLcom/google/android/gms/internal/zzgp;Lcom/google/android/gms/internal/zzha;Ljava/lang/String;Lcom/google/android/gms/internal/zzgq;Lcom/google/android/gms/internal/zzgs;JLcom/google/android/gms/ads/internal/client/AdSizeParcel;JJJLjava/lang/String;Lorg/json/JSONObject;Lcom/google/android/gms/ads/internal/formats/zzi$zza;Lcom/google/android/gms/ads/internal/reward/mediation/client/RewardItemParcel;Ljava/util/List;Ljava/util/List;ZLcom/google/android/gms/ads/internal/request/AutoClickProtectionConfigurationParcel;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    return-object v2
.end method


# virtual methods
.method public onStop()V
    .registers 4

    iget-object v1, p0, Lcom/google/android/gms/internal/zziz;->zzako:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/google/android/gms/internal/zziz;->zzchh:Ljava/util/concurrent/Future;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/google/android/gms/internal/zziz;->zzchh:Ljava/util/concurrent/Future;

    const/4 v2, 0x1

    invoke-interface {v0, v2}, Ljava/util/concurrent/Future;->cancel(Z)Z

    :cond_d
    monitor-exit v1

    return-void

    :catchall_f
    move-exception v0

    monitor-exit v1
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw v0
.end method

.method public zzfp()V
    .registers 9

    const/4 v3, 0x0

    const/4 v2, -0x2

    const/4 v1, 0x0

    :try_start_3
    iget-object v4, p0, Lcom/google/android/gms/internal/zziz;->zzako:Ljava/lang/Object;

    monitor-enter v4
    :try_end_6
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_3 .. :try_end_6} :catch_2d
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_3 .. :try_end_6} :catch_3e
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_6} :catch_42
    .catch Ljava/util/concurrent/CancellationException; {:try_start_3 .. :try_end_6} :catch_46

    :try_start_6
    iget-object v0, p0, Lcom/google/android/gms/internal/zziz;->zzchg:Lcom/google/android/gms/internal/zzjb;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzla;->zza(Ljava/util/concurrent/Callable;)Lcom/google/android/gms/internal/zzlt;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zziz;->zzchh:Ljava/util/concurrent/Future;

    monitor-exit v4
    :try_end_f
    .catchall {:try_start_6 .. :try_end_f} :catchall_2a

    :try_start_f
    iget-object v0, p0, Lcom/google/android/gms/internal/zziz;->zzchh:Ljava/util/concurrent/Future;

    const-wide/32 v4, 0xea60

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v4, v5, v6}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzko;
    :try_end_1c
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_f .. :try_end_1c} :catch_2d
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_f .. :try_end_1c} :catch_3e
    .catch Ljava/lang/InterruptedException; {:try_start_f .. :try_end_1c} :catch_42
    .catch Ljava/util/concurrent/CancellationException; {:try_start_f .. :try_end_1c} :catch_46

    move v1, v2

    :goto_1d
    if-eqz v0, :cond_4a

    :goto_1f
    sget-object v1, Lcom/google/android/gms/internal/zzlb;->zzcvl:Landroid/os/Handler;

    new-instance v2, Lcom/google/android/gms/internal/zziz$1;

    invoke-direct {v2, p0, v0}, Lcom/google/android/gms/internal/zziz$1;-><init>(Lcom/google/android/gms/internal/zziz;Lcom/google/android/gms/internal/zzko;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :catchall_2a
    move-exception v0

    :try_start_2b
    monitor-exit v4
    :try_end_2c
    .catchall {:try_start_2b .. :try_end_2c} :catchall_2a

    :try_start_2c
    throw v0
    :try_end_2d
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_2c .. :try_end_2d} :catch_2d
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_2c .. :try_end_2d} :catch_3e
    .catch Ljava/lang/InterruptedException; {:try_start_2c .. :try_end_2d} :catch_42
    .catch Ljava/util/concurrent/CancellationException; {:try_start_2c .. :try_end_2d} :catch_46

    :catch_2d
    move-exception v0

    const-string v0, "Timed out waiting for native ad."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzkx;->zzdi(Ljava/lang/String;)V

    const/4 v0, 0x2

    iget-object v2, p0, Lcom/google/android/gms/internal/zziz;->zzchh:Ljava/util/concurrent/Future;

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Ljava/util/concurrent/Future;->cancel(Z)Z

    move-object v7, v1

    move v1, v0

    move-object v0, v7

    goto :goto_1d

    :catch_3e
    move-exception v0

    move-object v0, v1

    move v1, v3

    goto :goto_1d

    :catch_42
    move-exception v0

    move-object v0, v1

    move v1, v3

    goto :goto_1d

    :catch_46
    move-exception v0

    move-object v0, v1

    move v1, v3

    goto :goto_1d

    :cond_4a
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/zziz;->zzaq(I)Lcom/google/android/gms/internal/zzko;

    move-result-object v0

    goto :goto_1f
.end method
