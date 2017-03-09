.class public Lcom/buzzfeed/android/database/BFCacheData;
.super Ljava/lang/Object;
.source "BFCacheData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/buzzfeed/android/database/BFCacheData$PutCacheQueueManager;,
        Lcom/buzzfeed/android/database/BFCacheData$PutCacheQueue;,
        Lcom/buzzfeed/android/database/BFCacheData$PutCache;
    }
.end annotation


# static fields
.field private static DATABASE_TABLE_WRITE_THREADS:I = 0x0

.field private static final TABLE_CREATE:Ljava/lang/String; = "CREATE TABLE bfCache (_id INTEGER PRIMARY KEY AUTOINCREMENT, cacheid TEXT NOT NULL, cachetype TEXT NOT NULL, cachedata BLOB, timestamp INTEGER NOT NULL); CREATE UNIQUE INDEX IF NOT EXISTS cacheIdIdx ON bfCache (cacheid); CREATE UNIQUE INDEX IF NOT EXISTS typeCacheIdIdx ON bfCache (cachetype, cacheid); CREATE UNIQUE INDEX IF NOT EXISTS typeTimestampIdx ON bfCache (cachetype, timestamp);"

.field private static final TABLE_DROP:Ljava/lang/String; = "DROP TABLE IF EXISTS bfCache"

.field private static final TAG:Ljava/lang/String;

.field private static bfCacheDataMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/buzzfeed/android/database/BFCacheData;",
            ">;"
        }
    .end annotation
.end field

.field private static migrationList:Ljava/util/List;

.field private static final syncObject:Ljava/lang/Object;


# instance fields
.field private dbHelper:Landroid/database/sqlite/SQLiteOpenHelper;

.field private putCacheQueue:Lcom/buzzfeed/android/database/BFCacheData$PutCacheQueue;

