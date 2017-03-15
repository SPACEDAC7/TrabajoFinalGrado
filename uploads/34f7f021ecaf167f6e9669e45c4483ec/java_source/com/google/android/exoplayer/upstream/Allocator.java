/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  com.google.android.exoplayer.upstream.Allocation
 */
package com.google.android.exoplayer.upstream;

import com.google.android.exoplayer.upstream.Allocation;

public interface Allocator {
    public Allocation allocate();

    public void blockWhileTotalBytesAllocatedExceeds(int var1) throws InterruptedException;

    public int getIndividualAllocationLength();

    public int getTotalBytesAllocated();

    public void release(Allocation var1);

    public void release(Allocation[] var1);

    public void trim(int var1);
}

