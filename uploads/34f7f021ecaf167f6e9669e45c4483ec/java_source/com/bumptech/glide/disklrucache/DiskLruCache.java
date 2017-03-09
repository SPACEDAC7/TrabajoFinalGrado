/*
 * Decompiled with CFR 0_115.
 */
package com.bumptech.glide.disklrucache;

import com.bumptech.glide.disklrucache.StrictLineReader;
import com.bumptech.glide.disklrucache.Util;
import java.io.BufferedWriter;
import java.io.Closeable;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.io.PrintStream;
import java.io.Writer;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.Callable;
import java.util.concurrent.Future;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

public final class DiskLruCache
implements Closeable {
    static final long ANY_SEQUENCE_NUMBER = -1;
    private static final String CLEAN = "CLEAN";
    private static final String DIRTY = "DIRTY";
    static final String JOURNAL_FILE = "journal";
    static final String JOURNAL_FILE_BACKUP = "journal.bkp";
    static final String JOURNAL_FILE_TEMP = "journal.tmp";
    static final String MAGIC = "libcore.io.DiskLruCache";
    private static final String READ = "READ";
    private static final String REMOVE = "REMOVE";
    static final String VERSION_1 = "1";
    private final int appVersion;
    private final Callable<Void> cleanupCallable;
    private final File directory;
    final ThreadPoolExecutor executorService = new ThreadPoolExecutor(0, 1, 60, TimeUnit.SECONDS, new LinkedBlockingQueue<Runnable>());
    private final File journalFile;
    private final File journalFileBackup;
    private final File journalFileTmp;
    private Writer journalWriter;
    private final LinkedHashMap<String, Entry> lruEntries = new LinkedHashMap(0, 0.75f, true);
    private long maxSize;
    private long nextSequenceNumber = 0;
    private int redundantOpCount;
    private long size = 0;
    private final int valueCount;

    private DiskLruCache(File file, int n2, int n3, long l2) {
        this.cleanupCallable = new Callable<Void>(){

            /*
             * Enabled aggressive block sorting
             * Enabled unnecessary exception pruning
             * Enabled aggressive exception aggregation
             */
            @Override
            public Void call() throws Exception {
                DiskLruCache diskLruCache = DiskLruCache.this;
                synchronized (diskLruCache) {
                    if (DiskLruCache.this.journalWriter == null) {
                        return null;
                    }
                    DiskLruCache.this.trimToSize();
                    if (DiskLruCache.this.journalRebuildRequired()) {
                        DiskLruCache.this.rebuildJournal();
                        DiskLruCache.this.redundantOpCount = 0;
                    }
                    return null;
                }
            }
        };
        this.directory = file;
        this.appVersion = n2;
        this.journalFile = new File(file, "journal");
        this.journalFileTmp = new File(file, "journal.tmp");
        this.journalFileBackup = new File(file, "journal.bkp");
        this.valueCount = n3;
        this.maxSize = l2;
    }

    private void checkNotClosed() {
        if (this.journalWriter == null) {
            throw new IllegalStateException("cache is closed");
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
    private void completeEdit(Editor var1_1, boolean var2_2) throws IOException {
        // MONITORENTER : this
        var8_3 = Editor.access$1400((Editor)var1_1);
        if (Entry.access$700(var8_3) != var1_1) {
            throw new IllegalStateException();
        }
        if (var2_2 && !Entry.access$600(var8_3)) {
            for (var3_4 = 0; var3_4 < this.valueCount; ++var3_4) {
                if (!Editor.access$1500((Editor)var1_1)[var3_4]) {
                    var1_1.abort();
                    throw new IllegalStateException("Newly created entry didn't create value for index " + var3_4);
                }
                if (var8_3.getDirtyFile(var3_4).exists()) continue;
                var1_1.abort();
                return;
            }
        }
        var3_4 = 0;
        ** GOTO lbl18
        do {
            // MONITOREXIT : this
            return;
            break;
        } while (true);
lbl18: // 1 sources:
        do {
            if (var3_4 < this.valueCount) {
                var1_1 = var8_3.getDirtyFile(var3_4);
                if (var2_2) {
                    if (var1_1.exists()) {
                        var9_7 = var8_3.getCleanFile(var3_4);
                        var1_1.renameTo(var9_7);
                        var4_5 = Entry.access$1000(var8_3)[var3_4];
                        Entry.access$1000((Entry)var8_3)[var3_4] = var6_6 = var9_7.length();
                        this.size = this.size - var4_5 + var6_6;
                    }
                } else {
                    DiskLruCache.deleteIfExists((File)var1_1);
                }
            } else {
                ++this.redundantOpCount;
                Entry.access$702(var8_3, null);
                if (Entry.access$600(var8_3) | var2_2) {
                    Entry.access$602(var8_3, true);
                    this.journalWriter.append("CLEAN");
                    this.journalWriter.append(' ');
                    this.journalWriter.append(Entry.access$1100(var8_3));
                    this.journalWriter.append(var8_3.getLengths());
                    this.journalWriter.append('\n');
                    if (var2_2) {
                        var4_5 = this.nextSequenceNumber;
                        this.nextSequenceNumber = 1 + var4_5;
                        Entry.access$1202(var8_3, var4_5);
                    }
                } else {
                    this.lruEntries.remove(Entry.access$1100(var8_3));
                    this.journalWriter.append("REMOVE");
                    this.journalWriter.append(' ');
                    this.journalWriter.append(Entry.access$1100(var8_3));
                    this.journalWriter.append('\n');
                }
                this.journalWriter.flush();
                if (this.size <= this.maxSize && !this.journalRebuildRequired()) ** continue;
                this.executorService.submit(this.cleanupCallable);
                return;
            }
            ++var3_4;
        } while (true);
    }

    private static void deleteIfExists(File file) throws IOException {
        if (file.exists() && !file.delete()) {
            throw new IOException();
        }
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    private Editor edit(String string2, long l2) throws IOException {
        Object object = null;
        synchronized (this) {
            Object object2;
            this.checkNotClosed();
            Entry entry = this.lruEntries.get(string2);
            if (l2 != -1) {
                object2 = object;
                if (entry == null) return object2;
                long l3 = entry.sequenceNumber;
                if (l3 != l2) {
                    return object;
                }
            }
            if (entry == null) {
                object2 = new Entry(string2);
                this.lruEntries.put(string2, (Entry)object2);
            } else {
                Editor editor = entry.currentEditor;
                object2 = entry;
                if (editor != null) {
                    return object;
                }
            }
            object = new Editor((Entry)object2);
            ((Entry)object2).currentEditor = (Editor)object;
            this.journalWriter.append("DIRTY");
            this.journalWriter.append(' ');
            this.journalWriter.append(string2);
            this.journalWriter.append('\n');
            this.journalWriter.flush();
            return object;
        }
    }

    private static String inputStreamToString(InputStream inputStream) throws IOException {
        return Util.readFully(new InputStreamReader(inputStream, Util.UTF_8));
    }

    private boolean journalRebuildRequired() {
        if (this.redundantOpCount >= 2000 && this.redundantOpCount >= this.lruEntries.size()) {
            return true;
        }
        return false;
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    public static DiskLruCache open(File object, int n2, int n3, long l2) throws IOException {
        if (l2 <= 0) {
            throw new IllegalArgumentException("maxSize <= 0");
        }
        if (n3 <= 0) {
            throw new IllegalArgumentException("valueCount <= 0");
        }
        Object object2 = new File((File)object, "journal.bkp");
        if (object2.exists()) {
            File file = new File((File)object, "journal");
            if (file.exists()) {
                object2.delete();
            } else {
                DiskLruCache.renameTo((File)object2, file, false);
            }
        }
        object2 = new DiskLruCache((File)object, n2, n3, l2);
        if (object2.journalFile.exists()) {
            try {
                object2.readJournal();
                object2.processJournal();
                return object2;
            }
            catch (IOException var6_6) {
                System.out.println("DiskLruCache " + object + " is corrupt: " + var6_6.getMessage() + ", removing");
                object2.delete();
            }
        }
        object.mkdirs();
        object = new DiskLruCache((File)object, n2, n3, l2);
        object.rebuildJournal();
        return object;
    }

    private void processJournal() throws IOException {
        DiskLruCache.deleteIfExists(this.journalFileTmp);
        Iterator<Entry> iterator = this.lruEntries.values().iterator();
        while (iterator.hasNext()) {
            int n2;
            Entry entry = iterator.next();
            if (entry.currentEditor == null) {
                for (n2 = 0; n2 < this.valueCount; ++n2) {
                    this.size += entry.lengths[n2];
                }
                continue;
            }
            entry.currentEditor = null;
            for (n2 = 0; n2 < this.valueCount; ++n2) {
                DiskLruCache.deleteIfExists(entry.getCleanFile(n2));
                DiskLruCache.deleteIfExists(entry.getDirtyFile(n2));
            }
            iterator.remove();
        }
    }

    /*
     * Unable to fully structure code
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     * Lifted jumps to return sites
     */
    private void readJournal() throws IOException {
        var2_1 = new StrictLineReader(new FileInputStream(this.journalFile), Util.US_ASCII);
        var3_2 = var2_1.readLine();
        var4_5 = var2_1.readLine();
        var5_6 = var2_1.readLine();
        var6_7 = var2_1.readLine();
        var7_8 = var2_1.readLine();
        if ("libcore.io.DiskLruCache".equals(var3_2) == false) throw new IOException("unexpected journal header: [" + var3_2 + ", " + var4_5 + ", " + var6_7 + ", " + var7_8 + "]");
        if ("1".equals(var4_5) == false) throw new IOException("unexpected journal header: [" + var3_2 + ", " + var4_5 + ", " + var6_7 + ", " + var7_8 + "]");
        if (Integer.toString(this.appVersion).equals(var5_6) == false) throw new IOException("unexpected journal header: [" + var3_2 + ", " + var4_5 + ", " + var6_7 + ", " + var7_8 + "]");
        if (Integer.toString(this.valueCount).equals(var6_7) == false) throw new IOException("unexpected journal header: [" + var3_2 + ", " + var4_5 + ", " + var6_7 + ", " + var7_8 + "]");
        if (!"".equals(var7_8)) {
            throw new IOException("unexpected journal header: [" + var3_2 + ", " + var4_5 + ", " + var6_7 + ", " + var7_8 + "]");
        }
        ** GOTO lbl18
        finally {
            Util.closeQuietly(var2_1);
        }
lbl18: // 1 sources:
        var1_9 = 0;
        do {
            this.readJournalLine(var2_1.readLine());
            ++var1_9;
        } while (true);
    }

    /*
     * Enabled aggressive block sorting
     */
    private void readJournalLine(String arrstring) throws IOException {
        Entry entry;
        Object object;
        Object object2;
        int n2 = arrstring.indexOf(32);
        if (n2 == -1) {
            throw new IOException("unexpected journal line: " + (String)arrstring);
        }
        int n3 = n2 + 1;
        int n4 = arrstring.indexOf(32, n3);
        if (n4 == -1) {
            object2 = object = arrstring.substring(n3);
            if (n2 == "REMOVE".length()) {
                object2 = object;
                if (arrstring.startsWith("REMOVE")) {
                    this.lruEntries.remove(object);
                    return;
                }
            }
        } else {
            object2 = arrstring.substring(n3, n4);
        }
        object = entry = this.lruEntries.get(object2);
        if (entry == null) {
            object = new Entry((String)object2);
            this.lruEntries.put((String)object2, (Entry)object);
        }
        if (n4 != -1 && n2 == "CLEAN".length() && arrstring.startsWith("CLEAN")) {
            arrstring = arrstring.substring(n4 + 1).split(" ");
            ((Entry)object).readable = true;
            ((Entry)object).currentEditor = null;
            ((Entry)object).setLengths(arrstring);
            return;
        }
        if (n4 == -1 && n2 == "DIRTY".length() && arrstring.startsWith("DIRTY")) {
            ((Entry)object).currentEditor = new Editor((Entry)object);
            return;
        }
        if (n4 == -1 && n2 == "READ".length() && arrstring.startsWith("READ")) return;
        {
            throw new IOException("unexpected journal line: " + (String)arrstring);
        }
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    private void rebuildJournal() throws IOException {
        synchronized (this) {
            if (this.journalWriter != null) {
                this.journalWriter.close();
            }
            BufferedWriter bufferedWriter = new BufferedWriter(new OutputStreamWriter((OutputStream)new FileOutputStream(this.journalFileTmp), Util.US_ASCII));
            try {
                bufferedWriter.write("libcore.io.DiskLruCache");
                bufferedWriter.write("\n");
                bufferedWriter.write("1");
                bufferedWriter.write("\n");
                bufferedWriter.write(Integer.toString(this.appVersion));
                bufferedWriter.write("\n");
                bufferedWriter.write(Integer.toString(this.valueCount));
                bufferedWriter.write("\n");
                bufferedWriter.write("\n");
                for (Entry entry : this.lruEntries.values()) {
                    if (entry.currentEditor != null) {
                        bufferedWriter.write("DIRTY " + entry.key + '\n');
                        continue;
                    }
                    bufferedWriter.write("CLEAN " + entry.key + entry.getLengths() + '\n');
                }
            }
            finally {
                bufferedWriter.close();
            }
            if (this.journalFile.exists()) {
                DiskLruCache.renameTo(this.journalFile, this.journalFileBackup, true);
            }
            DiskLruCache.renameTo(this.journalFileTmp, this.journalFile, false);
            this.journalFileBackup.delete();
            this.journalWriter = new BufferedWriter(new OutputStreamWriter((OutputStream)new FileOutputStream(this.journalFile, true), Util.US_ASCII));
            return;
        }
    }

    private static void renameTo(File file, File file2, boolean bl) throws IOException {
        if (bl) {
            DiskLruCache.deleteIfExists(file2);
        }
        if (!file.renameTo(file2)) {
            throw new IOException();
        }
    }

    private void trimToSize() throws IOException {
        while (this.size > this.maxSize) {
            this.remove(this.lruEntries.entrySet().iterator().next().getKey());
        }
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    @Override
    public void close() throws IOException {
        synchronized (this) {
            Writer writer = this.journalWriter;
            if (writer != null) {
                for (Entry entry : new ArrayList<Entry>(this.lruEntries.values())) {
                    if (entry.currentEditor == null) continue;
                    entry.currentEditor.abort();
                }
                this.trimToSize();
                this.journalWriter.close();
                this.journalWriter = null;
            }
            return;
        }
    }

    public void delete() throws IOException {
        this.close();
        Util.deleteContents(this.directory);
    }

    public Editor edit(String string2) throws IOException {
        return this.edit(string2, -1);
    }

    public void flush() throws IOException {
        synchronized (this) {
            this.checkNotClosed();
            this.trimToSize();
            this.journalWriter.flush();
            return;
        }
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    public Value get(String string2) throws IOException {
        Value value = null;
        synchronized (this) {
            Entry entry;
            block10 : {
                this.checkNotClosed();
                entry = this.lruEntries.get(string2);
                if (entry != null) break block10;
                return value;
            }
            Value value2 = value;
            if (!entry.readable) return value2;
            File[] arrfile = entry.cleanFiles;
            int n2 = arrfile.length;
            for (int i2 = 0; i2 < n2; ++i2) {
                value2 = value;
                if (!arrfile[i2].exists()) return value2;
            }
            try {
                ++this.redundantOpCount;
                this.journalWriter.append("READ");
                this.journalWriter.append(' ');
                this.journalWriter.append(string2);
                this.journalWriter.append('\n');
                if (this.journalRebuildRequired()) {
                    this.executorService.submit(this.cleanupCallable);
                }
                value2 = new Value(string2, entry.sequenceNumber, entry.cleanFiles, entry.lengths);
                return value2;
            }
            catch (Throwable var1_2) {
                throw var1_2;
            }
            finally {
            }
        }
    }

    public File getDirectory() {
        return this.directory;
    }

    public long getMaxSize() {
        synchronized (this) {
            long l2 = this.maxSize;
            return l2;
        }
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    public boolean isClosed() {
        synchronized (this) {
            Writer writer = this.journalWriter;
            if (writer != null) return false;
            return true;
        }
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    public boolean remove(String string2) throws IOException {
        synchronized (this) {
            this.checkNotClosed();
            Entry entry = this.lruEntries.get(string2);
            if (entry == null) return false;
            Object object = entry.currentEditor;
            if (object != null) {
                return false;
            }
            for (int i2 = 0; i2 < this.valueCount; this.size -= Entry.access$1000((Entry)entry)[i2], ++i2) {
                object = entry.getCleanFile(i2);
                if (object.exists() && !object.delete()) {
                    throw new IOException("failed to delete " + object);
                }
                Entry.access$1000((Entry)entry)[i2] = 0;
            }
            ++this.redundantOpCount;
            this.journalWriter.append("REMOVE");
            this.journalWriter.append(' ');
            this.journalWriter.append(string2);
            this.journalWriter.append('\n');
            this.lruEntries.remove(string2);
            if (!this.journalRebuildRequired()) return true;
            this.executorService.submit(this.cleanupCallable);
            return true;
        }
    }

    public void setMaxSize(long l2) {
        synchronized (this) {
            this.maxSize = l2;
            this.executorService.submit(this.cleanupCallable);
            return;
        }
    }

    public long size() {
        synchronized (this) {
            long l2 = this.size;
            return l2;
        }
    }

    public final class Editor {
        private boolean committed;
        private final Entry entry;
        private final boolean[] written;

        /*
         * Enabled aggressive block sorting
         */
        private Editor(Entry entry) {
            this.entry = entry;
            this$0 = entry.readable ? null : new boolean[((DiskLruCache)this$0).valueCount];
            this.written = this$0;
        }

        static /* synthetic */ Entry access$1400(Editor editor) {
            return editor.entry;
        }

        static /* synthetic */ boolean[] access$1500(Editor editor) {
            return editor.written;
        }

        /*
         * Enabled aggressive block sorting
         * Enabled unnecessary exception pruning
         * Enabled aggressive exception aggregation
         */
        private InputStream newInputStream(int n2) throws IOException {
            DiskLruCache diskLruCache = this$0;
            synchronized (diskLruCache) {
                if (this.entry.currentEditor != this) {
                    throw new IllegalStateException();
                }
                if (!this.entry.readable) {
                    return null;
                }
                try {
                    return new FileInputStream(this.entry.getCleanFile(n2));
                }
                catch (FileNotFoundException var3_4) {
                    return null;
                }
            }
        }

        public void abort() throws IOException {
            this$0.completeEdit(this, false);
        }

        /*
         * Enabled force condition propagation
         * Lifted jumps to return sites
         */
        public void abortUnlessCommitted() {
            if (this.committed) return;
            try {
                this.abort();
                return;
            }
            catch (IOException var1_1) {
                return;
            }
        }

        public void commit() throws IOException {
            this$0.completeEdit(this, true);
            this.committed = true;
        }

        /*
         * Enabled aggressive block sorting
         * Enabled unnecessary exception pruning
         * Enabled aggressive exception aggregation
         */
        public File getFile(int n2) throws IOException {
            DiskLruCache diskLruCache = this$0;
            synchronized (diskLruCache) {
                if (this.entry.currentEditor != this) {
                    throw new IllegalStateException();
                }
                if (!this.entry.readable) {
                    this.written[n2] = true;
                }
                File file = this.entry.getDirtyFile(n2);
                if (!this$0.directory.exists()) {
                    this$0.directory.mkdirs();
                }
                return file;
            }
        }

        public String getString(int n2) throws IOException {
            InputStream inputStream = this.newInputStream(n2);
            if (inputStream != null) {
                return DiskLruCache.inputStreamToString(inputStream);
            }
            return null;
        }

        /*
         * Unable to fully structure code
         * Enabled aggressive block sorting
         * Enabled unnecessary exception pruning
         * Enabled aggressive exception aggregation
         * Lifted jumps to return sites
         */
        public void set(int var1_1, String var2_2) throws IOException {
            var4_3 = null;
            var3_5 = new OutputStreamWriter((OutputStream)new FileOutputStream(this.getFile(var1_1)), Util.UTF_8);
            var3_5.write((String)var2_2);
            Util.closeQuietly((Closeable)var3_5);
            return;
            catch (Throwable var3_6) {
                var2_2 = var4_3;
                ** GOTO lbl14
                catch (Throwable var4_4) {
                    var2_2 = var3_5;
                    var3_5 = var4_4;
                }
lbl14: // 2 sources:
                Util.closeQuietly((Closeable)var2_2);
                throw var3_5;
            }
        }
    }

    private final class Entry {
        File[] cleanFiles;
        private Editor currentEditor;
        File[] dirtyFiles;
        private final String key;
        private final long[] lengths;
        private boolean readable;
        private long sequenceNumber;

        private Entry(String charSequence) {
            this.key = charSequence;
            this.lengths = new long[DiskLruCache.this.valueCount];
            this.cleanFiles = new File[DiskLruCache.this.valueCount];
            this.dirtyFiles = new File[DiskLruCache.this.valueCount];
            charSequence = new StringBuilder((String)charSequence).append('.');
            int n2 = charSequence.length();
            for (int i2 = 0; i2 < DiskLruCache.this.valueCount; ++i2) {
                charSequence.append(i2);
                this.cleanFiles[i2] = new File(DiskLruCache.this.directory, charSequence.toString());
                charSequence.append(".tmp");
                this.dirtyFiles[i2] = new File(DiskLruCache.this.directory, charSequence.toString());
                charSequence.setLength(n2);
            }
        }

        static /* synthetic */ long access$1202(Entry entry, long l2) {
            entry.sequenceNumber = l2;
            return l2;
        }

        private IOException invalidLengths(String[] arrstring) throws IOException {
            throw new IOException("unexpected journal line: " + Arrays.toString(arrstring));
        }

        private void setLengths(String[] arrstring) throws IOException {
            if (arrstring.length != DiskLruCache.this.valueCount) {
                throw this.invalidLengths(arrstring);
            }
            int n2 = 0;
            do {
                try {
                    if (n2 >= arrstring.length) break;
                    this.lengths[n2] = Long.parseLong(arrstring[n2]);
                    ++n2;
                    continue;
                }
                catch (NumberFormatException var3_3) {
                    throw this.invalidLengths(arrstring);
                }
            } while (true);
        }

        public File getCleanFile(int n2) {
            return this.cleanFiles[n2];
        }

        public File getDirtyFile(int n2) {
            return this.dirtyFiles[n2];
        }

        public String getLengths() throws IOException {
            StringBuilder stringBuilder = new StringBuilder();
            for (long l2 : this.lengths) {
                stringBuilder.append(' ').append(l2);
            }
            return stringBuilder.toString();
        }
    }

    public final class Value {
        private final File[] files;
        private final String key;
        private final long[] lengths;
        private final long sequenceNumber;

        private Value(String string2, long l2, File[] arrfile, long[] arrl) {
            this.key = string2;
            this.sequenceNumber = l2;
            this.files = arrfile;
            this.lengths = arrl;
        }

        public Editor edit() throws IOException {
            return DiskLruCache.this.edit(this.key, this.sequenceNumber);
        }

        public File getFile(int n2) {
            return this.files[n2];
        }

        public long getLength(int n2) {
            return this.lengths[n2];
        }

        public String getString(int n2) throws IOException {
            return DiskLruCache.inputStreamToString(new FileInputStream(this.files[n2]));
        }
    }

}

