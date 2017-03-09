/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.content.ContentValues
 *  android.database.Cursor
 *  android.database.sqlite.SQLiteDatabase
 *  android.database.sqlite.SQLiteException
 *  android.database.sqlite.SQLiteOpenHelper
 *  org.json.JSONObject
 */
package com.buzzfeed.android.database;

import android.content.ContentValues;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteException;
import android.database.sqlite.SQLiteOpenHelper;
import com.buzzfeed.android.database.Preference;
import com.buzzfeed.toolkit.util.LogUtil;
import java.util.concurrent.ConcurrentHashMap;
import org.json.JSONObject;

public class PreferenceData {
    private static final String TABLE_CREATE = "CREATE TABLE preference (_id INTEGER PRIMARY KEY AUTOINCREMENT, key TEXT NOT NULL, value TEXT NOT NULL); CREATE UNIQUE INDEX IF NOT EXISTS keyIdx ON preference (key);";
    private static final String TABLE_DROP = "DROP TABLE IF EXISTS preference";
    private static final String TAG = PreferenceData.class.getSimpleName();
    private static ConcurrentHashMap<String, PreferenceData> preferenceDataMap;
    private static final Object syncObject;
    private SQLiteOpenHelper dbHelper;
    private ConcurrentHashMap<String, Preference> preferenceMap = null;

    static {
        syncObject = new Object();
        preferenceDataMap = new ConcurrentHashMap();
    }

    private PreferenceData() {
    }

    static /* synthetic */ SQLiteOpenHelper access$000(PreferenceData preferenceData) {
        return preferenceData.dbHelper;
    }

    static /* synthetic */ Preference access$100(PreferenceData preferenceData, String string2) {
        return preferenceData.getPreferenceFromDatabase(string2);
    }

