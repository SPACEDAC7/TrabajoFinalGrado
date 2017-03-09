/*
 * Decompiled with CFR 0_115.
 */
package jackpal.androidterm.emulatorview;

class ByteQueue {
    private byte[] mBuffer;
    private int mHead;
    private int mStoredBytes;

    public ByteQueue(int n) {
        this.mBuffer = new byte[n];
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    public int getBytesAvailable() {
        synchronized (this) {
            return this.mStoredBytes;
        }
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    public int read(byte[] arrby, int n, int n2) throws InterruptedException {
        boolean bl = false;
        if (n2 + n > arrby.length) {
            throw new IllegalArgumentException("length + offset > buffer.length");
        }
        if (n2 < 0) {
            throw new IllegalArgumentException("length < 0");
        }
        if (n2 == 0) {
            return 0;
        }
        synchronized (this) {
            while (this.mStoredBytes == 0) {
                this.wait();
            }
            int n3 = 0;
            int n4 = this.mBuffer.length;
            int n5 = n3;
            int n6 = n;
            int n7 = n2;
            if (n4 == this.mStoredBytes) {
                bl = true;
                n7 = n2;
                n6 = n;
                n5 = n3;
            }
            while (n7 > 0 && this.mStoredBytes > 0) {
                n = Math.min(n7, Math.min(n4 - this.mHead, this.mStoredBytes));
                System.arraycopy(this.mBuffer, this.mHead, arrby, n6, n);
                this.mHead += n;
                if (this.mHead >= n4) {
                    this.mHead = 0;
                }
                this.mStoredBytes -= n;
                n7 -= n;
                n6 += n;
                n5 += n;
            }
            if (bl) {
                this.notify();
            }
            return n5;
        }
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    public int write(byte[] arrby, int n, int n2) throws InterruptedException {
        boolean bl = false;
        if (n2 + n > arrby.length) {
            throw new IllegalArgumentException("length + offset > buffer.length");
        }
        if (n2 < 0) {
            throw new IllegalArgumentException("length < 0");
        }
        if (n2 == 0) {
            return 0;
        }
        synchronized (this) {
            int n3 = this.mBuffer.length;
            if (this.mStoredBytes == 0) {
                bl = true;
            }
            while (n3 == this.mStoredBytes) {
                this.wait();
            }
            int n4 = this.mHead + this.mStoredBytes;
            n3 = n4 >= n3 ? this.mHead - (n4 -= n3) : (n3 -= n4);
            n2 = Math.min(n3, n2);
            System.arraycopy(arrby, n, this.mBuffer, n4, n2);
            this.mStoredBytes += n2;
            if (bl) {
                this.notify();
            }
            return n2;
        }
    }
}

