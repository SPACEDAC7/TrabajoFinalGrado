/*
 * Decompiled with CFR 0_115.
 */
package android.support.v4.util;

public final class Pools {
    private Pools() {
    }

    public static interface Pool<T> {
        public T acquire();

        public boolean release(T var1);
    }

    public static class SimplePool<T>
    implements Pool<T> {
        private final Object[] mPool;
        private int mPoolSize;

        public SimplePool(int n2) {
            if (n2 <= 0) {
                throw new IllegalArgumentException("The max pool size must be > 0");
            }
            this.mPool = new Object[n2];
        }

        private boolean isInPool(T t2) {
            for (int i2 = 0; i2 < this.mPoolSize; ++i2) {
                if (this.mPool[i2] != t2) continue;
                return true;
            }
            return false;
        }

        @Override
        public T acquire() {
            if (this.mPoolSize > 0) {
                int n2 = this.mPoolSize - 1;
                Object object = this.mPool[n2];
                this.mPool[n2] = null;
                --this.mPoolSize;
                return (T)object;
            }
            return null;
        }

        @Override
        public boolean release(T t2) {
            if (this.isInPool(t2)) {
                throw new IllegalStateException("Already in the pool!");
            }
            if (this.mPoolSize < this.mPool.length) {
                this.mPool[this.mPoolSize] = t2;
                ++this.mPoolSize;
                return true;
            }
            return false;
        }
    }

    public static class SynchronizedPool<T>
    extends SimplePool<T> {
        private final Object mLock = new Object();

        public SynchronizedPool(int n2) {
            super(n2);
        }

        /*
         * Enabled aggressive block sorting
         * Enabled unnecessary exception pruning
         * Enabled aggressive exception aggregation
         */
        @Override
        public T acquire() {
            Object object = this.mLock;
            synchronized (object) {
                Object t2 = super.acquire();
                return t2;
            }
        }

        /*
         * Enabled aggressive block sorting
         * Enabled unnecessary exception pruning
         * Enabled aggressive exception aggregation
         */
        @Override
        public boolean release(T t2) {
            Object object = this.mLock;
            synchronized (object) {
                return super.release(t2);
            }
        }
    }

}

