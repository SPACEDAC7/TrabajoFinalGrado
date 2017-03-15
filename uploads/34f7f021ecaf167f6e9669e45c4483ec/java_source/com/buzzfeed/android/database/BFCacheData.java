/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.content.ContentValues
 *  android.database.Cursor
 *  android.database.sqlite.SQLiteDatabase
 *  android.database.sqlite.SQLiteException
 *  android.database.sqlite.SQLiteOpenHelper
 *  android.text.TextUtils
 *  org.json.JSONObject
 */
package com.buzzfeed.android.database;

import android.content.ContentValues;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteException;
import android.database.sqlite.SQLiteOpenHelper;
import android.text.TextUtils;
import com.buzzfeed.android.data.Bookmark;
import com.buzzfeed.android.data.Buzz;
import com.buzzfeed.android.data.BuzzAd;
import com.buzzfeed.android.data.FlowItem;
import com.buzzfeed.android.database.BFDatabaseManager;
import com.buzzfeed.toolkit.content.BuffetType;
import com.buzzfeed.toolkit.content.Content;
import com.buzzfeed.toolkit.content.ContentFactory;
import com.buzzfeed.toolkit.content.SimpleFlowItemFactory;
import com.buzzfeed.toolkit.util.LogUtil;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.OutputStream;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.Stack;
import java.util.concurrent.ConcurrentHashMap;
import org.json.JSONObject;

public class BFCacheData {
    private static int DATABASE_TABLE_WRITE_THREADS = 0;
    private static final String TABLE_CREATE = "CREATE TABLE bfCache (_id INTEGER PRIMARY KEY AUTOINCREMENT, cacheid TEXT NOT NULL, cachetype TEXT NOT NULL, cachedata BLOB, timestamp INTEGER NOT NULL); CREATE UNIQUE INDEX IF NOT EXISTS cacheIdIdx ON bfCache (cacheid); CREATE UNIQUE INDEX IF NOT EXISTS typeCacheIdIdx ON bfCache (cachetype, cacheid); CREATE UNIQUE INDEX IF NOT EXISTS typeTimestampIdx ON bfCache (cachetype, timestamp);";
    private static final String TABLE_DROP = "DROP TABLE IF EXISTS bfCache";
    private static final String TAG = BFCacheData.class.getSimpleName();
    private static ConcurrentHashMap<String, BFCacheData> bfCacheDataMap;
    private static List migrationList;
    private static final Object syncObject;
    private SQLiteOpenHelper dbHelper;
    private PutCacheQueue putCacheQueue;
    private Thread[] putCacheThreads;

    static {
        syncObject = new Object();
        DATABASE_TABLE_WRITE_THREADS = 1;
        bfCacheDataMap = new ConcurrentHashMap();
        migrationList = null;
    }

    private BFCacheData() {
    }

    static /* synthetic */ SQLiteOpenHelper access$300(BFCacheData bFCacheData) {
        return bFCacheData.dbHelper;
    }

    static /* synthetic */ PutCacheQueue access$400(BFCacheData bFCacheData) {
        return bFCacheData.putCacheQueue;
    }

    static /* synthetic */ void access$500(SQLiteDatabase sQLiteDatabase, PutCache putCache) {
        BFCacheData.writePutCache(sQLiteDatabase, putCache);
    }

    protected static BFCacheData getInstance(String string2, SQLiteOpenHelper sQLiteOpenHelper) {
        return BFCacheData.getInstance(string2, sQLiteOpenHelper, false);
    }

