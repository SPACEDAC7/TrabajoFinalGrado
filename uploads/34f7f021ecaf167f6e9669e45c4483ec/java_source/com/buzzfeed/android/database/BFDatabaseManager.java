/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.content.Context
 *  android.database.Cursor
 *  android.database.sqlite.SQLiteDatabase
 *  android.database.sqlite.SQLiteDatabase$CursorFactory
 *  android.database.sqlite.SQLiteException
 *  android.database.sqlite.SQLiteOpenHelper
 *  android.os.Environment
 *  android.text.TextUtils
 *  org.json.JSONObject
 */
package com.buzzfeed.android.database;

import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteException;
import android.database.sqlite.SQLiteOpenHelper;
import android.os.Environment;
import android.text.TextUtils;
import com.buzzfeed.android.data.Buzz;
import com.buzzfeed.android.data.FlowItem;
import com.buzzfeed.android.database.BFCacheData;
import com.buzzfeed.android.database.BFReactionsData;
import com.buzzfeed.toolkit.content.BuffetType;
import com.buzzfeed.toolkit.util.LogUtil;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.ConcurrentHashMap;
import org.json.JSONObject;

public class BFDatabaseManager
extends SQLiteOpenHelper {
    private static final String APP_DIR = "/buzzfeed";
    private static final String CACHE_DIR = "/buzzfeed/.files";
    private static final String DATABASE_SET_AUTO_VACUUM = "PRAGMA auto_vacuum = 1";
    private static final String DEFAULT_DATABASE_NAME = "buzzfeed.db";
    private static final String TABLE_DROP = "DROP TABLE IF EXISTS ";
    private static final String TAG = BFDatabaseManager.class.getSimpleName();
    private static ConcurrentHashMap<String, BFDatabaseManager> dbmMap;
    private static List<Buzz> migrationBuzzList;
    private static final Object syncObject;
    public BFCacheData bfCacheData;
    public BFReactionsData bfReactionsData;
    private String databaseName = null;
    private boolean isOpen = false;
    private Context mContext;
    private boolean wasAppUpgraded = false;
    private boolean wasUpgraded = false;

    static {
        syncObject = new Object();
        dbmMap = new ConcurrentHashMap();
        migrationBuzzList = null;
    }

    private BFDatabaseManager(Context context) {
        this(context, "buzzfeed.db");
    }

    private BFDatabaseManager(Context context, String string2) {
        super(context, string2, null, 502002);
        this.mContext = context.getApplicationContext();
        this.databaseName = string2;
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    public static void deleteFileFromMedia(String object) {
        String string2 = TAG + ".deleteFileFromMedia";
        if (!"mounted".equals(Environment.getExternalStorageState())) {
            LogUtil.e(string2, "External storage is not mounted; cannot delete file");
            return;
        }
        if ((object = BFDatabaseManager.getCacheFileName((String)object)) == null) return;
        try {
            if (!(object = new File((String)object)).exists()) return;
            object.delete();
            return;
        }
        catch (Exception var0_1) {
            LogUtil.e(string2, "Error deleting file", var0_1);
            return;
        }
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    private List<Buzz> getAllBookmarkedBuzzFromDatabase(SQLiteDatabase sQLiteDatabase) {
        ArrayList<Buzz> arrayList;
        block3 : {
            Object object = TAG + ".getAllBookmarkedBuzzFromDatabase";
            arrayList = new ArrayList<Buzz>();
            LogUtil.d((String)object, "Querying Buzz: SELECT buzzId, name, blurb, thumbnail, uri, link, lastUpdated, json, bookmarked FROM bfBuzz WHERE bookmarked > ?");
            sQLiteDatabase = sQLiteDatabase.rawQuery("SELECT buzzId, name, blurb, thumbnail, uri, link, lastUpdated, json, bookmarked FROM bfBuzz WHERE bookmarked > ?", new String[]{String.valueOf(0)});
            if (sQLiteDatabase == null) return arrayList;
            try {
                boolean bl;
                if (!sQLiteDatabase.moveToFirst()) break block3;
                do {
                    object = new Buzz(this.mContext);
                    object.setId(sQLiteDatabase.getString(0));
                    object.setName(sQLiteDatabase.getString(1));
                    object.setBlurb(sQLiteDatabase.getString(2));
                    object.setThumbnail(sQLiteDatabase.getString(3));
                    object.setUri(sQLiteDatabase.getString(4));
                    object.setLink(sQLiteDatabase.getString(5));
                    object.setLastUpdated(sQLiteDatabase.getString(6));
                    object.setJson(sQLiteDatabase.getString(7));
                    object.setBookmarked(sQLiteDatabase.getLong(8));
                    arrayList.add((Buzz)object);
                } while (bl = sQLiteDatabase.moveToNext());
            }
            catch (Throwable throwable) {
                sQLiteDatabase.close();
                throw throwable;
            }
        }
        sQLiteDatabase.close();
        return arrayList;
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    private List<Buzz> getAllBookmarkedBuzzFromDatabaseOldTable(SQLiteDatabase sQLiteDatabase) {
        ArrayList<Buzz> arrayList;
        block3 : {
            Object object = TAG + ".getAllBookmarkedBuzzFromDatabase";
            arrayList = new ArrayList<Buzz>();
            LogUtil.d((String)object, "Querying Buzz: SELECT buzzId, name, blurb, thumbnail, uri, link, lastUpdated, category, color, position, subtitle, title, size, body, bookmarked FROM bfBuzz WHERE bookmarked > ?");
            sQLiteDatabase = sQLiteDatabase.rawQuery("SELECT buzzId, name, blurb, thumbnail, uri, link, lastUpdated, category, color, position, subtitle, title, size, body, bookmarked FROM bfBuzz WHERE bookmarked > ?", new String[]{String.valueOf(0)});
            if (sQLiteDatabase == null) return arrayList;
            try {
                boolean bl;
                if (!sQLiteDatabase.moveToFirst()) break block3;
                do {
                    object = new Buzz(this.mContext);
                    object.setId(sQLiteDatabase.getString(0));
                    object.setName(sQLiteDatabase.getString(1));
                    object.setBlurb(sQLiteDatabase.getString(2));
                    object.setThumbnail(sQLiteDatabase.getString(3));
                    object.setUri(sQLiteDatabase.getString(4));
                    object.setLink(sQLiteDatabase.getString(5));
                    object.setLastUpdated(sQLiteDatabase.getString(6));
                    object.setCategory(sQLiteDatabase.getString(7));
                    object.setSplashColorScheme(sQLiteDatabase.getString(8));
                    object.setSplashPosition(sQLiteDatabase.getString(9));
                    object.setSubtitle(sQLiteDatabase.getString(10));
                    object.setTitle(sQLiteDatabase.getString(11));
                    object.setSplashTextSize(sQLiteDatabase.getString(12));
                    object.setBody(sQLiteDatabase.getString(13));
                    object.setBookmarked(sQLiteDatabase.getLong(14));
                    arrayList.add((Buzz)object);
                } while (bl = sQLiteDatabase.moveToNext());
            }
            catch (Throwable throwable) {
                sQLiteDatabase.close();
                throw throwable;
            }
        }
        sQLiteDatabase.close();
        return arrayList;
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    private List<Buzz> getAllBookmarkedBuzzFromDatabaseOldTable2(SQLiteDatabase sQLiteDatabase) {
        ArrayList<Buzz> arrayList;
        block3 : {
            Object object = TAG + ".getAllBookmarkedBuzzFromDatabase";
            arrayList = new ArrayList<Buzz>();
            LogUtil.d((String)object, "Querying Buzz: SELECT itemId, name, blurb, thumbnail, uri, link, lastUpdated, category, '', '', '', '', '28', body, bookmarked FROM bfItem WHERE bookmarked > ?");
            sQLiteDatabase = sQLiteDatabase.rawQuery("SELECT itemId, name, blurb, thumbnail, uri, link, lastUpdated, category, '', '', '', '', '28', body, bookmarked FROM bfItem WHERE bookmarked > ?", new String[]{String.valueOf(0)});
            if (sQLiteDatabase == null) return arrayList;
            try {
                boolean bl;
                if (!sQLiteDatabase.moveToFirst()) break block3;
                do {
                    object = new Buzz(this.mContext);
                    object.setId(sQLiteDatabase.getString(0));
                    object.setName(sQLiteDatabase.getString(1));
                    object.setBlurb(sQLiteDatabase.getString(2));
                    object.setThumbnail(sQLiteDatabase.getString(3));
                    object.setUri(sQLiteDatabase.getString(4));
                    object.setLink(sQLiteDatabase.getString(5));
                    object.setLastUpdated(sQLiteDatabase.getString(6));
                    object.setCategory(sQLiteDatabase.getString(7));
                    object.setSplashColorScheme(sQLiteDatabase.getString(8));
                    object.setSplashPosition(sQLiteDatabase.getString(9));
                    object.setSubtitle(sQLiteDatabase.getString(10));
                    object.setTitle(sQLiteDatabase.getString(11));
                    object.setSplashTextSize(sQLiteDatabase.getString(12));
                    object.setBody(sQLiteDatabase.getString(13));
                    object.setBookmarked(sQLiteDatabase.getLong(14));
                    arrayList.add((Buzz)object);
                } while (bl = sQLiteDatabase.moveToNext());
            }
            catch (Throwable throwable) {
                sQLiteDatabase.close();
                throw throwable;
            }
        }
        sQLiteDatabase.close();
        return arrayList;
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    public static String getCacheFileName(String string2) {
        String string3 = Environment.getExternalStorageDirectory().getAbsolutePath();
        string3 = string3 + "/buzzfeed/.files" + "/";
        string2 = string3 + string2;
        if (new File(string3).exists()) return string2;
        try {
            new File(string3).mkdirs();
        }
        catch (Exception exception) {
            LogUtil.e(TAG, "Error creating cache dir: " + string3, exception);
            return null;
        }
        return string2;
    }

    public static BFDatabaseManager getInstance(Context context) {
        return BFDatabaseManager.getInstance(context, "buzzfeed.db");
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    public static BFDatabaseManager getInstance(Context object, String string2) {
        Context context = object.getApplicationContext();
        if (!dbmMap.containsKey(string2)) {
            object = syncObject;
            synchronized (object) {
                if (!dbmMap.containsKey(string2)) {
                    LogUtil.d(TAG, "Creating BFDatabaseManager instance for database: " + string2);
                    dbmMap.put(string2, new BFDatabaseManager(context, string2));
                }
            }
        }
        object = dbmMap.get(string2);
        object.open();
        return object;
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    private void importBFBuzz(SQLiteDatabase sQLiteDatabase) {
        String string2 = TAG + ".importBFBuzz ";
        Object object = syncObject;
        synchronized (object) {
            if (migrationBuzzList == null) {
                LogUtil.i(string2, "Migration list is empty; attempting to load from media...");
                migrationBuzzList = (List)BFDatabaseManager.loadObjectFromMedia("bfBuzz");
                if (migrationBuzzList != null) {
                    LogUtil.i(string2, "Found " + migrationBuzzList.size() + " migration items on media");
                } else {
                    LogUtil.i(string2, "No migration list found on media; nothing to restore");
                }
            } else {
                LogUtil.i(string2, "Found " + migrationBuzzList.size() + " migration items in memory list");
            }
            if (migrationBuzzList != null) {
                this.importBuzzListToBFCache(sQLiteDatabase, migrationBuzzList, "bookmark");
                migrationBuzzList = null;
                BFDatabaseManager.deleteFileFromMedia("bfBuzz");
            }
            return;
        }
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    private void importBuzzListToBFCache(SQLiteDatabase sQLiteDatabase, List<Buzz> object, String string2) {
        String string3 = TAG + ".importBuzzListToBFCache";
        HashMap<String, FlowItem> hashMap = new HashMap<String, FlowItem>();
        LogUtil.i(string3, "Importing " + object.size() + " buzzes into BFCache");
        Iterator<Buzz> iterator = object.iterator();
        do {
            Buzz buzz;
            block9 : {
                if (!iterator.hasNext()) {
                    BFCacheData.importSynchronousMap(sQLiteDatabase, string2, hashMap);
                    return;
                }
                buzz = iterator.next();
                try {
                    if (buzz.getJson() != null) {
                        buzz.parse(buzz.getJson());
                        break block9;
                    }
                    buzz.parse(buzz.generateJson());
                }
                catch (Exception var2_4) {
                    LogUtil.e(string3, "Error in Buzz JSON when trying to parse it into Buzz object", var2_4);
                }
            }
            if (TextUtils.isEmpty((CharSequence)buzz.getJson())) continue;
            try {
                object = buzz.isAd() ? BuffetType.EDITORIAL_AD.name() : BuffetType.POST.name();
                hashMap.put(buzz.getId(), FlowItem.parse(this.mContext, new JSONObject(buzz.getJson()), (String)object));
            }
            catch (Exception var2_3) {
                LogUtil.e(string3, "Error in Buzz JSON when trying to parse it into Buzz object", var2_3);
                continue;
            }
            break;
        } while (true);
    }

    private void importDeprecated(SQLiteDatabase sQLiteDatabase) {
        this.importBFBuzz(sQLiteDatabase);
    }

    public static Object loadObjectFromMedia(String object) {
        String string2 = TAG + ".loadObjectFromMedia";
        if (!"mounted".equals(Environment.getExternalStorageState())) {
            LogUtil.e(string2, "External storage is not mounted; cannot load bookmarks");
            return null;
        }
        if ((object = BFDatabaseManager.getCacheFileName((String)object)) != null) {
            try {
                if (new File((String)object).exists()) {
                    object = new ObjectInputStream(new FileInputStream((String)object));
                    Object object2 = object.readObject();
                    object.close();
                    return object2;
                }
            }
            catch (Exception var0_1) {
                LogUtil.e(string2, "Error loading cache file", var0_1);
            }
        }
        return null;
    }

    private void migrateBFBadge(SQLiteDatabase sQLiteDatabase) {
        sQLiteDatabase.execSQL("DROP TABLE IF EXISTS bfBadge");
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    private void migrateBFBuzz(SQLiteDatabase sQLiteDatabase) {
        String string2 = TAG + ".migrateBFBuzz";
        Object object = syncObject;
        synchronized (object) {
            try {
                migrationBuzzList = this.getAllBookmarkedBuzzFromDatabase(sQLiteDatabase);
            }
            catch (SQLiteException var4_5) {
                LogUtil.d(string2, "Could not read from the database: " + var4_5.toString());
                LogUtil.i(string2, "Trying old table schema...");
                try {
                    migrationBuzzList = this.getAllBookmarkedBuzzFromDatabaseOldTable(sQLiteDatabase);
                }
                catch (SQLiteException var4_6) {
                    LogUtil.d(string2, "Could not read from the database: " + var4_6.toString());
                    LogUtil.i(string2, "Trying older table schema...");
                    try {
                        migrationBuzzList = this.getAllBookmarkedBuzzFromDatabaseOldTable2(sQLiteDatabase);
                    }
                    catch (SQLiteException var4_7) {
                        LogUtil.d(string2, "Could not read from the database: " + var4_7.toString());
                    }
                }
            }
            if (migrationBuzzList != null) {
                LogUtil.d(string2, "Migrating " + migrationBuzzList.size() + " bookmarks...");
                for (Buzz buzz : migrationBuzzList) {
                    LogUtil.i(string2, "  " + buzz.getName());
                }
                BFDatabaseManager.saveObjectToMedia(migrationBuzzList, "bfBuzz");
            } else {
                LogUtil.i(string2, "No bookmarks found to migrate");
            }
        }
        sQLiteDatabase.execSQL("DROP TABLE IF EXISTS bfBuzz");
    }

    private void migrateBFFeedItem(SQLiteDatabase sQLiteDatabase) {
        sQLiteDatabase.execSQL("DROP TABLE IF EXISTS bfFeedItem");
    }

    private void migrateBFImage(SQLiteDatabase sQLiteDatabase) {
        sQLiteDatabase.execSQL("DROP TABLE IF EXISTS bfImage");
    }

    private void migrateBFItem(SQLiteDatabase sQLiteDatabase) {
        sQLiteDatabase.execSQL("DROP TABLE IF EXISTS bfItem");
    }

    private void migrateBFPage(SQLiteDatabase sQLiteDatabase) {
        sQLiteDatabase.execSQL("DROP TABLE IF EXISTS bfPage");
    }

    private void migrateDeprecated(SQLiteDatabase sQLiteDatabase) {
        this.migrateBFItem(sQLiteDatabase);
        this.migrateBFFeedItem(sQLiteDatabase);
        this.migrateBFBadge(sQLiteDatabase);
        this.migrateBFBuzz(sQLiteDatabase);
        this.migrateBFPage(sQLiteDatabase);
        this.migrateBFImage(sQLiteDatabase);
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    public static void saveObjectToMedia(Object object, String object2) {
        String string2 = TAG + ".saveObjectToMedia";
        if (!"mounted".equals(Environment.getExternalStorageState())) {
            LogUtil.e(string2, "External storage is not mounted; cannot save bookmarks");
            return;
        }
        Object object3 = BFDatabaseManager.getCacheFileName((String)object2);
        if (object3 == null) return;
        object2 = syncObject;
        synchronized (object2) {
            Object object4 = (String)object3 + ".tmp";
            object3 = new File((String)object3);
            File file = new File((String)object4);
            try {
                object4 = new ObjectOutputStream(new FileOutputStream((String)object4));
                object4.writeObject(object);
                object4.close();
                if (file.length() > 0) {
                    file.renameTo((File)object3);
                    return;
                }
                file.delete();
            }
            catch (FileNotFoundException var0_1) {
                LogUtil.e(string2, "FileNotFoundException while saving list to media", var0_1);
            }
            catch (Exception var0_2) {
                LogUtil.e(string2, "Error saving list to media", var0_2);
            }
            return;
        }
    }

    public void close() {
    }

    public boolean isClosed() {
        if (!this.isOpen()) {
            return true;
        }
        return false;
    }

    public boolean isOpen() {
        return this.isOpen;
    }

    public void onCreate(SQLiteDatabase sQLiteDatabase) {
        LogUtil.i(TAG, "Creating database: " + sQLiteDatabase.getPath());
        this.wasUpgraded = true;
        sQLiteDatabase.execSQL("PRAGMA auto_vacuum = 1");
        BFReactionsData.tableCreate(sQLiteDatabase);
        BFCacheData.tableCreate(sQLiteDatabase);
        this.importDeprecated(sQLiteDatabase);
    }

    public void onUpgrade(SQLiteDatabase sQLiteDatabase, int n2, int n3) {
        LogUtil.i(TAG, "Upgrading database: " + sQLiteDatabase.getPath());
        this.wasAppUpgraded = true;
        BFReactionsData.tableDrop(sQLiteDatabase);
        BFCacheData.tableDrop(sQLiteDatabase);
        this.migrateDeprecated(sQLiteDatabase);
        this.onCreate(sQLiteDatabase);
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    public void open() {
        if (this.isOpen) {
            return;
        }
        Object object = syncObject;
        synchronized (object) {
            if (!this.isOpen) {
                LogUtil.d(TAG, "Opening database: " + this.databaseName);
                if (this.bfReactionsData == null) {
                    this.bfReactionsData = BFReactionsData.getInstance(this.databaseName, this, true);
                }
                if (this.bfCacheData == null) {
                    this.bfCacheData = BFCacheData.getInstance(this.databaseName, this, true);
                }
                this.getWritableDatabase();
                this.isOpen = true;
            }
            return;
        }
    }

    public boolean wasAppUpgraded() {
        return this.wasAppUpgraded;
    }

    public boolean wasUpgraded() {
        return this.wasUpgraded;
    }

    private class BFBadge {
        public static final String TABLE_NAME = "bfBadge";

        private BFBadge() {
        }
    }

    private class BFBuzz {
        public static final String BLURB = "blurb";
        public static final String BOOKMARKED = "bookmarked";
        public static final String BUZZ_ID = "buzzId";
        public static final String JSON = "json";
        public static final String LAST_UPDATED = "lastUpdated";
        public static final String LINK = "link";
        public static final String NAME = "name";
        public static final String TABLE_NAME = "bfBuzz";
        public static final String THUMBNAIL = "thumbnail";
        public static final String URI = "uri";

        private BFBuzz() {
        }
    }

    private class BFFeedItem {
        public static final String TABLE_NAME = "bfFeedItem";

        private BFFeedItem() {
        }
    }

    private class BFImage {
        public static final String TABLE_NAME = "bfImage";

        private BFImage() {
        }
    }

    private class BFItem {
        public static final String TABLE_NAME = "bfItem";

        private BFItem() {
        }
    }

    private class BFPage {
        public static final String TABLE_NAME = "bfPage";

        private BFPage() {
        }
    }

}

