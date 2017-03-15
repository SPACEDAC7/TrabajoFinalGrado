/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  org.apache.http.annotation.NotThreadSafe
 *  org.apache.http.entity.ContentType
 *  org.apache.http.protocol.HTTP
 *  org.apache.http.util.Args
 */
package org.apache.http.entity;

import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.UnsupportedEncodingException;
import java.nio.charset.Charset;
import java.nio.charset.UnsupportedCharsetException;
import org.apache.http.annotation.NotThreadSafe;
import org.apache.http.entity.AbstractHttpEntity;
import org.apache.http.entity.ContentType;
import org.apache.http.protocol.HTTP;
import org.apache.http.util.Args;

@NotThreadSafe
public class StringEntity
extends AbstractHttpEntity
implements Cloneable {
    protected final byte[] content;

    public StringEntity(String string2) throws UnsupportedEncodingException {
        this(string2, ContentType.DEFAULT_TEXT);
    }

    public StringEntity(String string2, String string3) throws UnsupportedCharsetException {
        this(string2, ContentType.create((String)ContentType.TEXT_PLAIN.getMimeType(), (String)string3));
    }

    /*
     * Enabled aggressive block sorting
     */
    @Deprecated
    public StringEntity(String string2, String string3, String string4) throws UnsupportedEncodingException {
        Args.notNull((Object)string2, (String)"Source string");
        if (string3 == null) {
            string3 = "text/plain";
        }
        if (string4 == null) {
            string4 = "ISO-8859-1";
        }
        this.content = string2.getBytes(string4);
        this.setContentType(string3 + "; charset=" + string4);
    }

    public StringEntity(String string2, Charset charset) {
        this(string2, ContentType.create((String)ContentType.TEXT_PLAIN.getMimeType(), (Charset)charset));
    }

    /*
     * Enabled aggressive block sorting
     */
    public StringEntity(String string2, ContentType contentType) throws UnsupportedCharsetException {
        Args.notNull((Object)string2, (String)"Source string");
        Charset charset = contentType != null ? contentType.getCharset() : null;
        Charset charset2 = charset;
        if (charset == null) {
            charset2 = HTTP.DEF_CONTENT_CHARSET;
        }
        this.content = string2.getBytes(charset2);
        if (contentType != null) {
            this.setContentType(contentType.toString());
        }
    }

    public Object clone() throws CloneNotSupportedException {
        return super.clone();
    }

    @Override
    public InputStream getContent() throws IOException {
        return new ByteArrayInputStream(this.content);
    }

    @Override
    public long getContentLength() {
        return this.content.length;
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
        outputStream.write(this.content);
        outputStream.flush();
    }
}

