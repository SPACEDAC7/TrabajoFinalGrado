/*
 * Decompiled with CFR 0_115.
 */
package com.android.volley.toolbox;

import com.android.volley.toolbox.ByteArrayPool;
import java.io.ByteArrayOutputStream;
import java.io.IOException;

public class PoolingByteArrayOutputStream
extends ByteArrayOutputStream {
    private static final int DEFAULT_SIZE = 256;
    private final ByteArrayPool mPool;

    public PoolingByteArrayOutputStream(ByteArrayPool byteArrayPool) {
        this(byteArrayPool, 256);
    }

    public PoolingByteArrayOutputStream(ByteArrayPool byteArrayPool, int n2) {
        this.mPool = byteArrayPool;
        this.buf = this.mPool.getBuf(Math.max(n2, 256));
    }

    private void expand(int n2) {
        if (this.count + n2 <= this.buf.length) {
            return;
        }
        byte[] arrby = this.mPool.getBuf((this.count + n2) * 2);
        System.arraycopy(this.buf, 0, arrby, 0, this.count);
        this.mPool.returnBuf(this.buf);
        this.buf = arrby;
    }

    @Override
    public void close() throws IOException {
        this.mPool.returnBuf(this.buf);
        this.buf = null;
        super.close();
    }

    public void finalize() {
        this.mPool.returnBuf(this.buf);
    }

    @Override
    public void write(int n2) {
        synchronized (this) {
            this.expand(1);
            super.write(n2);
            return;
        }
    }

    @Override
    public void write(byte[] arrby, int n2, int n3) {
        synchronized (this) {
            this.expand(n3);
            super.write(arrby, n2, n3);
            return;
        }
    }
}

