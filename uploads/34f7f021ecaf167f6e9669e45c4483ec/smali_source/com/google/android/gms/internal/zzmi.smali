.class public Lcom/google/android/gms/internal/zzmi;
.super Lcom/google/android/gms/ads/internal/client/zzab$zza;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzji;
.end annotation


# instance fields
.field private A:Lcom/google/android/gms/ads/internal/client/zzac;

.field private B:Z

.field private C:Z

.field private D:F

.field private E:F

.field private final w:F

.field private z:I

.field private final zzako:Ljava/lang/Object;

.field private zzakr:Z

.field private final zzbnz:Lcom/google/android/gms/internal/zzmd;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzmd;F)V
    .registers 4

    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/client/zzab$zza;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzmi;->zzako:Ljava/lang/Object;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzmi;->zzakr:Z

    iput-object p1, p0, Lcom/google/android/gms/internal/zzmi;->zzbnz:Lcom/google/android/gms/internal/zzmd;

    iput p2, p0, Lcom/google/android/gms/internal/zzmi;->w:F

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzmi;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/google/android/gms/internal/zzmi;->B:Z

    return p1
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/zzmi;)Lcom/google/android/gms/internal/zzmd;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzmi;->zzbnz:Lcom/google/android/gms/internal/zzmd;

    return-object v0
.end method

.method static synthetic zzc(Lcom/google/android/gms/internal/zzmi;)Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzmi;->zzako:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic zzd(Lcom/google/android/gms/internal/zzmi;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzmi;->B:Z

    return v0
.end method

.method private zzdo(Ljava/lang/String;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/zzmi;->zze(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method static synthetic zze(Lcom/google/android/gms/internal/zzmi;)Lcom/google/android/gms/ads/internal/client/zzac;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzmi;->A:Lcom/google/android/gms/ads/internal/client/zzac;

    return-object v0
.end method

.method private zze(Ljava/lang/String;Ljava/util/Map;)V
    .registers 6
    .param p2    # Ljava/util/Map;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-nez p2, :cond_19

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    :goto_7
    const-string v1, "action"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzgm()Lcom/google/android/gms/internal/zzlb;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/zzmi$1;

    invoke-direct {v2, p0, v0}, Lcom/google/android/gms/internal/zzmi$1;-><init>(Lcom/google/android/gms/internal/zzmi;Ljava/util/Map;)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/zzlb;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    :cond_19
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    goto :goto_7
.end method

.method private zzk(II)V
    .registers 5

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzgm()Lcom/google/android/gms/internal/zzlb;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/zzmi$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/android/gms/internal/zzmi$2;-><init>(Lcom/google/android/gms/internal/zzmi;II)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzlb;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public getAspectRatio()F
    .registers 3

    iget-object v1, p0, Lcom/google/android/gms/internal/zzmi;->zzako:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget v0, p0, Lcom/google/android/gms/internal/zzmi;->E:F

    monitor-exit v1

    return v0

    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v0
.end method

.method public getPlaybackState()I
    .registers 3

    iget-object v1, p0, Lcom/google/android/gms/internal/zzmi;->zzako:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget v0, p0, Lcom/google/android/gms/internal/zzmi;->z:I

    monitor-exit v1

    return v0

    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v0
.end method

.method public isMuted()Z
    .registers 3

    iget-object v1, p0, Lcom/google/android/gms/internal/zzmi;->zzako:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzmi;->C:Z

    monitor-exit v1

    return v0

    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v0
.end method

.method public pause()V
    .registers 2

    const-string v0, "pause"

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzmi;->zzdo(Ljava/lang/String;)V

    return-void
.end method

.method public play()V
    .registers 2

    const-string v0, "play"

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzmi;->zzdo(Ljava/lang/String;)V

    return-void
.end method

.method public zza(FIZF)V
    .registers 7

    iget-object v1, p0, Lcom/google/android/gms/internal/zzmi;->zzako:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iput p1, p0, Lcom/google/android/gms/internal/zzmi;->D:F

    iput-boolean p3, p0, Lcom/google/android/gms/internal/zzmi;->C:Z

    iget v0, p0, Lcom/google/android/gms/internal/zzmi;->z:I

    iput p2, p0, Lcom/google/android/gms/internal/zzmi;->z:I

    iput p4, p0, Lcom/google/android/gms/internal/zzmi;->E:F

    monitor-exit v1
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_12

    invoke-direct {p0, v0, p2}, Lcom/google/android/gms/internal/zzmi;->zzk(II)V

    return-void

    :catchall_12
    move-exception v0

    :try_start_13
    monitor-exit v1
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_12

    throw v0
.end method

.method public zza(Lcom/google/android/gms/ads/internal/client/zzac;)V
    .registers 4

    iget-object v1, p0, Lcom/google/android/gms/internal/zzmi;->zzako:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iput-object p1, p0, Lcom/google/android/gms/internal/zzmi;->A:Lcom/google/android/gms/ads/internal/client/zzac;

    monitor-exit v1

    return-void

    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v0
.end method

.method public zzaq(Z)V
    .registers 5

    iget-object v1, p0, Lcom/google/android/gms/internal/zzmi;->zzako:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iput-boolean p1, p0, Lcom/google/android/gms/internal/zzmi;->zzakr:Z

    monitor-exit v1
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_16

    const-string v1, "initialState"

    const-string v2, "muteStart"

    if-eqz p1, :cond_19

    const-string v0, "1"

    :goto_e
    invoke-static {v2, v0}, Lcom/google/android/gms/common/util/zzf;->zze(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lcom/google/android/gms/internal/zzmi;->zze(Ljava/lang/String;Ljava/util/Map;)V

    return-void

    :catchall_16
    move-exception v0

    :try_start_17
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw v0

    :cond_19
    const-string v0, "0"

    goto :goto_e
.end method

.method public zzku()F
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/zzmi;->w:F

    return v0
.end method

.method public zzkv()F
    .registers 3

    iget-object v1, p0, Lcom/google/android/gms/internal/zzmi;->zzako:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget v0, p0, Lcom/google/android/gms/internal/zzmi;->D:F

    monitor-exit v1

    return v0

    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v0
.end method

.method public zzn(Z)V
    .registers 3

    if-eqz p1, :cond_8

    const-string v0, "mute"

    :goto_4
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzmi;->zzdo(Ljava/lang/String;)V

    return-void

    :cond_8
    const-string/jumbo v0, "unmute"

    goto :goto_4
.end method
