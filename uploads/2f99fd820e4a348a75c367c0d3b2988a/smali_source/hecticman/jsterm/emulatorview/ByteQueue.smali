.class Lhecticman/jsterm/emulatorview/ByteQueue;
.super Ljava/lang/Object;
.source "ByteQueue.java"


# instance fields
.field private mBuffer:[B

.field private mHead:I

.field private mStoredBytes:I


# direct methods
.method public constructor <init>(I)V
    .registers 3
    .param p1, "size"    # I

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-array v0, p1, [B

    iput-object v0, p0, Lhecticman/jsterm/emulatorview/ByteQueue;->mBuffer:[B

    .line 27
    return-void
.end method


# virtual methods
.method public getBuffer()[B
    .registers 2

    .prologue
    .line 119
    iget-object v0, p0, Lhecticman/jsterm/emulatorview/ByteQueue;->mBuffer:[B

    return-object v0
.end method

.method public getBytesAvailable()I
    .registers 2

    .prologue
    .line 30
    monitor-enter p0

    .line 31
    :try_start_1
    iget v0, p0, Lhecticman/jsterm/emulatorview/ByteQueue;->mStoredBytes:I

    monitor-exit p0

    return v0

    .line 30
    :catchall_5
    move-exception v0

    monitor-exit p0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_5

    throw v0
.end method

.method public read([BII)I
    .registers 11
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 37
    add-int v5, p3, p2

    array-length v6, p1

    if-le v5, v6, :cond_e

    .line 39
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "length + offset > buffer.length"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 38
    throw v5

    .line 41
    :cond_e
    if-gez p3, :cond_18

    .line 43
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "length < 0"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 42
    throw v5

    .line 46
    :cond_18
    if-nez p3, :cond_1b

    .line 72
    :goto_1a
    return v4

    .line 49
    :cond_1b
    monitor-enter p0

    .line 50
    :goto_1c
    :try_start_1c
    iget v5, p0, Lhecticman/jsterm/emulatorview/ByteQueue;->mStoredBytes:I

    if-eqz v5, :cond_37

    .line 53
    const/4 v3, 0x0

    .line 54
    .local v3, "totalRead":I
    iget-object v5, p0, Lhecticman/jsterm/emulatorview/ByteQueue;->mBuffer:[B

    array-length v0, v5

    .line 55
    .local v0, "bufferLength":I
    iget v5, p0, Lhecticman/jsterm/emulatorview/ByteQueue;->mStoredBytes:I

    if-ne v0, v5, :cond_29

    const/4 v4, 0x1

    .line 56
    .local v4, "wasFull":Z
    :cond_29
    :goto_29
    if-lez p3, :cond_2f

    iget v5, p0, Lhecticman/jsterm/emulatorview/ByteQueue;->mStoredBytes:I

    if-gtz v5, :cond_3e

    .line 69
    :cond_2f
    if-eqz v4, :cond_34

    .line 70
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 72
    :cond_34
    monitor-exit p0

    move v4, v3

    goto :goto_1a

    .line 51
    .end local v0    # "bufferLength":I
    .end local v3    # "totalRead":I
    .end local v4    # "wasFull":Z
    :cond_37
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V

    goto :goto_1c

    .line 49
    :catchall_3b
    move-exception v5

    monitor-exit p0
    :try_end_3d
    .catchall {:try_start_1c .. :try_end_3d} :catchall_3b

    throw v5

    .line 57
    .restart local v0    # "bufferLength":I
    .restart local v3    # "totalRead":I
    .restart local v4    # "wasFull":Z
    :cond_3e
    :try_start_3e
    iget v5, p0, Lhecticman/jsterm/emulatorview/ByteQueue;->mHead:I

    sub-int v5, v0, v5

    iget v6, p0, Lhecticman/jsterm/emulatorview/ByteQueue;->mStoredBytes:I

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 58
    .local v2, "oneRun":I
    invoke-static {p3, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 59
    .local v1, "bytesToCopy":I
    iget-object v5, p0, Lhecticman/jsterm/emulatorview/ByteQueue;->mBuffer:[B

    iget v6, p0, Lhecticman/jsterm/emulatorview/ByteQueue;->mHead:I

    invoke-static {v5, v6, p1, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 60
    iget v5, p0, Lhecticman/jsterm/emulatorview/ByteQueue;->mHead:I

    add-int/2addr v5, v1

    iput v5, p0, Lhecticman/jsterm/emulatorview/ByteQueue;->mHead:I

    .line 61
    iget v5, p0, Lhecticman/jsterm/emulatorview/ByteQueue;->mHead:I

    if-lt v5, v0, :cond_5f

    .line 62
    const/4 v5, 0x0

    iput v5, p0, Lhecticman/jsterm/emulatorview/ByteQueue;->mHead:I

    .line 64
    :cond_5f
    iget v5, p0, Lhecticman/jsterm/emulatorview/ByteQueue;->mStoredBytes:I

    sub-int/2addr v5, v1

    iput v5, p0, Lhecticman/jsterm/emulatorview/ByteQueue;->mStoredBytes:I
    :try_end_64
    .catchall {:try_start_3e .. :try_end_64} :catchall_3b

    .line 65
    sub-int/2addr p3, v1

    .line 66
    add-int/2addr p2, v1

    .line 67
    add-int/2addr v3, v1

    goto :goto_29
.end method

.method public write([BII)V
    .registers 11
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 78
    add-int v5, p3, p2

    array-length v6, p1

    if-le v5, v6, :cond_d

    .line 80
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "length + offset > buffer.length"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 79
    throw v5

    .line 82
    :cond_d
    if-gez p3, :cond_17

    .line 84
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "length < 0"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 83
    throw v5

    .line 87
    :cond_17
    if-nez p3, :cond_1a

    .line 116
    :goto_19
    return-void

    .line 90
    :cond_1a
    monitor-enter p0

    .line 91
    :try_start_1b
    iget-object v5, p0, Lhecticman/jsterm/emulatorview/ByteQueue;->mBuffer:[B

    array-length v0, v5

    .line 92
    .local v0, "bufferLength":I
    iget v5, p0, Lhecticman/jsterm/emulatorview/ByteQueue;->mStoredBytes:I

    if-nez v5, :cond_2f

    const/4 v4, 0x1

    .line 93
    .local v4, "wasEmpty":Z
    :goto_23
    if-gtz p3, :cond_34

    .line 112
    if-eqz v4, :cond_2a

    .line 113
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 90
    :cond_2a
    monitor-exit p0

    goto :goto_19

    .end local v0    # "bufferLength":I
    .end local v4    # "wasEmpty":Z
    :catchall_2c
    move-exception v5

    monitor-exit p0
    :try_end_2e
    .catchall {:try_start_1b .. :try_end_2e} :catchall_2c

    throw v5

    .line 92
    .restart local v0    # "bufferLength":I
    :cond_2f
    const/4 v4, 0x0

    goto :goto_23

    .line 95
    .restart local v4    # "wasEmpty":Z
    :cond_31
    :try_start_31
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V

    .line 94
    :cond_34
    iget v5, p0, Lhecticman/jsterm/emulatorview/ByteQueue;->mStoredBytes:I

    if-eq v0, v5, :cond_31

    .line 97
    iget v5, p0, Lhecticman/jsterm/emulatorview/ByteQueue;->mHead:I

    iget v6, p0, Lhecticman/jsterm/emulatorview/ByteQueue;->mStoredBytes:I

    add-int v3, v5, v6

    .line 99
    .local v3, "tail":I
    if-lt v3, v0, :cond_56

    .line 100
    sub-int/2addr v3, v0

    .line 101
    iget v5, p0, Lhecticman/jsterm/emulatorview/ByteQueue;->mHead:I

    sub-int v2, v5, v3

    .line 105
    .local v2, "oneRun":I
    :goto_45
    invoke-static {v2, p3}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 107
    .local v1, "bytesToCopy":I
    iget-object v5, p0, Lhecticman/jsterm/emulatorview/ByteQueue;->mBuffer:[B

    invoke-static {p1, p2, v5, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 108
    add-int/2addr p2, v1

    .line 109
    iget v5, p0, Lhecticman/jsterm/emulatorview/ByteQueue;->mStoredBytes:I

    add-int/2addr v5, v1

    iput v5, p0, Lhecticman/jsterm/emulatorview/ByteQueue;->mStoredBytes:I
    :try_end_54
    .catchall {:try_start_31 .. :try_end_54} :catchall_2c

    .line 110
    sub-int/2addr p3, v1

    goto :goto_23

    .line 103
    .end local v1    # "bytesToCopy":I
    .end local v2    # "oneRun":I
    :cond_56
    sub-int v2, v0, v3

    .restart local v2    # "oneRun":I
    goto :goto_45
.end method
