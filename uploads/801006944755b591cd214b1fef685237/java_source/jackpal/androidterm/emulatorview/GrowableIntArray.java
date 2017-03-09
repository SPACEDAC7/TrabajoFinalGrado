/*
 * Decompiled with CFR 0_115.
 */
package jackpal.androidterm.emulatorview;

class GrowableIntArray {
    int[] mData;
    int mLength;

    GrowableIntArray(int n) {
        this.mData = new int[n];
        this.mLength = 0;
    }

    void append(int n) {
        int[] arrn;
        if (this.mLength + 1 > this.mData.length) {
            arrn = new int[Math.max(this.mData.length * 3 >> 1, 16)];
            System.arraycopy(this.mData, 0, arrn, 0, this.mLength);
            this.mData = arrn;
        }
        arrn = this.mData;
        int n2 = this.mLength;
        this.mLength = n2 + 1;
        arrn[n2] = n;
    }

    int at(int n) {
        return this.mData[n];
    }

    int length() {
        return this.mLength;
    }
}

