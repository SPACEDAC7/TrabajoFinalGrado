.class public Lcom/google/android/gms/internal/zzlm;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzji;
.end annotation


# instance fields
.field private zzako:Ljava/lang/Object;

.field private zzcxi:J

.field private zzcxj:J


# direct methods
.method public constructor <init>(J)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzlm;->zzcxj:J

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzlm;->zzako:Ljava/lang/Object;

    iput-wide p1, p0, Lcom/google/android/gms/internal/zzlm;->zzcxi:J

    return-void
.end method


# virtual methods
.method public tryAcquire()Z
    .registers 9

    iget-object v1, p0, Lcom/google/android/gms/internal/zzlm;->zzako:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzgs()Lcom/google/android/gms/common/util/zze;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/zze;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/google/android/gms/internal/zzlm;->zzcxj:J

    iget-wide v6, p0, Lcom/google/android/gms/internal/zzlm;->zzcxi:J

    add-long/2addr v4, v6

    cmp-long v0, v4, v2

    if-lez v0, :cond_17

    const/4 v0, 0x0

    monitor-exit v1

    :goto_16
    return v0

    :cond_17
    iput-wide v2, p0, Lcom/google/android/gms/internal/zzlm;->zzcxj:J

    const/4 v0, 0x1

    monitor-exit v1

    goto :goto_16

    :catchall_1c
    move-exception v0

    monitor-exit v1
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_1c

    throw v0
.end method
