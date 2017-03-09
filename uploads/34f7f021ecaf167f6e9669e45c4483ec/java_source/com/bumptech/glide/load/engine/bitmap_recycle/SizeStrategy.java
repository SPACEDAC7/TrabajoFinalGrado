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
import com.bumptech.glide.load.engine.bitmap_recycle.PrettyPrintTreeMap;
import com.bumptech.glide.util.Util;
import java.util.TreeMap;

@TargetApi(value=19)
class SizeStrategy
implements LruPoolStrategy {
    private static final int MAX_SIZE_MULTIPLE = 8;
    private final GroupedLinkedMap<Key, Bitmap> groupedMap = new GroupedLinkedMap();
    private final KeyPool keyPool = new KeyPool();
    private final TreeMap<Integer, Integer> sortedSizes = new PrettyPrintTreeMap<Integer, Integer>();

    SizeStrategy() {
    }

    private void decrementBitmapOfSize(Integer n2) {
        Integer n3 = this.sortedSizes.get(n2);
        if (n3 == 1) {
            this.sortedSizes.remove(n2);
            return;
        }
        this.sortedSizes.put(n2, n3 - 1);
    }

    private static String getBitmapString(int n2) {
        return "[" + n2 + "]";
    }

    private static String getBitmapString(Bitmap bitmap) {
        return SizeStrategy.getBitmapString(Util.getBitmapByteSize(bitmap));
    }

    @Override
    public Bitmap get(int n2, int n3, Bitmap.Config config) {
        int n4 = Util.getBitmapByteSize(n2, n3, config);
        Key key = this.keyPool.get(n4);
        Integer n5 = this.sortedSizes.ceilingKey(n4);
        Key key2 = key;
        if (n5 != null) {
            key2 = key;
            if (n5 != n4) {
                key2 = key;
                if (n5 <= n4 * 8) {
                    this.keyPool.offer(key);
                    key2 = this.keyPool.get(n5);
                }
            }
        }
        if ((key2 = this.groupedMap.get(key2)) != null) {
            key2.reconfigure(n2, n3, config);
            this.decrementBitmapOfSize(n5);
        }
        return key2;
    }

    @Override
    public int getSize(Bitmap bitmap) {
        return Util.getBitmapByteSize(bitmap);
    }

    @Override
    public String logBitmap(int n2, int n3, Bitmap.Config config) {
        return SizeStrategy.getBitmapString(Util.getBitmapByteSize(n2, n3, config));
    }

    @Override
    public String logBitmap(Bitmap bitmap) {
        return SizeStrategy.getBitmapString(bitmap);
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    public void put(Bitmap object) {
        int n2 = Util.getBitmapByteSize((Bitmap)object);
        Key key = this.keyPool.get(n2);
        this.groupedMap.put(key, (Bitmap)object);
        object = this.sortedSizes.get(key.size);
        TreeMap<Integer, Integer> treeMap = this.sortedSizes;
        int n3 = key.size;
        n2 = object == null ? 1 : object.intValue() + 1;
        treeMap.put(n3, n2);
    }

    @Override
    public Bitmap removeLast() {
        Bitmap bitmap = this.groupedMap.removeLast();
        if (bitmap != null) {
            this.decrementBitmapOfSize(Util.getBitmapByteSize(bitmap));
        }
        return bitmap;
    }

    public String toString() {
        return "SizeStrategy:\n  " + this.groupedMap + "\n" + "  SortedSizes" + this.sortedSizes;
    }

    static final class Key
    implements Poolable {
        private final KeyPool pool;
        private int size;

        Key(KeyPool keyPool) {
            this.pool = keyPool;
        }

        public boolean equals(Object object) {
            boolean bl;
            boolean bl2 = bl = false;
            if (object instanceof Key) {
                object = (Key)object;
                bl2 = bl;
                if (this.size == object.size) {
                    bl2 = true;
                }
            }
            return bl2;
        }

        public int hashCode() {
            return this.size;
        }

        public void init(int n2) {
            this.size = n2;
        }

        @Override
        public void offer() {
            this.pool.offer(this);
        }

        public String toString() {
            return SizeStrategy.getBitmapString(this.size);
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

        public Key get(int n2) {
            Key key = (Key)this.get();
            key.init(n2);
            return key;
        }
    }

}

