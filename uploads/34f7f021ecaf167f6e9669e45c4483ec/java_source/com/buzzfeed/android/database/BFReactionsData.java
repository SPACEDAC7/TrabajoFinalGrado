/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.content.ContentValues
 *  android.database.Cursor
 *  android.database.SQLException
 *  android.database.sqlite.SQLiteDatabase
 *  android.database.sqlite.SQLiteOpenHelper
 */
package com.buzzfeed.android.database;

import android.content.ContentValues;
import android.database.Cursor;
import android.database.SQLException;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import com.buzzfeed.toolkit.util.LogUtil;
import java.util.concurrent.ConcurrentHashMap;

public class BFReactionsData {
    private static final String TABLE_CREATE = "CREATE TABLE bfReactions (_id INTEGER PRIMARY KEY AUTOINCREMENT, buzzId TEXT NOT NULL, reactionId TEXT NOT NULL, isFacebookLike INTEGER DEFAULT 0, timestamp INTEGER NOT NULL); CREATE UNIQUE INDEX IF NOT EXISTS buzzIdIdx ON bfReactions (buzzId); CREATE UNIQUE INDEX IF NOT EXISTS reactionIdIdx ON bfReactions (reactionId); CREATE UNIQUE INDEX IF NOT EXISTS timestampIdx ON bfReactions (timestamp);";
    private static final String TABLE_DROP = "DROP TABLE IF EXISTS bfReactions";
    private static final String TAG = BFReactionsData.class.getSimpleName();
    private static ConcurrentHashMap<String, BFReactionsData> bfReactionsDataMap;
    private static final Object syncObject;
    private SQLiteOpenHelper dbHelper;

    static {
        syncObject = new Object();
        bfReactionsDataMap = new ConcurrentHashMap();
    }

    private BFReactionsData() {
    }

