/*
 * Decompiled with CFR 0_115.
 */
package hecticman.jsterm.emulatorview;

class ByteQueue {
    private byte[] mBuffer;
    private int mHead;
    private int mStoredBytes;

    public ByteQueue(int n) {
        this.mBuffer = new byte[n];
    }

    public byte[] getBuffer() {
        return this.mBuffer;
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
            int n3;
            int n4;
            int n5;
            int n6;
            do {
                if (this.mStoredBytes != 0) {
                    int n7 = 0;
                    n3 = this.mBuffer.length;
                    n4 = n7;
                    n5 = n;
                    n6 = n2;
                    if (n3 != this.mStoredBytes) break;
                    bl = true;
                    n6 = n2;
                    n5 = n;
                    n4 = n7;
                    break;
                }
                this.wait();
            } while (true);
            do {
                if (n6 <= 0 || this.mStoredBytes <= 0) {
                    if (bl) {
                        this.notify();
                    }
                    return n4;
                }
                n = Math.min(n6, Math.min(n3 - this.mHead, this.mStoredBytes));
                System.arraycopy(this.mBuffer, this.mHead, arrby, n5, n);
                this.mHead += n;
                if (this.mHead >= n3) {
                    this.mHead = 0;
                }
                this.mStoredBytes -= n;
                n6 -= n;
                n5 += n;
                n4 += n;
            } while (true);
        }
    }

    /*
     * Unable to fully structure code
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     * Converted monitor instructions to comments
     * Lifted jumps to return sites
     */
    public void write(byte[] var1_1, int var2_2, int var3_3) throws InterruptedException {
        if (var3_3 + var2_2 > var1_1.length) {
            throw new IllegalArgumentException("length + offset > buffer.length");
        }
        if (var3_3 < 0) {
            throw new IllegalArgumentException("length < 0");
        }
        if (var3_3 == 0) {
            return;
        }
        // MONITORENTER : this
        var7_4 = this.mBuffer.length;
        var4_5 = this.mStoredBytes == 0;
        do {
            if (var3_3 > 0) ** GOTO lbl17
            if (var4_5) {
                this.notify();
            }
            // MONITOREXIT : this
            return;
lbl-1000: // 1 sources:
            {
                this.wait();
lbl17: // 2 sources:
                ** while (var7_4 == this.mStoredBytes)
            }
lbl18: // 1 sources:
            var5_6 = this.mHead + this.mStoredBytes;
            var6_7 = var5_6 >= var7_4 ? this.mHead - (var5_6 -= var7_4) : var7_4 - var5_6;
            var6_7 = Math.min(var6_7, var3_3);
            System.arraycopy(var1_1, var2_2, this.mBuffer, var5_6, var6_7);
            var2_2 += var6_7;
            this.mStoredBytes += var6_7;
            var3_3 -= var6_7;
        } while (true);
    }
}

