/*
 * Decompiled with CFR 0_115.
 */
package com.bumptech.glide.util;

import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;

public class MarkEnforcingInputStream
extends FilterInputStream {
    private static final int END_OF_STREAM = -1;
    private static final int UNSET = Integer.MIN_VALUE;
    private int availableBytes = Integer.MIN_VALUE;

    public MarkEnforcingInputStream(InputStream inputStream) {
        super(inputStream);
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    private long getBytesToRead(long l2) {
        if (this.availableBytes == 0) {
            return -1;
        }
        long l3 = l2;
        if (this.availableBytes == Integer.MIN_VALUE) return l3;
        l3 = l2;
        if (l2 <= (long)this.availableBytes) return l3;
        return this.availableBytes;
    }

    private void updateAvailableBytesAfterRead(long l2) {
        if (this.availableBytes != Integer.MIN_VALUE && l2 != -1) {
            this.availableBytes = (int)((long)this.availableBytes - l2);
        }
    }

    @Override
    public int available() throws IOException {
        if (this.availableBytes == Integer.MIN_VALUE) {
            return super.available();
        }
        return Math.min(this.availableBytes, super.available());
    }

    @Override
    public void mark(int n2) {
        super.mark(n2);
        this.availableBytes = n2;
    }

    @Override
    public int read() throws IOException {
        if (this.getBytesToRead(1) == -1) {
            return -1;
        }
        int n2 = super.read();
        this.updateAvailableBytesAfterRead(1);
        return n2;
    }

    @Override
    public int read(byte[] arrby, int n2, int n3) throws IOException {
        if ((n3 = (int)this.getBytesToRead(n3)) == -1) {
            return -1;
        }
        n2 = super.read(arrby, n2, n3);
        this.updateAvailableBytesAfterRead(n2);
        return n2;
    }

    @Override
    public void reset() throws IOException {
        super.reset();
        this.availableBytes = Integer.MIN_VALUE;
    }

    @Override
    public long skip(long l2) throws IOException {
        if ((l2 = this.getBytesToRead(l2)) == -1) {
            return -1;
        }
        l2 = super.skip(l2);
        this.updateAvailableBytesAfterRead(l2);
        return l2;
    }
}

