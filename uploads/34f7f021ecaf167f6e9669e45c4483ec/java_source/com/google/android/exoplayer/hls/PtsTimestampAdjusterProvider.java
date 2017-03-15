/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.util.SparseArray
 *  com.google.android.exoplayer.extractor.ts.PtsTimestampAdjuster
 */
package com.google.android.exoplayer.hls;

import android.util.SparseArray;
import com.google.android.exoplayer.extractor.ts.PtsTimestampAdjuster;

public final class PtsTimestampAdjusterProvider {
    private final SparseArray<PtsTimestampAdjuster> ptsTimestampAdjusters = new SparseArray();

    public PtsTimestampAdjuster getAdjuster(boolean bl, int n2, long l2) {
        PtsTimestampAdjuster ptsTimestampAdjuster;
        PtsTimestampAdjuster ptsTimestampAdjuster2 = ptsTimestampAdjuster = (PtsTimestampAdjuster)this.ptsTimestampAdjusters.get(n2);
        if (bl) {
            ptsTimestampAdjuster2 = ptsTimestampAdjuster;
            if (ptsTimestampAdjuster == null) {
                ptsTimestampAdjuster2 = new PtsTimestampAdjuster(l2);
                this.ptsTimestampAdjusters.put(n2, (Object)ptsTimestampAdjuster2);
            }
        }
        if (bl || ptsTimestampAdjuster2 != null && ptsTimestampAdjuster2.isInitialized()) {
            return ptsTimestampAdjuster2;
        }
        return null;
    }

    public void reset() {
        this.ptsTimestampAdjusters.clear();
    }
}

