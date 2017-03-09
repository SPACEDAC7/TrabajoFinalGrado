/*
 * Decompiled with CFR 0_115.
 */
package com.bumptech.glide.load.engine.prefill;

import com.bumptech.glide.load.engine.prefill.PreFillType;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.Map;
import java.util.Set;

final class PreFillQueue {
    private final Map<PreFillType, Integer> bitmapsPerType;
    private int bitmapsRemaining;
    private int keyIndex;
    private final List<PreFillType> keyList;

    public PreFillQueue(Map<PreFillType, Integer> object) {
        this.bitmapsPerType = object;
        this.keyList = new ArrayList<PreFillType>(object.keySet());
        for (Integer n2 : object.values()) {
            this.bitmapsRemaining += n2.intValue();
        }
    }

    public int getSize() {
        return this.bitmapsRemaining;
    }

    public boolean isEmpty() {
        if (this.bitmapsRemaining == 0) {
            return true;
        }
        return false;
    }

    /*
     * Enabled aggressive block sorting
     */
    public PreFillType remove() {
        PreFillType preFillType = this.keyList.get(this.keyIndex);
        Integer n2 = this.bitmapsPerType.get(preFillType);
        if (n2 == 1) {
            this.bitmapsPerType.remove(preFillType);
            this.keyList.remove(this.keyIndex);
        } else {
            this.bitmapsPerType.put(preFillType, n2 - 1);
        }
        --this.bitmapsRemaining;
        int n3 = this.keyList.isEmpty() ? 0 : (this.keyIndex + 1) % this.keyList.size();
        this.keyIndex = n3;
        return preFillType;
    }
}

