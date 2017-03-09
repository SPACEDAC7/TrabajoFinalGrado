.class public Lcom/buzzfeed/android/database/PreferenceDatabaseManager;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "PreferenceDatabaseManager.java"


# static fields
.field private static final DATABASE_SET_AUTO_VACUUM:Ljava/lang/String; = "PRAGMA auto_vacuum = 1"

.field private static final DATABASE_VACUUM:Ljava/lang/String; = "VACUUM"

.field private static final DATABASE_VERSION:I = 0x1

.field private static final DEFAULT_DATABASE_NAME:Ljava/lang/String; = "preference.db"

.field private static final TAG:Ljava/lang/String;

.field private static dbmMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/buzzfeed/android/database/PreferenceDatabaseManager;",
            ">;"
        }
    .end annotation
.end field

.field private static final syncObject:Ljava/lang/Object;


# instance fields
.field private databaseName:Ljava/lang/String;

.field private isOpen:Z

.field public preferenceData:Lcom/buzzfeed/android/database/PreferenceData;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 13
    const-class v0, Lcom/buzzfeed/android/database/PreferenceDatabaseManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/buzzfeed/android/database/PreferenceDatabaseManager;->TAG:Ljava/lang/String;

    .line 14
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/buzzfeed/android/database/PreferenceDatabaseManager;->syncObject:Ljava/lang/Object;

    .line 21
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/buzzfeed/android/database/PreferenceDatabaseManager;->dbmMap:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 33
    const-string v0, "preference.db"

    invoke-direct {p0, p1, v0}, Lcom/buzzfeed/android/database/PreferenceDatabaseManager;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 34
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "databaseName"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 29
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v1, v0}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 23
    iput-object v1, p0, Lcom/buzzfeed/android/database/PreferenceDatabaseManager;->databaseName:Ljava/lang/String;

    .line 24
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/buzzfeed/android/database/PreferenceDatabaseManager;->isOpen:Z

    .line 30
    iput-object p2, p0, Lcom/buzzfeed/android/database/PreferenceDatabaseManager;->databaseName:Ljava/lang/String;

    .line 31
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/buzzfeed/android/database/PreferenceDatabaseManager;
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 51
    const-string v0, "preference.db"

    invoke-static {p0, v0}, Lcom/buzzfeed/android/database/PreferenceDatabaseManager;->getInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/buzzfeed/android/database/PreferenceDatabaseManager;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/buzzfeed/android/database/PreferenceDatabaseManager;
    .registers 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "databaseName"    # Ljava/lang/String;

    .prologue
    .line 37
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 38
    sget-object v1, Lcom/buzzfeed/android/database/PreferenceDatabaseManager;->dbmMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3a

    .line 39
    sget-object v2, Lcom/buzzfeed/android/database/PreferenceDatabaseManager;->syncObject:Ljava/lang/Object;

    monitor-enter v2

    .line 40
    :try_start_f
    sget-object v1, Lcom/buzzfeed/android/database/PreferenceDatabaseManager;->dbmMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_39

    .line 41
    sget-object v1, Lcom/buzzfeed/android/database/PreferenceDatabaseManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Creating PreferenceDatabaseManager instance for database: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/buzzfeed/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    sget-object v1, Lcom/buzzfeed/android/database/PreferenceDatabaseManager;->dbmMap:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v3, Lcom/buzzfeed/android/database/PreferenceDatabaseManager;

    invoke-direct {v3, p0, p1}, Lcom/buzzfeed/android/database/PreferenceDatabaseManager;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v1, p1, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    :cond_39
    monitor-exit v2
    :try_end_3a
    .catchall {:try_start_f .. :try_end_3a} :catchall_46

    .line 46
    :cond_3a
    sget-object v1, Lcom/buzzfeed/android/database/PreferenceDatabaseManager;->dbmMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/buzzfeed/android/database/PreferenceDatabaseManager;

    .line 47
    .local v0, "dbm":Lcom/buzzfeed/android/database/PreferenceDatabaseManager;
    invoke-virtual {v0}, Lcom/buzzfeed/android/database/PreferenceDatabaseManager;->open()V

    .line 48
    return-object v0

    .line 44
    .end local v0    # "dbm":Lcom/buzzfeed/android/database/PreferenceDatabaseManager;
    :catchall_46
    move-exception v1

    :try_start_47
    monitor-exit v2
    :try_end_48
    .catchall {:try_start_47 .. :try_end_48} :catchall_46

    throw v1
