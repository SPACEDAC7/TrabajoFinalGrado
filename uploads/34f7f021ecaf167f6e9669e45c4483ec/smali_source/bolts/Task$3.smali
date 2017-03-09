.class final Lbolts/Task$3;
.super Ljava/lang/Object;
.source "Task.java"

# interfaces
.implements Lbolts/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbolts/Task;->whenAll(Ljava/util/Collection;)Lbolts/Task;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lbolts/Continuation",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$allFinished:Lbolts/Task$TaskCompletionSource;

.field final synthetic val$causes:Ljava/util/ArrayList;

.field final synthetic val$count:Ljava/util/concurrent/atomic/AtomicInteger;

.field final synthetic val$errorLock:Ljava/lang/Object;

.field final synthetic val$isCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method constructor <init>(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/util/concurrent/atomic/AtomicInteger;Lbolts/Task$TaskCompletionSource;)V
    .registers 6

    .prologue
    .line 233
    iput-object p1, p0, Lbolts/Task$3;->val$errorLock:Ljava/lang/Object;

    iput-object p2, p0, Lbolts/Task$3;->val$causes:Ljava/util/ArrayList;

    iput-object p3, p0, Lbolts/Task$3;->val$isCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p4, p0, Lbolts/Task$3;->val$count:Ljava/util/concurrent/atomic/AtomicInteger;

    iput-object p5, p0, Lbolts/Task$3;->val$allFinished:Lbolts/Task$TaskCompletionSource;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic then(Lbolts/Task;)Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # Lbolts/Task;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 233
    invoke-virtual {p0, p1}, Lbolts/Task$3;->then(Lbolts/Task;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public then(Lbolts/Task;)Ljava/lang/Void;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/Void;"
        }
    .end annotation

    .prologue
    .local p1, "task":Lbolts/Task;, "Lbolts/Task<Ljava/lang/Object;>;"
    const/4 v7, 0x0

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 236
    invoke-virtual {p1}, Lbolts/Task;->isFaulted()Z

    move-result v2

    if-eqz v2, :cond_16

    .line 237
    iget-object v3, p0, Lbolts/Task$3;->val$errorLock:Ljava/lang/Object;

    monitor-enter v3

    .line 238
    :try_start_c
    iget-object v2, p0, Lbolts/Task$3;->val$causes:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lbolts/Task;->getError()Ljava/lang/Exception;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 239
    monitor-exit v3
    :try_end_16
    .catchall {:try_start_c .. :try_end_16} :catchall_47

    .line 242
    :cond_16
    invoke-virtual {p1}, Lbolts/Task;->isCancelled()Z

    move-result v2

    if-eqz v2, :cond_21

    .line 243
    iget-object v2, p0, Lbolts/Task$3;->val$isCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 246
    :cond_21
    iget-object v2, p0, Lbolts/Task$3;->val$count:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v2

    if-nez v2, :cond_46

    .line 247
    iget-object v2, p0, Lbolts/Task$3;->val$causes:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eqz v2, :cond_79

    .line 248
    iget-object v2, p0, Lbolts/Task$3;->val$causes:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ne v2, v5, :cond_4a

    .line 249
    iget-object v3, p0, Lbolts/Task$3;->val$allFinished:Lbolts/Task$TaskCompletionSource;

    iget-object v2, p0, Lbolts/Task$3;->val$causes:Ljava/util/ArrayList;

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Exception;

    invoke-virtual {v3, v2}, Lbolts/Task$TaskCompletionSource;->setError(Ljava/lang/Exception;)V

    .line 263
    :cond_46
    :goto_46
    return-object v7

    .line 239
    :catchall_47
    move-exception v2

    :try_start_48
    monitor-exit v3
    :try_end_49
    .catchall {:try_start_48 .. :try_end_49} :catchall_47

    throw v2

    .line 251
    :cond_4a
    iget-object v2, p0, Lbolts/Task$3;->val$causes:Ljava/util/ArrayList;

    iget-object v3, p0, Lbolts/Task$3;->val$causes:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/Throwable;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Throwable;

    .line 252
    .local v1, "throwables":[Ljava/lang/Throwable;
    new-instance v0, Lbolts/AggregateException;

    const-string v2, "There were %d exceptions."

    new-array v3, v5, [Ljava/lang/Object;

    iget-object v4, p0, Lbolts/Task$3;->val$causes:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Lbolts/AggregateException;-><init>(Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 255
    .local v0, "error":Ljava/lang/Exception;
    iget-object v2, p0, Lbolts/Task$3;->val$allFinished:Lbolts/Task$TaskCompletionSource;

    invoke-virtual {v2, v0}, Lbolts/Task$TaskCompletionSource;->setError(Ljava/lang/Exception;)V

    goto :goto_46

    .line 257
    .end local v0    # "error":Ljava/lang/Exception;
    .end local v1    # "throwables":[Ljava/lang/Throwable;
    :cond_79
    iget-object v2, p0, Lbolts/Task$3;->val$isCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-eqz v2, :cond_87

    .line 258
    iget-object v2, p0, Lbolts/Task$3;->val$allFinished:Lbolts/Task$TaskCompletionSource;

    invoke-virtual {v2}, Lbolts/Task$TaskCompletionSource;->setCancelled()V

    goto :goto_46

    .line 260
    :cond_87
    iget-object v2, p0, Lbolts/Task$3;->val$allFinished:Lbolts/Task$TaskCompletionSource;

    invoke-virtual {v2, v7}, Lbolts/Task$TaskCompletionSource;->setResult(Ljava/lang/Object;)V

    goto :goto_46
.end method
