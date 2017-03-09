/*
 * Decompiled with CFR 0_115.
 */
package com.bumptech.glide.load.data;

import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;

public class ExifOrientationStream
extends FilterInputStream {
    private static final byte[] EXIF_SEGMENT = new byte[]{-1, -31, 0, 28, 69, 120, 105, 102, 0, 0, 77, 77, 0, 0, 0, 0, 0, 8, 0, 1, 1, 18, 0, 2, 0, 0, 0, 1, 0};
    private static final int ORIENTATION_POSITION;
    private static final int SEGMENT_LENGTH;
    private static final int SEGMENT_START_POSITION = 2;
    private final byte orientation;
    private int position;

    static {
        SEGMENT_LENGTH = EXIF_SEGMENT.length;
        ORIENTATION_POSITION = SEGMENT_LENGTH + 2;
    }

    public ExifOrientationStream(InputStream inputStream, int n2) {
        super(inputStream);
        if (n2 < -1 || n2 > 8) {
            throw new IllegalArgumentException("Cannot add invalid orientation: " + n2);
        }
        this.orientation = (byte)n2;
    }

    @Override
    public void mark(int n2) {
        throw new UnsupportedOperationException();
    }

    @Override
    public boolean markSupported() {
        return false;
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    public int read() throws IOException {
        int n2 = this.position < 2 || this.position > ORIENTATION_POSITION ? super.read() : (this.position == ORIENTATION_POSITION ? this.orientation : EXIF_SEGMENT[this.position - 2] & 255);
        if (n2 != -1) {
            ++this.position;
        }
        return n2;
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    public int read(byte[] arrby, int n2, int n3) throws IOException {
        if (this.position > ORIENTATION_POSITION) {
            n2 = super.read(arrby, n2, n3);
        } else if (this.position == ORIENTATION_POSITION) {
            arrby[n2] = this.orientation;
            n2 = 1;
        } else if (this.position < 2) {
            n2 = super.read(arrby, n2, 2 - this.position);
        } else {
            n3 = Math.min(ORIENTATION_POSITION - this.position, n3);
            System.arraycopy(EXIF_SEGMENT, this.position - 2, arrby, n2, n3);
            n2 = n3;
        }
        if (n2 > 0) {
            this.position += n2;
        }
        return n2;
    }

    @Override
    public void reset() throws IOException {
        throw new UnsupportedOperationException();
    }

    @Override
    public long skip(long l2) throws IOException {
        if ((l2 = super.skip(l2)) > 0) {
            this.position = (int)((long)this.position + l2);
        }
        return l2;
    }
}

