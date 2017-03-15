/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  org.apache.http.Header
 *  org.apache.http.annotation.NotThreadSafe
 *  org.apache.http.message.BasicHeader
 */
package org.apache.http.entity;

import java.io.IOException;
import org.apache.http.Header;
import org.apache.http.HttpEntity;
import org.apache.http.annotation.NotThreadSafe;
import org.apache.http.message.BasicHeader;

@NotThreadSafe
public abstract class AbstractHttpEntity
implements HttpEntity {
    protected static final int OUTPUT_BUFFER_SIZE = 4096;
    protected boolean chunked;
    protected Header contentEncoding;
    protected Header contentType;

    protected AbstractHttpEntity() {
    }

    @Deprecated
    @Override
    public void consumeContent() throws IOException {
    }

    @Override
    public Header getContentEncoding() {
        return this.contentEncoding;
    }

    @Override
    public Header getContentType() {
        return this.contentType;
    }

    @Override
    public boolean isChunked() {
        return this.chunked;
    }

    public void setChunked(boolean bl) {
        this.chunked = bl;
    }

    public void setContentEncoding(String string2) {
        BasicHeader basicHeader = null;
        if (string2 != null) {
            basicHeader = new BasicHeader("Content-Encoding", string2);
        }
        this.setContentEncoding((Header)basicHeader);
    }

    public void setContentEncoding(Header header) {
        this.contentEncoding = header;
    }

    public void setContentType(String string2) {
        BasicHeader basicHeader = null;
        if (string2 != null) {
            basicHeader = new BasicHeader("Content-Type", string2);
        }
        this.setContentType((Header)basicHeader);
    }

    public void setContentType(Header header) {
        this.contentType = header;
    }

    public String toString() {
        long l2;
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append('[');
        if (this.contentType != null) {
            stringBuilder.append("Content-Type: ");
            stringBuilder.append(this.contentType.getValue());
            stringBuilder.append(',');
        }
        if (this.contentEncoding != null) {
            stringBuilder.append("Content-Encoding: ");
            stringBuilder.append(this.contentEncoding.getValue());
            stringBuilder.append(',');
        }
        if ((l2 = this.getContentLength()) >= 0) {
            stringBuilder.append("Content-Length: ");
            stringBuilder.append(l2);
            stringBuilder.append(',');
        }
        stringBuilder.append("Chunked: ");
        stringBuilder.append(this.chunked);
        stringBuilder.append(']');
        return stringBuilder.toString();
    }
}

