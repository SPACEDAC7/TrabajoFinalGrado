.class public Lcom/buzzfeed/android/database/PreferenceData;
.super Ljava/lang/Object;
.source "PreferenceData.java"


# static fields
.field private static final TABLE_CREATE:Ljava/lang/String; = "CREATE TABLE preference (_id INTEGER PRIMARY KEY AUTOINCREMENT, key TEXT NOT NULL, value TEXT NOT NULL); CREATE UNIQUE INDEX IF NOT EXISTS keyIdx ON preference (key);"

.field private static final TABLE_DROP:Ljava/lang/String; = "DROP TABLE IF EXISTS preference"

.field private static final TAG:Ljava/lang/String;

.field private static preferenceDataMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/buzzfeed/android/database/PreferenceData;",
            ">;"
        }
    .end annotation
.end field

.field private static final syncObject:Ljava/lang/Object;


# instance fields
.field private dbHelper:Landroid/database/sqlite/SQLiteOpenHelper;

.field private preferenceMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/buzzfeed/android/database/Preference;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 16
    const-class v0, Lcom/buzzfeed/android/database/PreferenceData;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/buzzfeed/android/database/PreferenceData;->TAG:Ljava/lang/String;

    .line 17
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/buzzfeed/android/database/PreferenceData;->syncObject:Ljava/lang/Object;

    .line 30
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/buzzfeed/android/database/PreferenceData;->preferenceDataMap:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/buzzfeed/android/database/PreferenceData;->preferenceMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 36
    return-void
.end method

.method static synthetic access$000(Lcom/buzzfeed/android/database/PreferenceData;)Landroid/database/sqlite/SQLiteOpenHelper;
    .registers 2
    .param p0, "x0"    # Lcom/buzzfeed/android/database/PreferenceData;

    .prologue
    .line 14
    iget-object v0, p0, Lcom/buzzfeed/android/database/PreferenceData;->dbHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    return-object v0
.end method

.method static synthetic access$100(Lcom/buzzfeed/android/database/PreferenceData;Ljava/lang/String;)Lcom/buzzfeed/android/database/Preference;
    .registers 3
    .param p0, "x0"    # Lcom/buzzfeed/android/database/PreferenceData;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 14
    invoke-direct {p0, p1}, Lcom/buzzfeed/android/database/PreferenceData;->getPreferenceFromDatabase(Ljava/lang/String;)Lcom/buzzfeed/android/database/Preference;

    move-result-object v0

    return-object v0
.end method

.method protected static getInstance(Ljava/lang/String;Landroid/database/sqlite/SQLiteOpenHelper;)Lcom/buzzfeed/android/database/PreferenceData;
    .registers 3
    .param p0, "databaseName"    # Ljava/lang/String;
    .param p1, "dbHelper"    # Landroid/database/sqlite/SQLiteOpenHelper;

    .prologue
    .line 59
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/buzzfeed/android/database/PreferenceData;->getInstance(Ljava/lang/String;Landroid/database/sqlite/SQLiteOpenHelper;Z)Lcom/buzzfeed/android/database/PreferenceData;

    move-result-object v0

    return-object v0
.end method

