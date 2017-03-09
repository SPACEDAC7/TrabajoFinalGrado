/*
 * Decompiled with CFR 0_115.
 */
package com.crashlytics.android.core;

import com.crashlytics.android.core.ByteString;
import com.crashlytics.android.core.WireFormat;
import java.io.Flushable;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.UnsupportedEncodingException;

final class CodedOutputStream
implements Flushable {
    public static final int DEFAULT_BUFFER_SIZE = 4096;
    public static final int LITTLE_ENDIAN_32_SIZE = 4;
    public static final int LITTLE_ENDIAN_64_SIZE = 8;
    private final byte[] buffer;
    private final int limit;
    private final OutputStream output;
    private int position;

    private CodedOutputStream(OutputStream outputStream, byte[] arrby) {
        this.output = outputStream;
        this.buffer = arrby;
        this.position = 0;
        this.limit = arrby.length;
    }

    private CodedOutputStream(byte[] arrby, int n2, int n3) {
        this.output = null;
        this.buffer = arrby;
        this.position = n2;
        this.limit = n2 + n3;
    }

    public static int computeBoolSize(int n2, boolean bl) {
        return CodedOutputStream.computeTagSize(n2) + CodedOutputStream.computeBoolSizeNoTag(bl);
    }

    public static int computeBoolSizeNoTag(boolean bl) {
        return 1;
    }

    public static int computeBytesSize(int n2, ByteString byteString) {
        return CodedOutputStream.computeTagSize(n2) + CodedOutputStream.computeBytesSizeNoTag(byteString);
    }

    public static int computeBytesSizeNoTag(ByteString byteString) {
        return CodedOutputStream.computeRawVarint32Size(byteString.size()) + byteString.size();
    }

    public static int computeDoubleSize(int n2, double d2) {
        return CodedOutputStream.computeTagSize(n2) + CodedOutputStream.computeDoubleSizeNoTag(d2);
    }

    public static int computeDoubleSizeNoTag(double d2) {
        return 8;
    }

    public static int computeEnumSize(int n2, int n3) {
        return CodedOutputStream.computeTagSize(n2) + CodedOutputStream.computeEnumSizeNoTag(n3);
    }

    public static int computeEnumSizeNoTag(int n2) {
        return CodedOutputStream.computeInt32SizeNoTag(n2);
    }

    public static int computeFixed32Size(int n2, int n3) {
        return CodedOutputStream.computeTagSize(n2) + CodedOutputStream.computeFixed32SizeNoTag(n3);
    }

    public static int computeFixed32SizeNoTag(int n2) {
        return 4;
    }

    public static int computeFixed64Size(int n2, long l2) {
        return CodedOutputStream.computeTagSize(n2) + CodedOutputStream.computeFixed64SizeNoTag(l2);
    }

    public static int computeFixed64SizeNoTag(long l2) {
        return 8;
    }

    public static int computeFloatSize(int n2, float f2) {
        return CodedOutputStream.computeTagSize(n2) + CodedOutputStream.computeFloatSizeNoTag(f2);
    }

    public static int computeFloatSizeNoTag(float f2) {
        return 4;
    }

    public static int computeInt32Size(int n2, int n3) {
        return CodedOutputStream.computeTagSize(n2) + CodedOutputStream.computeInt32SizeNoTag(n3);
    }

    public static int computeInt32SizeNoTag(int n2) {
        if (n2 >= 0) {
            return CodedOutputStream.computeRawVarint32Size(n2);
        }
        return 10;
    }

    public static int computeInt64Size(int n2, long l2) {
        return CodedOutputStream.computeTagSize(n2) + CodedOutputStream.computeInt64SizeNoTag(l2);
    }

    public static int computeInt64SizeNoTag(long l2) {
        return CodedOutputStream.computeRawVarint64Size(l2);
    }

    static int computePreferredBufferSize(int n2) {
        int n3 = n2;
        if (n2 > 4096) {
            n3 = 4096;
        }
        return n3;
    }

    public static int computeRawMessageSetExtensionSize(int n2, ByteString byteString) {
        return CodedOutputStream.computeTagSize(1) * 2 + CodedOutputStream.computeUInt32Size(2, n2) + CodedOutputStream.computeBytesSize(3, byteString);
    }

    public static int computeRawVarint32Size(int n2) {
        if ((n2 & -128) == 0) {
            return 1;
        }
        if ((n2 & -16384) == 0) {
            return 2;
        }
        if ((-2097152 & n2) == 0) {
            return 3;
        }
        if ((-268435456 & n2) == 0) {
            return 4;
        }
        return 5;
    }

    public static int computeRawVarint64Size(long l2) {
        if ((-128 & l2) == 0) {
            return 1;
        }
        if ((-16384 & l2) == 0) {
            return 2;
        }
        if ((-2097152 & l2) == 0) {
            return 3;
        }
        if ((-268435456 & l2) == 0) {
            return 4;
        }
        if ((-34359738368L & l2) == 0) {
            return 5;
        }
        if ((-4398046511104L & l2) == 0) {
            return 6;
        }
        if ((-562949953421312L & l2) == 0) {
            return 7;
        }
        if ((-72057594037927936L & l2) == 0) {
            return 8;
        }
        if ((Long.MIN_VALUE & l2) == 0) {
            return 9;
        }
        return 10;
    }

    public static int computeSFixed32Size(int n2, int n3) {
        return CodedOutputStream.computeTagSize(n2) + CodedOutputStream.computeSFixed32SizeNoTag(n3);
    }

    public static int computeSFixed32SizeNoTag(int n2) {
        return 4;
    }

    public static int computeSFixed64Size(int n2, long l2) {
        return CodedOutputStream.computeTagSize(n2) + CodedOutputStream.computeSFixed64SizeNoTag(l2);
    }

    public static int computeSFixed64SizeNoTag(long l2) {
        return 8;
    }

    public static int computeSInt32Size(int n2, int n3) {
        return CodedOutputStream.computeTagSize(n2) + CodedOutputStream.computeSInt32SizeNoTag(n3);
    }

    public static int computeSInt32SizeNoTag(int n2) {
        return CodedOutputStream.computeRawVarint32Size(CodedOutputStream.encodeZigZag32(n2));
    }

    public static int computeSInt64Size(int n2, long l2) {
        return CodedOutputStream.computeTagSize(n2) + CodedOutputStream.computeSInt64SizeNoTag(l2);
    }

    public static int computeSInt64SizeNoTag(long l2) {
        return CodedOutputStream.computeRawVarint64Size(CodedOutputStream.encodeZigZag64(l2));
    }

    public static int computeStringSize(int n2, String string2) {
        return CodedOutputStream.computeTagSize(n2) + CodedOutputStream.computeStringSizeNoTag(string2);
    }

    public static int computeStringSizeNoTag(String arrby) {
        try {
            arrby = arrby.getBytes("UTF-8");
            int n2 = CodedOutputStream.computeRawVarint32Size(arrby.length);
            int n3 = arrby.length;
            return n2 + n3;
        }
        catch (UnsupportedEncodingException var0_1) {
            throw new RuntimeException("UTF-8 not supported.", var0_1);
        }
    }

    public static int computeTagSize(int n2) {
        return CodedOutputStream.computeRawVarint32Size(WireFormat.makeTag(n2, 0));
    }

    public static int computeUInt32Size(int n2, int n3) {
        return CodedOutputStream.computeTagSize(n2) + CodedOutputStream.computeUInt32SizeNoTag(n3);
    }

    public static int computeUInt32SizeNoTag(int n2) {
        return CodedOutputStream.computeRawVarint32Size(n2);
    }

    public static int computeUInt64Size(int n2, long l2) {
        return CodedOutputStream.computeTagSize(n2) + CodedOutputStream.computeUInt64SizeNoTag(l2);
    }

    public static int computeUInt64SizeNoTag(long l2) {
        return CodedOutputStream.computeRawVarint64Size(l2);
    }

    public static int encodeZigZag32(int n2) {
        return n2 << 1 ^ n2 >> 31;
    }

    public static long encodeZigZag64(long l2) {
        return l2 << 1 ^ l2 >> 63;
    }

    public static CodedOutputStream newInstance(OutputStream outputStream) {
        return CodedOutputStream.newInstance(outputStream, 4096);
    }

    public static CodedOutputStream newInstance(OutputStream outputStream, int n2) {
        return new CodedOutputStream(outputStream, new byte[n2]);
    }

    public static CodedOutputStream newInstance(byte[] arrby) {
        return CodedOutputStream.newInstance(arrby, 0, arrby.length);
    }

    public static CodedOutputStream newInstance(byte[] arrby, int n2, int n3) {
        return new CodedOutputStream(arrby, n2, n3);
    }

    private void refreshBuffer() throws IOException {
        if (this.output == null) {
            throw new OutOfSpaceException();
        }
        this.output.write(this.buffer, 0, this.position);
        this.position = 0;
    }

    public void checkNoSpaceLeft() {
        if (this.spaceLeft() != 0) {
            throw new IllegalStateException("Did not write as much data as expected.");
        }
    }

    @Override
    public void flush() throws IOException {
        if (this.output != null) {
            this.refreshBuffer();
        }
    }

    public int spaceLeft() {
        if (this.output == null) {
            return this.limit - this.position;
        }
        throw new UnsupportedOperationException("spaceLeft() can only be called on CodedOutputStreams that are writing to a flat array.");
    }

    public void writeBool(int n2, boolean bl) throws IOException {
        this.writeTag(n2, 0);
        this.writeBoolNoTag(bl);
    }

    /*
     * Enabled aggressive block sorting
     */
    public void writeBoolNoTag(boolean bl) throws IOException {
        int n2 = bl ? 1 : 0;
        this.writeRawByte(n2);
    }

    public void writeBytes(int n2, ByteString byteString) throws IOException {
        this.writeTag(n2, 2);
        this.writeBytesNoTag(byteString);
    }

    public void writeBytesNoTag(ByteString byteString) throws IOException {
        this.writeRawVarint32(byteString.size());
        this.writeRawBytes(byteString);
    }

    public void writeDouble(int n2, double d2) throws IOException {
        this.writeTag(n2, 1);
        this.writeDoubleNoTag(d2);
    }

    public void writeDoubleNoTag(double d2) throws IOException {
        this.writeRawLittleEndian64(Double.doubleToRawLongBits(d2));
    }

    public void writeEnum(int n2, int n3) throws IOException {
        this.writeTag(n2, 0);
        this.writeEnumNoTag(n3);
    }

    public void writeEnumNoTag(int n2) throws IOException {
        this.writeInt32NoTag(n2);
    }

    public void writeFixed32(int n2, int n3) throws IOException {
        this.writeTag(n2, 5);
        this.writeFixed32NoTag(n3);
    }

    public void writeFixed32NoTag(int n2) throws IOException {
        this.writeRawLittleEndian32(n2);
    }

    public void writeFixed64(int n2, long l2) throws IOException {
        this.writeTag(n2, 1);
        this.writeFixed64NoTag(l2);
    }

    public void writeFixed64NoTag(long l2) throws IOException {
        this.writeRawLittleEndian64(l2);
    }

    public void writeFloat(int n2, float f2) throws IOException {
        this.writeTag(n2, 5);
        this.writeFloatNoTag(f2);
    }

    public void writeFloatNoTag(float f2) throws IOException {
        this.writeRawLittleEndian32(Float.floatToRawIntBits(f2));
    }

    public void writeInt32(int n2, int n3) throws IOException {
        this.writeTag(n2, 0);
        this.writeInt32NoTag(n3);
    }

    public void writeInt32NoTag(int n2) throws IOException {
        if (n2 >= 0) {
            this.writeRawVarint32(n2);
            return;
        }
        this.writeRawVarint64(n2);
    }

    public void writeInt64(int n2, long l2) throws IOException {
        this.writeTag(n2, 0);
        this.writeInt64NoTag(l2);
    }

    public void writeInt64NoTag(long l2) throws IOException {
        this.writeRawVarint64(l2);
    }

    public void writeRawByte(byte by) throws IOException {
        if (this.position == this.limit) {
            this.refreshBuffer();
        }
        byte[] arrby = this.buffer;
        int n2 = this.position;
        this.position = n2 + 1;
        arrby[n2] = by;
    }

    public void writeRawByte(int n2) throws IOException {
        this.writeRawByte((byte)n2);
    }

    public void writeRawBytes(ByteString byteString) throws IOException {
        this.writeRawBytes(byteString, 0, byteString.size());
    }

    /*
     * Unable to fully structure code
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    public void writeRawBytes(ByteString var1_1, int var2_2, int var3_3) throws IOException {
        if (this.limit - this.position >= var3_3) {
            var1_1.copyTo(this.buffer, var2_2, this.position, var3_3);
            this.position += var3_3;
            return;
        }
        var5_4 = this.limit - this.position;
        var1_1.copyTo(this.buffer, var2_2, this.position, var5_4);
        var4_5 = var2_2 + var5_4;
        var2_2 = var3_3 - var5_4;
        this.position = this.limit;
        this.refreshBuffer();
        if (var2_2 <= this.limit) {
            var1_1.copyTo(this.buffer, var4_5, 0, var2_2);
            this.position = var2_2;
            return;
        }
        if ((long)var4_5 == (var1_1 = var1_1.newInput()).skip(var4_5)) ** GOTO lbl19
        throw new IllegalStateException("Skip failed.");
lbl-1000: // 1 sources:
        {
            this.output.write(this.buffer, 0, var4_5);
            var2_2 -= var4_5;
lbl19: // 2 sources:
            if (var2_2 <= 0) return;
            ** while ((var4_5 = var1_1.read((byte[])this.buffer, (int)0, (int)(var3_3 = Math.min((int)var2_2, (int)this.limit)))) == var3_3)
        }
lbl21: // 1 sources:
        throw new IllegalStateException("Read failed.");
    }

    public void writeRawBytes(byte[] arrby) throws IOException {
        this.writeRawBytes(arrby, 0, arrby.length);
    }

    public void writeRawBytes(byte[] arrby, int n2, int n3) throws IOException {
        if (this.limit - this.position >= n3) {
            System.arraycopy(arrby, n2, this.buffer, this.position, n3);
            this.position += n3;
            return;
        }
        int n4 = this.limit - this.position;
        System.arraycopy(arrby, n2, this.buffer, this.position, n4);
        n2 += n4;
        this.position = this.limit;
        this.refreshBuffer();
        if ((n3 -= n4) <= this.limit) {
            System.arraycopy(arrby, n2, this.buffer, 0, n3);
            this.position = n3;
            return;
        }
        this.output.write(arrby, n2, n3);
    }

    public void writeRawLittleEndian32(int n2) throws IOException {
        this.writeRawByte(n2 & 255);
        this.writeRawByte(n2 >> 8 & 255);
        this.writeRawByte(n2 >> 16 & 255);
        this.writeRawByte(n2 >> 24 & 255);
    }

    public void writeRawLittleEndian64(long l2) throws IOException {
        this.writeRawByte((int)l2 & 255);
        this.writeRawByte((int)(l2 >> 8) & 255);
        this.writeRawByte((int)(l2 >> 16) & 255);
        this.writeRawByte((int)(l2 >> 24) & 255);
        this.writeRawByte((int)(l2 >> 32) & 255);
        this.writeRawByte((int)(l2 >> 40) & 255);
        this.writeRawByte((int)(l2 >> 48) & 255);
        this.writeRawByte((int)(l2 >> 56) & 255);
    }

    public void writeRawMessageSetExtension(int n2, ByteString byteString) throws IOException {
        this.writeTag(1, 3);
        this.writeUInt32(2, n2);
        this.writeBytes(3, byteString);
        this.writeTag(1, 4);
    }

    public void writeRawVarint32(int n2) throws IOException {
        do {
            if ((n2 & -128) == 0) {
                this.writeRawByte(n2);
                return;
            }
            this.writeRawByte(n2 & 127 | 128);
            n2 >>>= 7;
        } while (true);
    }

    public void writeRawVarint64(long l2) throws IOException {
        do {
            if ((-128 & l2) == 0) {
                this.writeRawByte((int)l2);
                return;
            }
            this.writeRawByte((int)l2 & 127 | 128);
            l2 >>>= 7;
        } while (true);
    }

    public void writeSFixed32(int n2, int n3) throws IOException {
        this.writeTag(n2, 5);
        this.writeSFixed32NoTag(n3);
    }

    public void writeSFixed32NoTag(int n2) throws IOException {
        this.writeRawLittleEndian32(n2);
    }

    public void writeSFixed64(int n2, long l2) throws IOException {
        this.writeTag(n2, 1);
        this.writeSFixed64NoTag(l2);
    }

    public void writeSFixed64NoTag(long l2) throws IOException {
        this.writeRawLittleEndian64(l2);
    }

    public void writeSInt32(int n2, int n3) throws IOException {
        this.writeTag(n2, 0);
        this.writeSInt32NoTag(n3);
    }

    public void writeSInt32NoTag(int n2) throws IOException {
        this.writeRawVarint32(CodedOutputStream.encodeZigZag32(n2));
    }

    public void writeSInt64(int n2, long l2) throws IOException {
        this.writeTag(n2, 0);
        this.writeSInt64NoTag(l2);
    }

    public void writeSInt64NoTag(long l2) throws IOException {
        this.writeRawVarint64(CodedOutputStream.encodeZigZag64(l2));
    }

    public void writeString(int n2, String string2) throws IOException {
        this.writeTag(n2, 2);
        this.writeStringNoTag(string2);
    }

    public void writeStringNoTag(String arrby) throws IOException {
        arrby = arrby.getBytes("UTF-8");
        this.writeRawVarint32(arrby.length);
        this.writeRawBytes(arrby);
    }

    public void writeTag(int n2, int n3) throws IOException {
        this.writeRawVarint32(WireFormat.makeTag(n2, n3));
    }

    public void writeUInt32(int n2, int n3) throws IOException {
        this.writeTag(n2, 0);
        this.writeUInt32NoTag(n3);
    }

    public void writeUInt32NoTag(int n2) throws IOException {
        this.writeRawVarint32(n2);
    }

    public void writeUInt64(int n2, long l2) throws IOException {
        this.writeTag(n2, 0);
        this.writeUInt64NoTag(l2);
    }

    public void writeUInt64NoTag(long l2) throws IOException {
        this.writeRawVarint64(l2);
    }

    static class OutOfSpaceException
    extends IOException {
        private static final long serialVersionUID = -6947486886997889499L;

        OutOfSpaceException() {
            super("CodedOutputStream was writing to a flat byte array and ran out of space.");
        }
    }

}

