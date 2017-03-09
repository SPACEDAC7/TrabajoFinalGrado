.class public Lcom/google/android/gms/internal/zzlq;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzlt;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzji;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/zzlt",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final zzako:Ljava/lang/Object;

.field private zzbww:Z

.field private zzcyd:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private zzcye:Ljava/lang/Throwable;

.field private zzcyf:Z

.field private final zzcyg:Lcom/google/android/gms/internal/zzlu;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzlq;->zzako:Ljava/lang/Object;

    new-instance v0, Lcom/google/android/gms/internal/zzlu;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzlu;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzlq;->zzcyg:Lcom/google/android/gms/internal/zzlu;

    return-void
.end method

.method private zzws()Z
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzlq;->zzcye:Ljava/lang/Throwable;

    if-nez v0, :cond_8

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzlq;->zzcyf:Z

    if-eqz v0, :cond_a

    :cond_8
    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method


# virtual methods
.method public cancel(Z)Z
    .registers 6

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_5

    :goto_4
    return v0

    :cond_5
    iget-object v2, p0, Lcom/google/android/gms/internal/zzlq;->zzako:Ljava/lang/Object;

    monitor-enter v2

    :try_start_8
    invoke-direct {p0}, Lcom/google/android/gms/internal/zzlq;->zzws()Z

    move-result v3

    if-eqz v3, :cond_13

    monitor-exit v2

    goto :goto_4

    :catchall_10
    move-exception v0

    monitor-exit v2
    :try_end_12
    .catchall {:try_start_8 .. :try_end_12} :catchall_10

    throw v0

    :cond_13
    const/4 v0, 0x1

    :try_start_14
    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzlq;->zzbww:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzlq;->zzcyf:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/zzlq;->zzako:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzlq;->zzcyg:Lcom/google/android/gms/internal/zzlu;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzlu;->zzwt()V

    monitor-exit v2
    :try_end_24
    .catchall {:try_start_14 .. :try_end_24} :catchall_10

    move v0, v1

    goto :goto_4
.end method

.method public get()Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/CancellationException;,
            Ljava/util/concurrent/ExecutionException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    iget-object v1, p0, Lcom/google/android/gms/internal/zzlq;->zzako:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    invoke-direct {p0}, Lcom/google/android/gms/internal/zzlq;->zzws()Z
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_1a

    move-result v0

    if-nez v0, :cond_e

    :try_start_9
    iget-object v0, p0, Lcom/google/android/gms/internal/zzlq;->zzako:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_e
    .catch Ljava/lang/InterruptedException; {:try_start_9 .. :try_end_e} :catch_1d
    .catchall {:try_start_9 .. :try_end_e} :catchall_1a

    :cond_e
    :try_start_e
    iget-object v0, p0, Lcom/google/android/gms/internal/zzlq;->zzcye:Ljava/lang/Throwable;

    if-eqz v0, :cond_1f

    new-instance v0, Ljava/util/concurrent/ExecutionException;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzlq;->zzcye:Ljava/lang/Throwable;

    invoke-direct {v0, v2}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catchall_1a
    move-exception v0

    monitor-exit v1
    :try_end_1c
    .catchall {:try_start_e .. :try_end_1c} :catchall_1a

    throw v0

    :catch_1d
    move-exception v0

    :try_start_1e
    throw v0

    :cond_1f
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzlq;->zzbww:Z

    if-eqz v0, :cond_2b

    new-instance v0, Ljava/util/concurrent/CancellationException;

    const-string v2, "CallbackFuture was cancelled."

    invoke-direct {v0, v2}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2b
    iget-object v0, p0, Lcom/google/android/gms/internal/zzlq;->zzcyd:Ljava/lang/Object;

    monitor-exit v1
    :try_end_2e
    .catchall {:try_start_1e .. :try_end_2e} :catchall_1a

    return-object v0
.end method

.method public get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/CancellationException;,
            Ljava/util/concurrent/ExecutionException;,
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    iget-object v1, p0, Lcom/google/android/gms/internal/zzlq;->zzako:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    invoke-direct {p0}, Lcom/google/android/gms/internal/zzlq;->zzws()Z
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_24

    move-result v0

    if-nez v0, :cond_18

    :try_start_9
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/google/android/gms/internal/zzlq;->zzako:Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_18
    .catch Ljava/lang/InterruptedException; {:try_start_9 .. :try_end_18} :catch_27
    .catchall {:try_start_9 .. :try_end_18} :catchall_24

    :cond_18
    :try_start_18
    iget-object v0, p0, Lcom/google/android/gms/internal/zzlq;->zzcye:Ljava/lang/Throwable;

    if-eqz v0, :cond_29

    new-instance v0, Ljava/util/concurrent/ExecutionException;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzlq;->zzcye:Ljava/lang/Throwable;

    invoke-direct {v0, v2}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catchall_24
    move-exception v0

    monitor-exit v1
    :try_end_26
    .catchall {:try_start_18 .. :try_end_26} :catchall_24

    throw v0

    :catch_27
    move-exception v0

    :try_start_28
    throw v0

    :cond_29
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzlq;->zzcyf:Z

    if-nez v0, :cond_35

    new-instance v0, Ljava/util/concurrent/TimeoutException;

    const-string v2, "CallbackFuture timed out."

    invoke-direct {v0, v2}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_35
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzlq;->zzbww:Z

    if-eqz v0, :cond_41

    new-instance v0, Ljava/util/concurrent/CancellationException;

    const-string v2, "CallbackFuture was cancelled."

    invoke-direct {v0, v2}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_41
    iget-object v0, p0, Lcom/google/android/gms/internal/zzlq;->zzcyd:Ljava/lang/Object;

    monitor-exit v1
    :try_end_44
    .catchall {:try_start_28 .. :try_end_44} :catchall_24

    return-object v0
