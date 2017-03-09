/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.util.Log
 */
package com.bumptech.glide.load.resource.bitmap;

import android.util.Log;
import java.io.IOException;
import java.io.InputStream;
import java.io.UnsupportedEncodingException;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;

public class ImageHeaderParser {
    private static final int[] BYTES_PER_FORMAT;
    private static final int EXIF_MAGIC_NUMBER = 65496;
    private static final int EXIF_SEGMENT_TYPE = 225;
    private static final int GIF_HEADER = 4671814;
    private static final int INTEL_TIFF_MAGIC_NUMBER = 18761;
    private static final String JPEG_EXIF_SEGMENT_PREAMBLE = "Exif\u0000\u0000";
    private static final byte[] JPEG_EXIF_SEGMENT_PREAMBLE_BYTES;
    private static final int MARKER_EOI = 217;
    private static final int MOTOROLA_TIFF_MAGIC_NUMBER = 19789;
    private static final int ORIENTATION_TAG_TYPE = 274;
    private static final int PNG_HEADER = -1991225785;
    private static final int SEGMENT_SOS = 218;
    private static final int SEGMENT_START_ID = 255;
    private static final String TAG = "ImageHeaderParser";
    private final StreamReader streamReader;

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    static {
        byte[] arrby;
        BYTES_PER_FORMAT = new int[]{0, 1, 1, 2, 4, 8, 1, 1, 2, 4, 8, 4, 8};
        arrby = new byte[]{};
        try {
            byte[] arrby2;
            arrby = arrby2 = "Exif\u0000\u0000".getBytes("UTF-8");
        }
        catch (UnsupportedEncodingException var1_2) {}
        JPEG_EXIF_SEGMENT_PREAMBLE_BYTES = arrby;
    }

    public ImageHeaderParser(InputStream inputStream) {
        this.streamReader = new StreamReader(inputStream);
    }

