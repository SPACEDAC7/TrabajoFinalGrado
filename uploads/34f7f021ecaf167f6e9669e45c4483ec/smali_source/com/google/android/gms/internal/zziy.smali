.class public Lcom/google/android/gms/internal/zziy;
.super Lcom/google/android/gms/internal/zzit;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzji;
.end annotation


# instance fields
.field private final zzalt:Lcom/google/android/gms/internal/zzdz;

.field private zzamf:Lcom/google/android/gms/internal/zzgz;

.field private final zzbnz:Lcom/google/android/gms/internal/zzmd;

.field private zzbwc:Lcom/google/android/gms/internal/zzgq;

.field zzchc:Lcom/google/android/gms/internal/zzgo;

.field protected zzchd:Lcom/google/android/gms/internal/zzgu;

.field private zzche:Z


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzko$zza;Lcom/google/android/gms/internal/zzgz;Lcom/google/android/gms/internal/zziu$zza;Lcom/google/android/gms/internal/zzdz;Lcom/google/android/gms/internal/zzmd;)V
    .registers 8

    invoke-direct {p0, p1, p2, p4}, Lcom/google/android/gms/internal/zzit;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzko$zza;Lcom/google/android/gms/internal/zziu$zza;)V

    iput-object p3, p0, Lcom/google/android/gms/internal/zziy;->zzamf:Lcom/google/android/gms/internal/zzgz;

    iget-object v0, p2, Lcom/google/android/gms/internal/zzko$zza;->zzcsk:Lcom/google/android/gms/internal/zzgq;

    iput-object v0, p0, Lcom/google/android/gms/internal/zziy;->zzbwc:Lcom/google/android/gms/internal/zzgq;

    iput-object p5, p0, Lcom/google/android/gms/internal/zziy;->zzalt:Lcom/google/android/gms/internal/zzdz;

    iput-object p6, p0, Lcom/google/android/gms/internal/zziy;->zzbnz:Lcom/google/android/gms/internal/zzmd;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zziy;)Lcom/google/android/gms/internal/zzmd;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zziy;->zzbnz:Lcom/google/android/gms/internal/zzmd;

    return-object v0
.end method

.method private static zza(Lcom/google/android/gms/internal/zzgu;)Ljava/lang/String;
    .registers 7

    iget-object v0, p0, Lcom/google/android/gms/internal/zzgu;->zzbwm:Lcom/google/android/gms/internal/zzgp;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzgp;->zzbuv:Ljava/lang/String;

    iget v1, p0, Lcom/google/android/gms/internal/zzgu;->zzbwl:I

    invoke-static {v1}, Lcom/google/android/gms/internal/zziy;->zzar(I)I

    move-result v1

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzgu;->zzbwr:J

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x21

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "."

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zziy;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/google/android/gms/internal/zziy;->zzche:Z

    return p1
.end method

.method private static zzar(I)I
    .registers 2

    packed-switch p0, :pswitch_data_12

    :pswitch_3
    const/4 v0, 0x6

    :goto_4
    return v0

    :pswitch_5
    const/4 v0, 0x0

    goto :goto_4

    :pswitch_7
    const/4 v0, 0x1

    goto :goto_4

    :pswitch_9
    const/4 v0, 0x2

    goto :goto_4

    :pswitch_b
    const/4 v0, 0x3

    goto :goto_4

    :pswitch_d
    const/4 v0, 0x4

    goto :goto_4

    :pswitch_f
    const/4 v0, 0x5

    goto :goto_4

    nop

    :pswitch_data_12
    .packed-switch -0x1
        :pswitch_d
        :pswitch_5
        :pswitch_7
        :pswitch_3
        :pswitch_9
        :pswitch_b
        :pswitch_f
    .end packed-switch
.end method

