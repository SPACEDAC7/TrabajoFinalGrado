/*
 * Decompiled with CFR 0_115.
 */
package com.buzzfeed.spicerack.ui.utils;

import com.buzzfeed.toolkit.util.LogUtil;
import java.util.Iterator;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.Set;
import java.util.TreeMap;
import java.util.concurrent.ConcurrentHashMap;

public class StringCache {
    private static final String TAG = StringCache.class.getSimpleName();
    private static ConcurrentHashMap<String, StringCache> cacheMap = new ConcurrentHashMap();
    private ConcurrentHashMap<String, String> cache = new ConcurrentHashMap();
    private long cacheItems = 0;
    private long cacheSize = 0;
    private TreeMap<Long, String> cacheTime = new TreeMap();
    private long maxItems = -1;
    private long maxSize = -1;
    private long maxTimeToLive = -1;
    private String name = null;
    private final Object syncObject = new Object();

    private StringCache() {
    }

    private Long getCacheTimeKeyFromValue(String string2) {
        Map.Entry<Long, String> entry = null;
        Object object = null;
        if (this.cacheTime.containsValue(string2)) {
            Iterator<Map.Entry<Long, String>> iterator = this.cacheTime.entrySet().iterator();
            do {
                entry = object;
                if (!iterator.hasNext()) break;
                entry = iterator.next();
                if (!entry.getValue().equals(string2)) continue;
                object = entry.getKey();
            } while (true);
        }
        return entry;
    }

    public static StringCache getInstance(String string2) {
        String string3 = TAG + ".getInstance";
        if (cacheMap.get(string2) != null) {
            return cacheMap.get(string2);
        }
        StringCache stringCache = new StringCache();
        stringCache.setName(string2);
        cacheMap.put(string2, stringCache);
        LogUtil.d(string3, "Added new cache: " + string2);
        return stringCache;
    }

    private void logStats() {
        String string2 = TAG + ".logStats";
        LogUtil.d(string2, "Cache items: " + this.cacheItems);
        LogUtil.d(string2, "Cache size: " + this.cacheSize / 1000 + " KB");
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    private void reduceTimeToLive() {
        String string2 = TAG + ".reduceTimeToLive";
        Object object = this.syncObject;
        synchronized (object) {
            Long l2 = System.currentTimeMillis();
            try {
                while (this.maxTimeToLive >= 0 && l2 - this.cacheTime.firstKey() > this.maxTimeToLive) {
                    LogUtil.d(string2, "Max cache time-to-live exceeded, reducing: " + (l2 - this.cacheTime.firstKey()) + " > " + this.maxTimeToLive + " (max)");
                    this.removeOldest();
                }
            }
            catch (NoSuchElementException var2_2) {
                // empty catch block
            }
            return;
        }
    }

    private void removeOldest() {
        String string2 = TAG + ".removeOldest";
        Long l2 = this.cacheTime.firstKey();
        String string3 = this.cacheTime.get(l2);
        --this.cacheItems;
        this.cacheSize -= (long)this.cache.get(string3).getBytes().length;
        this.cache.remove(string3);
        this.cacheTime.remove(l2);
        LogUtil.d(string2, "Removed oldest cache item: " + string3);
    }

    private void setName(String string2) {
        this.name = string2;
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    public void clear() {
        String string2 = TAG + ".clear";
        Object object = this.syncObject;
        synchronized (object) {
            this.cache.clear();
            this.cacheTime.clear();
            this.cacheItems = 0;
            this.cacheSize = 0;
        }
        LogUtil.d(string2, "Cleared cache: " + this.name);
    }

    public boolean containsKey(String string2) {
        this.reduceTimeToLive();
        return this.cache.containsKey(string2);
    }

    public String get(String string2) {
        this.reduceTimeToLive();
        return this.cache.get(string2);
    }

    public long getItems() {
        this.reduceTimeToLive();
        return this.cacheItems;
    }

    public long getMaxItems() {
        return this.maxItems;
    }

    public long getMaxSize() {
        return this.maxSize;
    }

    public long getMaxTimeToLive() {
        return this.maxTimeToLive;
    }

    public String getName() {
        return this.name;
    }

    public long getSize() {
        this.reduceTimeToLive();
        return this.cacheSize;
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    public void put(String string2, String string3) {
        String string4 = TAG + ".put";
        Object object = this.syncObject;
        synchronized (object) {
            if (this.cache.get(string2) != null) {
                this.cacheSize -= (long)this.cache.get(string2).getBytes().length;
                this.cache.put(string2, string3);
                Long l2 = this.getCacheTimeKeyFromValue(string2);
                if (l2 != null) {
                    this.cacheTime.remove(l2);
                }
                l2 = System.currentTimeMillis();
                while (this.cacheTime.containsKey(l2)) {
                    l2 = System.currentTimeMillis();
                }
                this.cacheTime.put(l2, string2);
                this.cacheSize += (long)string3.getBytes().length;
                LogUtil.d(string4, "Replacing cache item: " + string2);
            } else {
                this.cache.put(string2, string3);
                Long l3 = System.currentTimeMillis();
                while (this.cacheTime.containsKey(l3)) {
                    l3 = System.currentTimeMillis();
                }
                this.cacheTime.put(l3, string2);
                ++this.cacheItems;
                this.cacheSize += (long)string3.getBytes().length;
                LogUtil.d(string4, "Added cache item: " + string2);
            }
        }
        this.reduce();
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    public void reduce() {
        String string2 = TAG + ".reduce";
        Object object = this.syncObject;
        synchronized (object) {
            while (this.maxItems >= 0 && this.cacheItems > this.maxItems) {
                LogUtil.d(string2, "Max cache items exceeded, reducing: " + this.cacheItems + " > " + this.maxItems + " (max)");
                this.removeOldest();
            }
            while (this.maxSize >= 0 && this.cacheSize > this.maxSize) {
                LogUtil.d(string2, "Max cache size exceeded, reducing: " + this.cacheSize + " > " + this.maxSize + " (max)");
                this.removeOldest();
            }
        }
        this.reduceTimeToLive();
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    public void remove(String string2) {
        String string3 = TAG + ".remove";
        Object object = this.syncObject;
        synchronized (object) {
            --this.cacheItems;
            this.cacheSize -= (long)this.cache.get(string2).getBytes().length;
            this.cache.remove(string2);
            Long l2 = this.getCacheTimeKeyFromValue(string2);
            if (l2 != null) {
                this.cacheTime.remove(l2);
            }
        }
        LogUtil.d(string3, "Removed cache item: " + string2);
    }

    public StringCache setMaxItems(long l2) {
        this.maxItems = l2;
        return this;
    }

    public StringCache setMaxSize(long l2) {
        this.maxSize = l2;
        return this;
    }

    public StringCache setMaxTimeToLive(long l2) {
        this.maxTimeToLive = l2;
        return this;
    }
}