.end method


# virtual methods
.method public close()V
    .registers 1

    .prologue
    .line 82
    return-void
.end method

.method protected databaseVacuum()V
    .registers 13

    .prologue
    .line 85
    invoke-virtual {p0}, Lcom/buzzfeed/android/database/PreferenceDatabaseManager;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 86
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 87
    .local v2, "time":J
    sget-object v1, Lcom/buzzfeed/android/database/PreferenceDatabaseManager;->TAG:Ljava/lang/String;

    const-string v4, "Starting databaseVacuum..."

    invoke-static {v1, v4}, Lcom/buzzfeed/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    const-string v1, "VACUUM"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 89
    sget-object v1, Lcom/buzzfeed/android/database/PreferenceDatabaseManager;->TAG:Ljava/lang/String;

    const-string v4, "Finished databaseVacuum in %d seconds"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v2

    const-wide/16 v10, 0x3e8

    div-long/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/buzzfeed/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    return-void
.end method

.method public isClosed()Z
    .registers 2

    .prologue
    .line 97
    invoke-virtual {p0}, Lcom/buzzfeed/android/database/PreferenceDatabaseManager;->isOpen()Z

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public isOpen()Z
    .registers 2

    .prologue
    .line 93
    iget-boolean v0, p0, Lcom/buzzfeed/android/database/PreferenceDatabaseManager;->isOpen:Z

    return v0
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 3
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 56
    const-string v0, "PRAGMA auto_vacuum = 1"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 57
    invoke-static {p1}, Lcom/buzzfeed/android/database/PreferenceData;->tableCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 58
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .registers 4
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .prologue
    .line 62
    invoke-static {p1}, Lcom/buzzfeed/android/database/PreferenceData;->tableDrop(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 63
    invoke-virtual {p0, p1}, Lcom/buzzfeed/android/database/PreferenceDatabaseManager;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 64
    return-void
.end method

.method public open()V
    .registers 5

    .prologue
    .line 67
    iget-boolean v0, p0, Lcom/buzzfeed/android/database/PreferenceDatabaseManager;->isOpen:Z

    if-nez v0, :cond_39

    .line 68
    sget-object v1, Lcom/buzzfeed/android/database/PreferenceDatabaseManager;->syncObject:Ljava/lang/Object;

    monitor-enter v1

    .line 69
    :try_start_7
    iget-boolean v0, p0, Lcom/buzzfeed/android/database/PreferenceDatabaseManager;->isOpen:Z

    if-nez v0, :cond_38

    .line 70
    sget-object v0, Lcom/buzzfeed/android/database/PreferenceDatabaseManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Opening database: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/buzzfeed/android/database/PreferenceDatabaseManager;->databaseName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/buzzfeed/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    iget-object v0, p0, Lcom/buzzfeed/android/database/PreferenceDatabaseManager;->preferenceData:Lcom/buzzfeed/android/database/PreferenceData;

    if-nez v0, :cond_32

    iget-object v0, p0, Lcom/buzzfeed/android/database/PreferenceDatabaseManager;->databaseName:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-static {v0, p0, v2}, Lcom/buzzfeed/android/database/PreferenceData;->getInstance(Ljava/lang/String;Landroid/database/sqlite/SQLiteOpenHelper;Z)Lcom/buzzfeed/android/database/PreferenceData;

    move-result-object v0

    iput-object v0, p0, Lcom/buzzfeed/android/database/PreferenceDatabaseManager;->preferenceData:Lcom/buzzfeed/android/database/PreferenceData;

    .line 73
    :cond_32
    invoke-virtual {p0}, Lcom/buzzfeed/android/database/PreferenceDatabaseManager;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 74
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/buzzfeed/android/database/PreferenceDatabaseManager;->isOpen:Z

    .line 76
    :cond_38
    monitor-exit v1

    .line 78
    :cond_39
    return-void

    .line 76
    :catchall_3a
    move-exception v0

    monitor-exit v1
    :try_end_3c
    .catchall {:try_start_7 .. :try_end_3c} :catchall_3a

    throw v0
.end method