.method protected static getInstance(Ljava/lang/String;Landroid/database/sqlite/SQLiteOpenHelper;Z)Lcom/buzzfeed/android/database/PreferenceData;
    .registers 10
    .param p0, "databaseName"    # Ljava/lang/String;
    .param p1, "dbHelper"    # Landroid/database/sqlite/SQLiteOpenHelper;
    .param p2, "reset"    # Z

    .prologue
    .line 39
    sget-object v3, Lcom/buzzfeed/android/database/PreferenceData;->preferenceDataMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/buzzfeed/android/database/PreferenceData;

    .line 40
    .local v1, "preferenceData":Lcom/buzzfeed/android/database/PreferenceData;
    if-nez v1, :cond_4a

    .line 41
    sget-object v4, Lcom/buzzfeed/android/database/PreferenceData;->syncObject:Ljava/lang/Object;

    monitor-enter v4

    .line 42
    :try_start_d
    sget-object v3, Lcom/buzzfeed/android/database/PreferenceData;->preferenceDataMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/buzzfeed/android/database/PreferenceData;

    move-object v1, v0

    .line 43
    if-nez v1, :cond_45

    .line 44
    sget-object v3, Lcom/buzzfeed/android/database/PreferenceData;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Creating PreferenceData instance for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/buzzfeed/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    new-instance v2, Lcom/buzzfeed/android/database/PreferenceData;

    invoke-direct {v2}, Lcom/buzzfeed/android/database/PreferenceData;-><init>()V
    :try_end_36
    .catchall {:try_start_d .. :try_end_36} :catchall_47

    .line 46
    .end local v1    # "preferenceData":Lcom/buzzfeed/android/database/PreferenceData;
    .local v2, "preferenceData":Lcom/buzzfeed/android/database/PreferenceData;
    :try_start_36
    iput-object p1, v2, Lcom/buzzfeed/android/database/PreferenceData;->dbHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    .line 47
    new-instance v3, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v3, v2, Lcom/buzzfeed/android/database/PreferenceData;->preferenceMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 48
    sget-object v3, Lcom/buzzfeed/android/database/PreferenceData;->preferenceDataMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, p0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_44
    .catchall {:try_start_36 .. :try_end_44} :catchall_56

    move-object v1, v2

    .line 50
    .end local v2    # "preferenceData":Lcom/buzzfeed/android/database/PreferenceData;
    .restart local v1    # "preferenceData":Lcom/buzzfeed/android/database/PreferenceData;
    :cond_45
    :try_start_45
    monitor-exit v4

    .line 56
    :cond_46
    :goto_46
    return-object v1

    .line 50
    :catchall_47
    move-exception v3

    :goto_48
    monitor-exit v4
    :try_end_49
    .catchall {:try_start_45 .. :try_end_49} :catchall_47

    throw v3

    .line 51
    :cond_4a
    if-eqz p2, :cond_46

    .line 52
    sget-object v4, Lcom/buzzfeed/android/database/PreferenceData;->syncObject:Ljava/lang/Object;

    monitor-enter v4

    .line 53
    :try_start_4f
    iput-object p1, v1, Lcom/buzzfeed/android/database/PreferenceData;->dbHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    .line 54
    monitor-exit v4

    goto :goto_46

    :catchall_53
    move-exception v3

    monitor-exit v4
    :try_end_55
    .catchall {:try_start_4f .. :try_end_55} :catchall_53

    throw v3

    .line 50
    .end local v1    # "preferenceData":Lcom/buzzfeed/android/database/PreferenceData;
    .restart local v2    # "preferenceData":Lcom/buzzfeed/android/database/PreferenceData;
    :catchall_56
    move-exception v3

    move-object v1, v2

    .end local v2    # "preferenceData":Lcom/buzzfeed/android/database/PreferenceData;
    .restart local v1    # "preferenceData":Lcom/buzzfeed/android/database/PreferenceData;
    goto :goto_48
.end method