.method private static zzg(Ljava/util/List;)Ljava/lang/String;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/zzgu;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const/4 v6, 0x0

    const-string v0, ""

    if-nez p0, :cond_a

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_9
    return-object v0

    :cond_a
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object v1, v0

    :cond_f
    :goto_f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_63

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzgu;

    if-eqz v0, :cond_f

    iget-object v3, v0, Lcom/google/android/gms/internal/zzgu;->zzbwm:Lcom/google/android/gms/internal/zzgp;

    if-eqz v3, :cond_f

    iget-object v3, v0, Lcom/google/android/gms/internal/zzgu;->zzbwm:Lcom/google/android/gms/internal/zzgp;

    iget-object v3, v3, Lcom/google/android/gms/internal/zzgp;->zzbuv:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_f

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Lcom/google/android/gms/internal/zziy;->zza(Lcom/google/android/gms/internal/zzgu;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto :goto_f

    :cond_63
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {v6, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {v1, v6, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_9
.end method

.method private zzsg()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/zzit$zza;
        }
    .end annotation

    const/4 v4, 0x0

    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    sget-object v1, Lcom/google/android/gms/internal/zzlb;->zzcvl:Landroid/os/Handler;

    new-instance v2, Lcom/google/android/gms/internal/zziy$1;

    invoke-direct {v2, p0, v0}, Lcom/google/android/gms/internal/zziy$1;-><init>(Lcom/google/android/gms/internal/zziy;Ljava/util/concurrent/CountDownLatch;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const-wide/16 v2, 0xa

    :try_start_13
    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v1}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_18
    .catch Ljava/lang/InterruptedException; {:try_start_13 .. :try_end_18} :catch_2b

    iget-object v1, p0, Lcom/google/android/gms/internal/zziy;->zzcgi:Ljava/lang/Object;

    monitor-enter v1

    :try_start_1b
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zziy;->zzche:Z

    if-nez v0, :cond_53

    new-instance v0, Lcom/google/android/gms/internal/zzit$zza;

    const-string v2, "View could not be prepared"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3}, Lcom/google/android/gms/internal/zzit$zza;-><init>(Ljava/lang/String;I)V

    throw v0

    :catchall_28
    move-exception v0

    monitor-exit v1
    :try_end_2a
    .catchall {:try_start_1b .. :try_end_2a} :catchall_28

    throw v0

    :catch_2b
    move-exception v0

    new-instance v1, Lcom/google/android/gms/internal/zzit$zza;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x26

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Interrupted while waiting for latch : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, v4}, Lcom/google/android/gms/internal/zzit$zza;-><init>(Ljava/lang/String;I)V

    throw v1

    :cond_53
    :try_start_53
    iget-object v0, p0, Lcom/google/android/gms/internal/zziy;->zzbnz:Lcom/google/android/gms/internal/zzmd;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzmd;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_64

    new-instance v0, Lcom/google/android/gms/internal/zzit$zza;

    const-string v2, "Assets not loaded, web view is destroyed"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3}, Lcom/google/android/gms/internal/zzit$zza;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_64
    monitor-exit v1
    :try_end_65
    .catchall {:try_start_53 .. :try_end_65} :catchall_28

    return-void
.end method


# virtual methods
.method public onStop()V
    .registers 3

    iget-object v1, p0, Lcom/google/android/gms/internal/zziy;->zzcgi:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    invoke-super {p0}, Lcom/google/android/gms/internal/zzit;->onStop()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zziy;->zzchc:Lcom/google/android/gms/internal/zzgo;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/google/android/gms/internal/zziy;->zzchc:Lcom/google/android/gms/internal/zzgo;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzgo;->cancel()V

    :cond_f
    monitor-exit v1

    return-void

    :catchall_11
    move-exception v0

    monitor-exit v1
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw v0
.end method

