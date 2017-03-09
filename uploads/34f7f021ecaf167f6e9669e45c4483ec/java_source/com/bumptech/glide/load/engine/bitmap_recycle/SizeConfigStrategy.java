/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.annotation.TargetApi
 *  android.graphics.Bitmap
 *  android.graphics.Bitmap$Config
 */
package com.bumptech.glide.load.engine.bitmap_recycle;

import android.annotation.TargetApi;
import android.graphics.Bitmap;
import com.bumptech.glide.load.engine.bitmap_recycle.BaseKeyPool;
import com.bumptech.glide.load.engine.bitmap_recycle.GroupedLinkedMap;
import com.bumptech.glide.load.engine.bitmap_recycle.LruPoolStrategy;
import com.bumptech.glide.load.engine.bitmap_recycle.Poolable;
import com.bumptech.glide.util.Util;
import java.util.HashMap;
import java.util.Map;
import java.util.NavigableMap;
import java.util.Set;
import java.util.TreeMap;

@TargetApi(value=19)
public class SizeConfigStrategy
implements LruPoolStrategy {
    private static final Bitmap.Config[] ALPHA_8_IN_CONFIGS;
    private static final Bitmap.Config[] ARGB_4444_IN_CONFIGS;
    private static final Bitmap.Config[] ARGB_8888_IN_CONFIGS;
    private static final int MAX_SIZE_MULTIPLE = 8;
    private static final Bitmap.Config[] RGB_565_IN_CONFIGS;
    private final GroupedLinkedMap<Key, Bitmap> groupedMap = new GroupedLinkedMap();
    private final KeyPool keyPool = new KeyPool();
    private final Map<Bitmap.Config, NavigableMap<Integer, Integer>> sortedSizes = new HashMap<Bitmap.Config, NavigableMap<Integer, Integer>>();

    static {
        ARGB_8888_IN_CONFIGS = new Bitmap.Config[]{Bitmap.Config.ARGB_8888, null};
        RGB_565_IN_CONFIGS = new Bitmap.Config[]{Bitmap.Config.RGB_565};
        ARGB_4444_IN_CONFIGS = new Bitmap.Config[]{Bitmap.Config.ARGB_4444};
        ALPHA_8_IN_CONFIGS = new Bitmap.Config[]{Bitmap.Config.ALPHA_8};
    }

    private void decrementBitmapOfSize(Integer n2, Bitmap.Config object) {
        Integer n3 = (Integer)(object = this.getSizesForConfig((Bitmap.Config)object)).get(n2);
        if (n3 == 1) {
            object.remove(n2);
            return;
        }
        object.put(n2, n3 - 1);
    }

    /*
     * Enabled aggressive block sorting
     */
    private Key findBestKey(Key key, int n2, Bitmap.Config config) {
        Key key2 = key;
        Bitmap.Config[] arrconfig = SizeConfigStrategy.getInConfigs(config);
        int n3 = arrconfig.length;
        int n4 = 0;
        do {
            Key key3 = key2;
            if (n4 >= n3) return key3;
            Bitmap.Config config2 = arrconfig[n4];
            Integer n5 = this.getSizesForConfig(config2).ceilingKey(n2);
            if (n5 != null && n5 <= n2 * 8) {
                if (n5 == n2) {
                    if (config2 == null) {
                        key3 = key2;
                        if (config == null) return key3;
                    } else {
                        key3 = key2;
                        if (config2.equals((Object)config)) return key3;
                    }
                }
                this.keyPool.offer(key);
                return this.keyPool.get(n5, config2);
            }
            ++n4;
        } while (true);
    }

    private static String getBitmapString(int n2, Bitmap.Config config) {
        return "[" + n2 + "](" + (Object)config + ")";
    }

    private static Bitmap.Config[] getInConfigs(Bitmap.Config config) {
        switch (.$SwitchMap$android$graphics$Bitmap$Config[config.ordinal()]) {
            default: {
                return new Bitmap.Config[]{config};
            }
            case 1: {
                return ARGB_8888_IN_CONFIGS;
            }
            case 2: {
                return RGB_565_IN_CONFIGS;
            }
            case 3: {
                return ARGB_4444_IN_CONFIGS;
            }
            case 4: 
        }
        return ALPHA_8_IN_CONFIGS;
    }

    private NavigableMap<Integer, Integer> getSizesForConfig(Bitmap.Config config) {
        NavigableMap<Integer, Integer> navigableMap;
        NavigableMap<Integer, Integer> navigableMap2 = navigableMap = this.sortedSizes.get((Object)config);
        if (navigableMap == null) {
            navigableMap2 = new TreeMap<Integer, Integer>();
            this.sortedSizes.put(config, navigableMap2);
        }
        return navigableMap2;
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    public Bitmap get(int n2, int n3, Bitmap.Config object) {
        int n4 = Util.getBitmapByteSize(n2, n3, (Bitmap.Config)object);
        Bitmap bitmap = this.groupedMap.get((Key)(object = this.findBestKey(this.keyPool.get(n4, (Bitmap.Config)object), n4, (Bitmap.Config)object)));
        if (bitmap != null) {
            this.decrementBitmapOfSize(Util.getBitmapByteSize(bitmap), bitmap.getConfig());
            object = bitmap.getConfig() != null ? bitmap.getConfig() : Bitmap.Config.ARGB_8888;
            bitmap.reconfigure(n2, n3, (Bitmap.Config)object);
        }
        return bitmap;
    }

    @Override
    public int getSize(Bitmap bitmap) {
        return Util.getBitmapByteSize(bitmap);
    }

    @Override
    public String logBitmap(int n2, int n3, Bitmap.Config config) {
        return SizeConfigStrategy.getBitmapString(Util.getBitmapByteSize(n2, n3, config), config);
    }

    @Override
    public String logBitmap(Bitmap bitmap) {
        return SizeConfigStrategy.getBitmapString(Util.getBitmapByteSize(bitmap), bitmap.getConfig());
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    public void put(Bitmap navigableMap) {
        int n2 = Util.getBitmapByteSize(navigableMap);
        Key key = this.keyPool.get(n2, navigableMap.getConfig());
        this.groupedMap.put(key, (Bitmap)navigableMap);
        navigableMap = this.getSizesForConfig(navigableMap.getConfig());
        Integer n3 = navigableMap.get(key.size);
        int n4 = key.size;
        n2 = n3 == null ? 1 : n3 + 1;
        navigableMap.put(n4, n2);
    }

    @Override
    public Bitmap removeLast() {
        Bitmap bitmap = this.groupedMap.removeLast();
        if (bitmap != null) {
            this.decrementBitmapOfSize(Util.getBitmapByteSize(bitmap), bitmap.getConfig());
        }
        return bitmap;
    }

    public String toString() {
        StringBuilder stringBuilder = new StringBuilder().append("SizeConfigStrategy{groupedMap=").append(this.groupedMap).append(", sortedSizes=(");
        for (Map.Entry<Bitmap.Config, NavigableMap<Integer, Integer>> entry : this.sortedSizes.entrySet()) {
            stringBuilder.append((Object)entry.getKey()).append('[').append(entry.getValue()).append("], ");
        }
        if (!this.sortedSizes.isEmpty()) {
            stringBuilder.replace(stringBuilder.length() - 2, stringBuilder.length(), "");
        }
        return stringBuilder.append(")}").toString();
    }

    static final class Key
    implements Poolable {
        private Bitmap.Config config;
        private final KeyPool pool;
        private int size;

        public Key(KeyPool keyPool) {
            this.pool = keyPool;
        }

        Key(KeyPool keyPool, int n2, Bitmap.Config config) {
            this(keyPool);
            this.init(n2, config);
        }

        /*
         * Enabled force condition propagation
         * Lifted jumps to return sites
         */
        public boolean equals(Object object) {
            boolean bl;
            boolean bl2 = bl = false;
            if (!(object instanceof Key)) return bl2;
            object = (Key)object;
            bl2 = bl;
            if (this.size != object.size) return bl2;
            if (this.config == null) {
                bl2 = bl;
                if (object.config != null) return bl2;
                do {
                    return true;
                    break;
                } while (true);
            }
            bl2 = bl;
            if (!this.config.equals((Object)object.config)) return bl2;
            return true;
        }

        /*
         * Enabled force condition propagation
         * Lifted jumps to return sites
         */
        public int hashCode() {
            int n2;
            int n3 = this.size;
            if (this.config != null) {
                n2 = this.config.hashCode();
                do {
                    return n3 * 31 + n2;
                    break;
                } while (true);
            }
            n2 = 0;
            return n3 * 31 + n2;
        }

        public void init(int n2, Bitmap.Config config) {
            this.size = n2;
            this.config = config;
        }

        @Override
        public void offer() {
            this.pool.offer(this);
        }

        public String toString() {
            return SizeConfigStrategy.getBitmapString(this.size, this.config);
        }
    }

    static class KeyPool
    extends BaseKeyPool<Key> {
        KeyPool() {
        }

        @Override
        protected Key create() {
            return new Key(this);
        }

        public Key get(int n2, Bitmap.Config config) {
            Key key = (Key)this.get();
            key.init(n2, config);
            return key;
        }
    }

}

