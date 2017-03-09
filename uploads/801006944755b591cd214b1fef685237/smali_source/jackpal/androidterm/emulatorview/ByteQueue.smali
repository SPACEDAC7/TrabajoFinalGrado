.class Ljackpal/androidterm/emulatorview/ByteQueue;
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

    iput-object v0, p0, Ljackpal/androidterm/emulatorview/ByteQueue;->mBuffer:[B

    .line 27
    return-void
.end method


# virtual methods
.method public getBytesAvailable()I
    .registers 2

    .prologue
    .line 30
    monitor-enter p0

    .line 31
    :try_start_1
    iget v0, p0, Ljackpal/androidterm/emulatorview/ByteQueue;->mStoredBytes:I

    monitor-exit p0

    return v0

    .line 32
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

    .line 38
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "length + offset > buffer.length"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 41
    :cond_e
    if-gez p3, :cond_18

    .line 42
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "length < 0"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

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
    iget v5, p0, Ljackpal/androidterm/emulatorview/ByteQueue;->mStoredBytes:I

    if-nez v5, :cond_27

    .line 51
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V

    goto :goto_1c

    .line 73
    :catchall_24
    move-exception v5

    monitor-exit p0
    :try_end_26
    .catchall {:try_start_1c .. :try_end_26} :catchall_24

    throw v5

    .line 53
    :cond_27
    const/4 v3, 0x0

    .line 54
    .local v3, "totalRead":I
    :try_start_28
    iget-object v5, p0, Ljackpal/androidterm/emulatorview/ByteQueue;->mBuffer:[B

    array-length v0, v5

    .line 55
    .local v0, "bufferLength":I
    iget v5, p0, Ljackpal/androidterm/emulatorview/ByteQueue;->mStoredBytes:I

    if-ne v0, v5, :cond_30

    const/4 v4, 0x1

    .line 56
    .local v4, "wasFull":Z
    :cond_30
    :goto_30
    if-lez p3, :cond_60

    iget v5, p0, Ljackpal/androidterm/emulatorview/ByteQueue;->mStoredBytes:I

    if-lez v5, :cond_60

    .line 57
    iget v5, p0, Ljackpal/androidterm/emulatorview/ByteQueue;->mHead:I

    sub-int v5, v0, v5

    iget v6, p0, Ljackpal/androidterm/emulatorview/ByteQueue;->mStoredBytes:I

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 58
    .local v2, "oneRun":I
    invoke-static {p3, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 59
    .local v1, "bytesToCopy":I
    iget-object v5, p0, Ljackpal/androidterm/emulatorview/ByteQueue;->mBuffer:[B

    iget v6, p0, Ljackpal/androidterm/emulatorview/ByteQueue;->mHead:I

    invoke-static {v5, v6, p1, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 60
    iget v5, p0, Ljackpal/androidterm/emulatorview/ByteQueue;->mHead:I

    add-int/2addr v5, v1

    iput v5, p0, Ljackpal/androidterm/emulatorview/ByteQueue;->mHead:I

    .line 61
    iget v5, p0, Ljackpal/androidterm/emulatorview/ByteQueue;->mHead:I

    if-lt v5, v0, :cond_57

    .line 62
    const/4 v5, 0x0

    iput v5, p0, Ljackpal/androidterm/emulatorview/ByteQueue;->mHead:I

    .line 64
    :cond_57
    iget v5, p0, Ljackpal/androidterm/emulatorview/ByteQueue;->mStoredBytes:I

    sub-int/2addr v5, v1

    iput v5, p0, Ljackpal/androidterm/emulatorview/ByteQueue;->mStoredBytes:I

    .line 65
    sub-int/2addr p3, v1

    .line 66
    add-int/2addr p2, v1

    .line 67
    add-int/2addr v3, v1

    .line 68
    goto :goto_30

    .line 69
    .end local v1    # "bytesToCopy":I
    .end local v2    # "oneRun":I
    :cond_60
    if-eqz v4, :cond_65

    .line 70
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 72
    :cond_65
    monitor-exit p0
    :try_end_66
    .catchall {:try_start_28 .. :try_end_66} :catchall_24

    move v4, v3

    goto :goto_1a
.end method

.method public write([BII)I
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

    .line 84
    add-int v5, p3, p2

    array-length v6, p1

    if-le v5, v6, :cond_e

    .line 85
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "length + offset > buffer.length"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 88
    :cond_e
    if-gez p3, :cond_18

    .line 89
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "length < 0"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 93
    :cond_18
    if-nez p3, :cond_1b

    .line 117
    :goto_1a
    return v4

    .line 96
    :cond_1b
    monitor-enter p0

    .line 97
    :try_start_1c
    iget-object v5, p0, Ljackpal/androidterm/emulatorview/ByteQueue;->mBuffer:[B

    array-length v0, v5

    .line 98
    .local v0, "bufferLength":I
    iget v5, p0, Ljackpal/androidterm/emulatorview/ByteQueue;->mStoredBytes:I

    if-nez v5, :cond_24

    const/4 v4, 0x1

    .line 99
    .local v4, "wasEmpty":Z
    :cond_24
    :goto_24
    iget v5, p0, Ljackpal/androidterm/emulatorview/ByteQueue;->mStoredBytes:I

    if-ne v0, v5, :cond_2f

    .line 100
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V

    goto :goto_24

    .line 118
    .end local v0    # "bufferLength":I
    .end local v4    # "wasEmpty":Z
    :catchall_2c
    move-exception v5

    monitor-exit p0
    :try_end_2e
    .catchall {:try_start_1c .. :try_end_2e} :catchall_2c

    throw v5

    .line 102
    .restart local v0    # "bufferLength":I
    .restart local v4    # "wasEmpty":Z
    :cond_2f
    :try_start_2f
    iget v5, p0, Ljackpal/androidterm/emulatorview/ByteQueue;->mHead:I

    iget v6, p0, Ljackpal/androidterm/emulatorview/ByteQueue;->mStoredBytes:I

    add-int v3, v5, v6

    .line 104
    .local v3, "tail":I
    if-lt v3, v0, :cond_53

    .line 105
    sub-int/2addr v3, v0

    .line 106
    iget v5, p0, Ljackpal/androidterm/emulatorview/ByteQueue;->mHead:I

    sub-int v2, v5, v3

    .line 110
    .local v2, "oneRun":I
    :goto_3c
    invoke-static {v2, p3}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 111
    .local v1, "bytesToCopy":I
    iget-object v5, p0, Ljackpal/androidterm/emulatorview/ByteQueue;->mBuffer:[B

    invoke-static {p1, p2, v5, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 112
    add-int/2addr p2, v1

    .line 113
    iget v5, p0, Ljackpal/androidterm/emulatorview/ByteQueue;->mStoredBytes:I

    add-int/2addr v5, v1

    iput v5, p0, Ljackpal/androidterm/emulatorview/ByteQueue;->mStoredBytes:I

    .line 114
    if-eqz v4, :cond_50

    .line 115
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 117
    :cond_50
    monitor-exit p0
    :try_end_51
    .catchall {:try_start_2f .. :try_end_51} :catchall_2c

    move v4, v1

    goto :goto_1a

    .line 108
    .end local v1    # "bytesToCopy":I
    .end local v2    # "oneRun":I
    :cond_53
    sub-int v2, v0, v3

    .restart local v2    # "oneRun":I
    goto :goto_3c
.end method