.method protected zzap(I)Lcom/google/android/gms/internal/zzko;
    .registers 41

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/internal/zziy;->zzcgf:Lcom/google/android/gms/internal/zzko$zza;

    iget-object v6, v2, Lcom/google/android/gms/internal/zzko$zza;->zzcmx:Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;

    new-instance v2, Lcom/google/android/gms/internal/zzko;

    iget-object v3, v6, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzcju:Lcom/google/android/gms/ads/internal/client/AdRequestParcel;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/internal/zziy;->zzbnz:Lcom/google/android/gms/internal/zzmd;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/gms/internal/zziy;->zzcgg:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget-object v5, v5, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzbvk:Ljava/util/List;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/gms/internal/zziy;->zzcgg:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget-object v7, v7, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzbvl:Ljava/util/List;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/android/gms/internal/zziy;->zzcgg:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget-object v8, v8, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzcld:Ljava/util/List;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/google/android/gms/internal/zziy;->zzcgg:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget v9, v9, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->orientation:I

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/gms/internal/zziy;->zzcgg:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget-wide v10, v10, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzbvq:J

    iget-object v12, v6, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzcjx:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/zziy;->zzcgg:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget-boolean v13, v6, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzclb:Z

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/zziy;->zzchd:Lcom/google/android/gms/internal/zzgu;

    if-eqz v6, :cond_fe

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/zziy;->zzchd:Lcom/google/android/gms/internal/zzgu;

    iget-object v14, v6, Lcom/google/android/gms/internal/zzgu;->zzbwm:Lcom/google/android/gms/internal/zzgp;

    :goto_40
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/zziy;->zzchd:Lcom/google/android/gms/internal/zzgu;

    if-eqz v6, :cond_101

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/zziy;->zzchd:Lcom/google/android/gms/internal/zzgu;

    iget-object v15, v6, Lcom/google/android/gms/internal/zzgu;->zzbwn:Lcom/google/android/gms/internal/zzha;

    :goto_4c
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/zziy;->zzchd:Lcom/google/android/gms/internal/zzgu;

    if-eqz v6, :cond_104

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/zziy;->zzchd:Lcom/google/android/gms/internal/zzgu;

    iget-object v0, v6, Lcom/google/android/gms/internal/zzgu;->zzbwo:Ljava/lang/String;

    move-object/from16 v16, v0

    :goto_5a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/internal/zziy;->zzbwc:Lcom/google/android/gms/internal/zzgq;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/zziy;->zzchd:Lcom/google/android/gms/internal/zzgu;

    if-eqz v6, :cond_10c

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/zziy;->zzchd:Lcom/google/android/gms/internal/zzgu;

    iget-object v0, v6, Lcom/google/android/gms/internal/zzgu;->zzbwp:Lcom/google/android/gms/internal/zzgs;

    move-object/from16 v18, v0

    :goto_6e
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/zziy;->zzcgg:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget-wide v0, v6, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzclc:J

    move-wide/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/zziy;->zzcgf:Lcom/google/android/gms/internal/zzko$zza;

    iget-object v0, v6, Lcom/google/android/gms/internal/zzko$zza;->zzarm:Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/zziy;->zzcgg:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget-wide v0, v6, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzcla:J

    move-wide/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/zziy;->zzcgf:Lcom/google/android/gms/internal/zzko$zza;

    iget-wide v0, v6, Lcom/google/android/gms/internal/zzko$zza;->zzcso:J

    move-wide/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/zziy;->zzcgg:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget-wide v0, v6, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzclf:J

    move-wide/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/zziy;->zzcgg:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget-object v0, v6, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzclg:Ljava/lang/String;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/zziy;->zzcgf:Lcom/google/android/gms/internal/zzko$zza;

    iget-object v0, v6, Lcom/google/android/gms/internal/zzko$zza;->zzcsi:Lorg/json/JSONObject;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/zziy;->zzcgg:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget-object v0, v6, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzclq:Lcom/google/android/gms/ads/internal/reward/mediation/client/RewardItemParcel;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/zziy;->zzcgg:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget-object v0, v6, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzclr:Ljava/util/List;

    move-object/from16 v32, v0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/zziy;->zzcgg:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget-object v0, v6, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzcls:Ljava/util/List;

    move-object/from16 v33, v0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/zziy;->zzbwc:Lcom/google/android/gms/internal/zzgq;

    if-eqz v6, :cond_110

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/zziy;->zzbwc:Lcom/google/android/gms/internal/zzgq;

    iget-boolean v0, v6, Lcom/google/android/gms/internal/zzgq;->zzbvv:Z

    move/from16 v34, v0

    :goto_ce
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/zziy;->zzcgg:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget-object v0, v6, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzclu:Lcom/google/android/gms/ads/internal/request/AutoClickProtectionConfigurationParcel;

    move-object/from16 v35, v0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/zziy;->zzchc:Lcom/google/android/gms/internal/zzgo;

    if-eqz v6, :cond_113

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/zziy;->zzchc:Lcom/google/android/gms/internal/zzgo;

    invoke-interface {v6}, Lcom/google/android/gms/internal/zzgo;->zzoe()Ljava/util/List;

    move-result-object v6

    invoke-static {v6}, Lcom/google/android/gms/internal/zziy;->zzg(Ljava/util/List;)Ljava/lang/String;

    move-result-object v36

    :goto_e8
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/zziy;->zzcgg:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget-object v0, v6, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzbvn:Ljava/util/List;

    move-object/from16 v37, v0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/zziy;->zzcgg:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget-object v0, v6, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzclx:Ljava/lang/String;

    move-object/from16 v38, v0

    move/from16 v6, p1

    invoke-direct/range {v2 .. v38}, Lcom/google/android/gms/internal/zzko;-><init>(Lcom/google/android/gms/ads/internal/client/AdRequestParcel;Lcom/google/android/gms/internal/zzmd;Ljava/util/List;ILjava/util/List;Ljava/util/List;IJLjava/lang/String;ZLcom/google/android/gms/internal/zzgp;Lcom/google/android/gms/internal/zzha;Ljava/lang/String;Lcom/google/android/gms/internal/zzgq;Lcom/google/android/gms/internal/zzgs;JLcom/google/android/gms/ads/internal/client/AdSizeParcel;JJJLjava/lang/String;Lorg/json/JSONObject;Lcom/google/android/gms/ads/internal/formats/zzi$zza;Lcom/google/android/gms/ads/internal/reward/mediation/client/RewardItemParcel;Ljava/util/List;Ljava/util/List;ZLcom/google/android/gms/ads/internal/request/AutoClickProtectionConfigurationParcel;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    return-object v2

    :cond_fe
    const/4 v14, 0x0

    goto/16 :goto_40

    :cond_101
    const/4 v15, 0x0

    goto/16 :goto_4c

    :cond_104
    const-class v6, Lcom/google/ads/mediation/admob/AdMobAdapter;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v16

    goto/16 :goto_5a

    :cond_10c
    const/16 v18, 0x0

    goto/16 :goto_6e

    :cond_110
    const/16 v34, 0x0

    goto :goto_ce

    :cond_113
    const/16 v36, 0x0

    goto :goto_e8
.end method

.method protected zzh(J)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/zzit$zza;
        }
    .end annotation

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/gms/internal/zziy;->zzcgi:Ljava/lang/Object;

    monitor-enter v2

    :try_start_4
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/zziy;->zzi(J)Lcom/google/android/gms/internal/zzgo;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zziy;->zzchc:Lcom/google/android/gms/internal/zzgo;

    monitor-exit v2
    :try_end_b
    .catchall {:try_start_4 .. :try_end_b} :catchall_4a

    new-instance v2, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/google/android/gms/internal/zziy;->zzbwc:Lcom/google/android/gms/internal/zzgq;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzgq;->zzbvi:Ljava/util/List;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zziy;->zzcgf:Lcom/google/android/gms/internal/zzko$zza;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzko$zza;->zzcmx:Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzcju:Lcom/google/android/gms/ads/internal/client/AdRequestParcel;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->zzayv:Landroid/os/Bundle;

    const-string v3, "com.google.ads.mediation.admob.AdMobAdapter"

    if-eqz v0, :cond_96

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_96

    const-string v4, "_skipMediation"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    :goto_2c
    if-eqz v0, :cond_4d

    invoke-interface {v2}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v4

    :cond_32
    :goto_32
    invoke-interface {v4}, Ljava/util/ListIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4d

    invoke-interface {v4}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzgp;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzgp;->zzbuu:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_32

    invoke-interface {v4}, Ljava/util/ListIterator;->remove()V

    goto :goto_32

    :catchall_4a
    move-exception v0

    :try_start_4b
    monitor-exit v2
    :try_end_4c
    .catchall {:try_start_4b .. :try_end_4c} :catchall_4a

    throw v0

    :cond_4d
    iget-object v0, p0, Lcom/google/android/gms/internal/zziy;->zzchc:Lcom/google/android/gms/internal/zzgo;

    invoke-interface {v0, v2}, Lcom/google/android/gms/internal/zzgo;->zzd(Ljava/util/List;)Lcom/google/android/gms/internal/zzgu;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zziy;->zzchd:Lcom/google/android/gms/internal/zzgu;

    iget-object v0, p0, Lcom/google/android/gms/internal/zziy;->zzchd:Lcom/google/android/gms/internal/zzgu;

    iget v0, v0, Lcom/google/android/gms/internal/zzgu;->zzbwl:I

    packed-switch v0, :pswitch_data_98

    new-instance v0, Lcom/google/android/gms/internal/zzit$zza;

    iget-object v2, p0, Lcom/google/android/gms/internal/zziy;->zzchd:Lcom/google/android/gms/internal/zzgu;

    iget v2, v2, Lcom/google/android/gms/internal/zzgu;->zzbwl:I

    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v4, 0x28

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Unexpected mediation result: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Lcom/google/android/gms/internal/zzit$zza;-><init>(Ljava/lang/String;I)V

    throw v0

    :pswitch_7b
    new-instance v0, Lcom/google/android/gms/internal/zzit$zza;

    const-string v1, "No fill from any mediation ad networks."

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/zzit$zza;-><init>(Ljava/lang/String;I)V

    throw v0

    :pswitch_84
    iget-object v0, p0, Lcom/google/android/gms/internal/zziy;->zzchd:Lcom/google/android/gms/internal/zzgu;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzgu;->zzbwm:Lcom/google/android/gms/internal/zzgp;

    if-eqz v0, :cond_95

    iget-object v0, p0, Lcom/google/android/gms/internal/zziy;->zzchd:Lcom/google/android/gms/internal/zzgu;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzgu;->zzbwm:Lcom/google/android/gms/internal/zzgp;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzgp;->zzbvd:Ljava/lang/String;

    if-eqz v0, :cond_95

    invoke-direct {p0}, Lcom/google/android/gms/internal/zziy;->zzsg()V

    :cond_95
    return-void

    :cond_96
    move v0, v1

    goto :goto_2c

    :pswitch_data_98
    .packed-switch 0x0
        :pswitch_84
        :pswitch_7b
    .end packed-switch
