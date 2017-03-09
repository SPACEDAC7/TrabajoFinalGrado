/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.text.TextUtils
 *  android.util.Log
 */
package com.bumptech.glide.util;

import android.text.TextUtils;
import android.util.Log;
import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;

public final class ContentLengthInputStream
extends FilterInputStream {
    private static final String TAG = "ContentLengthStream";
    private static final int UNKNOWN = -1;
    private final long contentLength;
    private int readSoFar;

    ContentLengthInputStream(InputStream inputStream, long l2) {
        super(inputStream);
        this.contentLength = l2;
    }

    /*
     * Enabled aggressive block sorting
     */
    private int checkReadSoFarOrThrow(int n2) throws IOException {
        if (n2 >= 0) {
            this.readSoFar += n2;
            return n2;
        } else {
            if (this.contentLength - (long)this.readSoFar <= 0) return n2;
            {
                throw new IOException("Failed to read all expected data, expected: " + this.contentLength + ", but read: " + this.readSoFar);
            }
        }
    }

    public static InputStream obtain(InputStream inputStream, long l2) {
        return new ContentLengthInputStream(inputStream, l2);
    }

    public static InputStream obtain(InputStream inputStream, String string2) {
        return ContentLengthInputStream.obtain(inputStream, ContentLengthInputStream.parseContentLength(string2));
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    private static int parseContentLength(String string2) {
        int n2;
        int n3 = n2 = -1;
        if (TextUtils.isEmpty((CharSequence)string2)) return n3;
        try {
            return Integer.parseInt(string2);
        }
        catch (NumberFormatException var3_3) {
            n3 = n2;
            if (!Log.isLoggable((String)"ContentLengthStream", (int)3)) return n3;
            Log.d((String)"ContentLengthStream", (String)("failed to parse content length header: " + string2), (Throwable)var3_3);
            return -1;
        }
    }

    @Override
    public int available() throws IOException {
        synchronized (this) {
            long l2 = Math.max(this.contentLength - (long)this.readSoFar, (long)this.in.available());
            int n2 = (int)l2;
            return n2;
        }
    }

    @Override
    public int read() throws IOException {
        synchronized (this) {
            int n2 = this.checkReadSoFarOrThrow(super.read());
            return n2;
        }
    }

    @Override
    public int read(byte[] arrby) throws IOException {
        return this.read(arrby, 0, arrby.length);
    }

    @Override
    public int read(byte[] arrby, int n2, int n3) throws IOException {
        synchronized (this) {
            n2 = this.checkReadSoFarOrThrow(super.read(arrby, n2, n3));
            return n2;
        }
    }
}

