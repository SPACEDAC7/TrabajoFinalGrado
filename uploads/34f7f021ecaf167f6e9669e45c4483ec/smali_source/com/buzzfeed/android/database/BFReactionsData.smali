.class public Lcom/buzzfeed/android/database/BFReactionsData;
.super Ljava/lang/Object;
.source "BFReactionsData.java"


# static fields
.field private static final TABLE_CREATE:Ljava/lang/String; = "CREATE TABLE bfReactions (_id INTEGER PRIMARY KEY AUTOINCREMENT, buzzId TEXT NOT NULL, reactionId TEXT NOT NULL, isFacebookLike INTEGER DEFAULT 0, timestamp INTEGER NOT NULL); CREATE UNIQUE INDEX IF NOT EXISTS buzzIdIdx ON bfReactions (buzzId); CREATE UNIQUE INDEX IF NOT EXISTS reactionIdIdx ON bfReactions (reactionId); CREATE UNIQUE INDEX IF NOT EXISTS timestampIdx ON bfReactions (timestamp);"

.field private static final TABLE_DROP:Ljava/lang/String; = "DROP TABLE IF EXISTS bfReactions"

.field private static final TAG:Ljava/lang/String;

.field private static bfReactionsDataMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/buzzfeed/android/database/BFReactionsData;",
            ">;"
        }
    .end annotation
.end field

.field private static final syncObject:Ljava/lang/Object;


# instance fields
.field private dbHelper:Landroid/database/sqlite/SQLiteOpenHelper;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 16
    const-class v0, Lcom/buzzfeed/android/database/BFReactionsData;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/buzzfeed/android/database/BFReactionsData;->TAG:Ljava/lang/String;

    .line 17
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/buzzfeed/android/database/BFReactionsData;->syncObject:Ljava/lang/Object;

    .line 38
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/buzzfeed/android/database/BFReactionsData;->bfReactionsDataMap:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static getInstance(Ljava/lang/String;Landroid/database/sqlite/SQLiteOpenHelper;)Lcom/buzzfeed/android/database/BFReactionsData;
    .registers 3
    .param p0, "databaseName"    # Ljava/lang/String;
    .param p1, "dbHelper"    # Landroid/database/sqlite/SQLiteOpenHelper;

    .prologue
    .line 64
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/buzzfeed/android/database/BFReactionsData;->getInstance(Ljava/lang/String;Landroid/database/sqlite/SQLiteOpenHelper;Z)Lcom/buzzfeed/android/database/BFReactionsData;

    move-result-object v0

    return-object v0
.end method