.end method

.method zzi(J)Lcom/google/android/gms/internal/zzgo;
    .registers 16

    iget-object v0, p0, Lcom/google/android/gms/internal/zziy;->zzbwc:Lcom/google/android/gms/internal/zzgq;

    iget v0, v0, Lcom/google/android/gms/internal/zzgq;->zzbvt:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2d

    new-instance v1, Lcom/google/android/gms/internal/zzgw;

    iget-object v2, p0, Lcom/google/android/gms/internal/zziy;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/google/android/gms/internal/zziy;->zzcgf:Lcom/google/android/gms/internal/zzko$zza;

    iget-object v3, v0, Lcom/google/android/gms/internal/zzko$zza;->zzcmx:Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;

    iget-object v4, p0, Lcom/google/android/gms/internal/zziy;->zzamf:Lcom/google/android/gms/internal/zzgz;

    iget-object v5, p0, Lcom/google/android/gms/internal/zziy;->zzbwc:Lcom/google/android/gms/internal/zzgq;

    iget-object v0, p0, Lcom/google/android/gms/internal/zziy;->zzcgg:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget-boolean v6, v0, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzazt:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/zziy;->zzcgg:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget-boolean v7, v0, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzazv:Z

    sget-object v0, Lcom/google/android/gms/internal/zzdr;->zzbhk:Lcom/google/android/gms/internal/zzdn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzdn;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    const/4 v12, 0x2

    move-wide v8, p1

    invoke-direct/range {v1 .. v12}, Lcom/google/android/gms/internal/zzgw;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;Lcom/google/android/gms/internal/zzgz;Lcom/google/android/gms/internal/zzgq;ZZJJI)V

    :goto_2c
    return-object v1

    :cond_2d
    new-instance v1, Lcom/google/android/gms/internal/zzgx;

    iget-object v2, p0, Lcom/google/android/gms/internal/zziy;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/google/android/gms/internal/zziy;->zzcgf:Lcom/google/android/gms/internal/zzko$zza;

    iget-object v3, v0, Lcom/google/android/gms/internal/zzko$zza;->zzcmx:Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;

    iget-object v4, p0, Lcom/google/android/gms/internal/zziy;->zzamf:Lcom/google/android/gms/internal/zzgz;

    iget-object v5, p0, Lcom/google/android/gms/internal/zziy;->zzbwc:Lcom/google/android/gms/internal/zzgq;

    iget-object v0, p0, Lcom/google/android/gms/internal/zziy;->zzcgg:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget-boolean v6, v0, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzazt:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/zziy;->zzcgg:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget-boolean v7, v0, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzazv:Z

    sget-object v0, Lcom/google/android/gms/internal/zzdr;->zzbhk:Lcom/google/android/gms/internal/zzdn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzdn;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    iget-object v12, p0, Lcom/google/android/gms/internal/zziy;->zzalt:Lcom/google/android/gms/internal/zzdz;

    move-wide v8, p1

    invoke-direct/range {v1 .. v12}, Lcom/google/android/gms/internal/zzgx;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;Lcom/google/android/gms/internal/zzgz;Lcom/google/android/gms/internal/zzgq;ZZJJLcom/google/android/gms/internal/zzdz;)V

    goto :goto_2c
.end method
