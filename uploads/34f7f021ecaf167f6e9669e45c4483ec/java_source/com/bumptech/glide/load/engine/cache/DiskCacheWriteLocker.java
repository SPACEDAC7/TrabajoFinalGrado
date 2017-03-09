/*
 * Decompiled with CFR 0_115.
 */
package com.bumptech.glide.load.engine.cache;

import com.bumptech.glide.load.Key;
import java.util.ArrayDeque;
import java.util.HashMap;
import java.util.Map;
import java.util.Queue;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;

final class DiskCacheWriteLocker {
    private final Map<Key, WriteLock> locks = new HashMap<Key, WriteLock>();
    private final WriteLockPool writeLockPool = new WriteLockPool();

    DiskCacheWriteLocker() {
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    void acquire(Key key) {
        synchronized (this) {
            WriteLock writeLock;
            WriteLock writeLock2 = writeLock = this.locks.get(key);
            if (writeLock == null) {
                writeLock2 = this.writeLockPool.obtain();
                this.locks.put(key, writeLock2);
            }
            ++writeLock2.interestedThreads;
        }
        writeLock2.lock.lock();
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    void release(Key object) {
        synchronized (this) {
            int n2;
            WriteLock writeLock = this.locks.get(object);
            if (writeLock == null || writeLock.interestedThreads <= 0) {
                int n3;
                object = new StringBuilder().append("Cannot release a lock that is not held, key: ").append(object).append(", interestedThreads: ");
                if (writeLock == null) {
                    n3 = 0;
                    throw new IllegalArgumentException(object.append(n3).toString());
                }
                n3 = writeLock.interestedThreads;
                throw new IllegalArgumentException(object.append(n3).toString());
            }
            writeLock.interestedThreads = n2 = writeLock.interestedThreads - 1;
            if (n2 == 0) {
                WriteLock writeLock2 = this.locks.remove(object);
                if (!writeLock2.equals(writeLock)) {
                    throw new IllegalStateException("Removed the wrong lock, expected to remove: " + writeLock + ", but actually removed: " + writeLock2 + ", key: " + object);
                }
                this.writeLockPool.offer(writeLock2);
            }
        }
        writeLock.lock.unlock();
    }

    private static class WriteLock {
        int interestedThreads;
        final Lock lock = new ReentrantLock();

        private WriteLock() {
        }
    }

    private static class WriteLockPool {
        private static final int MAX_POOL_SIZE = 10;
        private final Queue<WriteLock> pool = new ArrayDeque<WriteLock>();

        private WriteLockPool() {
        }

        /*
         * Enabled aggressive block sorting
         * Enabled unnecessary exception pruning
         * Enabled aggressive exception aggregation
         */
        WriteLock obtain() {
            WriteLock writeLock;
            Object object = this.pool;
            synchronized (object) {
                writeLock = this.pool.poll();
            }
            object = writeLock;
            if (writeLock != null) return object;
            return new WriteLock();
        }

        /*
         * Enabled aggressive block sorting
         * Enabled unnecessary exception pruning
         * Enabled aggressive exception aggregation
         */
        void offer(WriteLock writeLock) {
            Queue<WriteLock> queue = this.pool;
            synchronized (queue) {
                if (this.pool.size() < 10) {
                    this.pool.offer(writeLock);
                }
                return;
            }
        }
    }

}

