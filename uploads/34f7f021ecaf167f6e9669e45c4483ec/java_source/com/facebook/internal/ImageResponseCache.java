/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.content.Context
 *  android.net.Uri
 */
package com.facebook.internal;

import android.content.Context;
import android.net.Uri;
import com.facebook.LoggingBehavior;
import com.facebook.internal.FileLruCache;
import com.facebook.internal.Logger;
import com.facebook.internal.Utility;
import java.io.BufferedInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.URL;

class ImageResponseCache {
    static final String TAG = ImageResponseCache.class.getSimpleName();
    private static volatile FileLruCache imageCache;

    ImageResponseCache() {
    }

    static void clearCache(Context context) {
        try {
            ImageResponseCache.getCache(context).clearCache();
            return;
        }
        catch (IOException var0_1) {
            Logger.log(LoggingBehavior.CACHE, 5, TAG, "clearCache failed " + var0_1.getMessage());
            return;
        }
    }

    static FileLruCache getCache(Context object) throws IOException {
        synchronized (ImageResponseCache.class) {
            if (imageCache == null) {
                imageCache = new FileLruCache(TAG, new FileLruCache.Limits());
            }
            object = imageCache;
            return object;
        }
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    static InputStream getCachedImageStream(Uri uri, Context context) {
        InputStream inputStream;
        InputStream inputStream2 = inputStream = null;
        if (uri == null) return inputStream2;
        inputStream2 = inputStream;
        if (!ImageResponseCache.isCDNURL(uri)) return inputStream2;
        try {
            return ImageResponseCache.getCache(context).get(uri.toString());
        }
        catch (IOException iOException) {
            Logger.log(LoggingBehavior.CACHE, 5, TAG, iOException.toString());
            return null;
        }
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    static InputStream interceptAndCacheImageStream(Context context, HttpURLConnection httpURLConnection) throws IOException {
        InputStream inputStream;
        InputStream inputStream2 = null;
        if (httpURLConnection.getResponseCode() != 200) return inputStream2;
        Uri uri = Uri.parse((String)httpURLConnection.getURL().toString());
        inputStream2 = inputStream = httpURLConnection.getInputStream();
        try {
            if (!ImageResponseCache.isCDNURL(uri)) return inputStream2;
            return ImageResponseCache.getCache(context).interceptAndPut(uri.toString(), new BufferedHttpInputStream(inputStream, httpURLConnection));
        }
        catch (IOException iOException) {
            return inputStream;
        }
    }

    /*
     * Enabled aggressive block sorting
     */
    private static boolean isCDNURL(Uri object) {
        if (object != null && ((object = object.getHost()).endsWith("fbcdn.net") || object.startsWith("fbcdn") && object.endsWith("akamaihd.net"))) {
            return true;
        }
        return false;
    }

    private static class BufferedHttpInputStream
    extends BufferedInputStream {
        HttpURLConnection connection;

        BufferedHttpInputStream(InputStream inputStream, HttpURLConnection httpURLConnection) {
            super(inputStream, 8192);
            this.connection = httpURLConnection;
        }

        @Override
        public void close() throws IOException {
            super.close();
            Utility.disconnectQuietly(this.connection);
        }
    }

}

