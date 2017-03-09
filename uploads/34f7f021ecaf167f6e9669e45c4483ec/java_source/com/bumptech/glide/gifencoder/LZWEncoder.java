/*
 * Decompiled with CFR 0_115.
 */
package com.bumptech.glide.gifencoder;

import java.io.IOException;
import java.io.OutputStream;

class LZWEncoder {
    static final int BITS = 12;
    private static final int EOF = -1;
    static final int HSIZE = 5003;
    int ClearCode;
    int EOFCode;
    int a_count;
    byte[] accum = new byte[256];
    boolean clear_flg = false;
    int[] codetab = new int[5003];
    private int curPixel;
    int cur_accum = 0;
    int cur_bits = 0;
    int free_ent = 0;
    int g_init_bits;
    int hsize = 5003;
    int[] htab = new int[5003];
    private int imgH;
    private int imgW;
    private int initCodeSize;
    int[] masks = new int[]{0, 1, 3, 7, 15, 31, 63, 127, 255, 511, 1023, 2047, 4095, 8191, 16383, 32767, 65535};
    int maxbits = 12;
    int maxcode;
    int maxmaxcode = 4096;
    int n_bits;
    private byte[] pixAry;
    private int remaining;

    LZWEncoder(int n2, int n3, byte[] arrby, int n4) {
        this.imgW = n2;
        this.imgH = n3;
        this.pixAry = arrby;
        this.initCodeSize = Math.max(2, n4);
    }

    private int nextPixel() {
        if (this.remaining == 0) {
            return -1;
        }
        --this.remaining;
        byte[] arrby = this.pixAry;
        int n2 = this.curPixel;
        this.curPixel = n2 + 1;
        return arrby[n2] & 255;
    }

    final int MAXCODE(int n2) {
        return (1 << n2) - 1;
    }

    void char_out(byte by, OutputStream outputStream) throws IOException {
        byte[] arrby = this.accum;
        int n2 = this.a_count;
        this.a_count = n2 + 1;
        arrby[n2] = by;
        if (this.a_count >= 254) {
            this.flush_char(outputStream);
        }
    }

    void cl_block(OutputStream outputStream) throws IOException {
        this.cl_hash(this.hsize);
        this.free_ent = this.ClearCode + 2;
        this.clear_flg = true;
        this.output(this.ClearCode, outputStream);
    }

    void cl_hash(int n2) {
        for (int i2 = 0; i2 < n2; ++i2) {
            this.htab[i2] = -1;
        }
    }

    void compress(int n2, OutputStream outputStream) throws IOException {
        int n3;
        this.g_init_bits = n2;
        this.clear_flg = false;
        this.n_bits = this.g_init_bits;
        this.maxcode = this.MAXCODE(this.n_bits);
        this.ClearCode = 1 << n2 - 1;
        this.EOFCode = this.ClearCode + 1;
        this.free_ent = this.ClearCode + 2;
        this.a_count = 0;
        int n4 = this.nextPixel();
        int n5 = 0;
        for (n2 = this.hsize; n2 < 65536; n2 *= 2) {
            ++n5;
        }
        int n6 = this.hsize;
        this.cl_hash(n6);
        this.output(this.ClearCode, outputStream);
        n2 = n4;
        block1 : while ((n3 = this.nextPixel()) != -1) {
            n4 = n3 << 8 - n5 ^ n2;
            int n7 = (n3 << this.maxbits) + n2;
            if (this.htab[n4] == n7) {
                n2 = this.codetab[n4];
                continue;
            }
            int n8 = n4;
            if (this.htab[n4] >= 0) {
                n8 = n6 - n4;
                int n9 = n4;
                if (n4 == 0) {
                    n8 = 1;
                    n9 = n4;
                }
                do {
                    n4 = n9 -= n8;
                    if (n9 < 0) {
                        n4 = n9 + n6;
                    }
                    if (this.htab[n4] == n7) {
                        n2 = this.codetab[n4];
                        continue block1;
                    }
                    n9 = n4;
                } while (this.htab[n4] >= 0);
                n8 = n4;
            }
            this.output(n2, outputStream);
            n2 = n3;
            if (this.free_ent < this.maxmaxcode) {
                int[] arrn = this.codetab;
                n4 = this.free_ent;
                this.free_ent = n4 + 1;
                arrn[n8] = n4;
                this.htab[n8] = n7;
                continue;
            }
            this.cl_block(outputStream);
        }
        this.output(n2, outputStream);
        this.output(this.EOFCode, outputStream);
    }

    void encode(OutputStream outputStream) throws IOException {
        outputStream.write(this.initCodeSize);
        this.remaining = this.imgW * this.imgH;
        this.curPixel = 0;
        this.compress(this.initCodeSize + 1, outputStream);
        outputStream.write(0);
    }

    void flush_char(OutputStream outputStream) throws IOException {
        if (this.a_count > 0) {
            outputStream.write(this.a_count);
            outputStream.write(this.accum, 0, this.a_count);
            this.a_count = 0;
        }
    }

    /*
     * Enabled aggressive block sorting
     */
    void output(int n2, OutputStream outputStream) throws IOException {
        this.cur_accum &= this.masks[this.cur_bits];
        this.cur_accum = this.cur_bits > 0 ? (this.cur_accum |= n2 << this.cur_bits) : n2;
        this.cur_bits += this.n_bits;
        while (this.cur_bits >= 8) {
            this.char_out((byte)(this.cur_accum & 255), outputStream);
            this.cur_accum >>= 8;
            this.cur_bits -= 8;
        }
        if (this.free_ent > this.maxcode || this.clear_flg) {
            if (this.clear_flg) {
                int n3;
                this.n_bits = n3 = this.g_init_bits;
                this.maxcode = this.MAXCODE(n3);
                this.clear_flg = false;
            } else {
                ++this.n_bits;
                this.maxcode = this.n_bits == this.maxbits ? this.maxmaxcode : this.MAXCODE(this.n_bits);
            }
        }
        if (n2 == this.EOFCode) {
            while (this.cur_bits > 0) {
                this.char_out((byte)(this.cur_accum & 255), outputStream);
                this.cur_accum >>= 8;
                this.cur_bits -= 8;
            }
            this.flush_char(outputStream);
        }
    }
}

