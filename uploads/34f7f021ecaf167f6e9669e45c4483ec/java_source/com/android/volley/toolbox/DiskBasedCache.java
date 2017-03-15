/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.os.SystemClock
 */
package com.android.volley.toolbox;

import android.os.SystemClock;
import com.android.volley.Cache;
import com.android.volley.VolleyLog;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.EOFException;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Set;

public class DiskBasedCache
implements Cache {
    private static final int CACHE_MAGIC = 538247942;
    private static final int DEFAULT_DISK_USAGE_BYTES = 5242880;
    private static final float HYSTERESIS_FACTOR = 0.9f;
    private final Map<String, CacheHeader> mEntries = new LinkedHashMap<String, CacheHeader>(16, 0.75f, true);
    private final int mMaxCacheSizeInBytes;
    private final File mRootDirectory;
    private long mTotalSize = 0;

    public DiskBasedCache(File file) {
        this(file, 5242880);
    }

    public DiskBasedCache(File file, int n2) {
        this.mRootDirectory = file;
        this.mMaxCacheSizeInBytes = n2;
    }

    private String getFilenameForKey(String string2) {
        int n2 = string2.length() / 2;
        String string3 = String.valueOf(String.valueOf(string2.substring(0, n2).hashCode()));
        if ((string2 = String.valueOf(String.valueOf(string2.substring(n2).hashCode()))).length() != 0) {
            return string3.concat(string2);
        }
        return new String(string3);
    }

    /*
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    private void pruneIfNeeded(int n2) {
        int n3;
        if (this.mTotalSize + (long)n2 < (long)this.mMaxCacheSizeInBytes) {
            return;
        }
        if (VolleyLog.DEBUG) {
            VolleyLog.v("Pruning old cache entries.", new Object[0]);
        }
        long l2 = this.mTotalSize;
        int n4 = 0;
        long l3 = SystemClock.elapsedRealtime();
        Iterator<Map.Entry<String, CacheHeader>> iterator = this.mEntries.entrySet().iterator();
        do {
            n3 = n4;
            if (!iterator.hasNext()) break;
            CacheHeader cacheHeader = iterator.next().getValue();
            if (this.getFileForKey(cacheHeader.key).delete()) {
                this.mTotalSize -= cacheHeader.size;
            } else {
                VolleyLog.d("Could not delete cache entry for key=%s, filename=%s", cacheHeader.key, this.getFilenameForKey(cacheHeader.key));
            }
            iterator.remove();
            n4 = n3 = n4 + 1;
        } while ((float)(this.mTotalSize + (long)n2) >= (float)this.mMaxCacheSizeInBytes * 0.9f);
        if (!VolleyLog.DEBUG) return;
        VolleyLog.v("pruned %d files, %d bytes, %d ms", n3, this.mTotalSize - l2, SystemClock.elapsedRealtime() - l3);
    }

    /*
     * Enabled aggressive block sorting
     */
    private void putEntry(String string2, CacheHeader cacheHeader) {
        if (!this.mEntries.containsKey(string2)) {
            this.mTotalSize += cacheHeader.size;
        } else {
            CacheHeader cacheHeader2 = this.mEntries.get(string2);
            this.mTotalSize += cacheHeader.size - cacheHeader2.size;
        }
        this.mEntries.put(string2, cacheHeader);
    }

    private static int read(InputStream inputStream) throws IOException {
        int n2 = inputStream.read();
        if (n2 == -1) {
            throw new EOFException();
        }
        return n2;
    }

    static int readInt(InputStream inputStream) throws IOException {
        return 0 | DiskBasedCache.read(inputStream) << 0 | DiskBasedCache.read(inputStream) << 8 | DiskBasedCache.read(inputStream) << 16 | DiskBasedCache.read(inputStream) << 24;
    }

    static long readLong(InputStream inputStream) throws IOException {
        return 0 | ((long)DiskBasedCache.read(inputStream) & 255) << 0 | ((long)DiskBasedCache.read(inputStream) & 255) << 8 | ((long)DiskBasedCache.read(inputStream) & 255) << 16 | ((long)DiskBasedCache.read(inputStream) & 255) << 24 | ((long)DiskBasedCache.read(inputStream) & 255) << 32 | ((long)DiskBasedCache.read(inputStream) & 255) << 40 | ((long)DiskBasedCache.read(inputStream) & 255) << 48 | ((long)DiskBasedCache.read(inputStream) & 255) << 56;
    }

    static String readString(InputStream inputStream) throws IOException {
        return new String(DiskBasedCache.streamToBytes(inputStream, (int)DiskBasedCache.readLong(inputStream)), "UTF-8");
    }

    /*
     * Enabled aggressive block sorting
     */
    static Map<String, String> readStringStringMap(InputStream inputStream) throws IOException {
        int n2 = DiskBasedCache.readInt(inputStream);
        Map<String, String> map = n2 == 0 ? Collections.emptyMap() : new HashMap(n2);
        int n3 = 0;
        while (n3 < n2) {
            map.put(DiskBasedCache.readString(inputStream).intern(), DiskBasedCache.readString(inputStream).intern());
            ++n3;
        }
        return map;
    }

    private void removeEntry(String string2) {
        CacheHeader cacheHeader = this.mEntries.get(string2);
        if (cacheHeader != null) {
            this.mTotalSize -= cacheHeader.size;
            this.mEntries.remove(string2);
        }
    }

    private static byte[] streamToBytes(InputStream inputStream, int n2) throws IOException {
        int n3;
        int n4;
        byte[] arrby = new byte[n2];
        for (n4 = 0; n4 < n2 && (n3 = inputStream.read(arrby, n4, n2 - n4)) != -1; n4 += n3) {
        }
        if (n4 != n2) {
            throw new IOException(new StringBuilder(50).append("Expected ").append(n2).append(" bytes, read ").append(n4).append(" bytes").toString());
        }
        return arrby;
    }

    static void writeInt(OutputStream outputStream, int n2) throws IOException {
        outputStream.write(n2 >> 0 & 255);
        outputStream.write(n2 >> 8 & 255);
        outputStream.write(n2 >> 16 & 255);
        outputStream.write(n2 >> 24 & 255);
    }

    static void writeLong(OutputStream outputStream, long l2) throws IOException {
        outputStream.write((byte)(l2 >>> 0));
        outputStream.write((byte)(l2 >>> 8));
        outputStream.write((byte)(l2 >>> 16));
        outputStream.write((byte)(l2 >>> 24));
        outputStream.write((byte)(l2 >>> 32));
        outputStream.write((byte)(l2 >>> 40));
        outputStream.write((byte)(l2 >>> 48));
        outputStream.write((byte)(l2 >>> 56));
    }

    static void writeString(OutputStream outputStream, String arrby) throws IOException {
        arrby = arrby.getBytes("UTF-8");
        DiskBasedCache.writeLong(outputStream, arrby.length);
        outputStream.write(arrby, 0, arrby.length);
    }

    static void writeStringStringMap(Map<String, String> object, OutputStream outputStream) throws IOException {
        if (object != null) {
            DiskBasedCache.writeInt(outputStream, object.size());
            for (Map.Entry entry : object.entrySet()) {
                DiskBasedCache.writeString(outputStream, (String)entry.getKey());
                DiskBasedCache.writeString(outputStream, (String)entry.getValue());
            }
        } else {
            DiskBasedCache.writeInt(outputStream, 0);
        }
    }

    @Override
    public void clear() {
        synchronized (this) {
            block7 : {
                File[] arrfile = this.mRootDirectory.listFiles();
                if (arrfile == null) break block7;
                int n2 = arrfile.length;
                for (int i2 = 0; i2 < n2; ++i2) {
                    arrfile[i2].delete();
                }
            }
            this.mEntries.clear();
            this.mTotalSize = 0;
            VolleyLog.d("Cache cleared.", new Object[0]);
            return;
        }
    }

    /*
     * Unable to fully structure code
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     * Converted monitor instructions to comments
     * Lifted jumps to return sites
     */
    @Override
    public Cache.Entry get(String var1_1) {
        var5_8 = null;
        // MONITORENTER : this
        var4_9 = this.mEntries.get(var1_1);
        if (var4_9 == null) {
            var1_1 = var5_8;
            return var1_1;
        }
        var7_13 = this.getFileForKey((String)var1_1);
        var2_14 = null;
        var6_15 = null;
        var3_16 = new CountingInputStream(new BufferedInputStream(new FileInputStream(var7_13)));
        CacheHeader.readHeader(var3_16);
        var2_14 = var4_9.toCacheEntry(DiskBasedCache.streamToBytes(var3_16, (int)(var7_13.length() - (long)CountingInputStream.access$100((CountingInputStream)var3_16))));
        if (var3_16 == null) return var2_14;
        try {
            var3_16.close();
        }
        catch (IOException var1_2) {
            return var5_8;
        }
        return var2_14;
        catch (IOException var4_10) {
            block18 : {
                var3_16 = var6_15;
                ** GOTO lbl28
                catch (Throwable var1_7) {
                    var2_14 = var3_16;
                    ** GOTO lbl-1000
                }
                catch (IOException var4_12) {}
lbl28: // 2 sources:
                var2_14 = var3_16;
                try {
                    VolleyLog.d("%s: %s", new Object[]{var7_13.getAbsolutePath(), var4_11.toString()});
                    var2_14 = var3_16;
                    this.remove((String)var1_1);
                    var1_1 = var5_8;
                    if (var3_16 != null) break block18;
                }
                catch (Throwable var1_4) lbl-1000: // 2 sources:
                {
                    if (var2_14 == null) throw var1_5;
                    try {
                        var2_14.close();
                    }
                    catch (IOException var1_6) {
                        return var5_8;
                    }
                    throw var1_5;
                }
                return var1_1;
            }
            var3_16.close();
            return var5_8;
            catch (IOException var1_3) {
                return var5_8;
            }
        }
    }

    public File getFileForKey(String string2) {
        return new File(this.mRootDirectory, this.getFilenameForKey(string2));
    }

    /*
     * Unable to fully structure code
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     * Converted monitor instructions to comments
     * Lifted jumps to return sites
     */
    @Override
    public void initialize() {
        // MONITORENTER : this
        if (!this.mRootDirectory.exists()) {
            if (this.mRootDirectory.mkdirs()) return;
            {
                VolleyLog.e("Unable to create cache dir %s", new Object[]{this.mRootDirectory.getAbsolutePath()});
                return;
            }
        }
        var4_1 = this.mRootDirectory.listFiles();
        if (var4_1 == null) ** GOTO lbl-1000
        var7_2 = var4_1.length;
        var6_3 = 0;
        do {
            if (var6_3 >= var7_2) lbl-1000: // 2 sources:
            {
                // MONITOREXIT : this
                return;
            }
            var5_14 = var4_1[var6_3];
            var1_4 = null;
            var3_12 = null;
            var2_10 = new BufferedInputStream(new FileInputStream(var5_14));
            var1_4 = CacheHeader.readHeader((InputStream)var2_10);
            var1_4.size = var5_14.length();
            this.putEntry(var1_4.key, (CacheHeader)var1_4);
            ** if (var2_10 == null) goto lbl28
lbl-1000: // 1 sources:
            {
                try {
                    var2_10.close();
                }
                catch (IOException var1_5) {}
            }
lbl28: // 2 sources:
            ** GOTO lbl46
            catch (IOException var1_6) {
                var2_10 = var3_12;
                ** GOTO lbl37
                catch (Throwable var3_13) {
                    var1_4 = var2_10;
                    var2_10 = var3_13;
                    ** GOTO lbl-1000
                }
                catch (IOException var1_9) {}
lbl37: // 2 sources:
                if (var5_14 != null) {
                    var1_4 = var2_10;
                    var5_14.delete();
                }
                if (var2_10 != null) {
                    try {
                        var2_10.close();
                    }
                    catch (IOException var1_7) {}
                }
lbl46: // 6 sources:
                ++var6_3;
                continue;
                catch (Throwable var2_11) lbl-1000: // 2 sources:
                {
                    if (var1_4 == null) throw var2_10;
                    try {
                        var1_4.close();
                    }
                    catch (IOException var1_8) {
                        throw var2_10;
                    }
                    throw var2_10;
                }
            }
            break;
        } while (true);
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    @Override
    public void invalidate(String string2, boolean bl) {
        synchronized (this) {
            Cache.Entry entry = this.get(string2);
            if (entry != null) {
                void var2_2;
                entry.softTtl = 0;
                if (var2_2 != false) {
                    entry.ttl = 0;
                }
                this.put(string2, entry);
            }
            return;
        }
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    @Override
    public void put(String string2, Cache.Entry entry) {
        synchronized (this) {
            this.pruneIfNeeded(entry.data.length);
            File file = this.getFileForKey(string2);
            try {
                BufferedOutputStream bufferedOutputStream = new BufferedOutputStream(new FileOutputStream(file));
                CacheHeader cacheHeader = new CacheHeader(string2, entry);
                if (!cacheHeader.writeHeader(bufferedOutputStream)) {
                    bufferedOutputStream.close();
                    VolleyLog.d("Failed to write header for %s", file.getAbsolutePath());
                    throw new IOException();
                }
                bufferedOutputStream.write(entry.data);
                bufferedOutputStream.close();
                this.putEntry(string2, cacheHeader);
            }
            catch (IOException var1_2) {
                if (!file.delete()) {
                    VolleyLog.d("Could not clean up file %s", file.getAbsolutePath());
                }
            }
            return;
        }
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    @Override
    public void remove(String string2) {
        synchronized (this) {
            boolean bl = this.getFileForKey(string2).delete();
            this.removeEntry(string2);
            if (!bl) {
                VolleyLog.d("Could not delete cache entry for key=%s, filename=%s", string2, this.getFilenameForKey(string2));
            }
            return;
        }
    }

    static class CacheHeader {
        public String etag;
        public String key;
        public long lastModified;
        public Map<String, String> responseHeaders;
        public long serverDate;
        public long size;
        public long softTtl;
        public long ttl;

        private CacheHeader() {
        }

        public CacheHeader(String string2, Cache.Entry entry) {
            this.key = string2;
            this.size = entry.data.length;
            this.etag = entry.etag;
            this.serverDate = entry.serverDate;
            this.lastModified = entry.lastModified;
            this.ttl = entry.ttl;
            this.softTtl = entry.softTtl;
            this.responseHeaders = entry.responseHeaders;
        }

        public static CacheHeader readHeader(InputStream inputStream) throws IOException {
            CacheHeader cacheHeader = new CacheHeader();
            if (DiskBasedCache.readInt(inputStream) != 538247942) {
                throw new IOException();
            }
            cacheHeader.key = DiskBasedCache.readString(inputStream);
            cacheHeader.etag = DiskBasedCache.readString(inputStream);
            if (cacheHeader.etag.equals("")) {
                cacheHeader.etag = null;
            }
            cacheHeader.serverDate = DiskBasedCache.readLong(inputStream);
            cacheHeader.lastModified = DiskBasedCache.readLong(inputStream);
            cacheHeader.ttl = DiskBasedCache.readLong(inputStream);
            cacheHeader.softTtl = DiskBasedCache.readLong(inputStream);
            cacheHeader.responseHeaders = DiskBasedCache.readStringStringMap(inputStream);
            return cacheHeader;
        }

        public Cache.Entry toCacheEntry(byte[] arrby) {
            Cache.Entry entry = new Cache.Entry();
            entry.data = arrby;
            entry.etag = this.etag;
            entry.serverDate = this.serverDate;
            entry.lastModified = this.lastModified;
            entry.ttl = this.ttl;
            entry.softTtl = this.softTtl;
            entry.responseHeaders = this.responseHeaders;
            return entry;
        }

        /*
         * Enabled aggressive block sorting
         * Enabled unnecessary exception pruning
         * Enabled aggressive exception aggregation
         */
        public boolean writeHeader(OutputStream outputStream) {
            try {
                DiskBasedCache.writeInt(outputStream, 538247942);
                DiskBasedCache.writeString(outputStream, this.key);
                String string2 = this.etag == null ? "" : this.etag;
                DiskBasedCache.writeString(outputStream, string2);
                DiskBasedCache.writeLong(outputStream, this.serverDate);
                DiskBasedCache.writeLong(outputStream, this.lastModified);
                DiskBasedCache.writeLong(outputStream, this.ttl);
                DiskBasedCache.writeLong(outputStream, this.softTtl);
                DiskBasedCache.writeStringStringMap(this.responseHeaders, outputStream);
                outputStream.flush();
                return true;
            }
            catch (IOException var1_2) {
                VolleyLog.d("%s", var1_2.toString());
                return false;
            }
        }
    }

    private static class CountingInputStream
    extends FilterInputStream {
        private int bytesRead = 0;

        private CountingInputStream(InputStream inputStream) {
            super(inputStream);
        }

        static /* synthetic */ int access$100(CountingInputStream countingInputStream) {
            return countingInputStream.bytesRead;
        }

        @Override
        public int read() throws IOException {
            int n2 = super.read();
            if (n2 != -1) {
                ++this.bytesRead;
            }
            return n2;
        }

        @Override
        public int read(byte[] arrby, int n2, int n3) throws IOException {
            if ((n2 = super.read(arrby, n2, n3)) != -1) {
                this.bytesRead += n2;
            }
            return n2;
        }
    }

}

