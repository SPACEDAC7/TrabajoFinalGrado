.class public final Lcom/google/android/exoplayer/upstream/DefaultAllocator;
.super Ljava/lang/Object;
.source "DefaultAllocator.java"

# interfaces
.implements Lcom/google/android/exoplayer/upstream/Allocator;


# static fields
.field private static final AVAILABLE_EXTRA_CAPACITY:I = 0x64


# instance fields
.field private allocatedCount:I

.field private availableAllocations:[Lcom/google/android/exoplayer/upstream/Allocation;

.field private availableCount:I

.field private final individualAllocationSize:I

.field private final initialAllocationBlock:[B


# direct methods
.method public constructor <init>(I)V
    .registers 3
    .param p1, "individualAllocationSize"    # I

    .prologue
    .line 42
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/exoplayer/upstream/DefaultAllocator;-><init>(II)V

    .line 43
    return-void
.end method

.method public constructor <init>(II)V
    .registers 8
    .param p1, "individualAllocationSize"    # I
    .param p2, "initialAllocationCount"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    if-lez p1, :cond_35

    move v2, v3

    :goto_8
    invoke-static {v2}, Lcom/google/android/exoplayer/util/Assertions;->checkArgument(Z)V

    .line 55
    if-ltz p2, :cond_37

    :goto_d
    invoke-static {v3}, Lcom/google/android/exoplayer/util/Assertions;->checkArgument(Z)V

    .line 56
    iput p1, p0, Lcom/google/android/exoplayer/upstream/DefaultAllocator;->individualAllocationSize:I

    .line 57
    iput p2, p0, Lcom/google/android/exoplayer/upstream/DefaultAllocator;->availableCount:I

    .line 58
    add-int/lit8 v2, p2, 0x64

    new-array v2, v2, [Lcom/google/android/exoplayer/upstream/Allocation;

    iput-object v2, p0, Lcom/google/android/exoplayer/upstream/DefaultAllocator;->availableAllocations:[Lcom/google/android/exoplayer/upstream/Allocation;

    .line 59
    if-lez p2, :cond_39

    .line 60
    mul-int v2, p2, p1

    new-array v2, v2, [B

    iput-object v2, p0, Lcom/google/android/exoplayer/upstream/DefaultAllocator;->initialAllocationBlock:[B

    .line 61
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_23
    if-ge v1, p2, :cond_3c

    .line 62
    mul-int v0, v1, p1

    .line 63
    .local v0, "allocationOffset":I
    iget-object v2, p0, Lcom/google/android/exoplayer/upstream/DefaultAllocator;->availableAllocations:[Lcom/google/android/exoplayer/upstream/Allocation;

    new-instance v3, Lcom/google/android/exoplayer/upstream/Allocation;

    iget-object v4, p0, Lcom/google/android/exoplayer/upstream/DefaultAllocator;->initialAllocationBlock:[B

    invoke-direct {v3, v4, v0}, Lcom/google/android/exoplayer/upstream/Allocation;-><init>([BI)V

    aput-object v3, v2, v1

    .line 61
    add-int/lit8 v1, v1, 0x1

    goto :goto_23

    .end local v0    # "allocationOffset":I
    .end local v1    # "i":I
    :cond_35
    move v2, v4

    .line 54
    goto :goto_8

    :cond_37
    move v3, v4

    .line 55
    goto :goto_d

    .line 66
    :cond_39
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/google/android/exoplayer/upstream/DefaultAllocator;->initialAllocationBlock:[B

    .line 68
    :cond_3c
    return-void
.end method


# virtual methods
.method public declared-synchronized allocate()Lcom/google/android/exoplayer/upstream/Allocation;
    .registers 5

    .prologue
    .line 72
    monitor-enter p0

    :try_start_1
    iget v1, p0, Lcom/google/android/exoplayer/upstream/DefaultAllocator;->allocatedCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/android/exoplayer/upstream/DefaultAllocator;->allocatedCount:I

    .line 74
    iget v1, p0, Lcom/google/android/exoplayer/upstream/DefaultAllocator;->availableCount:I

    if-lez v1, :cond_1e

    .line 75
    iget-object v1, p0, Lcom/google/android/exoplayer/upstream/DefaultAllocator;->availableAllocations:[Lcom/google/android/exoplayer/upstream/Allocation;

    iget v2, p0, Lcom/google/android/exoplayer/upstream/DefaultAllocator;->availableCount:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/google/android/exoplayer/upstream/DefaultAllocator;->availableCount:I

    aget-object v0, v1, v2

    .line 76
    .local v0, "allocation":Lcom/google/android/exoplayer/upstream/Allocation;
    iget-object v1, p0, Lcom/google/android/exoplayer/upstream/DefaultAllocator;->availableAllocations:[Lcom/google/android/exoplayer/upstream/Allocation;

    iget v2, p0, Lcom/google/android/exoplayer/upstream/DefaultAllocator;->availableCount:I

    const/4 v3, 0x0

    aput-object v3, v1, v2
    :try_end_1c
    .catchall {:try_start_1 .. :try_end_1c} :catchall_29

    .line 80
    :goto_1c
    monitor-exit p0

    return-object v0

    .line 78
    .end local v0    # "allocation":Lcom/google/android/exoplayer/upstream/Allocation;
    :cond_1e
    :try_start_1e
    new-instance v0, Lcom/google/android/exoplayer/upstream/Allocation;

    iget v1, p0, Lcom/google/android/exoplayer/upstream/DefaultAllocator;->individualAllocationSize:I

    new-array v1, v1, [B

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/exoplayer/upstream/Allocation;-><init>([BI)V
    :try_end_28
    .catchall {:try_start_1e .. :try_end_28} :catchall_29

    .restart local v0    # "allocation":Lcom/google/android/exoplayer/upstream/Allocation;
    goto :goto_1c

    .line 72
    .end local v0    # "allocation":Lcom/google/android/exoplayer/upstream/Allocation;
    :catchall_29
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized blockWhileTotalBytesAllocatedExceeds(I)V
    .registers 3
    .param p1, "limit"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 166
    monitor-enter p0

    :goto_1
    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/exoplayer/upstream/DefaultAllocator;->getTotalBytesAllocated()I

    move-result v0

    if-le v0, p1, :cond_e

    .line 167
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_b

    goto :goto_1

    .line 166
    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0

    .line 169
    :cond_e
    monitor-exit p0

    return-void
.end method

.method public getIndividualAllocationLength()I
    .registers 2

    .prologue
    .line 173
    iget v0, p0, Lcom/google/android/exoplayer/upstream/DefaultAllocator;->individualAllocationSize:I

    return v0
.end method

.method public declared-synchronized getTotalBytesAllocated()I
    .registers 3

    .prologue
    .line 160
    monitor-enter p0

    :try_start_1
    iget v0, p0, Lcom/google/android/exoplayer/upstream/DefaultAllocator;->allocatedCount:I

    iget v1, p0, Lcom/google/android/exoplayer/upstream/DefaultAllocator;->individualAllocationSize:I
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_8

    mul-int/2addr v0, v1

    monitor-exit p0

    return v0

    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized release(Lcom/google/android/exoplayer/upstream/Allocation;)V
    .registers 5
    .param p1, "allocation"    # Lcom/google/android/exoplayer/upstream/Allocation;

    .prologue
    .line 86
    monitor-enter p0

    :try_start_1
    iget-object v0, p1, Lcom/google/android/exoplayer/upstream/Allocation;->data:[B

    iget-object v1, p0, Lcom/google/android/exoplayer/upstream/DefaultAllocator;->initialAllocationBlock:[B

    if-eq v0, v1, :cond_e

    iget-object v0, p1, Lcom/google/android/exoplayer/upstream/Allocation;->data:[B

    array-length v0, v0

    iget v1, p0, Lcom/google/android/exoplayer/upstream/DefaultAllocator;->individualAllocationSize:I

    if-ne v0, v1, :cond_3d

    :cond_e
    const/4 v0, 0x1

    :goto_f
    invoke-static {v0}, Lcom/google/android/exoplayer/util/Assertions;->checkArgument(Z)V

    .line 88
    iget v0, p0, Lcom/google/android/exoplayer/upstream/DefaultAllocator;->allocatedCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/android/exoplayer/upstream/DefaultAllocator;->allocatedCount:I

    .line 89
    iget v0, p0, Lcom/google/android/exoplayer/upstream/DefaultAllocator;->availableCount:I

    iget-object v1, p0, Lcom/google/android/exoplayer/upstream/DefaultAllocator;->availableAllocations:[Lcom/google/android/exoplayer/upstream/Allocation;

    array-length v1, v1

    if-ne v0, v1, :cond_2e

    .line 90
    iget-object v0, p0, Lcom/google/android/exoplayer/upstream/DefaultAllocator;->availableAllocations:[Lcom/google/android/exoplayer/upstream/Allocation;

    iget-object v1, p0, Lcom/google/android/exoplayer/upstream/DefaultAllocator;->availableAllocations:[Lcom/google/android/exoplayer/upstream/Allocation;

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/exoplayer/upstream/Allocation;

    iput-object v0, p0, Lcom/google/android/exoplayer/upstream/DefaultAllocator;->availableAllocations:[Lcom/google/android/exoplayer/upstream/Allocation;

    .line 92
    :cond_2e
    iget-object v0, p0, Lcom/google/android/exoplayer/upstream/DefaultAllocator;->availableAllocations:[Lcom/google/android/exoplayer/upstream/Allocation;

    iget v1, p0, Lcom/google/android/exoplayer/upstream/DefaultAllocator;->availableCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/exoplayer/upstream/DefaultAllocator;->availableCount:I

    aput-object p1, v0, v1

    .line 94
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_3b
    .catchall {:try_start_1 .. :try_end_3b} :catchall_3f

    .line 95
    monitor-exit p0

    return-void

    .line 86
    :cond_3d
    const/4 v0, 0x0

    goto :goto_f

    :catchall_3f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized release([Lcom/google/android/exoplayer/upstream/Allocation;)V
    .registers 9
    .param p1, "allocations"    # [Lcom/google/android/exoplayer/upstream/Allocation;

    .prologue
    const/4 v2, 0x0

    .line 99
    monitor-enter p0

    :try_start_2
    iget v1, p0, Lcom/google/android/exoplayer/upstream/DefaultAllocator;->availableCount:I

    array-length v3, p1

    add-int/2addr v1, v3

    iget-object v3, p0, Lcom/google/android/exoplayer/upstream/DefaultAllocator;->availableAllocations:[Lcom/google/android/exoplayer/upstream/Allocation;

    array-length v3, v3

    if-lt v1, v3, :cond_22

    .line 100
    iget-object v1, p0, Lcom/google/android/exoplayer/upstream/DefaultAllocator;->availableAllocations:[Lcom/google/android/exoplayer/upstream/Allocation;

    iget-object v3, p0, Lcom/google/android/exoplayer/upstream/DefaultAllocator;->availableAllocations:[Lcom/google/android/exoplayer/upstream/Allocation;

    array-length v3, v3

    mul-int/lit8 v3, v3, 0x2

    iget v4, p0, Lcom/google/android/exoplayer/upstream/DefaultAllocator;->availableCount:I

    array-length v5, p1

    add-int/2addr v4, v5

    .line 101
    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 100
    invoke-static {v1, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/google/android/exoplayer/upstream/Allocation;

    iput-object v1, p0, Lcom/google/android/exoplayer/upstream/DefaultAllocator;->availableAllocations:[Lcom/google/android/exoplayer/upstream/Allocation;

    .line 105
    :cond_22
    array-length v4, p1

    move v3, v2

    :goto_24
    if-ge v3, v4, :cond_49

    aget-object v0, p1, v3

    .line 107
    .local v0, "allocation":Lcom/google/android/exoplayer/upstream/Allocation;
    iget-object v1, v0, Lcom/google/android/exoplayer/upstream/Allocation;->data:[B

    iget-object v5, p0, Lcom/google/android/exoplayer/upstream/DefaultAllocator;->initialAllocationBlock:[B

    if-eq v1, v5, :cond_35

    iget-object v1, v0, Lcom/google/android/exoplayer/upstream/Allocation;->data:[B

    array-length v1, v1

    iget v5, p0, Lcom/google/android/exoplayer/upstream/DefaultAllocator;->individualAllocationSize:I

    if-ne v1, v5, :cond_47

    :cond_35
    const/4 v1, 0x1

    :goto_36
    invoke-static {v1}, Lcom/google/android/exoplayer/util/Assertions;->checkArgument(Z)V

    .line 109
    iget-object v1, p0, Lcom/google/android/exoplayer/upstream/DefaultAllocator;->availableAllocations:[Lcom/google/android/exoplayer/upstream/Allocation;

    iget v5, p0, Lcom/google/android/exoplayer/upstream/DefaultAllocator;->availableCount:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lcom/google/android/exoplayer/upstream/DefaultAllocator;->availableCount:I

    aput-object v0, v1, v5

    .line 105
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_24

    :cond_47
    move v1, v2

    .line 107
    goto :goto_36

    .line 111
    .end local v0    # "allocation":Lcom/google/android/exoplayer/upstream/Allocation;
    :cond_49
    iget v1, p0, Lcom/google/android/exoplayer/upstream/DefaultAllocator;->allocatedCount:I

    array-length v2, p1

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/google/android/exoplayer/upstream/DefaultAllocator;->allocatedCount:I

    .line 113
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_52
    .catchall {:try_start_2 .. :try_end_52} :catchall_54

    .line 114
    monitor-exit p0

    return-void

    .line 99
    :catchall_54
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized trim(I)V
    .registers 13
    .param p1, "targetSize"    # I

    .prologue
    .line 118
    monitor-enter p0

    :try_start_1
    iget v8, p0, Lcom/google/android/exoplayer/upstream/DefaultAllocator;->individualAllocationSize:I

    invoke-static {p1, v8}, Lcom/google/android/exoplayer/util/Util;->ceilDivide(II)I

    move-result v6

    .line 119
    .local v6, "targetAllocationCount":I
    const/4 v8, 0x0

    iget v9, p0, Lcom/google/android/exoplayer/upstream/DefaultAllocator;->allocatedCount:I

    sub-int v9, v6, v9

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 120
    .local v7, "targetAvailableCount":I
    iget v8, p0, Lcom/google/android/exoplayer/upstream/DefaultAllocator;->availableCount:I
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_4e

    if-lt v7, v8, :cond_16

    .line 156
    :cond_14
    :goto_14
    monitor-exit p0

    return-void

    .line 125
    :cond_16
    :try_start_16
    iget-object v8, p0, Lcom/google/android/exoplayer/upstream/DefaultAllocator;->initialAllocationBlock:[B

    if-eqz v8, :cond_59

    .line 129
    const/4 v4, 0x0

    .line 130
    .local v4, "lowIndex":I
    iget v8, p0, Lcom/google/android/exoplayer/upstream/DefaultAllocator;->availableCount:I

    add-int/lit8 v1, v8, -0x1

    .local v1, "highIndex":I
    move v2, v1

    .end local v1    # "highIndex":I
    .local v2, "highIndex":I
    move v5, v4

    .line 131
    .end local v4    # "lowIndex":I
    .local v5, "lowIndex":I
    :goto_21
    if-gt v5, v2, :cond_51

    .line 132
    iget-object v8, p0, Lcom/google/android/exoplayer/upstream/DefaultAllocator;->availableAllocations:[Lcom/google/android/exoplayer/upstream/Allocation;

    aget-object v3, v8, v5

    .line 133
    .local v3, "lowAllocation":Lcom/google/android/exoplayer/upstream/Allocation;
    iget-object v8, v3, Lcom/google/android/exoplayer/upstream/Allocation;->data:[B

    iget-object v9, p0, Lcom/google/android/exoplayer/upstream/DefaultAllocator;->initialAllocationBlock:[B

    if-ne v8, v9, :cond_33

    .line 134
    add-int/lit8 v4, v5, 0x1

    .end local v5    # "lowIndex":I
    .restart local v4    # "lowIndex":I
    move v1, v2

    .end local v2    # "highIndex":I
    .restart local v1    # "highIndex":I
    :goto_30
    move v2, v1

    .end local v1    # "highIndex":I
    .restart local v2    # "highIndex":I
    move v5, v4

    .line 144
    .end local v4    # "lowIndex":I
    .restart local v5    # "lowIndex":I
    goto :goto_21

    .line 136
    :cond_33
    iget-object v8, p0, Lcom/google/android/exoplayer/upstream/DefaultAllocator;->availableAllocations:[Lcom/google/android/exoplayer/upstream/Allocation;

    aget-object v0, v8, v2

    .line 137
    .local v0, "highAllocation":Lcom/google/android/exoplayer/upstream/Allocation;
    iget-object v8, v0, Lcom/google/android/exoplayer/upstream/Allocation;->data:[B

    iget-object v9, p0, Lcom/google/android/exoplayer/upstream/DefaultAllocator;->initialAllocationBlock:[B

    if-eq v8, v9, :cond_41

    .line 138
    add-int/lit8 v1, v2, -0x1

    .end local v2    # "highIndex":I
    .restart local v1    # "highIndex":I
    move v4, v5

    .end local v5    # "lowIndex":I
    .restart local v4    # "lowIndex":I
    goto :goto_30

    .line 140
    .end local v1    # "highIndex":I
    .end local v4    # "lowIndex":I
    .restart local v2    # "highIndex":I
    .restart local v5    # "lowIndex":I
    :cond_41
    iget-object v8, p0, Lcom/google/android/exoplayer/upstream/DefaultAllocator;->availableAllocations:[Lcom/google/android/exoplayer/upstream/Allocation;

    add-int/lit8 v4, v5, 0x1

    .end local v5    # "lowIndex":I
    .restart local v4    # "lowIndex":I
    aput-object v0, v8, v5

    .line 141
    iget-object v8, p0, Lcom/google/android/exoplayer/upstream/DefaultAllocator;->availableAllocations:[Lcom/google/android/exoplayer/upstream/Allocation;

    add-int/lit8 v1, v2, -0x1

    .end local v2    # "highIndex":I
    .restart local v1    # "highIndex":I
    aput-object v3, v8, v2
    :try_end_4d
    .catchall {:try_start_16 .. :try_end_4d} :catchall_4e

    goto :goto_30

    .line 118
    .end local v0    # "highAllocation":Lcom/google/android/exoplayer/upstream/Allocation;
    .end local v1    # "highIndex":I
    .end local v3    # "lowAllocation":Lcom/google/android/exoplayer/upstream/Allocation;
    .end local v4    # "lowIndex":I
    .end local v6    # "targetAllocationCount":I
    .end local v7    # "targetAvailableCount":I
    :catchall_4e
    move-exception v8

    monitor-exit p0

    throw v8

    .line 146
    .restart local v2    # "highIndex":I
    .restart local v5    # "lowIndex":I
    .restart local v6    # "targetAllocationCount":I
    .restart local v7    # "targetAvailableCount":I
    :cond_51
    :try_start_51
    invoke-static {v7, v5}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 147
    iget v8, p0, Lcom/google/android/exoplayer/upstream/DefaultAllocator;->availableCount:I

    if-ge v7, v8, :cond_14

    .line 154
    .end local v2    # "highIndex":I
    .end local v5    # "lowIndex":I
    :cond_59
    iget-object v8, p0, Lcom/google/android/exoplayer/upstream/DefaultAllocator;->availableAllocations:[Lcom/google/android/exoplayer/upstream/Allocation;

    iget v9, p0, Lcom/google/android/exoplayer/upstream/DefaultAllocator;->availableCount:I

    const/4 v10, 0x0

    invoke-static {v8, v7, v9, v10}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    .line 155
    iput v7, p0, Lcom/google/android/exoplayer/upstream/DefaultAllocator;->availableCount:I
    :try_end_63
    .catchall {:try_start_51 .. :try_end_63} :catchall_4e

    goto :goto_14
.end method
