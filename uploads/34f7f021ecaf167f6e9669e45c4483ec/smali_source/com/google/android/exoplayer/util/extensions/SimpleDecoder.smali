.class public abstract Lcom/google/android/exoplayer/util/extensions/SimpleDecoder;
.super Ljava/lang/Thread;
.source "SimpleDecoder.java"

# interfaces
.implements Lcom/google/android/exoplayer/util/extensions/Decoder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer/util/extensions/SimpleDecoder$EventListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<I:",
        "Lcom/google/android/exoplayer/util/extensions/InputBuffer;",
        "O:",
        "Lcom/google/android/exoplayer/util/extensions/OutputBuffer;",
        "E:",
        "Ljava/lang/Exception;",
        ">",
        "Ljava/lang/Thread;",
        "Lcom/google/android/exoplayer/util/extensions/Decoder",
        "<TI;TO;TE;>;"
    }
.end annotation


# instance fields
.field private availableInputBufferCount:I

.field private final availableInputBuffers:[Lcom/google/android/exoplayer/util/extensions/InputBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TI;"
        }
    .end annotation
.end field

.field private availableOutputBufferCount:I

.field private final availableOutputBuffers:[Lcom/google/android/exoplayer/util/extensions/OutputBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TO;"
        }
    .end annotation
.end field

.field private dequeuedInputBuffer:Lcom/google/android/exoplayer/util/extensions/InputBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TI;"
        }
    .end annotation
.end field

.field private exception:Ljava/lang/Exception;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field

.field private flushed:Z

.field private final lock:Ljava/lang/Object;

.field private final queuedInputBuffers:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<TI;>;"
        }
    .end annotation
.end field

.field private final queuedOutputBuffers:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<TO;>;"
        }
    .end annotation
.end field

.field private released:Z


