.class public Lcom/google/android/gms/common/stats/zzg;
.super Ljava/lang/Object;


# static fields
.field private static Gn:Lcom/google/android/gms/common/stats/zzg;

.field private static Go:Ljava/lang/Boolean;

.field private static TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "WakeLockTracker"

    sput-object v0, Lcom/google/android/gms/common/stats/zzg;->TAG:Ljava/lang/String;

    new-instance v0, Lcom/google/android/gms/common/stats/zzg;

    invoke-direct {v0}, Lcom/google/android/gms/common/stats/zzg;-><init>()V

    sput-object v0, Lcom/google/android/gms/common/stats/zzg;->Gn:Lcom/google/android/gms/common/stats/zzg;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static zzayg()Lcom/google/android/gms/common/stats/zzg;
    .registers 1

    sget-object v0, Lcom/google/android/gms/common/stats/zzg;->Gn:Lcom/google/android/gms/common/stats/zzg;

    return-object v0
.end method

.method private static zzcg(Landroid/content/Context;)Z
    .registers 2

    sget-object v0, Lcom/google/android/gms/common/stats/zzg;->Go:Ljava/lang/Boolean;

    if-nez v0, :cond_e

    invoke-static {p0}, Lcom/google/android/gms/common/stats/zzg;->zzch(Landroid/content/Context;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/common/stats/zzg;->Go:Ljava/lang/Boolean;

    :cond_e
    sget-object v0, Lcom/google/android/gms/common/stats/zzg;->Go:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method private static zzch(Landroid/content/Context;)Z
    .registers 4

    const/4 v1, 0x0

    :try_start_1
    invoke-static {}, Lcom/google/android/gms/common/util/zzd;->zzayi()Z

    move-result v0

    if-eqz v0, :cond_19

    sget-object v0, Lcom/google/android/gms/common/stats/zzb$zzb;->FJ:Lcom/google/android/gms/internal/zzsi;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzsi;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sget v2, Lcom/google/android/gms/common/stats/zzc;->LOG_LEVEL_OFF:I
    :try_end_15
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_15} :catch_1c

    if-eq v0, v2, :cond_1a

    const/4 v0, 0x1

    :goto_18
    move v1, v0

    :cond_19
    :goto_19
    return v1

    :cond_1a
    move v0, v1

    goto :goto_18

    :catch_1c
    move-exception v0

    goto :goto_19
.end method


# virtual methods
.method public zza(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/List;)V
    .registers 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-wide/16 v10, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    move-object/from16 v9, p8

    invoke-virtual/range {v1 .. v11}, Lcom/google/android/gms/common/stats/zzg;->zza(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/List;J)V

    return-void
.end method

.method public zza(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/List;J)V
    .registers 30
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;J)V"
        }
    .end annotation

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/common/stats/zzg;->zzcg(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_7

    :cond_6
    :goto_6
    return-void

    :cond_7
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_29

    sget-object v3, Lcom/google/android/gms/common/stats/zzg;->TAG:Ljava/lang/String;

    const-string v4, "missing wakeLock key. "

    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_23

    invoke-virtual {v4, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_1f
    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    :cond_23
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_1f

    :cond_29
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const/4 v2, 0x7

    move/from16 v0, p3

    if-eq v2, v0, :cond_44

    const/16 v2, 0x8

    move/from16 v0, p3

    if-eq v2, v0, :cond_44

    const/16 v2, 0xa

    move/from16 v0, p3

    if-eq v2, v0, :cond_44

    const/16 v2, 0xb

    move/from16 v0, p3

    if-ne v2, v0, :cond_6

    :cond_44
    new-instance v2, Lcom/google/android/gms/common/stats/WakeLockEvent;

    invoke-static/range {p8 .. p8}, Lcom/google/android/gms/common/stats/zze;->zzz(Ljava/util/List;)Ljava/util/List;

    move-result-object v8

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/common/util/zzj;->zzck(Landroid/content/Context;)I

    move-result v12

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/google/android/gms/common/stats/zze;->zzih(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/common/util/zzj;->zzcl(Landroid/content/Context;)F

    move-result v15

    move/from16 v5, p3

    move-object/from16 v6, p4

    move/from16 v7, p7

    move-object/from16 v9, p2

    move-object/from16 v13, p5

    move-wide/from16 v16, p9

    move-object/from16 v18, p6

    invoke-direct/range {v2 .. v18}, Lcom/google/android/gms/common/stats/WakeLockEvent;-><init>(JILjava/lang/String;ILjava/util/List;Ljava/lang/String;JILjava/lang/String;Ljava/lang/String;FJLjava/lang/String;)V

    :try_start_6f
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    sget-object v4, Lcom/google/android/gms/common/stats/zzc;->FP:Landroid/content/ComponentName;

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v3

    const-string v4, "com.google.android.gms.common.stats.EXTRA_LOG_EVENT"

    invoke-virtual {v3, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_85
    .catch Ljava/lang/Exception; {:try_start_6f .. :try_end_85} :catch_86

    goto :goto_6

    :catch_86
    move-exception v2

    sget-object v3, Lcom/google/android/gms/common/stats/zzg;->TAG:Ljava/lang/String;

    invoke-static {v3, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_6
.end method