    private static int calcTagOffset(int n2, int n3) {
        return n2 + 2 + n3 * 12;
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    private byte[] getExifSegment() throws IOException {
        int n2;
        short s2;
        block4 : {
            long l2;
            do {
                if ((s2 = this.streamReader.getUInt8()) != 255) {
                    if (!Log.isLoggable((String)"ImageHeaderParser", (int)3)) return null;
                    Log.d((String)"ImageHeaderParser", (String)("Unknown segmentId=" + s2));
                    return null;
                }
                s2 = this.streamReader.getUInt8();
                if (s2 == 218) {
                    return null;
                }
                if (s2 == 217) {
                    if (!Log.isLoggable((String)"ImageHeaderParser", (int)3)) return null;
                    Log.d((String)"ImageHeaderParser", (String)"Found MARKER_EOI in exif segment");
                    return null;
                }
                n2 = this.streamReader.getUInt16() - 2;
                if (s2 == 225) break block4;
            } while ((l2 = this.streamReader.skip(n2)) == (long)n2);
            if (!Log.isLoggable((String)"ImageHeaderParser", (int)3)) return null;
            Log.d((String)"ImageHeaderParser", (String)("Unable to skip enough data, type: " + s2 + ", wanted to skip: " + n2 + ", but actually skipped: " + l2));
            return null;
        }
        byte[] arrby = new byte[n2];
        int n3 = this.streamReader.read(arrby);
        if (n3 == n2) return arrby;
        if (!Log.isLoggable((String)"ImageHeaderParser", (int)3)) return null;
        Log.d((String)"ImageHeaderParser", (String)("Unable to read segment data, type: " + s2 + ", length: " + n2 + ", actually read: " + n3));
        return null;
    }

    private static boolean handles(int n2) {
        if ((n2 & 65496) == 65496 || n2 == 19789 || n2 == 18761) {
            return true;
        }
        return false;
    }

    /*
     * Enabled aggressive block sorting
     */
    private static int parseExifSegment(RandomAccessReader randomAccessReader) {
        ByteOrder byteOrder;
        int n2 = "Exif\u0000\u0000".length();
        int n3 = randomAccessReader.getInt16(n2);
        if (n3 == 19789) {
            byteOrder = ByteOrder.BIG_ENDIAN;
        } else if (n3 == 18761) {
            byteOrder = ByteOrder.LITTLE_ENDIAN;
        } else {
            if (Log.isLoggable((String)"ImageHeaderParser", (int)3)) {
                Log.d((String)"ImageHeaderParser", (String)("Unknown endianness = " + n3));
            }
            byteOrder = ByteOrder.BIG_ENDIAN;
        }
        randomAccessReader.order(byteOrder);
        n3 = randomAccessReader.getInt32(n2 + 4) + n2;
        short s2 = randomAccessReader.getInt16(n3);
        n2 = 0;
        while (n2 < s2) {
            int n4 = ImageHeaderParser.calcTagOffset(n3, n2);
            short s3 = randomAccessReader.getInt16(n4);
            if (s3 == 274) {
                short s4 = randomAccessReader.getInt16(n4 + 2);
                if (s4 < 1 || s4 > 12) {
                    if (Log.isLoggable((String)"ImageHeaderParser", (int)3)) {
                        Log.d((String)"ImageHeaderParser", (String)("Got invalid format code=" + s4));
                    }
                } else {
                    int n5 = randomAccessReader.getInt32(n4 + 4);
                    if (n5 < 0) {
                        if (Log.isLoggable((String)"ImageHeaderParser", (int)3)) {
                            Log.d((String)"ImageHeaderParser", (String)"Negative tiff component count");
                        }
                    } else {
                        if (Log.isLoggable((String)"ImageHeaderParser", (int)3)) {
                            Log.d((String)"ImageHeaderParser", (String)("Got tagIndex=" + n2 + " tagType=" + s3 + " formatCode=" + s4 + " componentCount=" + n5));
                        }
                        if ((n5 += BYTES_PER_FORMAT[s4]) > 4) {
                            if (Log.isLoggable((String)"ImageHeaderParser", (int)3)) {
                                Log.d((String)"ImageHeaderParser", (String)("Got byte count > 4, not orientation, continuing, formatCode=" + s4));
                            }
                        } else if ((n4 += 8) < 0 || n4 > randomAccessReader.length()) {
                            if (Log.isLoggable((String)"ImageHeaderParser", (int)3)) {
                                Log.d((String)"ImageHeaderParser", (String)("Illegal tagValueOffset=" + n4 + " tagType=" + s3));
                            }
                        } else {
                            if (n5 >= 0 && n4 + n5 <= randomAccessReader.length()) {
                                return randomAccessReader.getInt16(n4);
                            }
                            if (Log.isLoggable((String)"ImageHeaderParser", (int)3)) {
                                Log.d((String)"ImageHeaderParser", (String)("Illegal number of bytes for TI tag data tagType=" + s3));
                            }
                        }
                    }
                }
            }
            ++n2;
        }
        return -1;
    }

    /*
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    public int getOrientation() throws IOException {
        if (!ImageHeaderParser.handles(this.streamReader.getUInt16())) {
            return -1;
        }
        byte[] arrby = this.getExifSegment();
        if (arrby == null) return -1;
        if (arrby.length <= JPEG_EXIF_SEGMENT_PREAMBLE_BYTES.length) return -1;
        boolean bl = true;
        boolean bl2 = bl;
        if (!bl) {
            if (!bl2) return -1;
            return ImageHeaderParser.parseExifSegment(new RandomAccessReader(arrby));
        }
        int n2 = 0;
        do {
            bl2 = bl;
            if (n2 >= JPEG_EXIF_SEGMENT_PREAMBLE_BYTES.length) return ImageHeaderParser.parseExifSegment(new RandomAccessReader(arrby));
            if (arrby[n2] != JPEG_EXIF_SEGMENT_PREAMBLE_BYTES[n2]) {
                return -1;
            }
            ++n2;
        } while (true);
    }

    public ImageType getType() throws IOException {
        int n2 = this.streamReader.getUInt16();
        if (n2 == 65496) {
            return ImageType.JPEG;
        }
        if ((n2 = n2 << 16 & -65536 | this.streamReader.getUInt16() & 65535) == -1991225785) {
            this.streamReader.skip(21);
            if (this.streamReader.getByte() >= 3) {
                return ImageType.PNG_A;
            }
            return ImageType.PNG;
        }
        if (n2 >> 8 == 4671814) {
            return ImageType.GIF;
        }
        return ImageType.UNKNOWN;
    }

    public boolean hasAlpha() throws IOException {
        return this.getType().hasAlpha();
    }

    public static enum ImageType {
        GIF(true),
        JPEG(false),
        PNG_A(true),
        PNG(false),
        UNKNOWN(false);
        
        private final boolean hasAlpha;

        private ImageType(boolean bl) {
            this.hasAlpha = bl;
        }

        public boolean hasAlpha() {
            return this.hasAlpha;
        }
    }

    private static class RandomAccessReader {
        private final ByteBuffer data;

        public RandomAccessReader(byte[] arrby) {
            this.data = ByteBuffer.wrap(arrby);
            this.data.order(ByteOrder.BIG_ENDIAN);
        }

        public short getInt16(int n2) {
            return this.data.getShort(n2);
        }

        public int getInt32(int n2) {
            return this.data.getInt(n2);
        }

        public int length() {
            return this.data.array().length;
        }

        public void order(ByteOrder byteOrder) {
            this.data.order(byteOrder);
        }
    }

    private static class StreamReader {
        private final InputStream is;

        public StreamReader(InputStream inputStream) {
            this.is = inputStream;
        }

        public int getByte() throws IOException {
            return this.is.read();
        }

        public int getUInt16() throws IOException {
            return this.is.read() << 8 & 65280 | this.is.read() & 255;
        }

        public short getUInt8() throws IOException {
            return (short)(this.is.read() & 255);
        }

        public int read(byte[] arrby) throws IOException {
            int n2;
            int n3;
            for (n2 = arrby.length; n2 > 0 && (n3 = this.is.read(arrby, arrby.length - n2, n2)) != -1; n2 -= n3) {
            }
            return arrby.length - n2;
        }

        /*
         * Enabled force condition propagation
         * Lifted jumps to return sites
         */
        public long skip(long l2) throws IOException {
            if (l2 < 0) {
                return 0;
            }
            long l3 = l2;
            while (l3 > 0) {
                long l4 = this.is.skip(l3);
                if (l4 > 0) {
                    l3 -= l4;
                    continue;
                }
                if (this.is.read() == -1) {
                    return l2 - l3;
                }
                --l3;
            }
            return l2 - l3;
        }
    }

}

