.class public final Lcom/google/android/exoplayer/upstream/NetworkLock;
.super Ljava/lang/Object;
.source "NetworkLock.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer/upstream/NetworkLock$PriorityTooLowException;
    }
.end annotation


# static fields
.field public static final DOWNLOAD_PRIORITY:I = 0xa

.field public static final STREAMING_PRIORITY:I

.field public static final instance:Lcom/google/android/exoplayer/upstream/NetworkLock;


# instance fields
.field private highestPriority:I

.field private final lock:Ljava/lang/Object;

.field private final queue:Ljava/util/PriorityQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/PriorityQueue",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 45
    new-instance v0, Lcom/google/android/exoplayer/upstream/NetworkLock;

    invoke-direct {v0}, Lcom/google/android/exoplayer/upstream/NetworkLock;-><init>()V

    sput-object v0, Lcom/google/android/exoplayer/upstream/NetworkLock;->instance:Lcom/google/android/exoplayer/upstream/NetworkLock;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer/upstream/NetworkLock;->lock:Ljava/lang/Object;

    .line 65
    new-instance v0, Ljava/util/PriorityQueue;

    invoke-direct {v0}, Ljava/util/PriorityQueue;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer/upstream/NetworkLock;->queue:Ljava/util/PriorityQueue;

    .line 66
    const v0, 0x7fffffff

    iput v0, p0, Lcom/google/android/exoplayer/upstream/NetworkLock;->highestPriority:I

    .line 67
    return-void
.end method


# virtual methods
.method public add(I)V
    .registers 5
    .param p1, "priority"    # I

    .prologue
    .line 116
    iget-object v1, p0, Lcom/google/android/exoplayer/upstream/NetworkLock;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 117
    :try_start_3
    iget-object v0, p0, Lcom/google/android/exoplayer/upstream/NetworkLock;->queue:Ljava/util/PriorityQueue;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    .line 118
    iget v0, p0, Lcom/google/android/exoplayer/upstream/NetworkLock;->highestPriority:I

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer/upstream/NetworkLock;->highestPriority:I

    .line 119
    monitor-exit v1

    .line 120
    return-void

    .line 119
    :catchall_16
    move-exception v0

    monitor-exit v1
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_16

    throw v0
.end method

.method public proceed(I)V
    .registers 4
    .param p1, "priority"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 75
    iget-object v1, p0, Lcom/google/android/exoplayer/upstream/NetworkLock;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 76
    :goto_3
    :try_start_3
    iget v0, p0, Lcom/google/android/exoplayer/upstream/NetworkLock;->highestPriority:I

    if-ge v0, p1, :cond_10

    .line 77
    iget-object v0, p0, Lcom/google/android/exoplayer/upstream/NetworkLock;->lock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V

    goto :goto_3

    .line 79
    :catchall_d
    move-exception v0

    monitor-exit v1
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw v0

    :cond_10
    :try_start_10
    monitor-exit v1
    :try_end_11
    .catchall {:try_start_10 .. :try_end_11} :catchall_d

    .line 80
    return-void
.end method

.method public proceedNonBlocking(I)Z
    .registers 4
    .param p1, "priority"    # I

    .prologue
    .line 89
    iget-object v1, p0, Lcom/google/android/exoplayer/upstream/NetworkLock;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 90
    :try_start_3
    iget v0, p0, Lcom/google/android/exoplayer/upstream/NetworkLock;->highestPriority:I

    if-lt v0, p1, :cond_a

    const/4 v0, 0x1

    :goto_8
    monitor-exit v1

    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_8

    .line 91
    :catchall_c
    move-exception v0

    monitor-exit v1
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw v0
.end method

.method public proceedOrThrow(I)V
    .registers 5
    .param p1, "priority"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer/upstream/NetworkLock$PriorityTooLowException;
        }
    .end annotation

    .prologue
    .line 101
    iget-object v1, p0, Lcom/google/android/exoplayer/upstream/NetworkLock;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 102
    :try_start_3
    iget v0, p0, Lcom/google/android/exoplayer/upstream/NetworkLock;->highestPriority:I

    if-ge v0, p1, :cond_12

    .line 103
    new-instance v0, Lcom/google/android/exoplayer/upstream/NetworkLock$PriorityTooLowException;

    iget v2, p0, Lcom/google/android/exoplayer/upstream/NetworkLock;->highestPriority:I

    invoke-direct {v0, p1, v2}, Lcom/google/android/exoplayer/upstream/NetworkLock$PriorityTooLowException;-><init>(II)V

    throw v0

    .line 105
    :catchall_f
    move-exception v0

    monitor-exit v1
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw v0

    :cond_12
    :try_start_12
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_12 .. :try_end_13} :catchall_f

    .line 106
    return-void
.end method

.method public remove(I)V
    .registers 5
    .param p1, "priority"    # I

    .prologue
    .line 128
    iget-object v1, p0, Lcom/google/android/exoplayer/upstream/NetworkLock;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 129
    :try_start_3
    iget-object v0, p0, Lcom/google/android/exoplayer/upstream/NetworkLock;->queue:Ljava/util/PriorityQueue;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/PriorityQueue;->remove(Ljava/lang/Object;)Z

    .line 130
    iget-object v0, p0, Lcom/google/android/exoplayer/upstream/NetworkLock;->queue:Ljava/util/PriorityQueue;

    invoke-virtual {v0}, Ljava/util/PriorityQueue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_20

    const v0, 0x7fffffff

    :goto_17
    iput v0, p0, Lcom/google/android/exoplayer/upstream/NetworkLock;->highestPriority:I

    .line 131
    iget-object v0, p0, Lcom/google/android/exoplayer/upstream/NetworkLock;->lock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 132
    monitor-exit v1

    .line 133
    return-void

    .line 130
    :cond_20
    iget-object v0, p0, Lcom/google/android/exoplayer/upstream/NetworkLock;->queue:Ljava/util/PriorityQueue;

    invoke-virtual {v0}, Ljava/util/PriorityQueue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_17

    .line 132
    :catchall_2d
    move-exception v0

    monitor-exit v1
    :try_end_2f
    .catchall {:try_start_3 .. :try_end_2f} :catchall_2d

    throw v0
.end method