    protected static BFReactionsData getInstance(String string2, SQLiteOpenHelper sQLiteOpenHelper) {
        return BFReactionsData.getInstance(string2, sQLiteOpenHelper, false);
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     * Converted monitor instructions to comments
     * Lifted jumps to return sites
     */
    protected static BFReactionsData getInstance(String object, SQLiteOpenHelper sQLiteOpenHelper, boolean bl) {
        BFReactionsData bFReactionsData = bfReactionsDataMap.get(object);
        if (bFReactionsData != null) {
            if (!bl) return bFReactionsData;
            object = syncObject;
            // MONITORENTER : object
            bFReactionsData.dbHelper = sQLiteOpenHelper;
            // MONITOREXIT : object
            return bFReactionsData;
        }
        Object object2 = syncObject;
        // MONITORENTER : object2
        try {
            BFReactionsData bFReactionsData2;
            bFReactionsData = bFReactionsData2 = bfReactionsDataMap.get(object);
            if (bFReactionsData2 != null) return bFReactionsData;
            LogUtil.d(TAG, "Creating BFReactionsData instance for " + (String)object);
            bFReactionsData = new BFReactionsData();
        }
        catch (Throwable var0_2) {
            throw object;
        }
        try {
            bFReactionsData.dbHelper = sQLiteOpenHelper;
            bfReactionsDataMap.put((String)object, bFReactionsData);
            // MONITOREXIT : object2
            return bFReactionsData;
        }
        catch (Throwable throwable) {
            throw object;
        }
    }

    protected static void tableCreate(SQLiteDatabase sQLiteDatabase) {
        sQLiteDatabase.execSQL("CREATE TABLE bfReactions (_id INTEGER PRIMARY KEY AUTOINCREMENT, buzzId TEXT NOT NULL, reactionId TEXT NOT NULL, isFacebookLike INTEGER DEFAULT 0, timestamp INTEGER NOT NULL); CREATE UNIQUE INDEX IF NOT EXISTS buzzIdIdx ON bfReactions (buzzId); CREATE UNIQUE INDEX IF NOT EXISTS reactionIdIdx ON bfReactions (reactionId); CREATE UNIQUE INDEX IF NOT EXISTS timestampIdx ON bfReactions (timestamp);");
    }

    protected static void tableDrop(SQLiteDatabase sQLiteDatabase) {
        sQLiteDatabase.execSQL("DROP TABLE IF EXISTS bfReactions");
    }

    public void deleteBuzzReaction(String string2, String string3) {
        String string4 = TAG + ".deleteBuzzReaction";
        if (string2 != null) {
            this.dbHelper.getWritableDatabase().delete("bfReactions", "buzzId = ? AND reactionId = ?", new String[]{string2, String.valueOf(string3)});
            return;
        }
        StringBuilder stringBuilder = new StringBuilder().append("Invalid null parameter given: buzzId=");
        CharSequence charSequence = string2;
        if (string2 == null) {
            charSequence = "null";
        }
        charSequence = stringBuilder.append((String)charSequence).append(", reactionId=");
        string2 = string3;
        if (string3 == null) {
            string2 = "null";
        }
        LogUtil.w(string4, charSequence.append(string2).toString());
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    public String isBuzzLiked(String string2) {
        String string3 = TAG + ".isBuzzLiked";
        Cursor cursor = null;
        if (string2 != null) {
            block7 : {
                cursor = this.dbHelper.getReadableDatabase().rawQuery("SELECT reactionId FROM bfReactions WHERE buzzId = ? AND isFacebookLike != 0", new String[]{string2});
                if (!cursor.moveToFirst()) break block7;
                String string4 = cursor.getString(0);
                if (string4 == null) return string4;
                LogUtil.d(string3, "Buzz is liked: buzzId=" + string2);
                return string4;
            }
            LogUtil.d(string3, "Buzz is not liked: buzzId=" + string2);
            cursor.close();
            return null;
            finally {
                cursor.close();
            }
        }
        StringBuilder stringBuilder = new StringBuilder().append("Invalid null parameter given: buzzId=");
        String string5 = string2;
        if (string2 == null) {
            string5 = "null";
        }
        LogUtil.w(string3, stringBuilder.append(string5).toString());
        return cursor;
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    public boolean isReactionSelected(String string2, String string3) {
        String string4 = TAG + ".isBuzzLoved";
        boolean bl = false;
        if (string2 != null) {
            string3 = this.dbHelper.getReadableDatabase().rawQuery("SELECT buzzId FROM bfReactions WHERE buzzId = ? AND reactionId = ?", new String[]{string2, string3});
            try {
                if (string3.moveToFirst()) {
                    bl = true;
                    LogUtil.d(string4, "Reaction is selected: buzzId=" + string2);
                    return bl;
                }
                LogUtil.d(string4, "Reaction is not selected: buzzId=" + string2);
                return false;
            }
            finally {
                string3.close();
            }
        }
        StringBuilder stringBuilder = new StringBuilder().append("Invalid null parameter given: buzzId=");
        CharSequence charSequence = string2;
        if (string2 == null) {
            charSequence = "null";
        }
        charSequence = stringBuilder.append((String)charSequence).append(", reactionId=");
        string2 = string3;
        if (string3 == null) {
            string2 = "null";
        }
        LogUtil.w(string4, charSequence.append(string2).toString());
        return bl;
    }

    public void putBuzzReaction(String string2, String string3, int n2) {
        String string4 = TAG + ".putBuzzReaction";
        if (string2 != null) {
            long l2 = System.currentTimeMillis();
            SQLiteDatabase sQLiteDatabase = this.dbHelper.getWritableDatabase();
            ContentValues contentValues = new ContentValues();
            contentValues.put("buzzId", string2);
            contentValues.put("reactionId", string3);
            contentValues.put("isFacebookLike", Integer.valueOf(n2));
            contentValues.put("timestamp", Long.valueOf(l2));
            try {
                LogUtil.d(string4, "Inserting BuzzReaction item: buzzId=" + string2 + ", reactionId=" + string3 + ", isFacebookLike=" + n2 + ", timestamp = " + l2);
                sQLiteDatabase.insertOrThrow("bfReactions", null, contentValues);
                return;
            }
            catch (SQLException var1_2) {
                LogUtil.e(string4, "Error writing to database", (Throwable)var1_2);
                return;
            }
        }
        StringBuilder stringBuilder = new StringBuilder().append("Invalid null parameter given: buzzId=");
        CharSequence charSequence = string2;
        if (string2 == null) {
            charSequence = "null";
        }
        charSequence = stringBuilder.append((String)charSequence).append(", reactionId=");
        string2 = string3;
        if (string3 == null) {
            string2 = "null";
        }
        LogUtil.w(string4, charSequence.append(string2).toString());
    }
}

