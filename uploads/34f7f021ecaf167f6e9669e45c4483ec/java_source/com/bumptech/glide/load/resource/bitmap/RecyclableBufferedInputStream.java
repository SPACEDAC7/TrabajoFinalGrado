/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.util.Log
 */
package com.bumptech.glide.load.resource.bitmap;

import android.util.Log;
import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;

public class RecyclableBufferedInputStream
extends FilterInputStream {
    private static final String TAG = "BufferedIs";
    private volatile byte[] buf;
    private int count;
    private int marklimit;
    private int markpos = -1;
    private int pos;

    public RecyclableBufferedInputStream(InputStream inputStream, byte[] arrby) {
        super(inputStream);
        if (arrby == null || arrby.length == 0) {
            throw new IllegalArgumentException("buffer is null or empty");
        }
        this.buf = arrby;
    }

    /*
     * Enabled aggressive block sorting
     */
    private int fillbuf(InputStream inputStream, byte[] arrby) throws IOException {
        byte[] arrby2;
        int n2;
        int n3;
        if (this.markpos == -1 || this.pos - this.markpos >= this.marklimit) {
            int n4 = inputStream.read(arrby);
            if (n4 > 0) {
                this.markpos = -1;
                this.pos = 0;
                this.count = n4;
            }
            return n4;
        }
        if (this.markpos == 0 && this.marklimit > arrby.length && this.count == arrby.length) {
            n3 = n2 = arrby.length * 2;
            if (n2 > this.marklimit) {
                n3 = this.marklimit;
            }
            if (Log.isLoggable((String)"BufferedIs", (int)3)) {
                Log.d((String)"BufferedIs", (String)("allocate buffer of length: " + n3));
            }
            arrby2 = new byte[n3];
            System.arraycopy(arrby, 0, arrby2, 0, arrby.length);
            this.buf = arrby2;
        } else {
            arrby2 = arrby;
            if (this.markpos > 0) {
                System.arraycopy(arrby, this.markpos, arrby, 0, arrby.length - this.markpos);
                arrby2 = arrby;
            }
        }
        this.pos -= this.markpos;
        this.markpos = 0;
        this.count = 0;
        n2 = inputStream.read(arrby2, this.pos, arrby2.length - this.pos);
        n3 = n2 <= 0 ? this.pos : this.pos + n2;
        this.count = n3;
        return n2;
    }

    private static IOException streamClosed() throws IOException {
        throw new IOException("BufferedInputStream is closed");
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    @Override
    public int available() throws IOException {
        synchronized (this) {
            InputStream inputStream = this.in;
            if (this.buf != null && inputStream != null) {
                int n2 = this.count;
                int n3 = this.pos;
                int n4 = inputStream.available();
                return n2 - n3 + n4;
            }
            throw RecyclableBufferedInputStream.streamClosed();
        }
    }

    @Override
    public void close() throws IOException {
        this.buf = null;
        InputStream inputStream = this.in;
        this.in = null;
        if (inputStream != null) {
            inputStream.close();
        }
    }

    public void fixMarkLimit() {
        synchronized (this) {
            this.marklimit = this.buf.length;
            return;
        }
    }

    @Override
    public void mark(int n2) {
        synchronized (this) {
            this.marklimit = Math.max(this.marklimit, n2);
            this.markpos = this.pos;
            return;
        }
    }

    @Override
    public boolean markSupported() {
        return true;
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    @Override
    public int read() throws IOException {
        int n2 = -1;
        synchronized (this) {
            int n3;
            byte[] arrby = this.buf;
            byte[] arrby2 = this.in;
            if (arrby == null || arrby2 == null) {
                throw RecyclableBufferedInputStream.streamClosed();
            }
            if (this.pos < this.count || (n3 = this.fillbuf((InputStream)arrby2, arrby)) != -1) {
                arrby2 = arrby;
                if (arrby != this.buf) {
                    arrby2 = arrby = this.buf;
                    if (arrby == null) {
                        throw RecyclableBufferedInputStream.streamClosed();
                    }
                }
                if (this.count - this.pos > 0) {
                    n2 = this.pos;
                    this.pos = n2 + 1;
                    n2 = arrby2[n2];
                    n2 &= 255;
                }
            }
            return n2;
        }
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    @Override
    public int read(byte[] arrby, int n2, int n3) throws IOException {
        int n4 = -1;
        synchronized (this) {
            int n5;
            byte[] arrby2 = this.buf;
            if (arrby2 == null) {
                throw RecyclableBufferedInputStream.streamClosed();
            }
            if (n3 == 0) {
                return 0;
            }
            InputStream inputStream = this.in;
            if (inputStream == null) {
                throw RecyclableBufferedInputStream.streamClosed();
            }
            if (this.pos < this.count) {
                n5 = this.count - this.pos >= n3 ? n3 : this.count - this.pos;
                System.arraycopy(arrby2, this.pos, arrby, n2, n5);
                this.pos += n5;
                if (n5 == n3) return n5;
                if (inputStream.available() == 0) {
                    return n5;
                }
                n2 += n5;
                n5 = n3 - n5;
            } else {
                n5 = n3;
            }
            do {
                int n6;
                byte[] arrby3;
                int n7;
                if (this.markpos == -1 && n5 >= arrby2.length) {
                    n7 = inputStream.read(arrby, n2, n5);
                    arrby3 = arrby2;
                    n6 = n7;
                    if (n7 == -1) {
                        n2 = n4;
                        if (n5 == n3) return n2;
                        return n3 - n5;
                    }
                } else {
                    if (this.fillbuf(inputStream, arrby2) == -1) {
                        n2 = n4;
                        if (n5 == n3) return n2;
                        return n3 - n5;
                    }
                    arrby3 = arrby2;
                    if (arrby2 != this.buf) {
                        arrby3 = arrby2 = this.buf;
                        if (arrby2 == null) {
                            throw RecyclableBufferedInputStream.streamClosed();
                        }
                    }
                    n6 = this.count - this.pos >= n5 ? n5 : this.count - this.pos;
                    System.arraycopy(arrby3, this.pos, arrby, n2, n6);
                    this.pos += n6;
                }
                if ((n5 -= n6) == 0) {
                    return n3;
                }
                n7 = inputStream.available();
                if (n7 == 0) {
                    return n3 - n5;
                }
                n2 += n6;
                arrby2 = arrby3;
            } while (true);
        }
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    @Override
    public void reset() throws IOException {
        synchronized (this) {
            if (this.buf == null) {
                throw new IOException("Stream is closed");
            }
            if (-1 == this.markpos) {
                throw new InvalidMarkException("Mark has been invalidated");
            }
            this.pos = this.markpos;
            return;
        }
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     * Converted monitor instructions to comments
     * Lifted jumps to return sites
     */
    @Override
    public long skip(long l2) throws IOException {
        // MONITORENTER : this
        byte[] arrby = this.buf;
        InputStream inputStream = this.in;
        if (arrby == null) {
            throw RecyclableBufferedInputStream.streamClosed();
        }
        if (l2 < 1) {
            l2 = 0;
            // MONITOREXIT : this
            return l2;
        }
        if (inputStream == null) {
            throw RecyclableBufferedInputStream.streamClosed();
        }
        if ((long)(this.count - this.pos) >= l2) {
            this.pos = (int)((long)this.pos + l2);
            return l2;
        }
        long l3 = this.count - this.pos;
        this.pos = this.count;
        if (this.markpos != -1 && l2 <= (long)this.marklimit) {
            if (this.fillbuf(inputStream, arrby) == -1) {
                return l3;
            }
            if ((long)(this.count - this.pos) >= l2 - l3) {
                this.pos = (int)((long)this.pos + (l2 - l3));
                return l2;
            }
            l2 = this.count;
            long l4 = this.pos;
            this.pos = this.count;
            return l2 + l3 - l4;
        }
        l2 = inputStream.skip(l2 - l3);
        return l3 + l2;
    }

    public static class InvalidMarkException
    extends RuntimeException {
        private static final long serialVersionUID = -4338378848813561757L;

        public InvalidMarkException(String string2) {
            super(string2);
        }
    }

}

