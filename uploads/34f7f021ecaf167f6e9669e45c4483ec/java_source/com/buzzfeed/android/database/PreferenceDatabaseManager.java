/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.content.Context
 *  android.database.sqlite.SQLiteDatabase
 *  android.database.sqlite.SQLiteDatabase$CursorFactory
 *  android.database.sqlite.SQLiteOpenHelper
 */
package com.buzzfeed.android.database;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import com.buzzfeed.android.database.PreferenceData;
import com.buzzfeed.toolkit.util.LogUtil;
import java.util.concurrent.ConcurrentHashMap;

public class PreferenceDatabaseManager
extends SQLiteOpenHelper {
    private static final String DATABASE_SET_AUTO_VACUUM = "PRAGMA auto_vacuum = 1";
    private static final String DATABASE_VACUUM = "VACUUM";
    private static final int DATABASE_VERSION = 1;
    private static final String DEFAULT_DATABASE_NAME = "preference.db";
    private static final String TAG = PreferenceDatabaseManager.class.getSimpleName();
    private static ConcurrentHashMap<String, PreferenceDatabaseManager> dbmMap;
    private static final Object syncObject;
    private String databaseName = null;
    private boolean isOpen = false;
    public PreferenceData preferenceData;

    static {
        syncObject = new Object();
        dbmMap = new ConcurrentHashMap();
    }

    private PreferenceDatabaseManager(Context context) {
        this(context, "preference.db");
    }

    private PreferenceDatabaseManager(Context context, String string2) {
        super(context, string2, null, 1);
        this.databaseName = string2;
    }

    public static PreferenceDatabaseManager getInstance(Context context) {
        return PreferenceDatabaseManager.getInstance(context, "preference.db");
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    public static PreferenceDatabaseManager getInstance(Context object, String string2) {
        Context context = object.getApplicationContext();
        if (!dbmMap.containsKey(string2)) {
            object = syncObject;
            synchronized (object) {
                if (!dbmMap.containsKey(string2)) {
                    LogUtil.d(TAG, "Creating PreferenceDatabaseManager instance for database: " + string2);
                    dbmMap.put(string2, new PreferenceDatabaseManager(context, string2));
                }
            }
        }
        object = dbmMap.get(string2);
        object.open();
        return object;
    }

    public void close() {
    }

    protected void databaseVacuum() {
        SQLiteDatabase sQLiteDatabase = this.getWritableDatabase();
        long l2 = System.currentTimeMillis();
        LogUtil.d(TAG, "Starting databaseVacuum...");
        sQLiteDatabase.execSQL("VACUUM");
        LogUtil.d(TAG, String.format("Finished databaseVacuum in %d seconds", (System.currentTimeMillis() - l2) / 1000));
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
        sQLiteDatabase.execSQL("PRAGMA auto_vacuum = 1");
        PreferenceData.tableCreate(sQLiteDatabase);
    }

    public void onUpgrade(SQLiteDatabase sQLiteDatabase, int n2, int n3) {
        PreferenceData.tableDrop(sQLiteDatabase);
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
                if (this.preferenceData == null) {
                    this.preferenceData = PreferenceData.getInstance(this.databaseName, this, true);
                }
                this.getWritableDatabase();
                this.isOpen = true;
            }
            return;
        }
    }
}

