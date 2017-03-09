.class public Lcom/google/android/gms/common/stats/zza;
.super Ljava/lang/Object;


# static fields
.field private static final El:Ljava/lang/Object;

.field private static FF:Ljava/lang/Integer;

.field private static Fz:Lcom/google/android/gms/common/stats/zza;


# instance fields
.field private final FA:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final FB:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final FC:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final FD:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private FE:Lcom/google/android/gms/common/stats/zzd;

.field private FG:Lcom/google/android/gms/common/stats/zzd;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/common/stats/zza;->El:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .registers 6

    const/16 v4, 0x400

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0}, Lcom/google/android/gms/common/stats/zza;->zzaxs()Z

    move-result v0

    if-eqz v0, :cond_1c

    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v0, p0, Lcom/google/android/gms/common/stats/zza;->FA:Ljava/util/List;

    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v0, p0, Lcom/google/android/gms/common/stats/zza;->FB:Ljava/util/List;

    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v0, p0, Lcom/google/android/gms/common/stats/zza;->FC:Ljava/util/List;

    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v0, p0, Lcom/google/android/gms/common/stats/zza;->FD:Ljava/util/List;

    :goto_1b
    return-void

    :cond_1c
    sget-object v0, Lcom/google/android/gms/common/stats/zzb$zza;->FK:Lcom/google/android/gms/internal/zzsi;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzsi;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_7b

    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    :goto_28
    iput-object v0, p0, Lcom/google/android/gms/common/stats/zza;->FA:Ljava/util/List;

    sget-object v0, Lcom/google/android/gms/common/stats/zzb$zza;->FL:Lcom/google/android/gms/internal/zzsi;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzsi;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_86

    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    :goto_36
    iput-object v0, p0, Lcom/google/android/gms/common/stats/zza;->FB:Ljava/util/List;

    sget-object v0, Lcom/google/android/gms/common/stats/zzb$zza;->FM:Lcom/google/android/gms/internal/zzsi;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzsi;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_91

    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    :goto_44
    iput-object v0, p0, Lcom/google/android/gms/common/stats/zza;->FC:Ljava/util/List;

    sget-object v0, Lcom/google/android/gms/common/stats/zzb$zza;->FN:Lcom/google/android/gms/internal/zzsi;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzsi;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_9c

    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    :goto_52
    iput-object v0, p0, Lcom/google/android/gms/common/stats/zza;->FD:Ljava/util/List;

    new-instance v1, Lcom/google/android/gms/common/stats/zzd;

    sget-object v0, Lcom/google/android/gms/common/stats/zzb$zza;->FO:Lcom/google/android/gms/internal/zzsi;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzsi;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-direct {v1, v4, v2, v3}, Lcom/google/android/gms/common/stats/zzd;-><init>(IJ)V

    iput-object v1, p0, Lcom/google/android/gms/common/stats/zza;->FE:Lcom/google/android/gms/common/stats/zzd;

    new-instance v1, Lcom/google/android/gms/common/stats/zzd;

    sget-object v0, Lcom/google/android/gms/common/stats/zzb$zza;->FO:Lcom/google/android/gms/internal/zzsi;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzsi;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-direct {v1, v4, v2, v3}, Lcom/google/android/gms/common/stats/zzd;-><init>(IJ)V

    iput-object v1, p0, Lcom/google/android/gms/common/stats/zza;->FG:Lcom/google/android/gms/common/stats/zzd;

    goto :goto_1b

    :cond_7b
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_28

    :cond_86
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_36

    :cond_91
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_44

    :cond_9c
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_52
.end method

.method private static getLogLevel()I
    .registers 1

    sget-object v0, Lcom/google/android/gms/common/stats/zza;->FF:Ljava/lang/Integer;

    if-nez v0, :cond_1c

    :try_start_4
    invoke-static {}, Lcom/google/android/gms/common/util/zzd;->zzayi()Z

    move-result v0

    if-eqz v0, :cond_23

    sget-object v0, Lcom/google/android/gms/common/stats/zzb$zza;->FJ:Lcom/google/android/gms/internal/zzsi;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzsi;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_16
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/common/stats/zza;->FF:Ljava/lang/Integer;
    :try_end_1c
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_1c} :catch_26

    :cond_1c
    :goto_1c
    sget-object v0, Lcom/google/android/gms/common/stats/zza;->FF:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    :cond_23
    :try_start_23
    sget v0, Lcom/google/android/gms/common/stats/zzc;->LOG_LEVEL_OFF:I
    :try_end_25
    .catch Ljava/lang/SecurityException; {:try_start_23 .. :try_end_25} :catch_26

    goto :goto_16

    :catch_26
    move-exception v0

    sget v0, Lcom/google/android/gms/common/stats/zzc;->LOG_LEVEL_OFF:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/common/stats/zza;->FF:Ljava/lang/Integer;

    goto :goto_1c
.end method

.method public static zzaxr()Lcom/google/android/gms/common/stats/zza;
    .registers 2

    sget-object v1, Lcom/google/android/gms/common/stats/zza;->El:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/google/android/gms/common/stats/zza;->Fz:Lcom/google/android/gms/common/stats/zza;

    if-nez v0, :cond_e

    new-instance v0, Lcom/google/android/gms/common/stats/zza;

    invoke-direct {v0}, Lcom/google/android/gms/common/stats/zza;-><init>()V

    sput-object v0, Lcom/google/android/gms/common/stats/zza;->Fz:Lcom/google/android/gms/common/stats/zza;

    :cond_e
    monitor-exit v1
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_12

    sget-object v0, Lcom/google/android/gms/common/stats/zza;->Fz:Lcom/google/android/gms/common/stats/zza;

    return-object v0

    :catchall_12
    move-exception v0

    :try_start_13
    monitor-exit v1
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_12

    throw v0
.end method

.method private zzaxs()Z
    .registers 3

    invoke-static {}, Lcom/google/android/gms/common/stats/zza;->getLogLevel()I

    move-result v0

    sget v1, Lcom/google/android/gms/common/stats/zzc;->LOG_LEVEL_OFF:I

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method private zzc(Landroid/content/Context;Landroid/content/Intent;)Z
    .registers 4

    invoke-virtual {p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    :goto_7
    return v0

    :cond_8
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/android/gms/common/util/zzd;->zzx(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    goto :goto_7
.end method


# virtual methods
.method public zza(Landroid/content/Context;Landroid/content/ServiceConnection;)V
    .registers 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "UntrackedBindService"
        }
    .end annotation

    invoke-virtual {p1, p2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    return-void
.end method

.method public zza(Landroid/content/Context;Landroid/content/ServiceConnection;Ljava/lang/String;Landroid/content/Intent;)V
    .registers 5

    return-void
.end method

.method public zza(Landroid/content/Context;Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    .registers 11

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/common/stats/zza;->zza(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    return v0
.end method

.method public zza(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    .registers 8
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "UntrackedBindService"
        }
    .end annotation

    invoke-direct {p0, p1, p3}, Lcom/google/android/gms/common/stats/zza;->zzc(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_f

    const-string v0, "ConnectionTracker"

    const-string v1, "Attempted to bind to a service in a STOPPED package."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_e
    return v0

    :cond_f
    invoke-virtual {p1, p3, p4, p5}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    goto :goto_e
.end method

.method public zzb(Landroid/content/Context;Landroid/content/ServiceConnection;)V
    .registers 3

    return-void
.end method
