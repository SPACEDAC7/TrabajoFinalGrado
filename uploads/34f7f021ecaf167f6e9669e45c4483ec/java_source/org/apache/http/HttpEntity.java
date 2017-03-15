/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  org.apache.http.Header
 */
package org.apache.http;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import org.apache.http.Header;

public interface HttpEntity {
    @Deprecated
    public void consumeContent() throws IOException;

    public InputStream getContent() throws IOException, UnsupportedOperationException;

    public Header getContentEncoding();

    public long getContentLength();

    public Header getContentType();

    public boolean isChunked();

    public boolean isRepeatable();

    public boolean isStreaming();

    public void writeTo(OutputStream var1) throws IOException;
}

