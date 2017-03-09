/*
 * Decompiled with CFR 0_115.
 */
package com.bumptech.glide.load.model;

import com.bumptech.glide.util.LruCache;
import com.bumptech.glide.util.Util;
import java.util.Queue;

public class ModelCache<A, B> {
    private static final int DEFAULT_SIZE = 250;
    private final LruCache<ModelKey<A>, B> cache;

    public ModelCache() {
        this(250);
    }

    public ModelCache(int n2) {
        this.cache = new LruCache<ModelKey<A>, B>(n2){

            @Override
            protected void onItemEvicted(ModelKey<A> modelKey, B b2) {
                modelKey.release();
            }
        };
    }

    public B get(A object, int n2, int n3) {
        object = ModelKey.get(object, n2, n3);
        B b2 = this.cache.get((ModelKey<A>)object);
        object.release();
        return b2;
    }

    public void put(A object, int n2, int n3, B b2) {
        object = ModelKey.get(object, n2, n3);
        this.cache.put((ModelKey<A>)object, b2);
    }

    static final class ModelKey<A> {
        private static final Queue<ModelKey<?>> KEY_QUEUE = Util.createQueue(0);
        private int height;
        private A model;
        private int width;

        private ModelKey() {
        }

        static <A> ModelKey<A> get(A a2, int n2, int n3) {
            ModelKey modelKey;
            ModelKey modelKey2 = modelKey = KEY_QUEUE.poll();
            if (modelKey == null) {
                modelKey2 = new ModelKey<A>();
            }
            modelKey2.init(a2, n2, n3);
            return modelKey2;
        }

        private void init(A a2, int n2, int n3) {
            this.model = a2;
            this.width = n2;
            this.height = n3;
        }

        public boolean equals(Object object) {
            boolean bl;
            boolean bl2 = bl = false;
            if (object instanceof ModelKey) {
                object = (ModelKey)object;
                bl2 = bl;
                if (this.width == object.width) {
                    bl2 = bl;
                    if (this.height == object.height) {
                        bl2 = bl;
                        if (this.model.equals(object.model)) {
                            bl2 = true;
                        }
                    }
                }
            }
            return bl2;
        }

        public int hashCode() {
            return (this.height * 31 + this.width) * 31 + this.model.hashCode();
        }

        public void release() {
            KEY_QUEUE.offer(this);
        }
    }

}

