/*
 * Decompiled with CFR 0_115.
 */
package com.google.android.exoplayer;

import com.google.android.exoplayer.CryptoInfo;
import java.nio.Buffer;
import java.nio.ByteBuffer;

public final class SampleHolder {
    public static final int BUFFER_REPLACEMENT_MODE_DIRECT = 2;
    public static final int BUFFER_REPLACEMENT_MODE_DISABLED = 0;
    public static final int BUFFER_REPLACEMENT_MODE_NORMAL = 1;
    private final int bufferReplacementMode;
    public final CryptoInfo cryptoInfo = new CryptoInfo();
    public ByteBuffer data;
    public int flags;
    public int size;
    public long timeUs;

    public SampleHolder(int n2) {
        this.bufferReplacementMode = n2;
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    private ByteBuffer createReplacementBuffer(int n2) {
        int n3;
        if (this.bufferReplacementMode == 1) {
            return ByteBuffer.allocate(n2);
        }
        if (this.bufferReplacementMode == 2) {
            return ByteBuffer.allocateDirect(n2);
        }
        if (this.data == null) {
            n3 = 0;
            do {
                throw new IllegalStateException("Buffer too small (" + n3 + " < " + n2 + ")");
                break;
            } while (true);
        }
        n3 = this.data.capacity();
        throw new IllegalStateException("Buffer too small (" + n3 + " < " + n2 + ")");
    }

    public void clearData() {
        if (this.data != null) {
            this.data.clear();
        }
    }

    /*
     * Enabled aggressive block sorting
     */
    public void ensureSpaceForWrite(int n2) throws IllegalStateException {
        if (this.data == null) {
            this.data = this.createReplacementBuffer(n2);
            return;
        } else {
            int n3;
            int n4 = this.data.capacity();
            if (n4 >= (n2 = (n3 = this.data.position()) + n2)) return;
            {
                ByteBuffer byteBuffer = this.createReplacementBuffer(n2);
                if (n3 > 0) {
                    this.data.position(0);
                    this.data.limit(n3);
                    byteBuffer.put(this.data);
                }
                this.data = byteBuffer;
                return;
            }
        }
    }

    public boolean isDecodeOnly() {
        if ((this.flags & 134217728) != 0) {
            return true;
        }
        return false;
    }

    public boolean isEncrypted() {
        if ((this.flags & 2) != 0) {
            return true;
        }
        return false;
    }

    public boolean isSyncFrame() {
        if ((this.flags & 1) != 0) {
            return true;
        }
        return false;
    }
}