    /*
     * Loose catch block
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     * Converted monitor instructions to comments
     * Lifted jumps to return sites
     */
    protected static BFCacheData getInstance(String object, SQLiteOpenHelper arrthread, boolean bl) {
        BFCacheData bFCacheData;
        BFCacheData bFCacheData2 = bfCacheDataMap.get(object);
        if (bFCacheData2 != null) {
            if (!bl) return bFCacheData2;
            object = syncObject;
            // MONITORENTER : object
            bFCacheData2.dbHelper = arrthread;
            // MONITOREXIT : object
            return bFCacheData2;
        }
        Object object2 = syncObject;
        // MONITORENTER : object2
        bFCacheData2 = bFCacheData = bfCacheDataMap.get(object);
        if (bFCacheData != null) return bFCacheData2;
        LogUtil.d(TAG, "Creating BFCacheData instance for " + (String)object);
        bFCacheData2 = new BFCacheData();
        {
            catch (Throwable throwable) {
                throw object;
            }
        }
        try {
            bFCacheData2.dbHelper = arrthread;
            bFCacheData2.putCacheQueue = new PutCacheQueue();
            bFCacheData2.putCacheThreads = new Thread[DATABASE_TABLE_WRITE_THREADS];
            for (int i2 = 0; i2 < bFCacheData2.putCacheThreads.length; ++i2) {
                arrthread = bFCacheData2.putCacheThreads;
                bFCacheData2.getClass();
                arrthread[i2] = new Thread(bFCacheData2.new PutCacheQueueManager());
                bFCacheData2.putCacheThreads[i2].setPriority(4);
                bFCacheData2.putCacheThreads[i2].start();
            }
            bfCacheDataMap.put((String)object, bFCacheData2);
            // MONITOREXIT : object2
            return bFCacheData2;
        }
        catch (Throwable var0_1) {
            throw object;
        }
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    private static Object getObject(SQLiteDatabase object, String string2, String string3) {
        String string4 = TAG + ".getObject";
        byte[] arrby = null;
        Object var3_6 = null;
        LogUtil.d(string4, "Querying Cache: SELECT cachedata FROM bfCache WHERE cachetype = ? AND cacheid = ?, id=" + string3 + " type=" + string2);
        Cursor cursor = object.rawQuery("SELECT cachedata FROM bfCache WHERE cachetype = ? AND cacheid = ?", new String[]{string2, string3});
        object = arrby;
        if (cursor == null) return object;
        object = var3_6;
        if (!cursor.moveToFirst()) return object;
        arrby = cursor.getBlob(0);
        object = var3_6;
        if (arrby == null) return object;
        LogUtil.d(string4, "Cache found in database id=" + string3);
        object = BFCacheData.getObjectFromBlob(string2, arrby);
        return object;
        finally {
            cursor.close();
        }
    }

    private static Object getObjectFromBlob(String string2, byte[] object) {
        Object object2;
        String string3 = TAG + ".getObjectFromBlob";
        Object object3 = null;
        Object object4 = object2 = null;
        Object object5 = object3;
        ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream((byte[])object);
        object4 = object2;
        object5 = object3;
        ObjectInputStream objectInputStream = new ObjectInputStream(byteArrayInputStream);
        object4 = object2;
        object5 = object3;
        object4 = object = objectInputStream.readObject();
        object5 = object;
        objectInputStream.close();
        object4 = object;
        object5 = object;
        try {
            byteArrayInputStream.close();
            return object;
        }
        catch (IOException var1_2) {
            LogUtil.e(string3, "IOException trying to read cache: " + string2, var1_2);
            return object4;
        }
        catch (ClassNotFoundException var1_3) {
            LogUtil.e(string3, "ClassNotFoundException trying to read cache: " + string2, var1_3);
            return object5;
        }
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    private static List<Object> getObjectsList(SQLiteDatabase sQLiteDatabase, String string2) {
        ArrayList<Object> arrayList;
        block4 : {
            Object object = TAG + ".getObjectsMap";
            arrayList = new ArrayList<Object>();
            LogUtil.d((String)object, "Querying Cache: SELECT cachedata FROM bfCache WHERE cachetype = ?, type=" + string2);
            sQLiteDatabase = sQLiteDatabase.rawQuery("SELECT cachedata FROM bfCache WHERE cachetype = ?", new String[]{string2});
            if (sQLiteDatabase == null) return arrayList;
            try {
                if (!sQLiteDatabase.moveToFirst()) break block4;
                do {
                    if ((object = BFCacheData.getObjectFromBlob(string2, sQLiteDatabase.getBlob(0))) == null) continue;
                    break;
                } while (true);
            }
            catch (Throwable var1_2) {
                sQLiteDatabase.close();
                throw var1_2;
            }
            {
                boolean bl;
                arrayList.add(object);
                if (bl = sQLiteDatabase.moveToNext()) continue;
            }
        }
        sQLiteDatabase.close();
        return arrayList;
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    private static Map<String, Object> getObjectsMap(SQLiteDatabase sQLiteDatabase, String string2) {
        HashMap<String, Object> hashMap;
        block4 : {
            Object object;
            String string3 = TAG + ".getObjectsMap";
            hashMap = new HashMap<String, Object>();
            LogUtil.d(string3, "Querying Cache: SELECT cacheid, cachedata FROM bfCache WHERE cachetype = ?, type=" + string2);
            sQLiteDatabase = sQLiteDatabase.rawQuery("SELECT cacheid, cachedata FROM bfCache WHERE cachetype = ?", new String[]{string2});
            if (sQLiteDatabase == null) return hashMap;
            try {
                if (!sQLiteDatabase.moveToFirst()) break block4;
                do {
                    string3 = sQLiteDatabase.getString(0);
                    object = BFCacheData.getObjectFromBlob(string2, sQLiteDatabase.getBlob(1));
                    if (string3 == null || object == null) continue;
                    break;
                } while (true);
            }
            catch (Throwable var1_2) {
                sQLiteDatabase.close();
                throw var1_2;
            }
            {
                boolean bl;
                hashMap.put(string3, object);
                if (bl = sQLiteDatabase.moveToNext()) continue;
            }
        }
        sQLiteDatabase.close();
        return hashMap;
    }

    private static List getPersistentCache(SQLiteDatabase sQLiteDatabase) {
        String[] arrstring = BFCacheData.getPersistentTypes();
        ArrayList<PutCache> arrayList = new ArrayList<PutCache>();
        for (int i2 = 0; i2 < arrstring.length; ++i2) {
            Map<String, Object> map = BFCacheData.getObjectsMap(sQLiteDatabase, arrstring[i2]);
            for (String string2 : map.keySet()) {
                arrayList.add(new PutCache(string2, arrstring[i2], map.get(string2)));
            }
        }
        return arrayList;
    }

    private static String[] getPersistentTypes() {
        return new String[]{"bookmark"};
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    private static void importPersistentList(SQLiteDatabase sQLiteDatabase, List<PutCache> object) {
        String string2 = TAG + ".importPersistentList";
        LogUtil.i(string2, "Importing " + object.size() + " persistent items into BFCache");
        Iterator iterator = object.iterator();
        while (iterator.hasNext()) {
            PutCache putCache = (PutCache)iterator.next();
            Object object2 = null;
            Object object3 = null;
            object = object2;
            if (putCache.object instanceof FlowItem) {
                FlowItem flowItem = (FlowItem)putCache.object;
                object = object2;
                if (flowItem != null) {
                    object = object2;
                    if (flowItem.getContent() != null) {
                        object = object2;
                        if (flowItem.getContent() instanceof Buzz) {
                            object2 = (Buzz)flowItem.getContent();
                            object = object2.isAd() ? BuffetType.EDITORIAL_AD.name() : BuffetType.POST.name();
                            if (TextUtils.isEmpty((CharSequence)object2.getJson())) {
                                if (object2.isAd()) {
                                    object2.setJson(((BuzzAd)object2).generateJson().toString());
                                } else {
                                    object2.setJson(object2.generateJson().toString());
                                }
                            }
                            if (!TextUtils.isEmpty((CharSequence)object2.getJson())) {
                                if (object2.isBookmarked()) {
                                    object3 = new Bookmark(flowItem.getId(), (String)object, object2.getJson(), object2.getBookmarked());
                                }
                            } else {
                                LogUtil.d(string2, "Older buzz without JSON, can't re-parse: " + object2.getBuzzId());
                            }
                            if (object3 == null) {
                                try {
                                    com.buzzfeed.toolkit.content.FlowItem flowItem2 = new com.buzzfeed.toolkit.content.FlowItem();
                                    flowItem2.parse(new JSONObject(object2.getJson()), new SimpleFlowItemFactory((String)object));
                                    putCache.object = flowItem2;
                                }
                                catch (Exception var1_2) {
                                    LogUtil.e(string2, "Error in Content JSON when trying to parse it into object", var1_2);
                                }
                            }
                            object = object3;
                            if (object3 == null) {
                                object = object3;
                                if (putCache.object instanceof Buzz) {
                                    putCache.object = null;
                                    object = object3;
                                }
                            }
                        }
                    }
                }
            }
            object2 = object;
            if (putCache.object instanceof com.buzzfeed.toolkit.content.FlowItem) {
                com.buzzfeed.toolkit.content.FlowItem flowItem = (com.buzzfeed.toolkit.content.FlowItem)putCache.object;
                object2 = object;
                if (flowItem != null) {
                    object2 = object;
                    if (flowItem.getContent() != null) {
                        object2 = object;
                        if (flowItem.getContent() instanceof com.buzzfeed.toolkit.content.Buzz) {
                            com.buzzfeed.toolkit.content.Buzz buzz = (com.buzzfeed.toolkit.content.Buzz)flowItem.getContent();
                            object3 = buzz.isAd() ? BuffetType.EDITORIAL_AD.name() : BuffetType.POST.name();
                            if (!TextUtils.isEmpty((CharSequence)buzz.getJson())) {
                                object2 = object;
                                if (buzz.isBookmarked()) {
                                    object2 = new Bookmark(flowItem.getId(), (String)object3, buzz.getJson(), buzz.getBookmarked());
                                }
                            } else {
                                LogUtil.d(string2, "Older buzz without JSON, can't re-parse: " + buzz.getId());
                                object2 = object;
                            }
                        }
                    }
                }
            }
            if (object2 != null && !TextUtils.isEmpty((CharSequence)object2.getJson())) {
                putCache.object = object2;
            }
            if (putCache.object == null) continue;
            BFCacheData.writePutCache(sQLiteDatabase, putCache);
        }
        return;
    }

    public static void importSynchronousMap(SQLiteDatabase sQLiteDatabase, String string2, Map map) {
        for (String string3 : map.keySet()) {
            BFCacheData.writePutCache(sQLiteDatabase, new PutCache(string3, string2, map.get(string3)));
        }
    }

    private boolean isTypeEphemeral(String string2) {
        return string2.equals("cache");
    }

    private void queuePutCache(PutCache putCache) {
        LogUtil.d(TAG + ".queuePutCache", "Adding putCache to database queue: " + putCache.cacheId);
        this.putCacheQueue.clean(putCache);
        this.putCacheQueue.queue(putCache);
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    protected static void tableCreate(SQLiteDatabase sQLiteDatabase) {
        String string2 = TAG + ".tableCreate";
        sQLiteDatabase.execSQL("CREATE TABLE bfCache (_id INTEGER PRIMARY KEY AUTOINCREMENT, cacheid TEXT NOT NULL, cachetype TEXT NOT NULL, cachedata BLOB, timestamp INTEGER NOT NULL); CREATE UNIQUE INDEX IF NOT EXISTS cacheIdIdx ON bfCache (cacheid); CREATE UNIQUE INDEX IF NOT EXISTS typeCacheIdIdx ON bfCache (cachetype, cacheid); CREATE UNIQUE INDEX IF NOT EXISTS typeTimestampIdx ON bfCache (cachetype, timestamp);");
        Object object = syncObject;
        synchronized (object) {
            if (migrationList == null) {
                LogUtil.i(string2, "Migration list is empty; attempting to load from media...");
                migrationList = (List)BFDatabaseManager.loadObjectFromMedia("bfCache");
                if (migrationList != null) {
                    LogUtil.i(string2, "Found " + migrationList.size() + " migration items on media");
                } else {
                    LogUtil.i(string2, "No migration list found on media; nothing to restore");
                }
            } else {
                LogUtil.i(string2, "Found " + migrationList.size() + " migration items in memory list");
            }
            if (migrationList != null) {
                BFCacheData.importPersistentList(sQLiteDatabase, migrationList);
                migrationList = null;
                BFDatabaseManager.deleteFileFromMedia("bfCache");
            }
            return;
        }
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    protected static void tableDrop(SQLiteDatabase sQLiteDatabase) {
        String string2 = TAG + ".tableDrop";
        Object object = syncObject;
        synchronized (object) {
            try {
                migrationList = BFCacheData.getPersistentCache(sQLiteDatabase);
            }
            catch (SQLiteException var3_3) {
                LogUtil.w(string2, "Error reading from the database: " + var3_3.toString());
            }
            if (migrationList != null && migrationList.size() > 0) {
                BFDatabaseManager.saveObjectToMedia(migrationList, "bfCache");
            } else {
                LogUtil.i(string2, "No persistent cache records found to migrate");
            }
        }
        sQLiteDatabase.execSQL("DROP TABLE IF EXISTS bfCache");
    }

    /*
     * Unable to fully structure code
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     * Lifted jumps to return sites
     */
    private static void writePutCache(SQLiteDatabase var0, PutCache var1_2) {
        var4_3 = BFCacheData.TAG + ".writePutCache";
        var7_4 = System.currentTimeMillis();
        var3_5 = null;
        var2_7 = null;
        if (var1_2.object != null) {
            var2_7 = var3_5;
            try {
                var5_8 = new ByteArrayOutputStream();
                var2_7 = var3_5;
                var6_9 = new ObjectOutputStream(var5_8);
                var2_7 = var3_5;
                var6_9.writeObject(var1_2.object);
                var2_7 = var3_5;
                var2_7 = var3_5 = var5_8.toByteArray();
                var6_9.close();
                var2_7 = var3_5;
                var5_8.close();
                var2_7 = var3_5;
            }
            catch (IOException var3_6) {
                LogUtil.e(var4_3, "IOException trying to convert cache: " + var1_2.cacheId, var3_6);
            }
        }
        var3_5 = new byte[]();
        var3_5.put("cacheid", var1_2.cacheId);
        var3_5.put("cachetype", var1_2.type);
        var3_5.put("cachedata", var2_7);
        var3_5.put("timestamp", Long.valueOf(var7_4));
        var2_7 = BFCacheData.getObject(var0, var1_2.type, var1_2.cacheId);
        if (var2_7 != null) ** GOTO lbl33
        try {
            LogUtil.d(var4_3, "Inserting Cache: " + var1_2.object.toString());
            var0.insertOrThrow("bfCache", null, (ContentValues)var3_5);
            return;
lbl33: // 1 sources:
            if (var2_7.equals(var1_2.object) != false) return;
            LogUtil.d(var4_3, "Updating Cache: " + var1_2.object.toString());
            var0.update("bfCache", (ContentValues)var3_5, "cachetype = ? AND cacheid = ?", new String[]{var1_2.type, var1_2.cacheId});
            return;
        }
        catch (SQLiteException var0_1) {
            LogUtil.e(var4_3, "Error writing to the database", (Throwable)var0_1);
            return;
        }
    }

    public void delete(String string2, String string3) {
        String string4 = TAG + ".delete";
        SQLiteDatabase sQLiteDatabase = this.dbHelper.getWritableDatabase();
        LogUtil.d(string4, "Deleting item id:" + string2 + " type:" + string3);
        sQLiteDatabase.delete("bfCache", "cachetype = ? AND cacheid = ?", new String[]{string3, string2});
    }

    public void delete(Map<String, String> map) {
        LogUtil.d(TAG + ".delete", "Deleting items:");
        for (String string2 : map.keySet()) {
            this.delete(string2, map.get(string2));
        }
    }

    public void deleteAll() {
        String string2 = TAG + ".deleteAll";
        SQLiteDatabase sQLiteDatabase = this.dbHelper.getWritableDatabase();
        LogUtil.d(string2, "Deleting all cache");
        sQLiteDatabase.delete("bfCache", null, null);
    }

    public void deleteAllOfType(String string2) {
        String string3 = TAG + ".deleteAllOfType";
        SQLiteDatabase sQLiteDatabase = this.dbHelper.getWritableDatabase();
        LogUtil.d(string3, "Deleting cache for type: " + string2);
        sQLiteDatabase.delete("bfCache", "cachetype = ?", new String[]{string2});
    }

    public void deleteExpired(int n2) {
        this.deleteExpired("cache", n2);
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    public void deleteExpired(String string2, int n2) {
        String string3 = TAG + ".deleteExpired";
        if (this.isTypeEphemeral(string2)) {
            HashMap<String, String> hashMap;
            block7 : {
                SQLiteDatabase sQLiteDatabase = this.dbHelper.getWritableDatabase();
                hashMap = new HashMap<String, String>();
                LogUtil.d(string3, "Deleting expired items: cacheInterval=" + n2);
                string2 = sQLiteDatabase.rawQuery("SELECT cacheid, cachetype FROM bfCache WHERE cachetype = ? AND timestamp < ?", new String[]{string2, String.valueOf(System.currentTimeMillis() - (long)n2)});
                if (string2 != null) {
                    boolean bl;
                    if (!string2.moveToFirst()) break block7;
                    do {
                        hashMap.put(string2.getString(0), string2.getString(1));
                    } while (bl = string2.moveToNext());
                }
            }
            if (hashMap.size() > 0) {
                this.delete(hashMap);
            }
        }
        return;
        finally {
            string2.close();
        }
    }

    public Object getObject(String string2, String string3) {
        return BFCacheData.getObject(this.dbHelper.getWritableDatabase(), string2, string3);
    }

    public List<Object> getObjectsList(String string2) {
        return BFCacheData.getObjectsList(this.dbHelper.getWritableDatabase(), string2);
    }

    public Map<String, Object> getObjectsMap(String string2) {
        return BFCacheData.getObjectsMap(this.dbHelper.getWritableDatabase(), string2);
    }

    public void putObject(String string2, String string3, Object object) {
        String string4 = TAG + ".putObject";
        if (object != null) {
            this.queuePutCache(new PutCache(string2, string3, object));
            return;
        }
        LogUtil.w(string4, "Invalid null parameter given");
    }

    public void waitForBackgroundTasksToFinish() {
        while (this.putCacheQueue.stack.size() > 0) {
            try {
                Thread.sleep(100);
            }
            catch (InterruptedException var1_1) {}
        }
    }

    private static class PutCache
    implements Serializable {
        private static final long serialVersionUID = 0;
        String cacheId;
        Object object;
        String type;

        PutCache(String string2, String string3, Object object) {
            this.cacheId = string2;
            this.type = string3;
            this.object = object;
        }
    }

    private static class PutCacheQueue {
        private Stack<PutCache> stack = new Stack();

        private PutCacheQueue() {
        }

        /*
         * Enabled aggressive block sorting
         * Enabled unnecessary exception pruning
         * Enabled aggressive exception aggregation
         */
        public void clean(PutCache putCache) {
            Stack<PutCache> stack = this.stack;
            synchronized (stack) {
                int n2 = 0;
                while (n2 < this.stack.size()) {
                    if (this.stack.get((int)n2).cacheId.equals(putCache.cacheId)) {
                        this.stack.remove(n2);
                        continue;
                    }
                    ++n2;
                }
                return;
            }
        }

        /*
         * Enabled aggressive block sorting
         * Enabled unnecessary exception pruning
         * Enabled aggressive exception aggregation
         */
        public void queue(PutCache putCache) {
            Stack<PutCache> stack = this.stack;
            synchronized (stack) {
                Iterator<PutCache> iterator = this.stack.iterator();
                do {
                    if (!iterator.hasNext()) {
                        this.stack.push(putCache);
                        this.stack.notifyAll();
                        return;
                    }
                    PutCache putCache2 = iterator.next();
                } while (!putCache.cacheId.equals(putCache2.cacheId));
                return;
            }
        }
    }

    private class PutCacheQueueManager
    implements Runnable {
        private PutCacheQueueManager() {
        }

        /*
         * Exception decompiling
         */
        @Override
        public void run() {
            // This method has failed to decompile.  When submitting a bug report, please provide this stack trace, and (if you hold appropriate legal rights) the relevant class file.
            // org.benf.cfr.reader.util.ConfusedCFRException: Tried to end blocks [12[DOLOOP]], but top level block is 2[TRYBLOCK]
            // org.benf.cfr.reader.bytecode.analysis.opgraph.Op04StructuredStatement.processEndingBlocks(Op04StructuredStatement.java:394)
            // org.benf.cfr.reader.bytecode.analysis.opgraph.Op04StructuredStatement.buildNestedBlocks(Op04StructuredStatement.java:446)
            // org.benf.cfr.reader.bytecode.analysis.opgraph.Op03SimpleStatement.createInitialStructuredBlock(Op03SimpleStatement.java:2869)
            // org.benf.cfr.reader.bytecode.CodeAnalyser.getAnalysisInner(CodeAnalyser.java:817)
            // org.benf.cfr.reader.bytecode.CodeAnalyser.getAnalysisOrWrapFail(CodeAnalyser.java:220)
            // org.benf.cfr.reader.bytecode.CodeAnalyser.getAnalysis(CodeAnalyser.java:165)
            // org.benf.cfr.reader.entities.attributes.AttributeCode.analyse(AttributeCode.java:91)
            // org.benf.cfr.reader.entities.Method.analyse(Method.java:354)
            // org.benf.cfr.reader.entities.ClassFile.analyseMid(ClassFile.java:751)
            // org.benf.cfr.reader.entities.ClassFile.analyseInnerClassesPass1(ClassFile.java:664)
            // org.benf.cfr.reader.entities.ClassFile.analyseMid(ClassFile.java:747)
            // org.benf.cfr.reader.entities.ClassFile.analyseTop(ClassFile.java:683)
            // org.benf.cfr.reader.Main.doJar(Main.java:129)
            // org.benf.cfr.reader.Main.main(Main.java:181)
            throw new IllegalStateException("Decompilation failed");
        }
    }

}

