/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  com.google.android.exoplayer.upstream.Allocation
 */
package com.google.android.exoplayer.upstream;

import com.google.android.exoplayer.upstream.Allocation;
import com.google.android.exoplayer.upstream.Allocator;
import com.google.android.exoplayer.util.Assertions;
import com.google.android.exoplayer.util.Util;
import java.util.Arrays;

public final class DefaultAllocator
implements Allocator {
    private static final int AVAILABLE_EXTRA_CAPACITY = 100;
    private int allocatedCount;
    private Allocation[] availableAllocations;
    private int availableCount;
    private final int individualAllocationSize;
    private final byte[] initialAllocationBlock;

    public DefaultAllocator(int n2) {
        this(n2, 0);
    }

    /*
     * Enabled aggressive block sorting
     */
    public DefaultAllocator(int n2, int n3) {
        boolean bl = true;
        boolean bl2 = n2 > 0;
        Assertions.checkArgument(bl2);
        bl2 = n3 >= 0 ? bl : false;
        Assertions.checkArgument(bl2);
        this.individualAllocationSize = n2;
        this.availableCount = n3;
        this.availableAllocations = new Allocation[n3 + 100];
        if (n3 <= 0) {
            this.initialAllocationBlock = null;
            return;
        }
        this.initialAllocationBlock = new byte[n3 * n2];
        int n4 = 0;
        while (n4 < n3) {
            this.availableAllocations[n4] = new Allocation(this.initialAllocationBlock, n4 * n2);
            ++n4;
        }
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    @Override
    public Allocation allocate() {
        synchronized (this) {
            int n2;
            ++this.allocatedCount;
            if (this.availableCount <= 0) return new Allocation(new byte[this.individualAllocationSize], 0);
            Allocation allocation = this.availableAllocations;
            this.availableCount = n2 = this.availableCount - 1;
            allocation = allocation[n2];
            this.availableAllocations[this.availableCount] = null;
            return allocation;
        }
    }

    @Override
    public void blockWhileTotalBytesAllocatedExceeds(int n2) throws InterruptedException {
        synchronized (this) {
            while (this.getTotalBytesAllocated() > n2) {
                this.wait();
            }
            return;
        }
    }

    @Override
    public int getIndividualAllocationLength() {
        return this.individualAllocationSize;
    }

    @Override
    public int getTotalBytesAllocated() {
        synchronized (this) {
            int n2 = this.allocatedCount;
            int n3 = this.individualAllocationSize;
            return n2 * n3;
        }
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    @Override
    public void release(Allocation allocation) {
        synchronized (this) {
            boolean bl = allocation.data == this.initialAllocationBlock || allocation.data.length == this.individualAllocationSize;
            Assertions.checkArgument(bl);
            --this.allocatedCount;
            if (this.availableCount == this.availableAllocations.length) {
                this.availableAllocations = Arrays.copyOf(this.availableAllocations, this.availableAllocations.length * 2);
            }
            Allocation[] arrallocation = this.availableAllocations;
            int n2 = this.availableCount;
            this.availableCount = n2 + 1;
            arrallocation[n2] = allocation;
            this.notifyAll();
            return;
        }
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    @Override
    public void release(Allocation[] arrallocation) {
        synchronized (this) {
            if (this.availableCount + arrallocation.length >= this.availableAllocations.length) {
                this.availableAllocations = Arrays.copyOf(this.availableAllocations, Math.max(this.availableAllocations.length * 2, this.availableCount + arrallocation.length));
            }
            int n2 = arrallocation.length;
            int n3 = 0;
            do {
                if (n3 >= n2) {
                    this.allocatedCount -= arrallocation.length;
                    this.notifyAll();
                    return;
                }
                Allocation allocation = arrallocation[n3];
                boolean bl = allocation.data == this.initialAllocationBlock || allocation.data.length == this.individualAllocationSize;
                Assertions.checkArgument(bl);
                Allocation[] arrallocation2 = this.availableAllocations;
                int n4 = this.availableCount;
                this.availableCount = n4 + 1;
                arrallocation2[n4] = allocation;
                ++n3;
            } while (true);
        }
    }

    /*
     * Unable to fully structure code
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    @Override
    public void trim(int var1_1) {
        synchronized (this) {
            var6_2 = Math.max(0, Util.ceilDivide(var1_1, this.individualAllocationSize) - this.allocatedCount);
            var1_1 = this.availableCount;
            if (var6_2 >= var1_1) ** GOTO lbl31
            var1_1 = var6_2;
            if (this.initialAllocationBlock == null) ** GOTO lbl-1000
            var1_1 = this.availableCount - 1;
            var5_3 = 0;
            while (var5_3 <= var1_1) {
                var2_4 = this.availableAllocations[var5_3];
                if (var2_4.data == this.initialAllocationBlock) {
                    ++var5_3;
                    continue;
                }
                var3_5 = this.availableAllocations[var1_1];
                if (var3_5.data != this.initialAllocationBlock) {
                    --var1_1;
                    continue;
                }
                var4_6 = this.availableAllocations;
                var7_7 = var5_3 + 1;
                var4_6[var5_3] = var3_5;
                var3_5 = this.availableAllocations;
                var5_3 = var1_1 - 1;
                var3_5[var1_1] = var2_4;
                var1_1 = var5_3;
                var5_3 = var7_7;
            }
            var1_1 = Math.max(var6_2, var5_3);
            if (var1_1 < this.availableCount) lbl-1000: // 2 sources:
            {
                Arrays.fill(this.availableAllocations, var1_1, this.availableCount, null);
                this.availableCount = var1_1;
            }
lbl31: // 4 sources:
            return;
        }
    }
}

