/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  org.json.JSONException
 *  org.json.JSONObject
 *  org.json.JSONTokener
 */
package com.facebook.internal;

import com.facebook.FacebookSdk;
import com.facebook.LoggingBehavior;
import com.facebook.internal.Logger;
import com.facebook.internal.Utility;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.FilenameFilter;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.security.InvalidParameterException;
import java.util.Date;
import java.util.PriorityQueue;
import java.util.concurrent.atomic.AtomicLong;
import org.json.JSONException;
import org.json.JSONObject;
import org.json.JSONTokener;

public final class FileLruCache {
    private static final String HEADER_CACHEKEY_KEY = "key";
    private static final String HEADER_CACHE_CONTENT_TAG_KEY = "tag";
    static final String TAG = FileLruCache.class.getSimpleName();
    private static final AtomicLong bufferIndex = new AtomicLong();
    private final File directory;
    private boolean isTrimInProgress;
    private boolean isTrimPending;
    private AtomicLong lastClearCacheTime = new AtomicLong(0);
    private final Limits limits;
    private final Object lock;
    private final String tag;

    public FileLruCache(String string2, Limits limits) {
        this.tag = string2;
        this.limits = limits;
        this.directory = new File(FacebookSdk.getCacheDir(), string2);
        this.lock = new Object();
        if (this.directory.mkdirs() || this.directory.isDirectory()) {
            BufferFile.deleteAll(this.directory);
        }
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    private void postTrim() {
        Object object = this.lock;
        synchronized (object) {
            if (!this.isTrimPending) {
                this.isTrimPending = true;
                FacebookSdk.getExecutor().execute(new Runnable(){

                    @Override
                    public void run() {
                        FileLruCache.this.trim();
                    }
                });
            }
            return;
        }
    }

    private void renameToTargetAndTrim(String string2, File file) {
        if (!file.renameTo(new File(this.directory, Utility.md5hash(string2)))) {
            file.delete();
        }
        this.postTrim();
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    private void trim() {
        Object object;
        long l2;
        long l3;
        Object object2;
        block17 : {
            long l4;
            int n2;
            int n3;
            long l5;
            object = this.lock;
            synchronized (object) {
                this.isTrimPending = false;
                this.isTrimInProgress = true;
            }
            try {
                Logger.log(LoggingBehavior.CACHE, TAG, "trim started");
                object = new PriorityQueue();
                l5 = 0;
                l4 = 0;
                object2 = this.directory.listFiles(BufferFile.excludeBufferFiles());
                l2 = l4;
                l3 = l5;
                if (object2 == null) break block17;
                n2 = object2.length;
                n3 = 0;
            }
            catch (Throwable var2_5) {
                throw var2_5;
            }
            finally {
                object = this.lock;
                synchronized (object) {
                    this.isTrimInProgress = false;
                    this.lock.notifyAll();
                }
            }
            do {
                l2 = l4;
                l3 = l5;
                if (n3 >= n2) break;
                File file = object2[n3];
                ModifiedFile modifiedFile = new ModifiedFile(file);
                object.add(modifiedFile);
                Logger.log(LoggingBehavior.CACHE, TAG, "  trim considering time=" + Long.valueOf(modifiedFile.getModified()) + " name=" + modifiedFile.getFile().getName());
                l2 = file.length();
                l5 += l2;
                ++l4;
                ++n3;
                continue;
                break;
            } while (true);
        }
        do {
            if (l3 <= (long)this.limits.getByteCount() && l2 <= (long)this.limits.getFileCount()) return;
            {
                object2 = ((ModifiedFile)object.remove()).getFile();
                Logger.log(LoggingBehavior.CACHE, TAG, "  trim removing " + object2.getName());
                l3 -= object2.length();
                --l2;
                object2.delete();
                continue;
            }
            break;
        } while (true);
    }

    public void clearCache() {
        final File[] arrfile = this.directory.listFiles(BufferFile.excludeBufferFiles());
        this.lastClearCacheTime.set(System.currentTimeMillis());
        if (arrfile != null) {
            FacebookSdk.getExecutor().execute(new Runnable(){

                @Override
                public void run() {
                    File[] arrfile2 = arrfile;
                    int n2 = arrfile2.length;
                    for (int i2 = 0; i2 < n2; ++i2) {
                        arrfile2[i2].delete();
                    }
                }
            });
        }
    }

    public InputStream get(String string2) throws IOException {
        return this.get(string2, null);
    }

    /*
     * Loose catch block
     * Enabled aggressive exception aggregation
     */
    public InputStream get(String string2, String string3) throws IOException {
        File file;
        InputStream inputStream22222;
        block13 : {
            block14 : {
                boolean bl;
                JSONObject jSONObject;
                block11 : {
                    block12 : {
                        block9 : {
                            block10 : {
                                file = new File(this.directory, Utility.md5hash(string2));
                                InputStream inputStream22222 = new FileInputStream(file);
                                inputStream22222 = new BufferedInputStream(inputStream22222, 8192);
                                jSONObject = StreamHeader.readHeader(inputStream22222);
                                if (jSONObject != null) break block9;
                                if (false) break block10;
                                inputStream22222.close();
                            }
                            return null;
                            catch (IOException iOException) {
                                return null;
                            }
                        }
                        String string4 = jSONObject.optString("key");
                        if (string4 != null && (bl = string4.equals(string2))) break block11;
                        if (false) break block12;
                        inputStream22222.close();
                    }
                    return null;
                }
                string2 = jSONObject.optString("tag", null);
                if ((string3 != null || string2 == null) && (string3 == null || (bl = string3.equals(string2)))) break block13;
                if (false) break block14;
                inputStream22222.close();
            }
            return null;
        }
        try {
            long l2 = new Date().getTime();
            Logger.log(LoggingBehavior.CACHE, TAG, "Setting lastModified to " + Long.valueOf(l2) + " for " + file.getName());
            file.setLastModified(l2);
            return inputStream22222;
        }
        finally {
            if (!true) {
                inputStream22222.close();
            }
        }
    }

    public String getLocation() {
        return this.directory.getPath();
    }

    public InputStream interceptAndPut(String string2, InputStream inputStream) throws IOException {
        return new CopyingInputStream(inputStream, this.openPutStream(string2));
    }

    public OutputStream openPutStream(String string2) throws IOException {
        return this.openPutStream(string2, null);
    }

    public OutputStream openPutStream(String string2, String string3) throws IOException {
        FileOutputStream fileOutputStream;
        Object object = BufferFile.newFile(this.directory);
        object.delete();
        if (!object.createNewFile()) {
            throw new IOException("Could not create file at " + object.getAbsolutePath());
        }
        try {
            fileOutputStream = new FileOutputStream((File)object);
            object = new BufferedOutputStream(new CloseCallbackOutputStream(fileOutputStream, new StreamCloseCallback(System.currentTimeMillis(), (File)object, string2){
                final /* synthetic */ File val$buffer;
                final /* synthetic */ long val$bufferFileCreateTime;
                final /* synthetic */ String val$key;

                @Override
                public void onClose() {
                    if (this.val$bufferFileCreateTime < FileLruCache.this.lastClearCacheTime.get()) {
                        this.val$buffer.delete();
                        return;
                    }
                    FileLruCache.this.renameToTargetAndTrim(this.val$key, this.val$buffer);
                }
            }), 8192);
        }
        catch (FileNotFoundException var1_2) {
            Logger.log(LoggingBehavior.CACHE, 5, TAG, "Error creating buffer output stream: " + var1_2);
            throw new IOException(var1_2.getMessage());
        }
        try {
            fileOutputStream = new JSONObject();
            fileOutputStream.put("key", (Object)string2);
            if (!Utility.isNullOrEmpty(string3)) {
                fileOutputStream.put("tag", (Object)string3);
            }
            StreamHeader.writeHeader((OutputStream)object, (JSONObject)fileOutputStream);
            return object;
        }
        catch (JSONException var1_3) {
            Logger.log(LoggingBehavior.CACHE, 5, TAG, "Error creating JSON header for cache file: " + (Object)var1_3);
            throw new IOException(var1_3.getMessage());
        }
        finally {
            if (!false) {
                object.close();
            }
        }
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    long sizeInBytesForTest() {
        long l2;
        File[] arrfile = this.lock;
        synchronized (arrfile) {
            boolean bl;
            while (this.isTrimPending || (bl = this.isTrimInProgress)) {
                try {
                    this.lock.wait();
                }
                catch (InterruptedException var2_2) {}
            }
        }
        arrfile = this.directory.listFiles();
        long l3 = l2 = 0;
        if (arrfile != null) {
            int n2 = arrfile.length;
            int n3 = 0;
            do {
                l3 = l2;
                if (n3 >= n2) break;
                l2 += arrfile[n3].length();
                ++n3;
            } while (true);
        }
        return l3;
    }

    public String toString() {
        return "{FileLruCache: tag:" + this.tag + " file:" + this.directory.getName() + "}";
    }

    private static class BufferFile {
        private static final String FILE_NAME_PREFIX = "buffer";
        private static final FilenameFilter filterExcludeBufferFiles = new FilenameFilter(){

            @Override
            public boolean accept(File file, String string2) {
                if (!string2.startsWith("buffer")) {
                    return true;
                }
                return false;
            }
        };
        private static final FilenameFilter filterExcludeNonBufferFiles = new FilenameFilter(){

            @Override
            public boolean accept(File file, String string2) {
                return string2.startsWith("buffer");
            }
        };

        private BufferFile() {
        }

        static void deleteAll(File arrfile) {
            if ((arrfile = arrfile.listFiles(BufferFile.excludeNonBufferFiles())) != null) {
                int n2 = arrfile.length;
                for (int i2 = 0; i2 < n2; ++i2) {
                    arrfile[i2].delete();
                }
            }
        }

        static FilenameFilter excludeBufferFiles() {
            return filterExcludeBufferFiles;
        }

        static FilenameFilter excludeNonBufferFiles() {
            return filterExcludeNonBufferFiles;
        }

        static File newFile(File file) {
            return new File(file, "buffer" + Long.valueOf(bufferIndex.incrementAndGet()).toString());
        }

    }

    private static class CloseCallbackOutputStream
    extends OutputStream {
        final StreamCloseCallback callback;
        final OutputStream innerStream;

        CloseCallbackOutputStream(OutputStream outputStream, StreamCloseCallback streamCloseCallback) {
            this.innerStream = outputStream;
            this.callback = streamCloseCallback;
        }

        @Override
        public void close() throws IOException {
            try {
                this.innerStream.close();
                return;
            }
            finally {
                this.callback.onClose();
            }
        }

        @Override
        public void flush() throws IOException {
            this.innerStream.flush();
        }

        @Override
        public void write(int n2) throws IOException {
            this.innerStream.write(n2);
        }

        @Override
        public void write(byte[] arrby) throws IOException {
            this.innerStream.write(arrby);
        }

        @Override
        public void write(byte[] arrby, int n2, int n3) throws IOException {
            this.innerStream.write(arrby, n2, n3);
        }
    }

    private static final class CopyingInputStream
    extends InputStream {
        final InputStream input;
        final OutputStream output;

        CopyingInputStream(InputStream inputStream, OutputStream outputStream) {
            this.input = inputStream;
            this.output = outputStream;
        }

        @Override
        public int available() throws IOException {
            return this.input.available();
        }

        @Override
        public void close() throws IOException {
            try {
                this.input.close();
                return;
            }
            finally {
                this.output.close();
            }
        }

        @Override
        public void mark(int n2) {
            throw new UnsupportedOperationException();
        }

        @Override
        public boolean markSupported() {
            return false;
        }

        @Override
        public int read() throws IOException {
            int n2 = this.input.read();
            if (n2 >= 0) {
                this.output.write(n2);
            }
            return n2;
        }

        @Override
        public int read(byte[] arrby) throws IOException {
            int n2 = this.input.read(arrby);
            if (n2 > 0) {
                this.output.write(arrby, 0, n2);
            }
            return n2;
        }

        @Override
        public int read(byte[] arrby, int n2, int n3) throws IOException {
            if ((n3 = this.input.read(arrby, n2, n3)) > 0) {
                this.output.write(arrby, n2, n3);
            }
            return n3;
        }

        @Override
        public void reset() {
            synchronized (this) {
                throw new UnsupportedOperationException();
            }
        }

        @Override
        public long skip(long l2) throws IOException {
            byte[] arrby = new byte[1024];
            long l3 = 0;
            int n2;
            while (l3 < l2 && (n2 = this.read(arrby, 0, (int)Math.min(l2 - l3, (long)arrby.length))) >= 0) {
                l3 += (long)n2;
            }
            return l3;
        }
    }

    public static final class Limits {
        private int byteCount = 1048576;
        private int fileCount = 1024;

        int getByteCount() {
            return this.byteCount;
        }

        int getFileCount() {
            return this.fileCount;
        }

        void setByteCount(int n2) {
            if (n2 < 0) {
                throw new InvalidParameterException("Cache byte-count limit must be >= 0");
            }
            this.byteCount = n2;
        }

        void setFileCount(int n2) {
            if (n2 < 0) {
                throw new InvalidParameterException("Cache file count limit must be >= 0");
            }
            this.fileCount = n2;
        }
    }

    private static final class ModifiedFile
    implements Comparable<ModifiedFile> {
        private static final int HASH_MULTIPLIER = 37;
        private static final int HASH_SEED = 29;
        private final File file;
        private final long modified;

        ModifiedFile(File file) {
            this.file = file;
            this.modified = file.lastModified();
        }

        @Override
        public int compareTo(ModifiedFile modifiedFile) {
            if (this.getModified() < modifiedFile.getModified()) {
                return -1;
            }
            if (this.getModified() > modifiedFile.getModified()) {
                return 1;
            }
            return this.getFile().compareTo(modifiedFile.getFile());
        }

        public boolean equals(Object object) {
            if (object instanceof ModifiedFile && this.compareTo((ModifiedFile)object) == 0) {
                return true;
            }
            return false;
        }

        File getFile() {
            return this.file;
        }

        long getModified() {
            return this.modified;
        }

        public int hashCode() {
            return (this.file.hashCode() + 1073) * 37 + (int)(this.modified % Integer.MAX_VALUE);
        }
    }

    private static interface StreamCloseCallback {
        public void onClose();
    }

    private static final class StreamHeader {
        private static final int HEADER_VERSION = 0;

        private StreamHeader() {
        }

        static JSONObject readHeader(InputStream object) throws IOException {
            block7 : {
                int n2;
                if (object.read() != 0) {
                    return null;
                }
                int n3 = 0;
                for (n2 = 0; n2 < 3; ++n2) {
                    int n4 = object.read();
                    if (n4 == -1) {
                        Logger.log(LoggingBehavior.CACHE, FileLruCache.TAG, "readHeader: stream.read returned -1 while reading header size");
                        return null;
                    }
                    n3 = (n3 << 8) + (n4 & 255);
                }
                byte[] arrby = new byte[n3];
                for (n2 = 0; n2 < arrby.length; n2 += n3) {
                    n3 = object.read(arrby, n2, arrby.length - n2);
                    if (n3 >= 1) continue;
                    Logger.log(LoggingBehavior.CACHE, FileLruCache.TAG, "readHeader: stream.read stopped at " + Integer.valueOf(n2) + " when expected " + arrby.length);
                    return null;
                }
                object = new JSONTokener(new String(arrby));
                try {
                    object = object.nextValue();
                    if (object instanceof JSONObject) break block7;
                    Logger.log(LoggingBehavior.CACHE, FileLruCache.TAG, "readHeader: expected JSONObject, got " + object.getClass().getCanonicalName());
                    return null;
                }
                catch (JSONException var0_1) {
                    throw new IOException(var0_1.getMessage());
                }
            }
            object = (JSONObject)object;
            return object;
        }

        static void writeHeader(OutputStream outputStream, JSONObject arrby) throws IOException {
            arrby = arrby.toString().getBytes();
            outputStream.write(0);
            outputStream.write(arrby.length >> 16 & 255);
            outputStream.write(arrby.length >> 8 & 255);
            outputStream.write(arrby.length >> 0 & 255);
            outputStream.write(arrby);
        }
    }

}