.field private putCacheThreads:[Ljava/lang/Thread;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 36
    const-class v0, Lcom/buzzfeed/android/database/BFCacheData;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/buzzfeed/android/database/BFCacheData;->TAG:Ljava/lang/String;

    .line 37
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/buzzfeed/android/database/BFCacheData;->syncObject:Ljava/lang/Object;

    .line 59
    const/4 v0, 0x1

    sput v0, Lcom/buzzfeed/android/database/BFCacheData;->DATABASE_TABLE_WRITE_THREADS:I

    .line 61
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/buzzfeed/android/database/BFCacheData;->bfCacheDataMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 67
    const/4 v0, 0x0

    sput-object v0, Lcom/buzzfeed/android/database/BFCacheData;->migrationList:Ljava/util/List;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    return-void
.end method

.method static synthetic access$300(Lcom/buzzfeed/android/database/BFCacheData;)Landroid/database/sqlite/SQLiteOpenHelper;
    .registers 2
    .param p0, "x0"    # Lcom/buzzfeed/android/database/BFCacheData;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/buzzfeed/android/database/BFCacheData;->dbHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    return-object v0
.end method

.method static synthetic access$400(Lcom/buzzfeed/android/database/BFCacheData;)Lcom/buzzfeed/android/database/BFCacheData$PutCacheQueue;
    .registers 2
    .param p0, "x0"    # Lcom/buzzfeed/android/database/BFCacheData;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/buzzfeed/android/database/BFCacheData;->putCacheQueue:Lcom/buzzfeed/android/database/BFCacheData$PutCacheQueue;

    return-object v0
.end method

.method static synthetic access$500(Landroid/database/sqlite/SQLiteDatabase;Lcom/buzzfeed/android/database/BFCacheData$PutCache;)V
    .registers 2
    .param p0, "x0"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p1, "x1"    # Lcom/buzzfeed/android/database/BFCacheData$PutCache;

    .prologue
    .line 34
    invoke-static {p0, p1}, Lcom/buzzfeed/android/database/BFCacheData;->writePutCache(Landroid/database/sqlite/SQLiteDatabase;Lcom/buzzfeed/android/database/BFCacheData$PutCache;)V

    return-void
.end method

.method protected static getInstance(Ljava/lang/String;Landroid/database/sqlite/SQLiteOpenHelper;)Lcom/buzzfeed/android/database/BFCacheData;
    .registers 3
    .param p0, "databaseName"    # Ljava/lang/String;
    .param p1, "dbHelper"    # Landroid/database/sqlite/SQLiteOpenHelper;

    .prologue
    .line 101
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/buzzfeed/android/database/BFCacheData;->getInstance(Ljava/lang/String;Landroid/database/sqlite/SQLiteOpenHelper;Z)Lcom/buzzfeed/android/database/BFCacheData;

    move-result-object v0

    return-object v0
.end method

.method protected static getInstance(Ljava/lang/String;Landroid/database/sqlite/SQLiteOpenHelper;Z)Lcom/buzzfeed/android/database/BFCacheData;
    .registers 12
    .param p0, "databaseName"    # Ljava/lang/String;
    .param p1, "dbHelper"    # Landroid/database/sqlite/SQLiteOpenHelper;
    .param p2, "reset"    # Z

    .prologue
    .line 73
    sget-object v4, Lcom/buzzfeed/android/database/BFCacheData;->bfCacheDataMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/buzzfeed/android/database/BFCacheData;

    .line 74
    .local v1, "bfCacheData":Lcom/buzzfeed/android/database/BFCacheData;
    if-nez v1, :cond_7b

    .line 75
    sget-object v5, Lcom/buzzfeed/android/database/BFCacheData;->syncObject:Ljava/lang/Object;

    monitor-enter v5

    .line 76
    :try_start_d
    sget-object v4, Lcom/buzzfeed/android/database/BFCacheData;->bfCacheDataMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Lcom/buzzfeed/android/database/BFCacheData;

    move-object v1, v0

    .line 77
    if-nez v1, :cond_76

    .line 78
    sget-object v4, Lcom/buzzfeed/android/database/BFCacheData;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Creating BFCacheData instance for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/buzzfeed/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    new-instance v2, Lcom/buzzfeed/android/database/BFCacheData;

    invoke-direct {v2}, Lcom/buzzfeed/android/database/BFCacheData;-><init>()V
    :try_end_36
    .catchall {:try_start_d .. :try_end_36} :catchall_78

    .line 80
    .end local v1    # "bfCacheData":Lcom/buzzfeed/android/database/BFCacheData;
    .local v2, "bfCacheData":Lcom/buzzfeed/android/database/BFCacheData;
    :try_start_36
    iput-object p1, v2, Lcom/buzzfeed/android/database/BFCacheData;->dbHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    .line 81
    new-instance v4, Lcom/buzzfeed/android/database/BFCacheData$PutCacheQueue;

    const/4 v6, 0x0

    invoke-direct {v4, v6}, Lcom/buzzfeed/android/database/BFCacheData$PutCacheQueue;-><init>(Lcom/buzzfeed/android/database/BFCacheData$1;)V

    iput-object v4, v2, Lcom/buzzfeed/android/database/BFCacheData;->putCacheQueue:Lcom/buzzfeed/android/database/BFCacheData$PutCacheQueue;

    .line 82
    sget v4, Lcom/buzzfeed/android/database/BFCacheData;->DATABASE_TABLE_WRITE_THREADS:I

    new-array v4, v4, [Ljava/lang/Thread;

    iput-object v4, v2, Lcom/buzzfeed/android/database/BFCacheData;->putCacheThreads:[Ljava/lang/Thread;

    .line 83
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_47
    iget-object v4, v2, Lcom/buzzfeed/android/database/BFCacheData;->putCacheThreads:[Ljava/lang/Thread;

    array-length v4, v4

    if-ge v3, v4, :cond_70

    .line 84
    iget-object v4, v2, Lcom/buzzfeed/android/database/BFCacheData;->putCacheThreads:[Ljava/lang/Thread;

    new-instance v6, Ljava/lang/Thread;

    new-instance v7, Lcom/buzzfeed/android/database/BFCacheData$PutCacheQueueManager;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v8, 0x0

    invoke-direct {v7, v2, v8}, Lcom/buzzfeed/android/database/BFCacheData$PutCacheQueueManager;-><init>(Lcom/buzzfeed/android/database/BFCacheData;Lcom/buzzfeed/android/database/BFCacheData$1;)V

    invoke-direct {v6, v7}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    aput-object v6, v4, v3

    .line 86
    iget-object v4, v2, Lcom/buzzfeed/android/database/BFCacheData;->putCacheThreads:[Ljava/lang/Thread;

    aget-object v4, v4, v3

    const/4 v6, 0x4

    invoke-virtual {v4, v6}, Ljava/lang/Thread;->setPriority(I)V

    .line 87
    iget-object v4, v2, Lcom/buzzfeed/android/database/BFCacheData;->putCacheThreads:[Ljava/lang/Thread;

    aget-object v4, v4, v3

    invoke-virtual {v4}, Ljava/lang/Thread;->start()V

    .line 83
    add-int/lit8 v3, v3, 0x1

    goto :goto_47

    .line 89
    :cond_70
    sget-object v4, Lcom/buzzfeed/android/database/BFCacheData;->bfCacheDataMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4, p0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_75
    .catchall {:try_start_36 .. :try_end_75} :catchall_87

    move-object v1, v2

    .line 91
    .end local v2    # "bfCacheData":Lcom/buzzfeed/android/database/BFCacheData;
    .end local v3    # "i":I
    .restart local v1    # "bfCacheData":Lcom/buzzfeed/android/database/BFCacheData;
    :cond_76
    :try_start_76
    monitor-exit v5

    .line 97
    :cond_77
    :goto_77
    return-object v1

    .line 91
    :catchall_78
    move-exception v4

    :goto_79
    monitor-exit v5
    :try_end_7a
    .catchall {:try_start_76 .. :try_end_7a} :catchall_78

    throw v4

    .line 92
    :cond_7b
    if-eqz p2, :cond_77

    .line 93
    sget-object v5, Lcom/buzzfeed/android/database/BFCacheData;->syncObject:Ljava/lang/Object;

    monitor-enter v5

    .line 94
    :try_start_80
    iput-object p1, v1, Lcom/buzzfeed/android/database/BFCacheData;->dbHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    .line 95
    monitor-exit v5

    goto :goto_77

    :catchall_84
    move-exception v4

    monitor-exit v5
    :try_end_86
    .catchall {:try_start_80 .. :try_end_86} :catchall_84

    throw v4

    .line 91
    .end local v1    # "bfCacheData":Lcom/buzzfeed/android/database/BFCacheData;
    .restart local v2    # "bfCacheData":Lcom/buzzfeed/android/database/BFCacheData;
    :catchall_87
    move-exception v4

    move-object v1, v2

    .end local v2    # "bfCacheData":Lcom/buzzfeed/android/database/BFCacheData;
    .restart local v1    # "bfCacheData":Lcom/buzzfeed/android/database/BFCacheData;
    goto :goto_79
.end method

.method private static getObject(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .registers 11
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "id"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 487
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/buzzfeed/android/database/BFCacheData;->TAG:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".getObject"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 488
    .local v0, "TAG":Ljava/lang/String;
    const/4 v3, 0x0

    .line 489
    .local v3, "object":Ljava/lang/Object;
    const-string v4, "SELECT cachedata FROM bfCache WHERE cachetype = ? AND cacheid = ?"

    .line 492
    .local v4, "query":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Querying Cache: SELECT cachedata FROM bfCache WHERE cachetype = ? AND cacheid = ?, id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " type="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/buzzfeed/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 493
    const-string v5, "SELECT cachedata FROM bfCache WHERE cachetype = ? AND cacheid = ?"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    aput-object p1, v6, v7

    const/4 v7, 0x1

    aput-object p2, v6, v7

    invoke-virtual {p0, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 494
    .local v2, "cursor":Landroid/database/Cursor;
    if-eqz v2, :cond_73

    .line 496
    :try_start_49
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_70

    .line 497
    const/4 v5, 0x0

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v1

    .line 498
    .local v1, "blob":[B
    if-eqz v1, :cond_70

    .line 499
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Cache found in database id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/buzzfeed/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 500
    invoke-static {p1, v1}, Lcom/buzzfeed/android/database/BFCacheData;->getObjectFromBlob(Ljava/lang/String;[B)Ljava/lang/Object;
    :try_end_6f
    .catchall {:try_start_49 .. :try_end_6f} :catchall_74

    move-result-object v3

    .line 504
    .end local v1    # "blob":[B
    .end local v3    # "object":Ljava/lang/Object;
    :cond_70
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 507
    :cond_73
    return-object v3

    .line 504
    .restart local v3    # "object":Ljava/lang/Object;
    :catchall_74
    move-exception v5

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    throw v5
.end method

.method private static getObjectFromBlob(Ljava/lang/String;[B)Ljava/lang/Object;
    .registers 9
    .param p0, "type"    # Ljava/lang/String;
    .param p1, "blob"    # [B

    .prologue
    .line 581
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/buzzfeed/android/database/BFCacheData;->TAG:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".getObjectFromBlob"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 582
    .local v0, "TAG":Ljava/lang/String;
    const/4 v4, 0x0

    .line 584
    .local v4, "object":Ljava/lang/Object;
    :try_start_16
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 585
    .local v1, "bais":Ljava/io/ByteArrayInputStream;
    new-instance v3, Ljava/io/ObjectInputStream;

    invoke-direct {v3, v1}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    .line 587
    .local v3, "in":Ljava/io/ObjectInputStream;
    invoke-virtual {v3}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v4

    .line 588
    invoke-virtual {v3}, Ljava/io/ObjectInputStream;->close()V

    .line 589
    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_2a
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_2a} :catch_2b
    .catch Ljava/lang/ClassNotFoundException; {:try_start_16 .. :try_end_2a} :catch_43

    .line 595
    .end local v1    # "bais":Ljava/io/ByteArrayInputStream;
    .end local v3    # "in":Ljava/io/ObjectInputStream;
    .end local v4    # "object":Ljava/lang/Object;
    :goto_2a
    return-object v4

    .line 590
    :catch_2b
    move-exception v2

    .line 591
    .local v2, "e":Ljava/io/IOException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "IOException trying to read cache: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5, v2}, Lcom/buzzfeed/toolkit/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2a

    .line 592
    .end local v2    # "e":Ljava/io/IOException;
    :catch_43
    move-exception v2

    .line 593
    .local v2, "e":Ljava/lang/ClassNotFoundException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ClassNotFoundException trying to read cache: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5, v2}, Lcom/buzzfeed/toolkit/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2a
.end method

.method private static getObjectsList(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Ljava/util/List;
    .registers 10
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p1, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 549
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/buzzfeed/android/database/BFCacheData;->TAG:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".getObjectsMap"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 550
    .local v0, "TAG":Ljava/lang/String;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 551
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    const-string v4, "SELECT cachedata FROM bfCache WHERE cachetype = ?"

    .line 554
    .local v4, "query":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Querying Cache: SELECT cachedata FROM bfCache WHERE cachetype = ?, type="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/buzzfeed/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 555
    const-string v5, "SELECT cachedata FROM bfCache WHERE cachetype = ?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    aput-object p1, v6, v7

    invoke-virtual {p0, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 556
    .local v1, "cursor":Landroid/database/Cursor;
    if-eqz v1, :cond_5d

    .line 558
    :try_start_40
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_5a

    .line 560
    :cond_46
    const/4 v5, 0x0

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v5

    invoke-static {p1, v5}, Lcom/buzzfeed/android/database/BFCacheData;->getObjectFromBlob(Ljava/lang/String;[B)Ljava/lang/Object;

    move-result-object v3

    .line 561
    .local v3, "object":Ljava/lang/Object;
    if-eqz v3, :cond_54

    .line 562
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 564
    :cond_54
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_57
    .catchall {:try_start_40 .. :try_end_57} :catchall_5e

    move-result v5

    if-nez v5, :cond_46

    .line 567
    .end local v3    # "object":Ljava/lang/Object;
    :cond_5a
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 570
    :cond_5d
    return-object v2

    .line 567
    :catchall_5e
    move-exception v5

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v5
.end method

.method private static getObjectsMap(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Ljava/util/Map;
    .registers 12
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p1, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 517
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lcom/buzzfeed/android/database/BFCacheData;->TAG:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".getObjectsMap"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 518
    .local v0, "TAG":Ljava/lang/String;
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 519
    .local v3, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v5, "SELECT cacheid, cachedata FROM bfCache WHERE cachetype = ?"

    .line 522
    .local v5, "query":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Querying Cache: SELECT cacheid, cachedata FROM bfCache WHERE cachetype = ?, type="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Lcom/buzzfeed/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 523
    const-string v6, "SELECT cacheid, cachedata FROM bfCache WHERE cachetype = ?"

    new-array v7, v9, [Ljava/lang/String;

    aput-object p1, v7, v8

    invoke-virtual {p0, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 524
    .local v1, "cursor":Landroid/database/Cursor;
    if-eqz v1, :cond_64

    .line 526
    :try_start_40
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6

    if-eqz v6, :cond_61

    .line 528
    :cond_46
    const/4 v6, 0x0

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 529
    .local v2, "id":Ljava/lang/String;
    const/4 v6, 0x1

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v6

    invoke-static {p1, v6}, Lcom/buzzfeed/android/database/BFCacheData;->getObjectFromBlob(Ljava/lang/String;[B)Ljava/lang/Object;

    move-result-object v4

    .line 530
    .local v4, "object":Ljava/lang/Object;
    if-eqz v2, :cond_5b

    if-eqz v4, :cond_5b

    .line 531
    invoke-virtual {v3, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 533
    :cond_5b
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_5e
    .catchall {:try_start_40 .. :try_end_5e} :catchall_65

    move-result v6

    if-nez v6, :cond_46

    .line 536
    .end local v2    # "id":Ljava/lang/String;
    .end local v4    # "object":Ljava/lang/Object;
    :cond_61
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 539
    :cond_64
    return-object v3

    .line 536
    :catchall_65
    move-exception v6

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v6
.end method

.method private static getPersistentCache(Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/List;
    .registers 10
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 626
    invoke-static {}, Lcom/buzzfeed/android/database/BFCacheData;->getPersistentTypes()[Ljava/lang/String;

    move-result-object v5

    .line 627
    .local v5, "persistentTypes":[Ljava/lang/String;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 628
    .local v3, "list":Ljava/util/List;, "Ljava/util/List<Lcom/buzzfeed/android/database/BFCacheData$PutCache;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_a
    array-length v6, v5

    if-ge v0, v6, :cond_39

    .line 629
    aget-object v6, v5, v0

    invoke-static {p0, v6}, Lcom/buzzfeed/android/database/BFCacheData;->getObjectsMap(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v4

    .line 630
    .local v4, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 631
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_1b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_36

    .line 632
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 633
    .local v2, "key":Ljava/lang/String;
    new-instance v6, Lcom/buzzfeed/android/database/BFCacheData$PutCache;

    aget-object v7, v5, v0

    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-direct {v6, v2, v7, v8}, Lcom/buzzfeed/android/database/BFCacheData$PutCache;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1b

    .line 628
    .end local v2    # "key":Ljava/lang/String;
    :cond_36
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 636
    .end local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v4    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_39
    return-object v3
.end method

.method private static getPersistentTypes()[Ljava/lang/String;
    .registers 3

    .prologue
    .line 616
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "bookmark"

    aput-object v2, v0, v1

    return-object v0
.end method

.method private static importPersistentList(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/List;)V
    .registers 17
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/util/List",
            "<",
            "Lcom/buzzfeed/android/database/BFCacheData$PutCache;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 659
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/buzzfeed/android/database/BFCacheData$PutCache;>;"
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/buzzfeed/android/database/BFCacheData;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ".importPersistentList"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 660
    .local v6, "TAG":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Importing "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " persistent items into BFCache"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Lcom/buzzfeed/toolkit/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 662
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :cond_39
    :goto_39
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_195

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/buzzfeed/android/database/BFCacheData$PutCache;

    .line 664
    .local v10, "item":Lcom/buzzfeed/android/database/BFCacheData$PutCache;
    const/4 v0, 0x0

    .line 665
    .local v0, "bookmark":Lcom/buzzfeed/android/data/Bookmark;
    iget-object v1, v10, Lcom/buzzfeed/android/database/BFCacheData$PutCache;->object:Ljava/lang/Object;

    instance-of v1, v1, Lcom/buzzfeed/android/data/FlowItem;

    if-eqz v1, :cond_d6

    .line 666
    iget-object v13, v10, Lcom/buzzfeed/android/database/BFCacheData$PutCache;->object:Ljava/lang/Object;

    check-cast v13, Lcom/buzzfeed/android/data/FlowItem;

    .line 668
    .local v13, "legacyFlowItem":Lcom/buzzfeed/android/data/FlowItem;
    if-eqz v13, :cond_d6

    invoke-virtual {v13}, Lcom/buzzfeed/android/data/FlowItem;->getContent()Lcom/buzzfeed/android/data/FlowItem$Content;

    move-result-object v1

    if-eqz v1, :cond_d6

    invoke-virtual {v13}, Lcom/buzzfeed/android/data/FlowItem;->getContent()Lcom/buzzfeed/android/data/FlowItem$Content;

    move-result-object v1

    instance-of v1, v1, Lcom/buzzfeed/android/data/Buzz;

    if-eqz v1, :cond_d6

    .line 669
    invoke-virtual {v13}, Lcom/buzzfeed/android/data/FlowItem;->getContent()Lcom/buzzfeed/android/data/FlowItem$Content;

    move-result-object v11

    check-cast v11, Lcom/buzzfeed/android/data/Buzz;

    .line 670
    .local v11, "legacyBuzz":Lcom/buzzfeed/android/data/Buzz;
    invoke-virtual {v11}, Lcom/buzzfeed/android/data/Buzz;->isAd()Z

    move-result v1

    if-eqz v1, :cond_13a

    sget-object v1, Lcom/buzzfeed/toolkit/content/BuffetType;->EDITORIAL_AD:Lcom/buzzfeed/toolkit/content/BuffetType;

    invoke-virtual {v1}, Lcom/buzzfeed/toolkit/content/BuffetType;->name()Ljava/lang/String;

    move-result-object v2

    .line 672
    .local v2, "type":Ljava/lang/String;
    :goto_72
    invoke-virtual {v11}, Lcom/buzzfeed/android/data/Buzz;->getJson()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_90

    .line 673
    invoke-virtual {v11}, Lcom/buzzfeed/android/data/Buzz;->isAd()Z

    move-result v1

    if-eqz v1, :cond_142

    move-object v12, v11

    .line 674
    check-cast v12, Lcom/buzzfeed/android/data/BuzzAd;

    .line 675
    .local v12, "legacyBuzzAd":Lcom/buzzfeed/android/data/BuzzAd;
    invoke-virtual {v12}, Lcom/buzzfeed/android/data/BuzzAd;->generateJson()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v1}, Lcom/buzzfeed/android/data/Buzz;->setJson(Ljava/lang/String;)Lcom/buzzfeed/android/data/Buzz;

    .line 680
    .end local v12    # "legacyBuzzAd":Lcom/buzzfeed/android/data/BuzzAd;
    :cond_90
    :goto_90
    invoke-virtual {v11}, Lcom/buzzfeed/android/data/Buzz;->getJson()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_14f

    .line 681
    invoke-virtual {v11}, Lcom/buzzfeed/android/data/Buzz;->isBookmarked()Z

    move-result v1

    if-eqz v1, :cond_b1

    .line 683
    new-instance v0, Lcom/buzzfeed/android/data/Bookmark;

    .end local v0    # "bookmark":Lcom/buzzfeed/android/data/Bookmark;
    invoke-virtual {v13}, Lcom/buzzfeed/android/data/FlowItem;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11}, Lcom/buzzfeed/android/data/Buzz;->getJson()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v11}, Lcom/buzzfeed/android/data/Buzz;->getBookmarked()J

    move-result-wide v4

    invoke-direct/range {v0 .. v5}, Lcom/buzzfeed/android/data/Bookmark;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 689
    .restart local v0    # "bookmark":Lcom/buzzfeed/android/data/Bookmark;
    :cond_b1
    :goto_b1
    if-nez v0, :cond_cb

    .line 691
    :try_start_b3
    new-instance v9, Lcom/buzzfeed/toolkit/content/FlowItem;

    invoke-direct {v9}, Lcom/buzzfeed/toolkit/content/FlowItem;-><init>()V

    .line 692
    .local v9, "flowItem":Lcom/buzzfeed/toolkit/content/FlowItem;
    new-instance v1, Lorg/json/JSONObject;

    invoke-virtual {v11}, Lcom/buzzfeed/android/data/Buzz;->getJson()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    new-instance v3, Lcom/buzzfeed/toolkit/content/SimpleFlowItemFactory;

    invoke-direct {v3, v2}, Lcom/buzzfeed/toolkit/content/SimpleFlowItemFactory;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v1, v3}, Lcom/buzzfeed/toolkit/content/FlowItem;->parse(Lorg/json/JSONObject;Lcom/buzzfeed/toolkit/content/ContentFactory;)V

    .line 693
    iput-object v9, v10, Lcom/buzzfeed/android/database/BFCacheData$PutCache;->object:Ljava/lang/Object;
    :try_end_cb
    .catch Ljava/lang/Exception; {:try_start_b3 .. :try_end_cb} :catch_16b

    .line 699
    .end local v9    # "flowItem":Lcom/buzzfeed/toolkit/content/FlowItem;
    :cond_cb
    :goto_cb
    if-nez v0, :cond_d6

    iget-object v1, v10, Lcom/buzzfeed/android/database/BFCacheData$PutCache;->object:Ljava/lang/Object;

    instance-of v1, v1, Lcom/buzzfeed/android/data/Buzz;

    if-eqz v1, :cond_d6

    .line 700
    const/4 v1, 0x0

    iput-object v1, v10, Lcom/buzzfeed/android/database/BFCacheData$PutCache;->object:Ljava/lang/Object;

    .line 705
    .end local v2    # "type":Ljava/lang/String;
    .end local v11    # "legacyBuzz":Lcom/buzzfeed/android/data/Buzz;
    .end local v13    # "legacyFlowItem":Lcom/buzzfeed/android/data/FlowItem;
    :cond_d6
    iget-object v1, v10, Lcom/buzzfeed/android/database/BFCacheData$PutCache;->object:Ljava/lang/Object;

    instance-of v1, v1, Lcom/buzzfeed/toolkit/content/FlowItem;

    if-eqz v1, :cond_123

    .line 706
    iget-object v9, v10, Lcom/buzzfeed/android/database/BFCacheData$PutCache;->object:Ljava/lang/Object;

    check-cast v9, Lcom/buzzfeed/toolkit/content/FlowItem;

    .line 707
    .restart local v9    # "flowItem":Lcom/buzzfeed/toolkit/content/FlowItem;
    if-eqz v9, :cond_123

    invoke-virtual {v9}, Lcom/buzzfeed/toolkit/content/FlowItem;->getContent()Lcom/buzzfeed/toolkit/content/Content;

    move-result-object v1

    if-eqz v1, :cond_123

    invoke-virtual {v9}, Lcom/buzzfeed/toolkit/content/FlowItem;->getContent()Lcom/buzzfeed/toolkit/content/Content;

    move-result-object v1

    instance-of v1, v1, Lcom/buzzfeed/toolkit/content/Buzz;

    if-eqz v1, :cond_123

    .line 708
    invoke-virtual {v9}, Lcom/buzzfeed/toolkit/content/FlowItem;->getContent()Lcom/buzzfeed/toolkit/content/Content;

    move-result-object v7

    check-cast v7, Lcom/buzzfeed/toolkit/content/Buzz;

    .line 709
    .local v7, "buzz":Lcom/buzzfeed/toolkit/content/Buzz;
    invoke-virtual {v7}, Lcom/buzzfeed/toolkit/content/Buzz;->isAd()Z

    move-result v1

    if-eqz v1, :cond_173

    sget-object v1, Lcom/buzzfeed/toolkit/content/BuffetType;->EDITORIAL_AD:Lcom/buzzfeed/toolkit/content/BuffetType;

    invoke-virtual {v1}, Lcom/buzzfeed/toolkit/content/BuffetType;->name()Ljava/lang/String;

    move-result-object v2

    .line 710
    .restart local v2    # "type":Ljava/lang/String;
    :goto_102
    invoke-virtual {v7}, Lcom/buzzfeed/toolkit/content/Buzz;->getJson()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_17a

    .line 711
    invoke-virtual {v7}, Lcom/buzzfeed/toolkit/content/Buzz;->isBookmarked()Z

    move-result v1

    if-eqz v1, :cond_123

    .line 713
    new-instance v0, Lcom/buzzfeed/android/data/Bookmark;

    .end local v0    # "bookmark":Lcom/buzzfeed/android/data/Bookmark;
    invoke-virtual {v9}, Lcom/buzzfeed/toolkit/content/FlowItem;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7}, Lcom/buzzfeed/toolkit/content/Buzz;->getJson()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7}, Lcom/buzzfeed/toolkit/content/Buzz;->getBookmarked()J

    move-result-wide v4

    invoke-direct/range {v0 .. v5}, Lcom/buzzfeed/android/data/Bookmark;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 721
    .end local v2    # "type":Ljava/lang/String;
    .end local v7    # "buzz":Lcom/buzzfeed/toolkit/content/Buzz;
    .end local v9    # "flowItem":Lcom/buzzfeed/toolkit/content/FlowItem;
    .restart local v0    # "bookmark":Lcom/buzzfeed/android/data/Bookmark;
    :cond_123
    :goto_123
    if-eqz v0, :cond_131

    invoke-virtual {v0}, Lcom/buzzfeed/android/data/Bookmark;->getJson()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_131

    .line 722
    iput-object v0, v10, Lcom/buzzfeed/android/database/BFCacheData$PutCache;->object:Ljava/lang/Object;

    .line 725
    :cond_131
    iget-object v1, v10, Lcom/buzzfeed/android/database/BFCacheData$PutCache;->object:Ljava/lang/Object;

    if-eqz v1, :cond_39

    .line 726
    invoke-static {p0, v10}, Lcom/buzzfeed/android/database/BFCacheData;->writePutCache(Landroid/database/sqlite/SQLiteDatabase;Lcom/buzzfeed/android/database/BFCacheData$PutCache;)V

    goto/16 :goto_39

    .line 670
    .restart local v11    # "legacyBuzz":Lcom/buzzfeed/android/data/Buzz;
    .restart local v13    # "legacyFlowItem":Lcom/buzzfeed/android/data/FlowItem;
    :cond_13a
    sget-object v1, Lcom/buzzfeed/toolkit/content/BuffetType;->POST:Lcom/buzzfeed/toolkit/content/BuffetType;

    invoke-virtual {v1}, Lcom/buzzfeed/toolkit/content/BuffetType;->name()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_72

    .line 677
    .restart local v2    # "type":Ljava/lang/String;
    :cond_142
    invoke-virtual {v11}, Lcom/buzzfeed/android/data/Buzz;->generateJson()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v1}, Lcom/buzzfeed/android/data/Buzz;->setJson(Ljava/lang/String;)Lcom/buzzfeed/android/data/Buzz;

    goto/16 :goto_90

    .line 686
    :cond_14f
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Older buzz without JSON, can\'t re-parse: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v11}, Lcom/buzzfeed/android/data/Buzz;->getBuzzId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Lcom/buzzfeed/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_b1

    .line 694
    :catch_16b
    move-exception v8

    .line 695
    .local v8, "e":Ljava/lang/Exception;
    const-string v1, "Error in Content JSON when trying to parse it into object"

    invoke-static {v6, v1, v8}, Lcom/buzzfeed/toolkit/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_cb

    .line 709
    .end local v2    # "type":Ljava/lang/String;
    .end local v8    # "e":Ljava/lang/Exception;
    .end local v11    # "legacyBuzz":Lcom/buzzfeed/android/data/Buzz;
    .end local v13    # "legacyFlowItem":Lcom/buzzfeed/android/data/FlowItem;
    .restart local v7    # "buzz":Lcom/buzzfeed/toolkit/content/Buzz;
    .restart local v9    # "flowItem":Lcom/buzzfeed/toolkit/content/FlowItem;
    :cond_173
    sget-object v1, Lcom/buzzfeed/toolkit/content/BuffetType;->POST:Lcom/buzzfeed/toolkit/content/BuffetType;

    invoke-virtual {v1}, Lcom/buzzfeed/toolkit/content/BuffetType;->name()Ljava/lang/String;

    move-result-object v2

    goto :goto_102

    .line 716
    .restart local v2    # "type":Ljava/lang/String;
    :cond_17a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Older buzz without JSON, can\'t re-parse: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v7}, Lcom/buzzfeed/toolkit/content/Buzz;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Lcom/buzzfeed/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_123

    .line 729
    .end local v0    # "bookmark":Lcom/buzzfeed/android/data/Bookmark;
    .end local v2    # "type":Ljava/lang/String;
    .end local v7    # "buzz":Lcom/buzzfeed/toolkit/content/Buzz;
    .end local v9    # "flowItem":Lcom/buzzfeed/toolkit/content/FlowItem;
    .end local v10    # "item":Lcom/buzzfeed/android/database/BFCacheData$PutCache;
    :cond_195
    return-void
.end method

.method public static importSynchronousMap(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/util/Map;)V
    .registers 7
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "map"    # Ljava/util/Map;

    .prologue
    .line 168
    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 169
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_21

    .line 170
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 171
    .local v1, "key":Ljava/lang/String;
    new-instance v2, Lcom/buzzfeed/android/database/BFCacheData$PutCache;

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-direct {v2, v1, p1, v3}, Lcom/buzzfeed/android/database/BFCacheData$PutCache;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {p0, v2}, Lcom/buzzfeed/android/database/BFCacheData;->writePutCache(Landroid/database/sqlite/SQLiteDatabase;Lcom/buzzfeed/android/database/BFCacheData$PutCache;)V

    goto :goto_8

    .line 173
    .end local v1    # "key":Ljava/lang/String;
    :cond_21
    return-void
.end method

.method private isTypeEphemeral(Ljava/lang/String;)Z
    .registers 3
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 606
    const-string v0, "cache"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private queuePutCache(Lcom/buzzfeed/android/database/BFCacheData$PutCache;)V
    .registers 5
    .param p1, "putCache"    # Lcom/buzzfeed/android/database/BFCacheData$PutCache;

    .prologue
    .line 362
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/buzzfeed/android/database/BFCacheData;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".queuePutCache"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 363
    .local v0, "TAG":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Adding putCache to database queue: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/buzzfeed/android/database/BFCacheData$PutCache;->cacheId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/buzzfeed/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 364
    iget-object v1, p0, Lcom/buzzfeed/android/database/BFCacheData;->putCacheQueue:Lcom/buzzfeed/android/database/BFCacheData$PutCacheQueue;

    invoke-virtual {v1, p1}, Lcom/buzzfeed/android/database/BFCacheData$PutCacheQueue;->clean(Lcom/buzzfeed/android/database/BFCacheData$PutCache;)V

    .line 365
    iget-object v1, p0, Lcom/buzzfeed/android/database/BFCacheData;->putCacheQueue:Lcom/buzzfeed/android/database/BFCacheData$PutCacheQueue;

    invoke-virtual {v1, p1}, Lcom/buzzfeed/android/database/BFCacheData$PutCacheQueue;->queue(Lcom/buzzfeed/android/database/BFCacheData$PutCache;)V

    .line 366
    return-void
.end method

.method protected static tableCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 5
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 110
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/buzzfeed/android/database/BFCacheData;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".tableCreate"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 111
    .local v0, "TAG":Ljava/lang/String;
    const-string v1, "CREATE TABLE bfCache (_id INTEGER PRIMARY KEY AUTOINCREMENT, cacheid TEXT NOT NULL, cachetype TEXT NOT NULL, cachedata BLOB, timestamp INTEGER NOT NULL); CREATE UNIQUE INDEX IF NOT EXISTS cacheIdIdx ON bfCache (cacheid); CREATE UNIQUE INDEX IF NOT EXISTS typeCacheIdIdx ON bfCache (cachetype, cacheid); CREATE UNIQUE INDEX IF NOT EXISTS typeTimestampIdx ON bfCache (cachetype, timestamp);"

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 112
    sget-object v2, Lcom/buzzfeed/android/database/BFCacheData;->syncObject:Ljava/lang/Object;

    monitor-enter v2

    .line 113
    :try_start_1d
    sget-object v1, Lcom/buzzfeed/android/database/BFCacheData;->migrationList:Ljava/util/List;

    if-nez v1, :cond_72

    .line 115
    const-string v1, "Migration list is empty; attempting to load from media..."

    invoke-static {v0, v1}, Lcom/buzzfeed/toolkit/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    const-string v1, "bfCache"

    invoke-static {v1}, Lcom/buzzfeed/android/database/BFDatabaseManager;->loadObjectFromMedia(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    sput-object v1, Lcom/buzzfeed/android/database/BFCacheData;->migrationList:Ljava/util/List;

    .line 117
    sget-object v1, Lcom/buzzfeed/android/database/BFCacheData;->migrationList:Ljava/util/List;

    if-eqz v1, :cond_69

    .line 118
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Found "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v3, Lcom/buzzfeed/android/database/BFCacheData;->migrationList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " migration items on media"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/buzzfeed/toolkit/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    :goto_56
    sget-object v1, Lcom/buzzfeed/android/database/BFCacheData;->migrationList:Ljava/util/List;

    if-eqz v1, :cond_67

    .line 126
    sget-object v1, Lcom/buzzfeed/android/database/BFCacheData;->migrationList:Ljava/util/List;

    invoke-static {p0, v1}, Lcom/buzzfeed/android/database/BFCacheData;->importPersistentList(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/List;)V

    .line 127
    const/4 v1, 0x0

    sput-object v1, Lcom/buzzfeed/android/database/BFCacheData;->migrationList:Ljava/util/List;

    .line 128
    const-string v1, "bfCache"

    invoke-static {v1}, Lcom/buzzfeed/android/database/BFDatabaseManager;->deleteFileFromMedia(Ljava/lang/String;)V

    .line 130
    :cond_67
    monitor-exit v2

    .line 131
    return-void

    .line 120
    :cond_69
    const-string v1, "No migration list found on media; nothing to restore"

    invoke-static {v0, v1}, Lcom/buzzfeed/toolkit/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_56

    .line 130
    :catchall_6f
    move-exception v1

    monitor-exit v2
    :try_end_71
    .catchall {:try_start_1d .. :try_end_71} :catchall_6f

    throw v1

    .line 123
    :cond_72
    :try_start_72
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Found "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v3, Lcom/buzzfeed/android/database/BFCacheData;->migrationList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " migration items in memory list"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/buzzfeed/toolkit/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_94
    .catchall {:try_start_72 .. :try_end_94} :catchall_6f

    goto :goto_56
.end method

.method protected static tableDrop(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 6
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 139
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/buzzfeed/android/database/BFCacheData;->TAG:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".tableDrop"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 141
    .local v0, "TAG":Ljava/lang/String;
    sget-object v3, Lcom/buzzfeed/android/database/BFCacheData;->syncObject:Ljava/lang/Object;

    monitor-enter v3

    .line 143
    :try_start_18
    invoke-static {p0}, Lcom/buzzfeed/android/database/BFCacheData;->getPersistentCache(Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/List;

    move-result-object v2

    sput-object v2, Lcom/buzzfeed/android/database/BFCacheData;->migrationList:Ljava/util/List;
    :try_end_1e
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_18 .. :try_end_1e} :catch_38
    .catchall {:try_start_18 .. :try_end_1e} :catchall_54

    .line 147
    :goto_1e
    :try_start_1e
    sget-object v2, Lcom/buzzfeed/android/database/BFCacheData;->migrationList:Ljava/util/List;

    if-eqz v2, :cond_57

    sget-object v2, Lcom/buzzfeed/android/database/BFCacheData;->migrationList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_57

    .line 148
    sget-object v2, Lcom/buzzfeed/android/database/BFCacheData;->migrationList:Ljava/util/List;

    const-string v4, "bfCache"

    invoke-static {v2, v4}, Lcom/buzzfeed/android/database/BFDatabaseManager;->saveObjectToMedia(Ljava/lang/Object;Ljava/lang/String;)V

    .line 152
    :goto_31
    monitor-exit v3
    :try_end_32
    .catchall {:try_start_1e .. :try_end_32} :catchall_54

    .line 154
    const-string v2, "DROP TABLE IF EXISTS bfCache"

    invoke-virtual {p0, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 155
    return-void

    .line 144
    :catch_38
    move-exception v1

    .line 145
    .local v1, "e":Landroid/database/sqlite/SQLiteException;
    :try_start_39
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error reading from the database: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/buzzfeed/toolkit/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1e

    .line 152
    .end local v1    # "e":Landroid/database/sqlite/SQLiteException;
    :catchall_54
    move-exception v2

    monitor-exit v3
    :try_end_56
    .catchall {:try_start_39 .. :try_end_56} :catchall_54

    throw v2

    .line 150
    :cond_57
    :try_start_57
    const-string v2, "No persistent cache records found to migrate"

    invoke-static {v0, v2}, Lcom/buzzfeed/toolkit/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5c
    .catchall {:try_start_57 .. :try_end_5c} :catchall_54

    goto :goto_31
.end method

.method private static writePutCache(Landroid/database/sqlite/SQLiteDatabase;Lcom/buzzfeed/android/database/BFCacheData$PutCache;)V
    .registers 15
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p1, "putCache"    # Lcom/buzzfeed/android/database/BFCacheData$PutCache;

    .prologue
    .line 440
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v12, Lcom/buzzfeed/android/database/BFCacheData;->TAG:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ".writePutCache"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 441
    .local v0, "TAG":Ljava/lang/String;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 443
    .local v8, "timestamp":J
    const/4 v2, 0x0

    .line 444
    .local v2, "byteArray":[B
    iget-object v11, p1, Lcom/buzzfeed/android/database/BFCacheData$PutCache;->object:Ljava/lang/Object;

    if-eqz v11, :cond_37

    .line 446
    :try_start_1e
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 447
    .local v1, "baos":Ljava/io/ByteArrayOutputStream;
    new-instance v6, Ljava/io/ObjectOutputStream;

    invoke-direct {v6, v1}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 448
    .local v6, "out":Ljava/io/ObjectOutputStream;
    iget-object v11, p1, Lcom/buzzfeed/android/database/BFCacheData$PutCache;->object:Ljava/lang/Object;

    invoke-virtual {v6, v11}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 449
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    .line 450
    invoke-virtual {v6}, Ljava/io/ObjectOutputStream;->close()V

    .line 451
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_37
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_37} :catch_86

    .line 456
    .end local v1    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v6    # "out":Ljava/io/ObjectOutputStream;
    :cond_37
    :goto_37
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 457
    .local v4, "cv":Landroid/content/ContentValues;
    const-string v11, "cacheid"

    iget-object v12, p1, Lcom/buzzfeed/android/database/BFCacheData$PutCache;->cacheId:Ljava/lang/String;

    invoke-virtual {v4, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 458
    const-string v11, "cachetype"

    iget-object v12, p1, Lcom/buzzfeed/android/database/BFCacheData$PutCache;->type:Ljava/lang/String;

    invoke-virtual {v4, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 459
    const-string v11, "cachedata"

    invoke-virtual {v4, v11, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 460
    const-string/jumbo v11, "timestamp"

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v4, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 462
    iget-object v11, p1, Lcom/buzzfeed/android/database/BFCacheData$PutCache;->type:Ljava/lang/String;

    iget-object v12, p1, Lcom/buzzfeed/android/database/BFCacheData$PutCache;->cacheId:Ljava/lang/String;

    invoke-static {p0, v11, v12}, Lcom/buzzfeed/android/database/BFCacheData;->getObject(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 465
    .local v3, "cachedObject":Ljava/lang/Object;
    if-nez v3, :cond_a0

    .line 466
    :try_start_63
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Inserting Cache: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p1, Lcom/buzzfeed/android/database/BFCacheData$PutCache;->object:Ljava/lang/Object;

    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v0, v11}, Lcom/buzzfeed/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 467
    const-string v11, "bfCache"

    const/4 v12, 0x0

    invoke-virtual {p0, v11, v12, v4}, Landroid/database/sqlite/SQLiteDatabase;->insertOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_85
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_63 .. :try_end_85} :catch_db

    .line 477
    :cond_85
    :goto_85
    return-void

    .line 452
    .end local v3    # "cachedObject":Ljava/lang/Object;
    .end local v4    # "cv":Landroid/content/ContentValues;
    :catch_86
    move-exception v5

    .line 453
    .local v5, "e":Ljava/io/IOException;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "IOException trying to convert cache: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p1, Lcom/buzzfeed/android/database/BFCacheData$PutCache;->cacheId:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v0, v11, v5}, Lcom/buzzfeed/toolkit/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_37

    .line 468
    .end local v5    # "e":Ljava/io/IOException;
    .restart local v3    # "cachedObject":Ljava/lang/Object;
    .restart local v4    # "cv":Landroid/content/ContentValues;
    :cond_a0
    :try_start_a0
    iget-object v11, p1, Lcom/buzzfeed/android/database/BFCacheData$PutCache;->object:Ljava/lang/Object;

    invoke-virtual {v3, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_85

    .line 469
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Updating Cache: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p1, Lcom/buzzfeed/android/database/BFCacheData$PutCache;->object:Ljava/lang/Object;

    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v0, v11}, Lcom/buzzfeed/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 470
    const-string v10, "cachetype = ? AND cacheid = ?"

    .line 471
    .local v10, "whereClause":Ljava/lang/String;
    const/4 v11, 0x2

    new-array v7, v11, [Ljava/lang/String;

    const/4 v11, 0x0

    iget-object v12, p1, Lcom/buzzfeed/android/database/BFCacheData$PutCache;->type:Ljava/lang/String;

    aput-object v12, v7, v11

    const/4 v11, 0x1

    iget-object v12, p1, Lcom/buzzfeed/android/database/BFCacheData$PutCache;->cacheId:Ljava/lang/String;

    aput-object v12, v7, v11

    .line 472
    .local v7, "whereArgs":[Ljava/lang/String;
    const-string v11, "bfCache"

    const-string v12, "cachetype = ? AND cacheid = ?"

    invoke-virtual {p0, v11, v4, v12, v7}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_da
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_a0 .. :try_end_da} :catch_db

    goto :goto_85

    .line 474
    .end local v7    # "whereArgs":[Ljava/lang/String;
    .end local v10    # "whereClause":Ljava/lang/String;
    :catch_db
    move-exception v5

    .line 475
    .local v5, "e":Landroid/database/sqlite/SQLiteException;
    const-string v11, "Error writing to the database"

    invoke-static {v0, v11, v5}, Lcom/buzzfeed/toolkit/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_85
.end method


# virtual methods
.method public delete(Ljava/lang/String;Ljava/lang/String;)V
    .registers 9
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/String;

    .prologue
    .line 315
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/buzzfeed/android/database/BFCacheData;->TAG:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".delete"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 316
    .local v0, "TAG":Ljava/lang/String;
    iget-object v4, p0, Lcom/buzzfeed/android/database/BFCacheData;->dbHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 317
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Deleting item id:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " type:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/buzzfeed/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    const-string v3, "cachetype = ? AND cacheid = ?"

    .line 319
    .local v3, "whereClause":Ljava/lang/String;
    const/4 v4, 0x2

    new-array v2, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p2, v2, v4

    const/4 v4, 0x1

    aput-object p1, v2, v4

    .line 320
    .local v2, "whereArgs":[Ljava/lang/String;
    const-string v4, "bfCache"

    const-string v5, "cachetype = ? AND cacheid = ?"

    invoke-virtual {v1, v4, v5, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 321
    return-void
.end method

.method public delete(Ljava/util/Map;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 299
    .local p1, "idTypeMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/buzzfeed/android/database/BFCacheData;->TAG:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".delete"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 300
    .local v0, "TAG":Ljava/lang/String;
    const-string v3, "Deleting items:"

    invoke-static {v0, v3}, Lcom/buzzfeed/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 302
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_22
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_38

    .line 303
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 304
    .local v2, "key":Ljava/lang/String;
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/buzzfeed/android/database/BFCacheData;->delete(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_22

    .line 306
    .end local v2    # "key":Ljava/lang/String;
    :cond_38
    return-void
.end method

.method public deleteAll()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 247
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/buzzfeed/android/database/BFCacheData;->TAG:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".deleteAll"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 248
    .local v0, "TAG":Ljava/lang/String;
    iget-object v2, p0, Lcom/buzzfeed/android/database/BFCacheData;->dbHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 249
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v2, "Deleting all cache"

    invoke-static {v0, v2}, Lcom/buzzfeed/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    const-string v2, "bfCache"

    invoke-virtual {v1, v2, v4, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 251
    return-void
.end method

.method public deleteAllOfType(Ljava/lang/String;)V
    .registers 8
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 235
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/buzzfeed/android/database/BFCacheData;->TAG:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".deleteAllOfType"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 236
    .local v0, "TAG":Ljava/lang/String;
    iget-object v4, p0, Lcom/buzzfeed/android/database/BFCacheData;->dbHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 237
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Deleting cache for type: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/buzzfeed/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    const-string v3, "cachetype = ?"

    .line 239
    .local v3, "whereClause":Ljava/lang/String;
    const/4 v4, 0x1

    new-array v2, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p1, v2, v4

    .line 240
    .local v2, "whereArgs":[Ljava/lang/String;
    const-string v4, "bfCache"

    const-string v5, "cachetype = ?"

    invoke-virtual {v1, v4, v5, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 241
    return-void
.end method

.method public deleteExpired(I)V
    .registers 3
    .param p1, "cacheInterval"    # I

    .prologue
    .line 259
    const-string v0, "cache"

    invoke-virtual {p0, v0, p1}, Lcom/buzzfeed/android/database/BFCacheData;->deleteExpired(Ljava/lang/String;I)V

    .line 260
    return-void
.end method

.method public deleteExpired(Ljava/lang/String;I)V
    .registers 16
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "cacheInterval"    # I

    .prologue
    const/4 v12, 0x1

    const/4 v7, 0x0

    .line 269
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/buzzfeed/android/database/BFCacheData;->TAG:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".deleteExpired"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 270
    .local v0, "TAG":Ljava/lang/String;
    invoke-direct {p0, p1}, Lcom/buzzfeed/android/database/BFCacheData;->isTypeEphemeral(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7e

    .line 271
    iget-object v5, p0, Lcom/buzzfeed/android/database/BFCacheData;->dbHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 272
    .local v2, "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 273
    .local v3, "expiredList":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v4, "SELECT cacheid, cachetype FROM bfCache WHERE cachetype = ? AND timestamp < ?"

    .line 276
    .local v4, "query":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Deleting expired items: cacheInterval="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/buzzfeed/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    const-string v5, "SELECT cacheid, cachetype FROM bfCache WHERE cachetype = ? AND timestamp < ?"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    aput-object p1, v6, v7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    int-to-long v10, p2

    sub-long/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v12

    invoke-virtual {v2, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 278
    .local v1, "cursor":Landroid/database/Cursor;
    if-eqz v1, :cond_75

    .line 280
    :try_start_59
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_72

    .line 282
    :cond_5f
    const/4 v5, 0x0

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 283
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_6f
    .catchall {:try_start_59 .. :try_end_6f} :catchall_7f

    move-result v5

    if-nez v5, :cond_5f

    .line 286
    :cond_72
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 289
    :cond_75
    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v5

    if-lez v5, :cond_7e

    invoke-virtual {p0, v3}, Lcom/buzzfeed/android/database/BFCacheData;->delete(Ljava/util/Map;)V

    .line 291
    .end local v1    # "cursor":Landroid/database/Cursor;
    .end local v2    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v3    # "expiredList":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v4    # "query":Ljava/lang/String;
    :cond_7e
    return-void

    .line 286
    .restart local v1    # "cursor":Landroid/database/Cursor;
    .restart local v2    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v3    # "expiredList":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v4    # "query":Ljava/lang/String;
    :catchall_7f
    move-exception v5

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v5
.end method

.method public getObject(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .registers 5
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "id"    # Ljava/lang/String;

    .prologue
    .line 203
    iget-object v1, p0, Lcom/buzzfeed/android/database/BFCacheData;->dbHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 204
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-static {v0, p1, p2}, Lcom/buzzfeed/android/database/BFCacheData;->getObject(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public getObjectsList(Ljava/lang/String;)Ljava/util/List;
    .registers 4
    .param p1, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 225
    iget-object v1, p0, Lcom/buzzfeed/android/database/BFCacheData;->dbHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 226
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-static {v0, p1}, Lcom/buzzfeed/android/database/BFCacheData;->getObjectsList(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public getObjectsMap(Ljava/lang/String;)Ljava/util/Map;
    .registers 4
    .param p1, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 214
    iget-object v1, p0, Lcom/buzzfeed/android/database/BFCacheData;->dbHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 215
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-static {v0, p1}, Lcom/buzzfeed/android/database/BFCacheData;->getObjectsMap(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    return-object v1
.end method

.method public putObject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .registers 8
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "object"    # Ljava/lang/Object;

    .prologue
    .line 186
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/buzzfeed/android/database/BFCacheData;->TAG:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".putObject"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 187
    .local v0, "TAG":Ljava/lang/String;
    if-eqz p3, :cond_20

    .line 188
    new-instance v1, Lcom/buzzfeed/android/database/BFCacheData$PutCache;

    invoke-direct {v1, p1, p2, p3}, Lcom/buzzfeed/android/database/BFCacheData$PutCache;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 189
    .local v1, "putCache":Lcom/buzzfeed/android/database/BFCacheData$PutCache;
    invoke-direct {p0, v1}, Lcom/buzzfeed/android/database/BFCacheData;->queuePutCache(Lcom/buzzfeed/android/database/BFCacheData$PutCache;)V

    .line 193
    .end local v1    # "putCache":Lcom/buzzfeed/android/database/BFCacheData$PutCache;
    :goto_1f
    return-void

    .line 191
    :cond_20
    const-string v2, "Invalid null parameter given"

    invoke-static {v0, v2}, Lcom/buzzfeed/toolkit/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1f
.end method

.method public waitForBackgroundTasksToFinish()V
    .registers 3

    .prologue
    .line 329
    :goto_0
    iget-object v0, p0, Lcom/buzzfeed/android/database/BFCacheData;->putCacheQueue:Lcom/buzzfeed/android/database/BFCacheData$PutCacheQueue;

    # getter for: Lcom/buzzfeed/android/database/BFCacheData$PutCacheQueue;->stack:Ljava/util/Stack;
    invoke-static {v0}, Lcom/buzzfeed/android/database/BFCacheData$PutCacheQueue;->access$200(Lcom/buzzfeed/android/database/BFCacheData$PutCacheQueue;)Ljava/util/Stack;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0

    if-lez v0, :cond_14

    .line 331
    const-wide/16 v0, 0x64

    :try_start_e
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_11
    .catch Ljava/lang/InterruptedException; {:try_start_e .. :try_end_11} :catch_12

    goto :goto_0

    .line 332
    :catch_12
    move-exception v0

    goto :goto_0

    .line 335
    :cond_14
    return-void
.end method
