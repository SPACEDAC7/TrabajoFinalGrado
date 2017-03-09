/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.util.Log
 */
package com.bumptech.glide.util;

import android.util.Log;
import com.bumptech.glide.util.Util;
import java.util.Queue;

public final class ByteArrayPool {
    private static final ByteArrayPool BYTE_ARRAY_POOL = new ByteArrayPool();
    private static final int MAX_BYTE_ARRAY_COUNT = 32;
    private static final int MAX_SIZE = 2146304;
    private static final String TAG = "ByteArrayPool";
    private static final int TEMP_BYTES_SIZE = 65536;
    private final Queue<byte[]> tempQueue = Util.createQueue(0);

    private ByteArrayPool() {
    }

    public static ByteArrayPool get() {
        return BYTE_ARRAY_POOL;
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    public void clear() {
        Queue<byte[]> queue = this.tempQueue;
        synchronized (queue) {
            this.tempQueue.clear();
            return;
        }
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    public byte[] getBytes() {
        byte[] arrby;
        byte[] arrby2 = this.tempQueue;
        synchronized (arrby2) {
            arrby = this.tempQueue.poll();
        }
        arrby2 = arrby;
        if (arrby != null) return arrby2;
        arrby2 = arrby = new byte[65536];
        if (!Log.isLoggable((String)"ByteArrayPool", (int)3)) return arrby2;
        Log.d((String)"ByteArrayPool", (String)"Created temp bytes");
        return arrby;
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    public boolean releaseBytes(byte[] arrby) {
        if (arrby.length != 65536) {
            return false;
        }
        boolean bl = false;
        Queue<byte[]> queue = this.tempQueue;
        synchronized (queue) {
            if (this.tempQueue.size() < 32) {
                bl = true;
                this.tempQueue.offer(arrby);
            }
            return bl;
        }
    }
}