# direct methods
.method protected constructor <init>([Lcom/google/android/exoplayer/util/extensions/InputBuffer;[Lcom/google/android/exoplayer/util/extensions/OutputBuffer;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TI;[TO;)V"
        }
    .end annotation

    .prologue
    .line 59
    .local p0, "this":Lcom/google/android/exoplayer/util/extensions/SimpleDecoder;, "Lcom/google/android/exoplayer/util/extensions/SimpleDecoder<TI;TO;TE;>;"
    .local p1, "inputBuffers":[Lcom/google/android/exoplayer/util/extensions/InputBuffer;, "[TI;"
    .local p2, "outputBuffers":[Lcom/google/android/exoplayer/util/extensions/OutputBuffer;, "[TO;"
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 60
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/google/android/exoplayer/util/extensions/SimpleDecoder;->lock:Ljava/lang/Object;

    .line 61
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lcom/google/android/exoplayer/util/extensions/SimpleDecoder;->queuedInputBuffers:Ljava/util/LinkedList;

    .line 62
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lcom/google/android/exoplayer/util/extensions/SimpleDecoder;->queuedOutputBuffers:Ljava/util/LinkedList;

    .line 63
    iput-object p1, p0, Lcom/google/android/exoplayer/util/extensions/SimpleDecoder;->availableInputBuffers:[Lcom/google/android/exoplayer/util/extensions/InputBuffer;

    .line 64
    array-length v1, p1

    iput v1, p0, Lcom/google/android/exoplayer/util/extensions/SimpleDecoder;->availableInputBufferCount:I

    .line 65
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1e
    iget v1, p0, Lcom/google/android/exoplayer/util/extensions/SimpleDecoder;->availableInputBufferCount:I

    if-ge v0, v1, :cond_2d

    .line 66
    iget-object v1, p0, Lcom/google/android/exoplayer/util/extensions/SimpleDecoder;->availableInputBuffers:[Lcom/google/android/exoplayer/util/extensions/InputBuffer;

    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/extensions/SimpleDecoder;->createInputBuffer()Lcom/google/android/exoplayer/util/extensions/InputBuffer;

    move-result-object v2

    aput-object v2, v1, v0

    .line 65
    add-int/lit8 v0, v0, 0x1

    goto :goto_1e

    .line 68
    :cond_2d
    iput-object p2, p0, Lcom/google/android/exoplayer/util/extensions/SimpleDecoder;->availableOutputBuffers:[Lcom/google/android/exoplayer/util/extensions/OutputBuffer;

    .line 69
    array-length v1, p2

    iput v1, p0, Lcom/google/android/exoplayer/util/extensions/SimpleDecoder;->availableOutputBufferCount:I

    .line 70
    const/4 v0, 0x0

    :goto_33
    iget v1, p0, Lcom/google/android/exoplayer/util/extensions/SimpleDecoder;->availableOutputBufferCount:I

    if-ge v0, v1, :cond_42

    .line 71
    iget-object v1, p0, Lcom/google/android/exoplayer/util/extensions/SimpleDecoder;->availableOutputBuffers:[Lcom/google/android/exoplayer/util/extensions/OutputBuffer;

    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/extensions/SimpleDecoder;->createOutputBuffer()Lcom/google/android/exoplayer/util/extensions/OutputBuffer;

    move-result-object v2

    aput-object v2, v1, v0

    .line 70
    add-int/lit8 v0, v0, 0x1

    goto :goto_33

    .line 73
    :cond_42
    return-void
.end method

.method private canDecodeBuffer()Z
    .registers 2

    .prologue
    .line 255
    .local p0, "this":Lcom/google/android/exoplayer/util/extensions/SimpleDecoder;, "Lcom/google/android/exoplayer/util/extensions/SimpleDecoder<TI;TO;TE;>;"
    iget-object v0, p0, Lcom/google/android/exoplayer/util/extensions/SimpleDecoder;->queuedInputBuffers:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_e

    iget v0, p0, Lcom/google/android/exoplayer/util/extensions/SimpleDecoder;->availableOutputBufferCount:I

    if-lez v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method private decode()Z
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/google/android/exoplayer/util/extensions/SimpleDecoder;, "Lcom/google/android/exoplayer/util/extensions/SimpleDecoder<TI;TO;TE;>;"
    const/4 v8, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 210
    iget-object v5, p0, Lcom/google/android/exoplayer/util/extensions/SimpleDecoder;->lock:Ljava/lang/Object;

    monitor-enter v5

    .line 211
    :goto_6
    :try_start_6
    iget-boolean v6, p0, Lcom/google/android/exoplayer/util/extensions/SimpleDecoder;->released:Z

    if-nez v6, :cond_19

    invoke-direct {p0}, Lcom/google/android/exoplayer/util/extensions/SimpleDecoder;->canDecodeBuffer()Z

    move-result v6

    if-nez v6, :cond_19

    .line 212
    iget-object v6, p0, Lcom/google/android/exoplayer/util/extensions/SimpleDecoder;->lock:Ljava/lang/Object;

    invoke-virtual {v6}, Ljava/lang/Object;->wait()V

    goto :goto_6

    .line 221
    :catchall_16
    move-exception v3

    monitor-exit v5
    :try_end_18
    .catchall {:try_start_6 .. :try_end_18} :catchall_16

    throw v3

    .line 214
    :cond_19
    :try_start_19
    iget-boolean v6, p0, Lcom/google/android/exoplayer/util/extensions/SimpleDecoder;->released:Z

    if-eqz v6, :cond_1f

    .line 215
    monitor-exit v5

    .line 251
    :goto_1e
    return v3

    .line 217
    :cond_1f
    iget-object v6, p0, Lcom/google/android/exoplayer/util/extensions/SimpleDecoder;->queuedInputBuffers:Ljava/util/LinkedList;

    invoke-virtual {v6}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer/util/extensions/InputBuffer;

    .line 218
    .local v0, "inputBuffer":Lcom/google/android/exoplayer/util/extensions/InputBuffer;, "TI;"
    iget-object v6, p0, Lcom/google/android/exoplayer/util/extensions/SimpleDecoder;->availableOutputBuffers:[Lcom/google/android/exoplayer/util/extensions/OutputBuffer;

    iget v7, p0, Lcom/google/android/exoplayer/util/extensions/SimpleDecoder;->availableOutputBufferCount:I

    add-int/lit8 v7, v7, -0x1

    iput v7, p0, Lcom/google/android/exoplayer/util/extensions/SimpleDecoder;->availableOutputBufferCount:I

    aget-object v1, v6, v7

    .line 219
    .local v1, "outputBuffer":Lcom/google/android/exoplayer/util/extensions/OutputBuffer;, "TO;"
    iget-boolean v2, p0, Lcom/google/android/exoplayer/util/extensions/SimpleDecoder;->flushed:Z

    .line 220
    .local v2, "resetDecoder":Z
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/google/android/exoplayer/util/extensions/SimpleDecoder;->flushed:Z

    .line 221
    monitor-exit v5
    :try_end_37
    .catchall {:try_start_19 .. :try_end_37} :catchall_16

    .line 223
    invoke-virtual {v1}, Lcom/google/android/exoplayer/util/extensions/OutputBuffer;->reset()V

    .line 224
    invoke-virtual {v0, v4}, Lcom/google/android/exoplayer/util/extensions/InputBuffer;->getFlag(I)Z

    move-result v5

    if-eqz v5, :cond_68

    .line 225
    invoke-virtual {v1, v4}, Lcom/google/android/exoplayer/util/extensions/OutputBuffer;->setFlag(I)V

    .line 238
    :cond_43
    iget-object v5, p0, Lcom/google/android/exoplayer/util/extensions/SimpleDecoder;->lock:Ljava/lang/Object;

    monitor-enter v5

    .line 239
    :try_start_46
    iget-boolean v3, p0, Lcom/google/android/exoplayer/util/extensions/SimpleDecoder;->flushed:Z

    if-nez v3, :cond_51

    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Lcom/google/android/exoplayer/util/extensions/OutputBuffer;->getFlag(I)Z

    move-result v3

    if-eqz v3, :cond_83

    .line 242
    :cond_51
    iget-object v3, p0, Lcom/google/android/exoplayer/util/extensions/SimpleDecoder;->availableOutputBuffers:[Lcom/google/android/exoplayer/util/extensions/OutputBuffer;

    iget v6, p0, Lcom/google/android/exoplayer/util/extensions/SimpleDecoder;->availableOutputBufferCount:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lcom/google/android/exoplayer/util/extensions/SimpleDecoder;->availableOutputBufferCount:I

    aput-object v1, v3, v6

    .line 248
    :goto_5b
    iget-object v3, p0, Lcom/google/android/exoplayer/util/extensions/SimpleDecoder;->availableInputBuffers:[Lcom/google/android/exoplayer/util/extensions/InputBuffer;

    iget v6, p0, Lcom/google/android/exoplayer/util/extensions/SimpleDecoder;->availableInputBufferCount:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lcom/google/android/exoplayer/util/extensions/SimpleDecoder;->availableInputBufferCount:I

    aput-object v0, v3, v6

    .line 249
    monitor-exit v5
    :try_end_66
    .catchall {:try_start_46 .. :try_end_66} :catchall_89

    move v3, v4

    .line 251
    goto :goto_1e

    .line 227
    :cond_68
    invoke-virtual {v0, v8}, Lcom/google/android/exoplayer/util/extensions/InputBuffer;->getFlag(I)Z

    move-result v5

    if-eqz v5, :cond_71

    .line 228
    invoke-virtual {v1, v8}, Lcom/google/android/exoplayer/util/extensions/OutputBuffer;->setFlag(I)V

    .line 230
    :cond_71
    invoke-virtual {p0, v0, v1, v2}, Lcom/google/android/exoplayer/util/extensions/SimpleDecoder;->decode(Lcom/google/android/exoplayer/util/extensions/InputBuffer;Lcom/google/android/exoplayer/util/extensions/OutputBuffer;Z)Ljava/lang/Exception;

    move-result-object v5

    iput-object v5, p0, Lcom/google/android/exoplayer/util/extensions/SimpleDecoder;->exception:Ljava/lang/Exception;

    .line 231
    iget-object v5, p0, Lcom/google/android/exoplayer/util/extensions/SimpleDecoder;->exception:Ljava/lang/Exception;

    if-eqz v5, :cond_43

    .line 233
    iget-object v4, p0, Lcom/google/android/exoplayer/util/extensions/SimpleDecoder;->lock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_7e
    monitor-exit v4

    goto :goto_1e

    :catchall_80
    move-exception v3

    monitor-exit v4
    :try_end_82
    .catchall {:try_start_7e .. :try_end_82} :catchall_80

    throw v3

    .line 245
    :cond_83
    :try_start_83
    iget-object v3, p0, Lcom/google/android/exoplayer/util/extensions/SimpleDecoder;->queuedOutputBuffers:Ljava/util/LinkedList;

    invoke-virtual {v3, v1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    goto :goto_5b

    .line 249
    :catchall_89
    move-exception v3

    monitor-exit v5
    :try_end_8b
    .catchall {:try_start_83 .. :try_end_8b} :catchall_89

    throw v3
.end method

.method private maybeNotifyDecodeLoop()V
    .registers 2

    .prologue
    .line 187
    .local p0, "this":Lcom/google/android/exoplayer/util/extensions/SimpleDecoder;, "Lcom/google/android/exoplayer/util/extensions/SimpleDecoder<TI;TO;TE;>;"
    invoke-direct {p0}, Lcom/google/android/exoplayer/util/extensions/SimpleDecoder;->canDecodeBuffer()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 188
    iget-object v0, p0, Lcom/google/android/exoplayer/util/extensions/SimpleDecoder;->lock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 190
    :cond_b
    return-void
.end method

.method private maybeThrowException()V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V^TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 175
    .local p0, "this":Lcom/google/android/exoplayer/util/extensions/SimpleDecoder;, "Lcom/google/android/exoplayer/util/extensions/SimpleDecoder<TI;TO;TE;>;"
    iget-object v0, p0, Lcom/google/android/exoplayer/util/extensions/SimpleDecoder;->exception:Ljava/lang/Exception;

    if-eqz v0, :cond_7

    .line 176
    iget-object v0, p0, Lcom/google/android/exoplayer/util/extensions/SimpleDecoder;->exception:Ljava/lang/Exception;

    throw v0

    .line 178
    :cond_7
    return-void
.end method


# virtual methods
.method protected abstract createInputBuffer()Lcom/google/android/exoplayer/util/extensions/InputBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TI;"
        }
    .end annotation
.end method

.method protected abstract createOutputBuffer()Lcom/google/android/exoplayer/util/extensions/OutputBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TO;"
        }
    .end annotation
.end method

.method protected abstract decode(Lcom/google/android/exoplayer/util/extensions/InputBuffer;Lcom/google/android/exoplayer/util/extensions/OutputBuffer;Z)Ljava/lang/Exception;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TI;TO;Z)TE;"
        }
    .end annotation
.end method

.method public final dequeueInputBuffer()Lcom/google/android/exoplayer/util/extensions/InputBuffer;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TI;^TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 92
    .local p0, "this":Lcom/google/android/exoplayer/util/extensions/SimpleDecoder;, "Lcom/google/android/exoplayer/util/extensions/SimpleDecoder<TI;TO;TE;>;"
    iget-object v2, p0, Lcom/google/android/exoplayer/util/extensions/SimpleDecoder;->lock:Ljava/lang/Object;

    monitor-enter v2

    .line 93
    :try_start_3
    invoke-direct {p0}, Lcom/google/android/exoplayer/util/extensions/SimpleDecoder;->maybeThrowException()V

    .line 94
    iget-object v1, p0, Lcom/google/android/exoplayer/util/extensions/SimpleDecoder;->dequeuedInputBuffer:Lcom/google/android/exoplayer/util/extensions/InputBuffer;

    if-nez v1, :cond_15

    const/4 v1, 0x1

    :goto_b
    invoke-static {v1}, Lcom/google/android/exoplayer/util/Assertions;->checkState(Z)V

    .line 95
    iget v1, p0, Lcom/google/android/exoplayer/util/extensions/SimpleDecoder;->availableInputBufferCount:I

    if-nez v1, :cond_17

    .line 96
    const/4 v0, 0x0

    monitor-exit v2

    .line 101
    :goto_14
    return-object v0

    .line 94
    :cond_15
    const/4 v1, 0x0

    goto :goto_b

    .line 98
    :cond_17
    iget-object v1, p0, Lcom/google/android/exoplayer/util/extensions/SimpleDecoder;->availableInputBuffers:[Lcom/google/android/exoplayer/util/extensions/InputBuffer;

    iget v3, p0, Lcom/google/android/exoplayer/util/extensions/SimpleDecoder;->availableInputBufferCount:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/google/android/exoplayer/util/extensions/SimpleDecoder;->availableInputBufferCount:I

    aget-object v0, v1, v3

    .line 99
    .local v0, "inputBuffer":Lcom/google/android/exoplayer/util/extensions/InputBuffer;, "TI;"
    invoke-virtual {v0}, Lcom/google/android/exoplayer/util/extensions/InputBuffer;->reset()V

    .line 100
    iput-object v0, p0, Lcom/google/android/exoplayer/util/extensions/SimpleDecoder;->dequeuedInputBuffer:Lcom/google/android/exoplayer/util/extensions/InputBuffer;

    .line 101
    monitor-exit v2

    goto :goto_14

    .line 102
    .end local v0    # "inputBuffer":Lcom/google/android/exoplayer/util/extensions/InputBuffer;, "TI;"
    :catchall_28
    move-exception v1

    monitor-exit v2
    :try_end_2a
    .catchall {:try_start_3 .. :try_end_2a} :catchall_28

    throw v1
.end method

.method public bridge synthetic dequeueInputBuffer()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 24
    .local p0, "this":Lcom/google/android/exoplayer/util/extensions/SimpleDecoder;, "Lcom/google/android/exoplayer/util/extensions/SimpleDecoder<TI;TO;TE;>;"
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/extensions/SimpleDecoder;->dequeueInputBuffer()Lcom/google/android/exoplayer/util/extensions/InputBuffer;

    move-result-object v0

    return-object v0
.end method

.method public final dequeueOutputBuffer()Lcom/google/android/exoplayer/util/extensions/OutputBuffer;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TO;^TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 118
    .local p0, "this":Lcom/google/android/exoplayer/util/extensions/SimpleDecoder;, "Lcom/google/android/exoplayer/util/extensions/SimpleDecoder<TI;TO;TE;>;"
    iget-object v1, p0, Lcom/google/android/exoplayer/util/extensions/SimpleDecoder;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 119
    :try_start_3
    invoke-direct {p0}, Lcom/google/android/exoplayer/util/extensions/SimpleDecoder;->maybeThrowException()V

    .line 120
    iget-object v0, p0, Lcom/google/android/exoplayer/util/extensions/SimpleDecoder;->queuedOutputBuffers:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 121
    const/4 v0, 0x0

    monitor-exit v1

    .line 123
    :goto_10
    return-object v0

    :cond_11
    iget-object v0, p0, Lcom/google/android/exoplayer/util/extensions/SimpleDecoder;->queuedOutputBuffers:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer/util/extensions/OutputBuffer;

    monitor-exit v1

    goto :goto_10

    .line 124
    :catchall_1b
    move-exception v0

    monitor-exit v1
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_1b

    throw v0
.end method

.method public bridge synthetic dequeueOutputBuffer()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 24
    .local p0, "this":Lcom/google/android/exoplayer/util/extensions/SimpleDecoder;, "Lcom/google/android/exoplayer/util/extensions/SimpleDecoder<TI;TO;TE;>;"
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/extensions/SimpleDecoder;->dequeueOutputBuffer()Lcom/google/android/exoplayer/util/extensions/OutputBuffer;

    move-result-object v0

    return-object v0
.end method

.method public final flush()V
    .registers 5

    .prologue
    .line 141
    .local p0, "this":Lcom/google/android/exoplayer/util/extensions/SimpleDecoder;, "Lcom/google/android/exoplayer/util/extensions/SimpleDecoder<TI;TO;TE;>;"
    iget-object v1, p0, Lcom/google/android/exoplayer/util/extensions/SimpleDecoder;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 142
    const/4 v0, 0x1

    :try_start_4
    iput-boolean v0, p0, Lcom/google/android/exoplayer/util/extensions/SimpleDecoder;->flushed:Z

    .line 143
    iget-object v0, p0, Lcom/google/android/exoplayer/util/extensions/SimpleDecoder;->dequeuedInputBuffer:Lcom/google/android/exoplayer/util/extensions/InputBuffer;

    if-eqz v0, :cond_19

    .line 144
    iget-object v0, p0, Lcom/google/android/exoplayer/util/extensions/SimpleDecoder;->availableInputBuffers:[Lcom/google/android/exoplayer/util/extensions/InputBuffer;

    iget v2, p0, Lcom/google/android/exoplayer/util/extensions/SimpleDecoder;->availableInputBufferCount:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/google/android/exoplayer/util/extensions/SimpleDecoder;->availableInputBufferCount:I

    iget-object v3, p0, Lcom/google/android/exoplayer/util/extensions/SimpleDecoder;->dequeuedInputBuffer:Lcom/google/android/exoplayer/util/extensions/InputBuffer;

    aput-object v3, v0, v2

    .line 145
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/exoplayer/util/extensions/SimpleDecoder;->dequeuedInputBuffer:Lcom/google/android/exoplayer/util/extensions/InputBuffer;

    .line 147
    :cond_19
    :goto_19
    iget-object v0, p0, Lcom/google/android/exoplayer/util/extensions/SimpleDecoder;->queuedInputBuffers:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_37

    .line 148
    iget-object v2, p0, Lcom/google/android/exoplayer/util/extensions/SimpleDecoder;->availableInputBuffers:[Lcom/google/android/exoplayer/util/extensions/InputBuffer;

    iget v3, p0, Lcom/google/android/exoplayer/util/extensions/SimpleDecoder;->availableInputBufferCount:I

    add-int/lit8 v0, v3, 0x1

    iput v0, p0, Lcom/google/android/exoplayer/util/extensions/SimpleDecoder;->availableInputBufferCount:I

    iget-object v0, p0, Lcom/google/android/exoplayer/util/extensions/SimpleDecoder;->queuedInputBuffers:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer/util/extensions/InputBuffer;

    aput-object v0, v2, v3

    goto :goto_19

    .line 153
    :catchall_34
    move-exception v0

    monitor-exit v1
    :try_end_36
    .catchall {:try_start_4 .. :try_end_36} :catchall_34

    throw v0

    .line 150
    :cond_37
    :goto_37
    :try_start_37
    iget-object v0, p0, Lcom/google/android/exoplayer/util/extensions/SimpleDecoder;->queuedOutputBuffers:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_52

    .line 151
    iget-object v2, p0, Lcom/google/android/exoplayer/util/extensions/SimpleDecoder;->availableOutputBuffers:[Lcom/google/android/exoplayer/util/extensions/OutputBuffer;

    iget v3, p0, Lcom/google/android/exoplayer/util/extensions/SimpleDecoder;->availableOutputBufferCount:I

    add-int/lit8 v0, v3, 0x1

    iput v0, p0, Lcom/google/android/exoplayer/util/extensions/SimpleDecoder;->availableOutputBufferCount:I

    iget-object v0, p0, Lcom/google/android/exoplayer/util/extensions/SimpleDecoder;->queuedOutputBuffers:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer/util/extensions/OutputBuffer;

    aput-object v0, v2, v3

    goto :goto_37

    .line 153
    :cond_52
    monitor-exit v1
    :try_end_53
    .catchall {:try_start_37 .. :try_end_53} :catchall_34

    .line 154
    return-void
.end method

.method public final queueInputBuffer(Lcom/google/android/exoplayer/util/extensions/InputBuffer;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TI;)V^TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 107
    .local p0, "this":Lcom/google/android/exoplayer/util/extensions/SimpleDecoder;, "Lcom/google/android/exoplayer/util/extensions/SimpleDecoder<TI;TO;TE;>;"
    .local p1, "inputBuffer":Lcom/google/android/exoplayer/util/extensions/InputBuffer;, "TI;"
    iget-object v1, p0, Lcom/google/android/exoplayer/util/extensions/SimpleDecoder;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 108
    :try_start_3
    invoke-direct {p0}, Lcom/google/android/exoplayer/util/extensions/SimpleDecoder;->maybeThrowException()V

    .line 109
    iget-object v0, p0, Lcom/google/android/exoplayer/util/extensions/SimpleDecoder;->dequeuedInputBuffer:Lcom/google/android/exoplayer/util/extensions/InputBuffer;

    if-ne p1, v0, :cond_1b

    const/4 v0, 0x1

    :goto_b
    invoke-static {v0}, Lcom/google/android/exoplayer/util/Assertions;->checkArgument(Z)V

    .line 110
    iget-object v0, p0, Lcom/google/android/exoplayer/util/extensions/SimpleDecoder;->queuedInputBuffers:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 111
    invoke-direct {p0}, Lcom/google/android/exoplayer/util/extensions/SimpleDecoder;->maybeNotifyDecodeLoop()V

    .line 112
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/exoplayer/util/extensions/SimpleDecoder;->dequeuedInputBuffer:Lcom/google/android/exoplayer/util/extensions/InputBuffer;

    .line 113
    monitor-exit v1

    .line 114
    return-void

    .line 109
    :cond_1b
    const/4 v0, 0x0

    goto :goto_b

    .line 113
    :catchall_1d
    move-exception v0

    monitor-exit v1
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_1d

    throw v0
.end method

.method public bridge synthetic queueInputBuffer(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 24
    .local p0, "this":Lcom/google/android/exoplayer/util/extensions/SimpleDecoder;, "Lcom/google/android/exoplayer/util/extensions/SimpleDecoder<TI;TO;TE;>;"
    check-cast p1, Lcom/google/android/exoplayer/util/extensions/InputBuffer;

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer/util/extensions/SimpleDecoder;->queueInputBuffer(Lcom/google/android/exoplayer/util/extensions/InputBuffer;)V

    return-void
.end method

.method public release()V
    .registers 4

    .prologue
    .line 158
    .local p0, "this":Lcom/google/android/exoplayer/util/extensions/SimpleDecoder;, "Lcom/google/android/exoplayer/util/extensions/SimpleDecoder<TI;TO;TE;>;"
    iget-object v2, p0, Lcom/google/android/exoplayer/util/extensions/SimpleDecoder;->lock:Ljava/lang/Object;

    monitor-enter v2

    .line 159
    const/4 v1, 0x1

    :try_start_4
    iput-boolean v1, p0, Lcom/google/android/exoplayer/util/extensions/SimpleDecoder;->released:Z

    .line 160
    iget-object v1, p0, Lcom/google/android/exoplayer/util/extensions/SimpleDecoder;->lock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 161
    monitor-exit v2
    :try_end_c
    .catchall {:try_start_4 .. :try_end_c} :catchall_10

    .line 163
    :try_start_c
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/extensions/SimpleDecoder;->join()V
    :try_end_f
    .catch Ljava/lang/InterruptedException; {:try_start_c .. :try_end_f} :catch_13

    .line 167
    :goto_f
    return-void

    .line 161
    :catchall_10
    move-exception v1

    :try_start_11
    monitor-exit v2
    :try_end_12
    .catchall {:try_start_11 .. :try_end_12} :catchall_10

    throw v1

    .line 164
    :catch_13
    move-exception v0

    .line 165
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_f
.end method

.method protected releaseOutputBuffer(Lcom/google/android/exoplayer/util/extensions/OutputBuffer;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TO;)V"
        }
    .end annotation

    .prologue
    .line 133
    .local p0, "this":Lcom/google/android/exoplayer/util/extensions/SimpleDecoder;, "Lcom/google/android/exoplayer/util/extensions/SimpleDecoder<TI;TO;TE;>;"
    .local p1, "outputBuffer":Lcom/google/android/exoplayer/util/extensions/OutputBuffer;, "TO;"
    iget-object v1, p0, Lcom/google/android/exoplayer/util/extensions/SimpleDecoder;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 134
    :try_start_3
    iget-object v0, p0, Lcom/google/android/exoplayer/util/extensions/SimpleDecoder;->availableOutputBuffers:[Lcom/google/android/exoplayer/util/extensions/OutputBuffer;

    iget v2, p0, Lcom/google/android/exoplayer/util/extensions/SimpleDecoder;->availableOutputBufferCount:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/google/android/exoplayer/util/extensions/SimpleDecoder;->availableOutputBufferCount:I

    aput-object p1, v0, v2

    .line 135
    invoke-direct {p0}, Lcom/google/android/exoplayer/util/extensions/SimpleDecoder;->maybeNotifyDecodeLoop()V

    .line 136
    monitor-exit v1

    .line 137
    return-void

    .line 136
    :catchall_12
    move-exception v0

    monitor-exit v1
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v0
.end method

.method public final run()V
    .registers 3

    .prologue
    .line 195
    .local p0, "this":Lcom/google/android/exoplayer/util/extensions/SimpleDecoder;, "Lcom/google/android/exoplayer/util/extensions/SimpleDecoder<TI;TO;TE;>;"
    :cond_0
    :try_start_0
    invoke-direct {p0}, Lcom/google/android/exoplayer/util/extensions/SimpleDecoder;->decode()Z
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_3} :catch_7

    move-result v1

    if-nez v1, :cond_0

    .line 202
    return-void

    .line 198
    :catch_7
    move-exception v0

    .line 200
    .local v0, "e":Ljava/lang/InterruptedException;
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected final setInitialInputBufferSize(I)V
    .registers 5
    .param p1, "size"    # I

    .prologue
    .line 84
    .local p0, "this":Lcom/google/android/exoplayer/util/extensions/SimpleDecoder;, "Lcom/google/android/exoplayer/util/extensions/SimpleDecoder<TI;TO;TE;>;"
    iget v1, p0, Lcom/google/android/exoplayer/util/extensions/SimpleDecoder;->availableInputBufferCount:I

    iget-object v2, p0, Lcom/google/android/exoplayer/util/extensions/SimpleDecoder;->availableInputBuffers:[Lcom/google/android/exoplayer/util/extensions/InputBuffer;

    array-length v2, v2

    if-ne v1, v2, :cond_1d

    const/4 v1, 0x1

    :goto_8
    invoke-static {v1}, Lcom/google/android/exoplayer/util/Assertions;->checkState(Z)V

    .line 85
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_c
    iget-object v1, p0, Lcom/google/android/exoplayer/util/extensions/SimpleDecoder;->availableInputBuffers:[Lcom/google/android/exoplayer/util/extensions/InputBuffer;

    array-length v1, v1

    if-ge v0, v1, :cond_1f

    .line 86
    iget-object v1, p0, Lcom/google/android/exoplayer/util/extensions/SimpleDecoder;->availableInputBuffers:[Lcom/google/android/exoplayer/util/extensions/InputBuffer;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/google/android/exoplayer/util/extensions/InputBuffer;->sampleHolder:Lcom/google/android/exoplayer/SampleHolder;

    invoke-virtual {v1, p1}, Lcom/google/android/exoplayer/SampleHolder;->ensureSpaceForWrite(I)V

    .line 85
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    .line 84
    .end local v0    # "i":I
    :cond_1d
    const/4 v1, 0x0

    goto :goto_8

    .line 88
    .restart local v0    # "i":I
    :cond_1f
    return-void
.end method