    protected static PreferenceData getInstance(String string2, SQLiteOpenHelper sQLiteOpenHelper) {
        return PreferenceData.getInstance(string2, sQLiteOpenHelper, false);
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     * Converted monitor instructions to comments
     * Lifted jumps to return sites
     */
    protected static PreferenceData getInstance(String object, SQLiteOpenHelper sQLiteOpenHelper, boolean bl) {
        PreferenceData preferenceData = preferenceDataMap.get(object);
        if (preferenceData != null) {
            if (!bl) return preferenceData;
            object = syncObject;
            // MONITORENTER : object
            preferenceData.dbHelper = sQLiteOpenHelper;
            // MONITOREXIT : object
            return preferenceData;
        }
        Object object2 = syncObject;
        // MONITORENTER : object2
        try {
            PreferenceData preferenceData2;
            preferenceData = preferenceData2 = preferenceDataMap.get(object);
            if (preferenceData2 != null) return preferenceData;
            LogUtil.d(TAG, "Creating PreferenceData instance for " + (String)object);
            preferenceData = new PreferenceData();
        }
        catch (Throwable var0_2) {
            throw object;
        }
        try {
            preferenceData.dbHelper = sQLiteOpenHelper;
            preferenceData.preferenceMap = new ConcurrentHashMap();
            preferenceDataMap.put((String)object, preferenceData);
            // MONITOREXIT : object2
            return preferenceData;
        }
        catch (Throwable throwable) {
            throw object;
        }
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    private Preference getPreferenceFromDatabase(String object) {
        SQLiteDatabase sQLiteDatabase;
        block6 : {
            Object var3_7;
            String string2;
            block5 : {
                string2 = TAG + ".getPreferenceFromDatabase";
                Object object2 = null;
                var3_7 = null;
                sQLiteDatabase = this.dbHelper.getWritableDatabase();
                LogUtil.d(string2, "Querying Preference: SELECT key, value FROM preference WHERE key = ?, key=" + (String)object);
                sQLiteDatabase = sQLiteDatabase.rawQuery("SELECT key, value FROM preference WHERE key = ?", new String[]{object});
                if (sQLiteDatabase == null) return object2;
                try {
                    if (!sQLiteDatabase.moveToFirst()) break block5;
                    object = new Preference();
                }
                catch (Throwable var1_2) {}
                try {
                    object.setKey(sQLiteDatabase.getString(0));
                    object.setValue(sQLiteDatabase.getString(1));
                    this.preferenceMap.put(object.getKey(), (Preference)object);
                    LogUtil.d(string2, "Preference found in database: preference=" + object.toString());
                    break block6;
                }
                catch (Throwable var1_4) {}
            }
            LogUtil.d(string2, "Preference not found in database: key=" + (String)object);
            object = var3_7;
        }
        sQLiteDatabase.close();
        return object;
        {
            void var1_3;
            sQLiteDatabase.close();
            throw var1_3;
        }
    }

    protected static void tableCreate(SQLiteDatabase sQLiteDatabase) {
        sQLiteDatabase.execSQL("CREATE TABLE preference (_id INTEGER PRIMARY KEY AUTOINCREMENT, key TEXT NOT NULL, value TEXT NOT NULL); CREATE UNIQUE INDEX IF NOT EXISTS keyIdx ON preference (key);");
    }

    protected static void tableDrop(SQLiteDatabase sQLiteDatabase) {
        sQLiteDatabase.execSQL("DROP TABLE IF EXISTS preference");
    }

    public void delete(String string2) {
        String string3 = TAG + ".delete";
        SQLiteDatabase sQLiteDatabase = this.dbHelper.getWritableDatabase();
        LogUtil.d(string3, "Deleting preference key: " + string2);
        sQLiteDatabase.delete("preference", "key = ?", new String[]{string2});
        this.preferenceMap.remove(string2);
    }

    public void deleteAll() {
        String string2 = TAG + ".deleteAll";
        SQLiteDatabase sQLiteDatabase = this.dbHelper.getWritableDatabase();
        LogUtil.d(string2, "Deleting all items");
        sQLiteDatabase.delete("preference", null, null);
        this.preferenceMap.clear();
    }

    public Preference getPreference(String string2) {
        String string3 = TAG + ".getPreference";
        if (string2 != null) {
            Preference preference = this.preferenceMap.get(string2);
            if (preference == null) {
                return this.getPreferenceFromDatabase(string2);
            }
            LogUtil.d(string3, "Preference found in preferenceMap: preference=" + preference.toString());
            return preference.clone();
        }
        StringBuilder stringBuilder = new StringBuilder().append("Invalid null parameter given: key=");
        String string4 = string2;
        if (string2 == null) {
            string4 = "null";
        }
        LogUtil.w(string3, stringBuilder.append(string4).toString());
        return null;
    }

    /*
     * Enabled aggressive block sorting
     */
    public void putPreference(Preference object) {
        final String string2 = TAG + ".putPreference";
        if (object != null) {
            void var2_5;
            if (object.getKey() != null && object.getValue() != null) {
                final Preference preference = object.clone();
                this.preferenceMap.put(object.getKey(), (Preference)object);
                new Thread(new Runnable(){

                    /*
                     * Unable to fully structure code
                     * Enabled aggressive block sorting
                     * Enabled unnecessary exception pruning
                     * Enabled aggressive exception aggregation
                     * Lifted jumps to return sites
                     */
                    @Override
                    public void run() {
                        var1_1 = PreferenceData.access$000(PreferenceData.this).getWritableDatabase();
                        var2_3 = new ContentValues();
                        var2_3.put("key", preference.getKey());
                        var2_3.put("value", preference.getValueAsString());
                        if (PreferenceData.access$100(PreferenceData.this, preference.getKey()) != null) ** GOTO lbl10
                        try {
                            LogUtil.d(string2, "Inserting Preference: " + preference.toString());
                            var1_1.insertOrThrow("preference", null, var2_3);
                            return;
lbl10: // 1 sources:
                            LogUtil.d(string2, "Updating Preference: " + preference.toString());
                            var1_1.update("preference", var2_3, "key = ?", new String[]{preference.getKey()});
                            return;
                        }
                        catch (SQLiteException var1_2) {
                            LogUtil.e(string2, "Error writing to the database", (Throwable)var1_2);
                            return;
                        }
                    }
                }).start();
                return;
            }
            StringBuilder stringBuilder = new StringBuilder().append("Invalid null parameter given: preference.key=");
            if (object.getKey() == null) {
                String string3 = "null";
            } else {
                String string4 = object.getKey();
            }
            StringBuilder stringBuilder2 = stringBuilder.append((String)var2_5).append(" preference.value=");
            object = object.getValue() == null ? "null" : object.getValue();
            LogUtil.w(string2, stringBuilder2.append(object).toString());
            return;
        }
        StringBuilder stringBuilder = new StringBuilder().append("Invalid null parameter given: preference=");
        object = object == null ? "null" : object.toString();
        LogUtil.w(string2, stringBuilder.append((String)object).toString());
    }

}