.end method

.method public isCancelled()Z
    .registers 3

    iget-object v1, p0, Lcom/google/android/gms/internal/zzlq;->zzako:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzlq;->zzbww:Z

    monitor-exit v1

    return v0

    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v0
.end method

.method public isDone()Z
    .registers 3

    iget-object v1, p0, Lcom/google/android/gms/internal/zzlq;->zzako:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    invoke-direct {p0}, Lcom/google/android/gms/internal/zzlq;->zzws()Z

    move-result v0

    monitor-exit v1

    return v0

    :catchall_9
    move-exception v0

    monitor-exit v1
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_9

    throw v0
.end method

.method public zzc(Ljava/lang/Runnable;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzlq;->zzcyg:Lcom/google/android/gms/internal/zzlu;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzlu;->zzc(Ljava/lang/Runnable;)V

    return-void
.end method

.method public zzd(Ljava/lang/Runnable;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzlq;->zzcyg:Lcom/google/android/gms/internal/zzlu;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzlu;->zzd(Ljava/lang/Runnable;)V

    return-void
.end method

.method public zze(Ljava/lang/Throwable;)V
    .registers 6

    iget-object v1, p0, Lcom/google/android/gms/internal/zzlq;->zzako:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzlq;->zzbww:Z

    if-eqz v0, :cond_9

    monitor-exit v1

    :goto_8
    return-void

    :cond_9
    invoke-direct {p0}, Lcom/google/android/gms/internal/zzlq;->zzws()Z

    move-result v0

    if-eqz v0, :cond_24

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzgq()Lcom/google/android/gms/internal/zzkr;

    move-result-object v0

    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Provided CallbackFuture with multiple values."

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    const-string v3, "CallbackFuture.provideException"

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/zzkr;->zza(Ljava/lang/Throwable;Ljava/lang/String;)V

    monitor-exit v1

    goto :goto_8

    :catchall_21
    move-exception v0

    monitor-exit v1
    :try_end_23
    .catchall {:try_start_3 .. :try_end_23} :catchall_21

    throw v0

    :cond_24
    :try_start_24
    iput-object p1, p0, Lcom/google/android/gms/internal/zzlq;->zzcye:Ljava/lang/Throwable;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzlq;->zzako:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzlq;->zzcyg:Lcom/google/android/gms/internal/zzlu;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzlu;->zzwt()V

    monitor-exit v1
    :try_end_31
    .catchall {:try_start_24 .. :try_end_31} :catchall_21

    goto :goto_8
.end method

.method public zzh(Ljava/lang/Object;)V
    .registers 6
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-object v1, p0, Lcom/google/android/gms/internal/zzlq;->zzako:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzlq;->zzbww:Z

    if-eqz v0, :cond_9

    monitor-exit v1

    :goto_8
    return-void

    :cond_9
    invoke-direct {p0}, Lcom/google/android/gms/internal/zzlq;->zzws()Z

    move-result v0

    if-eqz v0, :cond_24

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzgq()Lcom/google/android/gms/internal/zzkr;

    move-result-object v0

    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Provided CallbackFuture with multiple values."

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    const-string v3, "CallbackFuture.provideValue"

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/zzkr;->zza(Ljava/lang/Throwable;Ljava/lang/String;)V

    monitor-exit v1

    goto :goto_8

    :catchall_21
    move-exception v0

    monitor-exit v1
    :try_end_23
    .catchall {:try_start_3 .. :try_end_23} :catchall_21

    throw v0

    :cond_24
    const/4 v0, 0x1

    :try_start_25
    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzlq;->zzcyf:Z

    iput-object p1, p0, Lcom/google/android/gms/internal/zzlq;->zzcyd:Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzlq;->zzako:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzlq;->zzcyg:Lcom/google/android/gms/internal/zzlu;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzlu;->zzwt()V

    monitor-exit v1
    :try_end_34
    .catchall {:try_start_25 .. :try_end_34} :catchall_21

    goto :goto_8
.end method