.method protected static getInstance(Ljava/lang/String;Landroid/database/sqlite/SQLiteOpenHelper;Z)Lcom/buzzfeed/android/database/BFReactionsData;
    .registers 10
    .param p0, "databaseName"    # Ljava/lang/String;
    .param p1, "dbHelper"    # Landroid/database/sqlite/SQLiteOpenHelper;
    .param p2, "reset"    # Z

    .prologue
    .line 45
    sget-object v3, Lcom/buzzfeed/android/database/BFReactionsData;->bfReactionsDataMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/buzzfeed/android/database/BFReactionsData;

    .line 46
    .local v1, "bfReactionsData":Lcom/buzzfeed/android/database/BFReactionsData;
    if-nez v1, :cond_43

    .line 47
    sget-object v4, Lcom/buzzfeed/android/database/BFReactionsData;->syncObject:Ljava/lang/Object;

    monitor-enter v4

    .line 48
    :try_start_d
    sget-object v3, Lcom/buzzfeed/android/database/BFReactionsData;->bfReactionsDataMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/buzzfeed/android/database/BFReactionsData;

    move-object v1, v0

    .line 49
    if-nez v1, :cond_3e

    .line 50
    sget-object v3, Lcom/buzzfeed/android/database/BFReactionsData;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Creating BFReactionsData instance for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/buzzfeed/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    new-instance v2, Lcom/buzzfeed/android/database/BFReactionsData;

    invoke-direct {v2}, Lcom/buzzfeed/android/database/BFReactionsData;-><init>()V
    :try_end_36
    .catchall {:try_start_d .. :try_end_36} :catchall_40

    .line 52
    .end local v1    # "bfReactionsData":Lcom/buzzfeed/android/database/BFReactionsData;
    .local v2, "bfReactionsData":Lcom/buzzfeed/android/database/BFReactionsData;
    :try_start_36
    iput-object p1, v2, Lcom/buzzfeed/android/database/BFReactionsData;->dbHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    .line 53
    sget-object v3, Lcom/buzzfeed/android/database/BFReactionsData;->bfReactionsDataMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, p0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3d
    .catchall {:try_start_36 .. :try_end_3d} :catchall_4f

    move-object v1, v2

    .line 55
    .end local v2    # "bfReactionsData":Lcom/buzzfeed/android/database/BFReactionsData;
    .restart local v1    # "bfReactionsData":Lcom/buzzfeed/android/database/BFReactionsData;
    :cond_3e
    :try_start_3e
    monitor-exit v4

    .line 61
    :cond_3f
    :goto_3f
    return-object v1

    .line 55
    :catchall_40
    move-exception v3

    :goto_41
    monitor-exit v4
    :try_end_42
    .catchall {:try_start_3e .. :try_end_42} :catchall_40

    throw v3

    .line 56
    :cond_43
    if-eqz p2, :cond_3f

    .line 57
    sget-object v4, Lcom/buzzfeed/android/database/BFReactionsData;->syncObject:Ljava/lang/Object;

    monitor-enter v4

    .line 58
    :try_start_48
    iput-object p1, v1, Lcom/buzzfeed/android/database/BFReactionsData;->dbHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    .line 59
    monitor-exit v4

    goto :goto_3f

    :catchall_4c
    move-exception v3

    monitor-exit v4
    :try_end_4e
    .catchall {:try_start_48 .. :try_end_4e} :catchall_4c

    throw v3

    .line 55
    .end local v1    # "bfReactionsData":Lcom/buzzfeed/android/database/BFReactionsData;
    .restart local v2    # "bfReactionsData":Lcom/buzzfeed/android/database/BFReactionsData;
    :catchall_4f
    move-exception v3

    move-object v1, v2

    .end local v2    # "bfReactionsData":Lcom/buzzfeed/android/database/BFReactionsData;
    .restart local v1    # "bfReactionsData":Lcom/buzzfeed/android/database/BFReactionsData;
    goto :goto_41
.end method

.method protected static tableCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 2
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 68
    const-string v0, "CREATE TABLE bfReactions (_id INTEGER PRIMARY KEY AUTOINCREMENT, buzzId TEXT NOT NULL, reactionId TEXT NOT NULL, isFacebookLike INTEGER DEFAULT 0, timestamp INTEGER NOT NULL); CREATE UNIQUE INDEX IF NOT EXISTS buzzIdIdx ON bfReactions (buzzId); CREATE UNIQUE INDEX IF NOT EXISTS reactionIdIdx ON bfReactions (reactionId); CREATE UNIQUE INDEX IF NOT EXISTS timestampIdx ON bfReactions (timestamp);"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 69
    return-void
.end method

