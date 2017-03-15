/*
 * Decompiled with CFR 0_115.
 */
package com.bumptech.glide.util;

import com.bumptech.glide.util.Util;
import java.io.IOException;
import java.io.InputStream;
import java.util.Queue;

public class ExceptionCatchingInputStream
extends InputStream {
    private static final Queue<ExceptionCatchingInputStream> QUEUE = Util.createQueue(0);
    private IOException exception;
    private InputStream wrapped;

    ExceptionCatchingInputStream() {
    }

    static void clearQueue() {
        while (!QUEUE.isEmpty()) {
            QUEUE.remove();
        }
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    public static ExceptionCatchingInputStream obtain(InputStream inputStream) {
        ExceptionCatchingInputStream exceptionCatchingInputStream;
        Object object = QUEUE;
        synchronized (object) {
            exceptionCatchingInputStream = QUEUE.poll();
        }
        object = exceptionCatchingInputStream;
        if (exceptionCatchingInputStream == null) {
            object = new ExceptionCatchingInputStream();
        }
        object.setInputStream(inputStream);
        return object;
    }

    @Override
    public int available() throws IOException {
        return this.wrapped.available();
    }

    @Override
    public void close() throws IOException {
        this.wrapped.close();
    }

    public IOException getException() {
        return this.exception;
    }

    @Override
    public void mark(int n2) {
        this.wrapped.mark(n2);
    }

    @Override
    public boolean markSupported() {
        return this.wrapped.markSupported();
    }

    @Override
    public int read() throws IOException {
        try {
            int n2 = this.wrapped.read();
            return n2;
        }
        catch (IOException var1_2) {
            this.exception = var1_2;
            return -1;
        }
    }

    @Override
    public int read(byte[] arrby) throws IOException {
        try {
            int n2 = this.wrapped.read(arrby);
            return n2;
        }
        catch (IOException var1_2) {
            this.exception = var1_2;
            return -1;
        }
    }

    @Override
    public int read(byte[] arrby, int n2, int n3) throws IOException {
        try {
            n2 = this.wrapped.read(arrby, n2, n3);
            return n2;
        }
        catch (IOException var1_2) {
            this.exception = var1_2;
            return -1;
        }
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    public void release() {
        this.exception = null;
        this.wrapped = null;
        Queue<ExceptionCatchingInputStream> queue = QUEUE;
        synchronized (queue) {
            QUEUE.offer(this);
            return;
        }
    }

    @Override
    public void reset() throws IOException {
        synchronized (this) {
            this.wrapped.reset();
            return;
        }
    }

    void setInputStream(InputStream inputStream) {
        this.wrapped = inputStream;
    }

    @Override
    public long skip(long l2) throws IOException {
        try {
            l2 = this.wrapped.skip(l2);
            return l2;
        }
        catch (IOException var3_2) {
            this.exception = var3_2;
            return 0;
        }
    }
}

