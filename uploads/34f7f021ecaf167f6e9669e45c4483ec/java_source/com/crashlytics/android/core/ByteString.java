/*
 * Decompiled with CFR 0_115.
 */
package com.crashlytics.android.core;

import com.crashlytics.android.core.CodedOutputStream;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.FilterOutputStream;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.UnsupportedEncodingException;
import java.nio.ByteBuffer;
import java.util.Iterator;
import java.util.List;

final class ByteString {
    public static final ByteString EMPTY = new ByteString(new byte[0]);
    private final byte[] bytes;
    private volatile int hash = 0;

    private ByteString(byte[] arrby) {
        this.bytes = arrby;
    }

    public static ByteString copyFrom(String string2, String string3) throws UnsupportedEncodingException {
        return new ByteString(string2.getBytes(string3));
    }

    public static ByteString copyFrom(ByteBuffer byteBuffer) {
        return ByteString.copyFrom(byteBuffer, byteBuffer.remaining());
    }

    public static ByteString copyFrom(ByteBuffer byteBuffer, int n2) {
        byte[] arrby = new byte[n2];
        byteBuffer.get(arrby);
        return new ByteString(arrby);
    }

    public static ByteString copyFrom(List<ByteString> object) {
        if (object.size() == 0) {
            return EMPTY;
        }
        if (object.size() == 1) {
            return object.get(0);
        }
        int n2 = 0;
        byte[] arrby = object.iterator();
        while (arrby.hasNext()) {
            n2 += arrby.next().size();
        }
        arrby = new byte[n2];
        n2 = 0;
        object = object.iterator();
        while (object.hasNext()) {
            ByteString byteString = (ByteString)object.next();
            System.arraycopy(byteString.bytes, 0, arrby, n2, byteString.size());
            n2 += byteString.size();
        }
        return new ByteString(arrby);
    }

    public static ByteString copyFrom(byte[] arrby) {
        return ByteString.copyFrom(arrby, 0, arrby.length);
    }

    public static ByteString copyFrom(byte[] arrby, int n2, int n3) {
        byte[] arrby2 = new byte[n3];
        System.arraycopy(arrby, n2, arrby2, 0, n3);
        return new ByteString(arrby2);
    }

    public static ByteString copyFromUtf8(String object) {
        try {
            object = new ByteString(object.getBytes("UTF-8"));
            return object;
        }
        catch (UnsupportedEncodingException var0_1) {
            throw new RuntimeException("UTF-8 not supported.", var0_1);
        }
    }

    static CodedBuilder newCodedBuilder(int n2) {
        return new CodedBuilder(n2);
    }

    public static Output newOutput() {
        return ByteString.newOutput(32);
    }

    public static Output newOutput(int n2) {
        return new Output(new ByteArrayOutputStream(n2));
    }

    public ByteBuffer asReadOnlyByteBuffer() {
        return ByteBuffer.wrap(this.bytes).asReadOnlyBuffer();
    }

    public byte byteAt(int n2) {
        return this.bytes[n2];
    }

    public void copyTo(ByteBuffer byteBuffer) {
        byteBuffer.put(this.bytes, 0, this.bytes.length);
    }

    public void copyTo(byte[] arrby, int n2) {
        System.arraycopy(this.bytes, 0, arrby, n2, this.bytes.length);
    }

    public void copyTo(byte[] arrby, int n2, int n3, int n4) {
        System.arraycopy(this.bytes, n2, arrby, n3, n4);
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    public boolean equals(Object arrby) {
        if (arrby == this) {
            return true;
        }
        if (!(arrby instanceof ByteString)) {
            return false;
        }
        byte[] arrby2 = arrby;
        int n2 = this.bytes.length;
        if (n2 != arrby2.bytes.length) {
            return false;
        }
        arrby = this.bytes;
        arrby2 = arrby2.bytes;
        int n3 = 0;
        while (n3 < n2) {
            if (arrby[n3] != arrby2[n3]) {
                return false;
            }
            ++n3;
        }
        return true;
    }

    public int hashCode() {
        int n2;
        int n3 = n2 = this.hash;
        if (n2 == 0) {
            int n4;
            byte[] arrby = this.bytes;
            n2 = n4 = this.bytes.length;
            for (n3 = 0; n3 < n4; ++n3) {
                n2 = n2 * 31 + arrby[n3];
            }
            n3 = n2;
            if (n2 == 0) {
                n3 = 1;
            }
            this.hash = n3;
        }
        return n3;
    }

    public boolean isEmpty() {
        if (this.bytes.length == 0) {
            return true;
        }
        return false;
    }

    public InputStream newInput() {
        return new ByteArrayInputStream(this.bytes);
    }

    public int size() {
        return this.bytes.length;
    }

    public byte[] toByteArray() {
        int n2 = this.bytes.length;
        byte[] arrby = new byte[n2];
        System.arraycopy(this.bytes, 0, arrby, 0, n2);
        return arrby;
    }

    public String toString(String string2) throws UnsupportedEncodingException {
        return new String(this.bytes, string2);
    }

    public String toStringUtf8() {
        try {
            String string2 = new String(this.bytes, "UTF-8");
            return string2;
        }
        catch (UnsupportedEncodingException var1_2) {
            throw new RuntimeException("UTF-8 not supported?", var1_2);
        }
    }

    static final class CodedBuilder {
        private final byte[] buffer;
        private final CodedOutputStream output;

        private CodedBuilder(int n2) {
            this.buffer = new byte[n2];
            this.output = CodedOutputStream.newInstance(this.buffer);
        }

        public ByteString build() {
            this.output.checkNoSpaceLeft();
            return new ByteString(this.buffer);
        }

        public CodedOutputStream getCodedOutput() {
            return this.output;
        }
    }

    static final class Output
    extends FilterOutputStream {
        private final ByteArrayOutputStream bout;

        private Output(ByteArrayOutputStream byteArrayOutputStream) {
            super(byteArrayOutputStream);
            this.bout = byteArrayOutputStream;
        }

        public ByteString toByteString() {
            return new ByteString(this.bout.toByteArray());
        }
    }

}