.method private getPreferenceFromDatabase(Ljava/lang/String;)Lcom/buzzfeed/android/database/Preference;
    .registers 12
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 132
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lcom/buzzfeed/android/database/PreferenceData;->TAG:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".getPreferenceFromDatabase"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 133
    .local v0, "TAG":Ljava/lang/String;
    const/4 v3, 0x0

    .line 134
    .local v3, "preference":Lcom/buzzfeed/android/database/Preference;
    iget-object v6, p0, Lcom/buzzfeed/android/database/PreferenceData;->dbHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 135
    .local v2, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v5, "SELECT key, value FROM preference WHERE key = ?"

    .line 138
    .local v5, "query":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Querying Preference: SELECT key, value FROM preference WHERE key = ?, key="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Lcom/buzzfeed/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    const-string v6, "SELECT key, value FROM preference WHERE key = ?"

    new-array v7, v9, [Ljava/lang/String;

    aput-object p1, v7, v8

    invoke-virtual {v2, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 140
    .local v1, "cursor":Landroid/database/Cursor;
    if-eqz v1, :cond_84

    .line 142
    :try_start_42
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6

    if-eqz v6, :cond_85

    .line 143
    new-instance v4, Lcom/buzzfeed/android/database/Preference;

    invoke-direct {v4}, Lcom/buzzfeed/android/database/Preference;-><init>()V
    :try_end_4d
    .catchall {:try_start_42 .. :try_end_4d} :catchall_9c

    .line 144
    .end local v3    # "preference":Lcom/buzzfeed/android/database/Preference;
    .local v4, "preference":Lcom/buzzfeed/android/database/Preference;
    const/4 v6, 0x0

    :try_start_4e
    invoke-interface {v1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/buzzfeed/android/database/Preference;->setKey(Ljava/lang/String;)Lcom/buzzfeed/android/database/Preference;

    .line 145
    const/4 v6, 0x1

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/buzzfeed/android/database/Preference;->setValue(Ljava/lang/String;)Lcom/buzzfeed/android/database/Preference;

    .line 146
    iget-object v6, p0, Lcom/buzzfeed/android/database/PreferenceData;->preferenceMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4}, Lcom/buzzfeed/android/database/Preference;->getKey()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7, v4}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Preference found in database: preference="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Lcom/buzzfeed/android/database/Preference;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Lcom/buzzfeed/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_80
    .catchall {:try_start_4e .. :try_end_80} :catchall_a1

    move-object v3, v4

    .line 152
    .end local v4    # "preference":Lcom/buzzfeed/android/database/Preference;
    .restart local v3    # "preference":Lcom/buzzfeed/android/database/Preference;
    :goto_81
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 155
    :cond_84
    return-object v3

    .line 149
    :cond_85
    :try_start_85
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Preference not found in database: key="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Lcom/buzzfeed/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9b
    .catchall {:try_start_85 .. :try_end_9b} :catchall_9c

    goto :goto_81

    .line 152
    :catchall_9c
    move-exception v6

    :goto_9d
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v6

    .end local v3    # "preference":Lcom/buzzfeed/android/database/Preference;
    .restart local v4    # "preference":Lcom/buzzfeed/android/database/Preference;
    :catchall_a1
    move-exception v6

    move-object v3, v4

    .end local v4    # "preference":Lcom/buzzfeed/android/database/Preference;
    .restart local v3    # "preference":Lcom/buzzfeed/android/database/Preference;
    goto :goto_9d
.end method

.method protected static tableCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 2
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 63
    const-string v0, "CREATE TABLE preference (_id INTEGER PRIMARY KEY AUTOINCREMENT, key TEXT NOT NULL, value TEXT NOT NULL); CREATE UNIQUE INDEX IF NOT EXISTS keyIdx ON preference (key);"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 64
    return-void
.end method

.method protected static tableDrop(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 2
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 67
    const-string v0, "DROP TABLE IF EXISTS preference"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 68
    return-void
.end method


# virtual methods
.method public delete(Ljava/lang/String;)V
    .registers 8
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 167
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/buzzfeed/android/database/PreferenceData;->TAG:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".delete"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 168
    .local v0, "TAG":Ljava/lang/String;
    iget-object v4, p0, Lcom/buzzfeed/android/database/PreferenceData;->dbHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 169
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v3, "key = ?"

    .line 170
    .local v3, "whereClause":Ljava/lang/String;
    const/4 v4, 0x1

    new-array v2, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p1, v2, v4

    .line 171
    .local v2, "whereArgs":[Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Deleting preference key: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/buzzfeed/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    const-string v4, "preference"

    const-string v5, "key = ?"

    invoke-virtual {v1, v4, v5, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 173
    iget-object v4, p0, Lcom/buzzfeed/android/database/PreferenceData;->preferenceMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    return-void
.end method

.method public deleteAll()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 159
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/buzzfeed/android/database/PreferenceData;->TAG:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".deleteAll"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 160
    .local v0, "TAG":Ljava/lang/String;
    iget-object v2, p0, Lcom/buzzfeed/android/database/PreferenceData;->dbHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 161
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v2, "Deleting all items"

    invoke-static {v0, v2}, Lcom/buzzfeed/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    const-string v2, "preference"

    invoke-virtual {v1, v2, v4, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 163
    iget-object v2, p0, Lcom/buzzfeed/android/database/PreferenceData;->preferenceMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 164
    return-void
.end method

.method public getPreference(Ljava/lang/String;)Lcom/buzzfeed/android/database/Preference;
    .registers 6
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 114
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/buzzfeed/android/database/PreferenceData;->TAG:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".getPreference"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 115
    .local v0, "TAG":Ljava/lang/String;
    const/4 v1, 0x0

    .line 116
    .local v1, "preference":Lcom/buzzfeed/android/database/Preference;
    if-eqz p1, :cond_46

    .line 117
    iget-object v2, p0, Lcom/buzzfeed/android/database/PreferenceData;->preferenceMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "preference":Lcom/buzzfeed/android/database/Preference;
    check-cast v1, Lcom/buzzfeed/android/database/Preference;

    .line 118
    .restart local v1    # "preference":Lcom/buzzfeed/android/database/Preference;
    if-nez v1, :cond_27

    .line 119
    invoke-direct {p0, p1}, Lcom/buzzfeed/android/database/PreferenceData;->getPreferenceFromDatabase(Ljava/lang/String;)Lcom/buzzfeed/android/database/Preference;

    move-result-object v1

    .line 128
    .end local p1    # "key":Ljava/lang/String;
    :goto_26
    return-object v1

    .line 121
    .restart local p1    # "key":Ljava/lang/String;
    :cond_27
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Preference found in preferenceMap: preference="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lcom/buzzfeed/android/database/Preference;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/buzzfeed/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    invoke-virtual {v1}, Lcom/buzzfeed/android/database/Preference;->clone()Lcom/buzzfeed/android/database/Preference;

    move-result-object v1

    goto :goto_26

    .line 125
    :cond_46
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid null parameter given: key="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-nez p1, :cond_55

    const-string p1, "null"

    .end local p1    # "key":Ljava/lang/String;
    :cond_55
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/buzzfeed/toolkit/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_26
.end method

.method public putPreference(Lcom/buzzfeed/android/database/Preference;)V
    .registers 7
    .param p1, "preference"    # Lcom/buzzfeed/android/database/Preference;

    .prologue
    .line 71
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/buzzfeed/android/database/PreferenceData;->TAG:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".putPreference"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 72
    .local v0, "TAG":Ljava/lang/String;
    if-eqz p1, :cond_7a

    .line 73
    invoke-virtual {p1}, Lcom/buzzfeed/android/database/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3f

    invoke-virtual {p1}, Lcom/buzzfeed/android/database/Preference;->getValue()Lorg/json/JSONObject;

    move-result-object v3

    if-eqz v3, :cond_3f

    .line 74
    invoke-virtual {p1}, Lcom/buzzfeed/android/database/Preference;->clone()Lcom/buzzfeed/android/database/Preference;

    move-result-object v1

    .line 75
    .local v1, "preferenceClone":Lcom/buzzfeed/android/database/Preference;
    iget-object v3, p0, Lcom/buzzfeed/android/database/PreferenceData;->preferenceMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Lcom/buzzfeed/android/database/Preference;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    move-object v2, v1

    .line 78
    .local v2, "preferenceDb":Lcom/buzzfeed/android/database/Preference;
    new-instance v3, Ljava/lang/Thread;

    new-instance v4, Lcom/buzzfeed/android/database/PreferenceData$1;

    invoke-direct {v4, p0, v2, v0}, Lcom/buzzfeed/android/database/PreferenceData$1;-><init>(Lcom/buzzfeed/android/database/PreferenceData;Lcom/buzzfeed/android/database/Preference;Ljava/lang/String;)V

    invoke-direct {v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 102
    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    .line 111
    .end local v1    # "preferenceClone":Lcom/buzzfeed/android/database/Preference;
    .end local v2    # "preferenceDb":Lcom/buzzfeed/android/database/Preference;
    :goto_3e
    return-void

    .line 104
    :cond_3f
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid null parameter given: preference.key="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 105
    invoke-virtual {p1}, Lcom/buzzfeed/android/database/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_70

    const-string v3, "null"

    :goto_52
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " preference.value="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 106
    invoke-virtual {p1}, Lcom/buzzfeed/android/database/Preference;->getValue()Lorg/json/JSONObject;

    move-result-object v3

    if-nez v3, :cond_75

    const-string v3, "null"

    :goto_64
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 104
    invoke-static {v0, v3}, Lcom/buzzfeed/toolkit/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3e

    .line 105
    :cond_70
    invoke-virtual {p1}, Lcom/buzzfeed/android/database/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    goto :goto_52

    .line 106
    :cond_75
    invoke-virtual {p1}, Lcom/buzzfeed/android/database/Preference;->getValue()Lorg/json/JSONObject;

    move-result-object v3

    goto :goto_64

    .line 109
    :cond_7a
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid null parameter given: preference="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-nez p1, :cond_95

    const-string v3, "null"

    :goto_89
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/buzzfeed/toolkit/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3e

    :cond_95
    invoke-virtual {p1}, Lcom/buzzfeed/android/database/Preference;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_89
.end method