.method protected static tableDrop(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 2
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 72
    const-string v0, "DROP TABLE IF EXISTS bfReactions"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 73
    return-void
.end method


# virtual methods
.method public deleteBuzzReaction(Ljava/lang/String;Ljava/lang/String;)V
    .registers 9
    .param p1, "buzzId"    # Ljava/lang/String;
    .param p2, "reactionId"    # Ljava/lang/String;

    .prologue
    .line 98
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/buzzfeed/android/database/BFReactionsData;->TAG:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".deleteBuzzReaction"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 99
    .local v0, "TAG":Ljava/lang/String;
    if-eqz p1, :cond_34

    .line 100
    iget-object v4, p0, Lcom/buzzfeed/android/database/BFReactionsData;->dbHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 101
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v3, "buzzId = ? AND reactionId = ?"

    .line 102
    .local v3, "whereClause":Ljava/lang/String;
    const/4 v4, 0x2

    new-array v2, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p1, v2, v4

    const/4 v4, 0x1

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v4

    .line 103
    .local v2, "whereArgs":[Ljava/lang/String;
    const-string v4, "bfReactions"

    const-string v5, "buzzId = ? AND reactionId = ?"

    invoke-virtual {v1, v4, v5, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 108
    .end local v1    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v2    # "whereArgs":[Ljava/lang/String;
    .end local v3    # "whereClause":Ljava/lang/String;
    .end local p1    # "buzzId":Ljava/lang/String;
    .end local p2    # "reactionId":Ljava/lang/String;
    :goto_33
    return-void

    .line 105
    .restart local p1    # "buzzId":Ljava/lang/String;
    .restart local p2    # "reactionId":Ljava/lang/String;
    :cond_34
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid null parameter given: buzzId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-nez p1, :cond_43

    const-string p1, "null"

    .end local p1    # "buzzId":Ljava/lang/String;
    :cond_43
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", reactionId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-nez p2, :cond_51

    const-string p2, "null"

    .end local p2    # "reactionId":Ljava/lang/String;
    :cond_51
    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/buzzfeed/toolkit/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_33
.end method

.method public isBuzzLiked(Ljava/lang/String;)Ljava/lang/String;
    .registers 10
    .param p1, "buzzId"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 111
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/buzzfeed/android/database/BFReactionsData;->TAG:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".isBuzzLiked"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 112
    .local v0, "TAG":Ljava/lang/String;
    const/4 v3, 0x0

    .line 113
    .local v3, "likeId":Ljava/lang/String;
    if-eqz p1, :cond_74

    .line 114
    iget-object v5, p0, Lcom/buzzfeed/android/database/BFReactionsData;->dbHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 115
    .local v2, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v4, "SELECT reactionId FROM bfReactions WHERE buzzId = ? AND isFacebookLike != 0"

    .line 118
    .local v4, "query":Ljava/lang/String;
    const-string v5, "SELECT reactionId FROM bfReactions WHERE buzzId = ? AND isFacebookLike != 0"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    aput-object p1, v6, v7

    invoke-virtual {v2, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 120
    .local v1, "cursor":Landroid/database/Cursor;
    :try_start_2c
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_54

    .line 121
    const/4 v5, 0x0

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 122
    if-eqz v3, :cond_4f

    .line 123
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Buzz is liked: buzzId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/buzzfeed/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4f
    .catchall {:try_start_2c .. :try_end_4f} :catchall_6f

    .line 130
    :cond_4f
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .end local v1    # "cursor":Landroid/database/Cursor;
    .end local v2    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v4    # "query":Ljava/lang/String;
    .end local p1    # "buzzId":Ljava/lang/String;
    :goto_52
    move-object v5, v3

    .line 136
    :goto_53
    return-object v5

    .line 126
    .restart local v1    # "cursor":Landroid/database/Cursor;
    .restart local v2    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v4    # "query":Ljava/lang/String;
    .restart local p1    # "buzzId":Ljava/lang/String;
    :cond_54
    :try_start_54
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Buzz is not liked: buzzId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/buzzfeed/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6a
    .catchall {:try_start_54 .. :try_end_6a} :catchall_6f

    .line 127
    const/4 v5, 0x0

    .line 130
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_53

    :catchall_6f
    move-exception v5

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v5

    .line 133
    .end local v1    # "cursor":Landroid/database/Cursor;
    .end local v2    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v4    # "query":Ljava/lang/String;
    :cond_74
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid null parameter given: buzzId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-nez p1, :cond_83

    const-string p1, "null"

    .end local p1    # "buzzId":Ljava/lang/String;
    :cond_83
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/buzzfeed/toolkit/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_52
.end method

.method public isReactionSelected(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 12
    .param p1, "buzzId"    # Ljava/lang/String;
    .param p2, "reactionId"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 140
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lcom/buzzfeed/android/database/BFReactionsData;->TAG:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".isBuzzLoved"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 141
    .local v0, "TAG":Ljava/lang/String;
    const/4 v3, 0x0

    .line 142
    .local v3, "isReactionSelected":Z
    if-eqz p1, :cond_70

    .line 143
    iget-object v6, p0, Lcom/buzzfeed/android/database/BFReactionsData;->dbHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 144
    .local v2, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v4, "SELECT buzzId FROM bfReactions WHERE buzzId = ? AND reactionId = ?"

    .line 147
    .local v4, "query":Ljava/lang/String;
    const-string v6, "SELECT buzzId FROM bfReactions WHERE buzzId = ? AND reactionId = ?"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/String;

    aput-object p1, v7, v5

    const/4 v8, 0x1

    aput-object p2, v7, v8

    invoke-virtual {v2, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 149
    .local v1, "cursor":Landroid/database/Cursor;
    :try_start_2f
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6

    if-eqz v6, :cond_51

    .line 150
    const/4 v3, 0x1

    .line 151
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Reaction is selected: buzzId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/buzzfeed/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4c
    .catchall {:try_start_2f .. :try_end_4c} :catchall_6b

    .line 157
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .end local v1    # "cursor":Landroid/database/Cursor;
    .end local v2    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v4    # "query":Ljava/lang/String;
    .end local p1    # "buzzId":Ljava/lang/String;
    .end local p2    # "reactionId":Ljava/lang/String;
    :goto_4f
    move v5, v3

    .line 164
    :goto_50
    return v5

    .line 153
    .restart local v1    # "cursor":Landroid/database/Cursor;
    .restart local v2    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v4    # "query":Ljava/lang/String;
    .restart local p1    # "buzzId":Ljava/lang/String;
    .restart local p2    # "reactionId":Ljava/lang/String;
    :cond_51
    :try_start_51
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Reaction is not selected: buzzId="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Lcom/buzzfeed/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_67
    .catchall {:try_start_51 .. :try_end_67} :catchall_6b

    .line 157
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_50

    :catchall_6b
    move-exception v5

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v5

    .line 160
    .end local v1    # "cursor":Landroid/database/Cursor;
    .end local v2    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v4    # "query":Ljava/lang/String;
    :cond_70
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid null parameter given: buzzId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-nez p1, :cond_7f

    const-string p1, "null"

    .end local p1    # "buzzId":Ljava/lang/String;
    :cond_7f
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", reactionId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-nez p2, :cond_8d

    const-string p2, "null"

    .end local p2    # "reactionId":Ljava/lang/String;
    :cond_8d
    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/buzzfeed/toolkit/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4f
.end method

.method public putBuzzReaction(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 12
    .param p1, "buzzId"    # Ljava/lang/String;
    .param p2, "reactionId"    # Ljava/lang/String;
    .param p3, "isFacebookLike"    # I

    .prologue
    .line 76
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lcom/buzzfeed/android/database/BFReactionsData;->TAG:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".putBuzzReaction"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 77
    .local v0, "TAG":Ljava/lang/String;
    if-eqz p1, :cond_85

    .line 78
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 79
    .local v4, "timestamp":J
    iget-object v6, p0, Lcom/buzzfeed/android/database/BFReactionsData;->dbHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 80
    .local v2, "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 81
    .local v1, "cv":Landroid/content/ContentValues;
    const-string v6, "buzzId"

    invoke-virtual {v1, v6, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    const-string v6, "reactionId"

    invoke-virtual {v1, v6, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    const-string v6, "isFacebookLike"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 84
    const-string/jumbo v6, "timestamp"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 86
    :try_start_43
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Inserting BuzzReaction item: buzzId="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", reactionId="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", isFacebookLike="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", timestamp = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Lcom/buzzfeed/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    const-string v6, "bfReactions"

    const/4 v7, 0x0

    invoke-virtual {v2, v6, v7, v1}, Landroid/database/sqlite/SQLiteDatabase;->insertOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_7d
    .catch Landroid/database/SQLException; {:try_start_43 .. :try_end_7d} :catch_7e

    .line 95
    .end local v1    # "cv":Landroid/content/ContentValues;
    .end local v2    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v4    # "timestamp":J
    .end local p1    # "buzzId":Ljava/lang/String;
    .end local p2    # "reactionId":Ljava/lang/String;
    :goto_7d
    return-void

    .line 88
    .restart local v1    # "cv":Landroid/content/ContentValues;
    .restart local v2    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v4    # "timestamp":J
    .restart local p1    # "buzzId":Ljava/lang/String;
    .restart local p2    # "reactionId":Ljava/lang/String;
    :catch_7e
    move-exception v3

    .line 89
    .local v3, "e":Landroid/database/SQLException;
    const-string v6, "Error writing to database"

    invoke-static {v0, v6, v3}, Lcom/buzzfeed/toolkit/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_7d

    .line 92
    .end local v1    # "cv":Landroid/content/ContentValues;
    .end local v2    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v3    # "e":Landroid/database/SQLException;
    .end local v4    # "timestamp":J
    :cond_85
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invalid null parameter given: buzzId="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-nez p1, :cond_94

    const-string p1, "null"

    .end local p1    # "buzzId":Ljava/lang/String;
    :cond_94
    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", reactionId="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-nez p2, :cond_a2

    const-string p2, "null"

    .end local p2    # "reactionId":Ljava/lang/String;
    :cond_a2
    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Lcom/buzzfeed/toolkit/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7d
.end method
