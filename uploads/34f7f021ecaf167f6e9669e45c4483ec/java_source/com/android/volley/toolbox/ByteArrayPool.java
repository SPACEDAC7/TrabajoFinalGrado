/*
 * Decompiled with CFR 0_115.
 */
package com.android.volley.toolbox;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.LinkedList;
import java.util.List;

public class ByteArrayPool {
    protected static final Comparator<byte[]> BUF_COMPARATOR = new Comparator<byte[]>(){

        @Override
        public int compare(byte[] arrby, byte[] arrby2) {
            return arrby.length - arrby2.length;
        }
    };
    private List<byte[]> mBuffersByLastUse = new LinkedList<byte[]>();
    private List<byte[]> mBuffersBySize = new ArrayList<byte[]>(64);
    private int mCurrentSize = 0;
    private final int mSizeLimit;

    public ByteArrayPool(int n2) {
        this.mSizeLimit = n2;
    }

    private void trim() {
        synchronized (this) {
            while (this.mCurrentSize > this.mSizeLimit) {
                byte[] arrby = this.mBuffersByLastUse.remove(0);
                this.mBuffersBySize.remove(arrby);
                this.mCurrentSize -= arrby.length;
            }
            return;
        }
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    public byte[] getBuf(int n2) {
        synchronized (this) {
            int n3;
            byte[] arrby;
            block5 : {
                n3 = 0;
                while (n3 < this.mBuffersBySize.size()) {
                    arrby = this.mBuffersBySize.get(n3);
                    if (arrby.length >= n2) {
                        this.mCurrentSize -= arrby.length;
                        break block5;
                    }
                    ++n3;
                }
                return new byte[n2];
            }
            this.mBuffersBySize.remove(n3);
            this.mBuffersByLastUse.remove(arrby);
            return arrby;
        }
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    public void returnBuf(byte[] arrby) {
        synchronized (this) {
            int n2;
            block9 : {
                int n3;
                block8 : {
                    if (arrby != null) {
                        n2 = arrby.length;
                        n3 = this.mSizeLimit;
                        if (n2 <= n3) break block8;
                    }
                    do {
                        return;
                        break;
                    } while (true);
                }
                this.mBuffersByLastUse.add(arrby);
                n2 = n3 = Collections.binarySearch(this.mBuffersBySize, arrby, BUF_COMPARATOR);
                if (n3 >= 0) break block9;
                n2 = - n3 - 1;
            }
            this.mBuffersBySize.add(n2, arrby);
            this.mCurrentSize += arrby.length;
            this.trim();
            return;
        }
    }

}

