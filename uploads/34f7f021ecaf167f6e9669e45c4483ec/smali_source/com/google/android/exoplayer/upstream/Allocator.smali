.class public interface abstract Lcom/google/android/exoplayer/upstream/Allocator;
.super Ljava/lang/Object;
.source "Allocator.java"


# virtual methods
.method public abstract allocate()Lcom/google/android/exoplayer/upstream/Allocation;
.end method

.method public abstract blockWhileTotalBytesAllocatedExceeds(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation
.end method

.method public abstract getIndividualAllocationLength()I
.end method

.method public abstract getTotalBytesAllocated()I
.end method

.method public abstract release(Lcom/google/android/exoplayer/upstream/Allocation;)V
.end method

.method public abstract release([Lcom/google/android/exoplayer/upstream/Allocation;)V
.end method

.method public abstract trim(I)V
.end method
