.class public Lcom/google/android/gms/internal/zzlj;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzji;
.end annotation


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private final zzako:Ljava/lang/Object;

.field private zzcxc:Landroid/os/HandlerThread;

.field private zzcxd:I


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzlj;->zzcxc:Landroid/os/HandlerThread;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzlj;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/zzlj;->zzcxd:I

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzlj;->zzako:Ljava/lang/Object;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzlj;)Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzlj;->zzako:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/zzlj;)I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/zzlj;->zzcxd:I

    return v0
.end method


# virtual methods
.method public zzwj()Landroid/os/Looper;
    .registers 4

    iget-object v1, p0, Lcom/google/android/gms/internal/zzlj;->zzako:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget v0, p0, Lcom/google/android/gms/internal/zzlj;->zzcxd:I

    if-nez v0, :cond_4c

    iget-object v0, p0, Lcom/google/android/gms/internal/zzlj;->zzcxc:Landroid/os/HandlerThread;

    if-nez v0, :cond_3e

    const-string v0, "Starting the looper thread."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzkx;->v(Ljava/lang/String;)V

    new-instance v0, Landroid/os/HandlerThread;

    const-string v2, "LooperProvider"

    invoke-direct {v0, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzlj;->zzcxc:Landroid/os/HandlerThread;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzlj;->zzcxc:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Landroid/os/Handler;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzlj;->zzcxc:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzlj;->mHandler:Landroid/os/Handler;

    const-string v0, "Looper thread started."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzkx;->v(Ljava/lang/String;)V

    :goto_30
    iget v0, p0, Lcom/google/android/gms/internal/zzlj;->zzcxd:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/zzlj;->zzcxd:I

    iget-object v0, p0, Lcom/google/android/gms/internal/zzlj;->zzcxc:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    monitor-exit v1

    return-object v0

    :cond_3e
    const-string v0, "Resuming the looper thread"

    invoke-static {v0}, Lcom/google/android/gms/internal/zzkx;->v(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzlj;->zzako:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    goto :goto_30

    :catchall_49
    move-exception v0

    monitor-exit v1
    :try_end_4b
    .catchall {:try_start_3 .. :try_end_4b} :catchall_49

    throw v0

    :cond_4c
    :try_start_4c
    iget-object v0, p0, Lcom/google/android/gms/internal/zzlj;->zzcxc:Landroid/os/HandlerThread;

    const-string v2, "Invalid state: mHandlerThread should already been initialized."

    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/zzaa;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_53
    .catchall {:try_start_4c .. :try_end_53} :catchall_49

    goto :goto_30
.end method

.method public zzwk()V
    .registers 4

    iget-object v1, p0, Lcom/google/android/gms/internal/zzlj;->zzako:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget v0, p0, Lcom/google/android/gms/internal/zzlj;->zzcxd:I

    if-lez v0, :cond_21

    const/4 v0, 0x1

    :goto_8
    const-string v2, "Invalid state: release() called more times than expected."

    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/zzaa;->zzb(ZLjava/lang/Object;)V

    iget v0, p0, Lcom/google/android/gms/internal/zzlj;->zzcxd:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/zzlj;->zzcxd:I

    if-nez v0, :cond_1f

    iget-object v0, p0, Lcom/google/android/gms/internal/zzlj;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/google/android/gms/internal/zzlj$1;

    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/zzlj$1;-><init>(Lcom/google/android/gms/internal/zzlj;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1f
    monitor-exit v1

    return-void

    :cond_21
    const/4 v0, 0x0

    goto :goto_8

    :catchall_23
    move-exception v0

    monitor-exit v1
    :try_end_25
    .catchall {:try_start_3 .. :try_end_25} :catchall_23

    throw v0
.end method
