.class public Lcom/bumptech/glide/integration/volley/VolleyRequestFuture;
.super Ljava/lang/Object;
.source "VolleyRequestFuture.java"

# interfaces
.implements Lcom/android/volley/Response$ErrorListener;
.implements Lcom/android/volley/Response$Listener;
.implements Ljava/util/concurrent/Future;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Future",
        "<TT;>;",
        "Lcom/android/volley/Response$Listener",
        "<TT;>;",
        "Lcom/android/volley/Response$ErrorListener;"
    }
.end annotation


# instance fields
.field private mException:Lcom/android/volley/VolleyError;

.field private mIsCancelled:Z

.field private mRequest:Lcom/android/volley/Request;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/volley/Request",
            "<*>;"
        }
    .end annotation
.end field

.field private mResult:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private mResultReceived:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .local p0, "this":Lcom/bumptech/glide/integration/volley/VolleyRequestFuture;, "Lcom/bumptech/glide/integration/volley/VolleyRequestFuture<TT;>;"
    const/4 v0, 0x0

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-boolean v0, p0, Lcom/bumptech/glide/integration/volley/VolleyRequestFuture;->mResultReceived:Z

    .line 62
    iput-boolean v0, p0, Lcom/bumptech/glide/integration/volley/VolleyRequestFuture;->mIsCancelled:Z

    return-void
.end method

.method private declared-synchronized doGet(Ljava/lang/Long;)Ljava/lang/Object;
    .registers 6
    .param p1, "timeoutMs"    # Ljava/lang/Long;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/bumptech/glide/integration/volley/VolleyRequestFuture;, "Lcom/bumptech/glide/integration/volley/VolleyRequestFuture<TT;>;"
    const-wide/16 v2, 0x0

    .line 106
    monitor-enter p0

    :try_start_3
    iget-object v0, p0, Lcom/bumptech/glide/integration/volley/VolleyRequestFuture;->mException:Lcom/android/volley/VolleyError;

    if-eqz v0, :cond_12

    .line 107
    new-instance v0, Ljava/util/concurrent/ExecutionException;

    iget-object v1, p0, Lcom/bumptech/glide/integration/volley/VolleyRequestFuture;->mException:Lcom/android/volley/VolleyError;

    invoke-direct {v0, v1}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_f

    .line 106
    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0

    .line 110
    :cond_12
    :try_start_12
    iget-boolean v0, p0, Lcom/bumptech/glide/integration/volley/VolleyRequestFuture;->mResultReceived:Z

    if-eqz v0, :cond_1a

    .line 111
    iget-object v0, p0, Lcom/bumptech/glide/integration/volley/VolleyRequestFuture;->mResult:Ljava/lang/Object;
    :try_end_18
    .catchall {:try_start_12 .. :try_end_18} :catchall_f

    .line 136
    :goto_18
    monitor-exit p0

    return-object v0

    .line 114
    :cond_1a
    :try_start_1a
    invoke-virtual {p0}, Lcom/bumptech/glide/integration/volley/VolleyRequestFuture;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 115
    new-instance v0, Ljava/util/concurrent/CancellationException;

    invoke-direct {v0}, Ljava/util/concurrent/CancellationException;-><init>()V

    throw v0

    .line 118
    :cond_26
    if-nez p1, :cond_39

    .line 119
    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Ljava/lang/Object;->wait(J)V

    .line 124
    :cond_2d
    :goto_2d
    iget-object v0, p0, Lcom/bumptech/glide/integration/volley/VolleyRequestFuture;->mException:Lcom/android/volley/VolleyError;

    if-eqz v0, :cond_49

    .line 125
    new-instance v0, Ljava/util/concurrent/ExecutionException;

    iget-object v1, p0, Lcom/bumptech/glide/integration/volley/VolleyRequestFuture;->mException:Lcom/android/volley/VolleyError;

    invoke-direct {v0, v1}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 120
    :cond_39
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-lez v0, :cond_2d

    .line 121
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Ljava/lang/Object;->wait(J)V

    goto :goto_2d

    .line 128
    :cond_49
    invoke-virtual {p0}, Lcom/bumptech/glide/integration/volley/VolleyRequestFuture;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_55

    .line 129
    new-instance v0, Ljava/util/concurrent/CancellationException;

    invoke-direct {v0}, Ljava/util/concurrent/CancellationException;-><init>()V

    throw v0

    .line 132
    :cond_55
    iget-boolean v0, p0, Lcom/bumptech/glide/integration/volley/VolleyRequestFuture;->mResultReceived:Z

    if-nez v0, :cond_5f

    .line 133
    new-instance v0, Ljava/util/concurrent/TimeoutException;

    invoke-direct {v0}, Ljava/util/concurrent/TimeoutException;-><init>()V

    throw v0

    .line 136
    :cond_5f
    iget-object v0, p0, Lcom/bumptech/glide/integration/volley/VolleyRequestFuture;->mResult:Ljava/lang/Object;
    :try_end_61
    .catchall {:try_start_1a .. :try_end_61} :catchall_f

    goto :goto_18
