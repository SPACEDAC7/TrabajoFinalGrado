/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  org.apache.http.annotation.NotThreadSafe
 *  org.apache.http.entity.ContentType
 *  org.apache.http.util.Args
 */
package org.apache.http.entity;

import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import org.apache.http.annotation.NotThreadSafe;
import org.apache.http.entity.AbstractHttpEntity;
import org.apache.http.entity.ContentType;
import org.apache.http.util.Args;

@NotThreadSafe
public class ByteArrayEntity
extends AbstractHttpEntity
implements Cloneable {
    private final byte[] b;
    @Deprecated
    protected final byte[] content;
    private final int len;
    private final int off;

    public ByteArrayEntity(byte[] arrby) {
        this(arrby, null);
    }

    public ByteArrayEntity(byte[] arrby, int n2, int n3) {
        this(arrby, n2, n3, null);
    }

    public ByteArrayEntity(byte[] arrby, int n2, int n3, ContentType contentType) {
        Args.notNull((Object)arrby, (String)"Source byte array");
        if (n2 < 0 || n2 > arrby.length || n3 < 0 || n2 + n3 < 0 || n2 + n3 > arrby.length) {
            throw new IndexOutOfBoundsException("off: " + n2 + " len: " + n3 + " b.length: " + arrby.length);
        }
        this.content = arrby;
        this.b = arrby;
        this.off = n2;
        this.len = n3;
        if (contentType != null) {
            this.setContentType(contentType.toString());
        }
    }

    public ByteArrayEntity(byte[] arrby, ContentType contentType) {
        Args.notNull((Object)arrby, (String)"Source byte array");
        this.content = arrby;
        this.b = arrby;
        this.off = 0;
        this.len = this.b.length;
        if (contentType != null) {
            this.setContentType(contentType.toString());
        }
    }

    public Object clone() throws CloneNotSupportedException {
        return super.clone();
    }

    @Override
    public InputStream getContent() {
        return new ByteArrayInputStream(this.b, this.off, this.len);
    }

    @Override
    public long getContentLength() {
        return this.len;
    }

    @Override
    public boolean isRepeatable() {
        return true;
    }

    @Override
    public boolean isStreaming() {
        return false;
    }

    @Override
    public void writeTo(OutputStream outputStream) throws IOException {
        Args.notNull((Object)outputStream, (String)"Output stream");
        outputStream.write(this.b, this.off, this.len);
        outputStream.flush();
    }
}

