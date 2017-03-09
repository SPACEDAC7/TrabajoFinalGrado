/*
 * Decompiled with CFR 0_115.
 */
package com.buzzfeed.android.vcr.toolbox;

import android.support.annotation.VisibleForTesting;
import com.buzzfeed.android.vcr.toolbox.PositionCache;
import java.util.LinkedHashMap;
import java.util.Locale;
import java.util.Map;

public class DefaultPositionCache
implements PositionCache {
    private final Map<String, Long> mLruCache;
    private final int mMaxItemCount;

    public DefaultPositionCache(int n2) {
        this.mMaxItemCount = n2;
        this.mLruCache = new LinkedHashMap<String, Long>(this.mMaxItemCount, 0.7f, true){

            @Override
            protected boolean removeEldestEntry(Map.Entry<String, Long> entry) {
                if (this.size() > DefaultPositionCache.this.mMaxItemCount) {
                    return true;
                }
                return false;
            }
        };
    }

    @Override
    public void clearCache() {
        this.mLruCache.clear();
    }

    @VisibleForTesting
    int getCachedItemCount() {
        return this.mLruCache.size();
    }

    @VisibleForTesting
    int getMaxItemCount() {
        return this.mMaxItemCount;
    }

    @Override
    public long getPosition(String string2) {
        if (this.mLruCache.containsKey(string2)) {
            return this.mLruCache.get(string2);
        }
        return 0;
    }

    @Override
    public void putPosition(String string2, long l2) {
        this.mLruCache.put(string2, l2);
    }

    @Override
    public void removePosition(String string2) {
        if (this.mLruCache.containsKey(string2)) {
            this.mLruCache.remove(string2);
        }
    }

    public String toString() {
        return String.format(Locale.US, "DefaultPositionCache[maxSize=%d, itemCount=%d]", this.mMaxItemCount, this.getCachedItemCount());
    }

}