.end method

.method public static newFuture()Lcom/bumptech/glide/integration/volley/VolleyRequestFuture;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/bumptech/glide/integration/volley/VolleyRequestFuture",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 65
    new-instance v0, Lcom/bumptech/glide/integration/volley/VolleyRequestFuture;

    invoke-direct {v0}, Lcom/bumptech/glide/integration/volley/VolleyRequestFuture;-><init>()V

    return-object v0
.end method


# virtual methods
.method public declared-synchronized cancel(Z)Z
    .registers 4
    .param p1, "mayInterruptIfRunning"    # Z

    .prologue
    .local p0, "this":Lcom/bumptech/glide/integration/volley/VolleyRequestFuture;, "Lcom/bumptech/glide/integration/volley/VolleyRequestFuture<TT;>;"
    const/4 v0, 0x1

    .line 77
    monitor-enter p0

    :try_start_2
    invoke-virtual {p0}, Lcom/bumptech/glide/integration/volley/VolleyRequestFuture;->isDone()Z
    :try_end_5
    .catchall {:try_start_2 .. :try_end_5} :catchall_1b

    move-result v1

    if-eqz v1, :cond_b

    .line 78
    const/4 v0, 0x0

    .line 86
    :goto_9
    monitor-exit p0

    return v0

    .line 80
    :cond_b
    const/4 v1, 0x1

    :try_start_c
    iput-boolean v1, p0, Lcom/bumptech/glide/integration/volley/VolleyRequestFuture;->mIsCancelled:Z

    .line 81
    iget-object v1, p0, Lcom/bumptech/glide/integration/volley/VolleyRequestFuture;->mRequest:Lcom/android/volley/Request;

    if-eqz v1, :cond_17

    .line 82
    iget-object v1, p0, Lcom/bumptech/glide/integration/volley/VolleyRequestFuture;->mRequest:Lcom/android/volley/Request;

    invoke-virtual {v1}, Lcom/android/volley/Request;->cancel()V

    .line 84
    :cond_17
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_1a
    .catchall {:try_start_c .. :try_end_1a} :catchall_1b

    goto :goto_9

    .line 77
    :catchall_1b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public get()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    .prologue
    .line 92
    .local p0, "this":Lcom/bumptech/glide/integration/volley/VolleyRequestFuture;, "Lcom/bumptech/glide/integration/volley/VolleyRequestFuture<TT;>;"
    const/4 v1, 0x0

    :try_start_1
    invoke-direct {p0, v1}, Lcom/bumptech/glide/integration/volley/VolleyRequestFuture;->doGet(Ljava/lang/Long;)Ljava/lang/Object;
    :try_end_4
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_1 .. :try_end_4} :catch_6

    move-result-object v1

    return-object v1

    .line 93
    :catch_6
    move-exception v0

    .line 94
    .local v0, "e":Ljava/util/concurrent/TimeoutException;
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .registers 7
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .prologue
    .line 101
    .local p0, "this":Lcom/bumptech/glide/integration/volley/VolleyRequestFuture;, "Lcom/bumptech/glide/integration/volley/VolleyRequestFuture<TT;>;"
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/bumptech/glide/integration/volley/VolleyRequestFuture;->doGet(Ljava/lang/Long;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public isCancelled()Z
    .registers 2

    .prologue
    .line 141
    .local p0, "this":Lcom/bumptech/glide/integration/volley/VolleyRequestFuture;, "Lcom/bumptech/glide/integration/volley/VolleyRequestFuture<TT;>;"
    iget-boolean v0, p0, Lcom/bumptech/glide/integration/volley/VolleyRequestFuture;->mIsCancelled:Z

    return v0
.end method

.method public declared-synchronized isDone()Z
    .registers 2

    .prologue
    .line 146
    .local p0, "this":Lcom/bumptech/glide/integration/volley/VolleyRequestFuture;, "Lcom/bumptech/glide/integration/volley/VolleyRequestFuture<TT;>;"
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/bumptech/glide/integration/volley/VolleyRequestFuture;->mResultReceived:Z

    if-nez v0, :cond_f

    iget-object v0, p0, Lcom/bumptech/glide/integration/volley/VolleyRequestFuture;->mException:Lcom/android/volley/VolleyError;

    if-nez v0, :cond_f

    invoke-virtual {p0}, Lcom/bumptech/glide/integration/volley/VolleyRequestFuture;->isCancelled()Z
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_14

    move-result v0

    if-eqz v0, :cond_12

    :cond_f
    const/4 v0, 0x1

    :goto_10
    monitor-exit p0

    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_10

    :catchall_14
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onErrorResponse(Lcom/android/volley/VolleyError;)V
    .registers 3
    .param p1, "error"    # Lcom/android/volley/VolleyError;

    .prologue
    .line 158
    .local p0, "this":Lcom/bumptech/glide/integration/volley/VolleyRequestFuture;, "Lcom/bumptech/glide/integration/volley/VolleyRequestFuture<TT;>;"
    monitor-enter p0

    :try_start_1
    iput-object p1, p0, Lcom/bumptech/glide/integration/volley/VolleyRequestFuture;->mException:Lcom/android/volley/VolleyError;

    .line 159
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 160
    monitor-exit p0

    return-void

    .line 158
    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onResponse(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 151
    .local p0, "this":Lcom/bumptech/glide/integration/volley/VolleyRequestFuture;, "Lcom/bumptech/glide/integration/volley/VolleyRequestFuture<TT;>;"
    .local p1, "response":Ljava/lang/Object;, "TT;"
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Lcom/bumptech/glide/integration/volley/VolleyRequestFuture;->mResultReceived:Z

    .line 152
    iput-object p1, p0, Lcom/bumptech/glide/integration/volley/VolleyRequestFuture;->mResult:Ljava/lang/Object;

    .line 153
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_9
    .catchall {:try_start_2 .. :try_end_9} :catchall_b

    .line 154
    monitor-exit p0

    return-void

    .line 151
    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setRequest(Lcom/android/volley/Request;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/Request",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 69
    .local p0, "this":Lcom/bumptech/glide/integration/volley/VolleyRequestFuture;, "Lcom/bumptech/glide/integration/volley/VolleyRequestFuture<TT;>;"
    .local p1, "request":Lcom/android/volley/Request;, "Lcom/android/volley/Request<*>;"
    monitor-enter p0

    :try_start_1
    iput-object p1, p0, Lcom/bumptech/glide/integration/volley/VolleyRequestFuture;->mRequest:Lcom/android/volley/Request;

    .line 70
    iget-boolean v0, p0, Lcom/bumptech/glide/integration/volley/VolleyRequestFuture;->mIsCancelled:Z

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/bumptech/glide/integration/volley/VolleyRequestFuture;->mRequest:Lcom/android/volley/Request;

    if-eqz v0, :cond_10

    .line 71
    iget-object v0, p0, Lcom/bumptech/glide/integration/volley/VolleyRequestFuture;->mRequest:Lcom/android/volley/Request;

    invoke-virtual {v0}, Lcom/android/volley/Request;->cancel()V
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_12

    .line 73
    :cond_10
    monitor-exit p0

    return-void

    .line 69
    :catchall_12
    move-exception v0

    monitor-exit p0

    throw v0
.end method
