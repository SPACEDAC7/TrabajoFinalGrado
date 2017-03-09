/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.graphics.Bitmap
 *  android.graphics.Bitmap$Config
 */
package com.bumptech.glide.load.engine.bitmap_recycle;

import android.graphics.Bitmap;
import com.bumptech.glide.load.engine.bitmap_recycle.BaseKeyPool;
import com.bumptech.glide.load.engine.bitmap_recycle.GroupedLinkedMap;
import com.bumptech.glide.load.engine.bitmap_recycle.LruPoolStrategy;
import com.bumptech.glide.load.engine.bitmap_recycle.Poolable;
import com.bumptech.glide.util.Util;

class AttributeStrategy
implements LruPoolStrategy {
    private final GroupedLinkedMap<Key, Bitmap> groupedMap = new GroupedLinkedMap();
    private final KeyPool keyPool = new KeyPool();

    AttributeStrategy() {
    }

    private static String getBitmapString(int n2, int n3, Bitmap.Config config) {
        return "[" + n2 + "x" + n3 + "], " + (Object)config;
    }

    private static String getBitmapString(Bitmap bitmap) {
        return AttributeStrategy.getBitmapString(bitmap.getWidth(), bitmap.getHeight(), bitmap.getConfig());
    }

    @Override
    public Bitmap get(int n2, int n3, Bitmap.Config object) {
        object = this.keyPool.get(n2, n3, (Bitmap.Config)object);
        return this.groupedMap.get((Key)object);
    }

    @Override
    public int getSize(Bitmap bitmap) {
        return Util.getBitmapByteSize(bitmap);
    }

    @Override
    public String logBitmap(int n2, int n3, Bitmap.Config config) {
        return AttributeStrategy.getBitmapString(n2, n3, config);
    }

    @Override
    public String logBitmap(Bitmap bitmap) {
        return AttributeStrategy.getBitmapString(bitmap);
    }

    @Override
    public void put(Bitmap bitmap) {
        Key key = this.keyPool.get(bitmap.getWidth(), bitmap.getHeight(), bitmap.getConfig());
        this.groupedMap.put(key, bitmap);
    }

    @Override
    public Bitmap removeLast() {
        return this.groupedMap.removeLast();
    }

    public String toString() {
        return "AttributeStrategy:\n  " + this.groupedMap;
    }

    static class Key
    implements Poolable {
        private Bitmap.Config config;
        private int height;
        private final KeyPool pool;
        private int width;

        public Key(KeyPool keyPool) {
            this.pool = keyPool;
        }

        public boolean equals(Object object) {
            boolean bl;
            boolean bl2 = bl = false;
            if (object instanceof Key) {
                object = (Key)object;
                bl2 = bl;
                if (this.width == object.width) {
                    bl2 = bl;
                    if (this.height == object.height) {
                        bl2 = bl;
                        if (this.config == object.config) {
                            bl2 = true;
                        }
                    }
                }
            }
            return bl2;
        }

        /*
         * Enabled force condition propagation
         * Lifted jumps to return sites
         */
        public int hashCode() {
            int n2;
            int n3 = this.width;
            int n4 = this.height;
            if (this.config != null) {
                n2 = this.config.hashCode();
                do {
                    return (n3 * 31 + n4) * 31 + n2;
                    break;
                } while (true);
            }
            n2 = 0;
            return (n3 * 31 + n4) * 31 + n2;
        }

        public void init(int n2, int n3, Bitmap.Config config) {
            this.width = n2;
            this.height = n3;
            this.config = config;
        }

        @Override
        public void offer() {
            this.pool.offer(this);
        }

        public String toString() {
            return AttributeStrategy.getBitmapString(this.width, this.height, this.config);
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

        public Key get(int n2, int n3, Bitmap.Config config) {
            Key key = (Key)this.get();
            key.init(n2, n3, config);
            return key;
        }
    }

}

