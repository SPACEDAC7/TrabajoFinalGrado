.class public Lcom/buzzfeed/android/database/BFDatabaseManager;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "BFDatabaseManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/buzzfeed/android/database/BFDatabaseManager$BFBuzz;,
        Lcom/buzzfeed/android/database/BFDatabaseManager$BFItem;,
        Lcom/buzzfeed/android/database/BFDatabaseManager$BFFeedItem;,
        Lcom/buzzfeed/android/database/BFDatabaseManager$BFBadge;,
        Lcom/buzzfeed/android/database/BFDatabaseManager$BFImage;,
        Lcom/buzzfeed/android/database/BFDatabaseManager$BFPage;
    }
.end annotation


# static fields
.field private static final APP_DIR:Ljava/lang/String; = "/buzzfeed"

.field private static final CACHE_DIR:Ljava/lang/String; = "/buzzfeed/.files"

.field private static final DATABASE_SET_AUTO_VACUUM:Ljava/lang/String; = "PRAGMA auto_vacuum = 1"

.field private static final DEFAULT_DATABASE_NAME:Ljava/lang/String; = "buzzfeed.db"

.field private static final TABLE_DROP:Ljava/lang/String; = "DROP TABLE IF EXISTS "

.field private static final TAG:Ljava/lang/String;

.field private static dbmMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/buzzfeed/android/database/BFDatabaseManager;",
            ">;"
        }
    .end annotation
.end field

.field private static migrationBuzzList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/buzzfeed/android/data/Buzz;",
            ">;"
        }
    .end annotation
.end field

.field private static final syncObject:Ljava/lang/Object;


# instance fields
.field public bfCacheData:Lcom/buzzfeed/android/database/BFCacheData;

.field public bfReactionsData:Lcom/buzzfeed/android/database/BFReactionsData;

.field private databaseName:Ljava/lang/String;

.field private isOpen:Z

.field private mContext:Landroid/content/Context;

.field private wasAppUpgraded:Z

.field private wasUpgraded:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 31
    const-class v0, Lcom/buzzfeed/android/database/BFDatabaseManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/buzzfeed/android/database/BFDatabaseManager;->TAG:Ljava/lang/String;

    .line 32
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/buzzfeed/android/database/BFDatabaseManager;->syncObject:Ljava/lang/Object;

    .line 41
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/buzzfeed/android/database/BFDatabaseManager;->dbmMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 52
    const/4 v0, 0x0

    sput-object v0, Lcom/buzzfeed/android/database/BFDatabaseManager;->migrationBuzzList:Ljava/util/List;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 61
    const-string v0, "buzzfeed.db"

    invoke-direct {p0, p1, v0}, Lcom/buzzfeed/android/database/BFDatabaseManager;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 62
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "databaseName"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 55
    const v0, 0x7a8f2

    invoke-direct {p0, p1, p2, v2, v0}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 43
    iput-object v2, p0, Lcom/buzzfeed/android/database/BFDatabaseManager;->databaseName:Ljava/lang/String;

    .line 44
    iput-boolean v1, p0, Lcom/buzzfeed/android/database/BFDatabaseManager;->wasUpgraded:Z

    .line 45
    iput-boolean v1, p0, Lcom/buzzfeed/android/database/BFDatabaseManager;->wasAppUpgraded:Z

    .line 46
    iput-boolean v1, p0, Lcom/buzzfeed/android/database/BFDatabaseManager;->isOpen:Z

    .line 56
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/buzzfeed/android/database/BFDatabaseManager;->mContext:Landroid/content/Context;

    .line 57
    iput-object p2, p0, Lcom/buzzfeed/android/database/BFDatabaseManager;->databaseName:Ljava/lang/String;

    .line 58
    return-void
.end method

.method public static deleteFileFromMedia(Ljava/lang/String;)V
    .registers 8
    .param p0, "fileName"    # Ljava/lang/String;

    .prologue
    .line 511
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/buzzfeed/android/database/BFDatabaseManager;->TAG:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".deleteFileFromMedia"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 513
    .local v0, "TAG":Ljava/lang/String;
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v4

    .line 514
    .local v4, "state":Ljava/lang/String;
    const-string v5, "mounted"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_27

    .line 515
    const-string v5, "External storage is not mounted; cannot delete file"

    invoke-static {v0, v5}, Lcom/buzzfeed/toolkit/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 531
    :cond_26
    :goto_26
    return-void

    .line 519
    :cond_27
    invoke-static {p0}, Lcom/buzzfeed/android/database/BFDatabaseManager;->getCacheFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 521
    .local v2, "cacheFileName":Ljava/lang/String;
    if-eqz v2, :cond_26

    .line 523
    :try_start_2d
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 524
    .local v1, "cacheFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_26

    .line 525
    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_3b} :catch_3c

    goto :goto_26

    .line 527
    .end local v1    # "cacheFile":Ljava/io/File;
    :catch_3c
    move-exception v3

    .line 528
    .local v3, "e":Ljava/lang/Exception;
    const-string v5, "Error deleting file"

    invoke-static {v0, v5, v3}, Lcom/buzzfeed/toolkit/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_26
.end method

.method private getAllBookmarkedBuzzFromDatabase(Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/List;
    .registers 11
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/buzzfeed/android/data/Buzz;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 302
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/buzzfeed/android/database/BFDatabaseManager;->TAG:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".getAllBookmarkedBuzzFromDatabase"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 303
    .local v0, "TAG":Ljava/lang/String;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 304
    .local v2, "buzzList":Ljava/util/List;, "Ljava/util/List<Lcom/buzzfeed/android/data/Buzz;>;"
    const-string v4, "SELECT buzzId, name, blurb, thumbnail, uri, link, lastUpdated, json, bookmarked FROM bfBuzz WHERE bookmarked > ?"

    .line 309
    .local v4, "query":Ljava/lang/String;
    const-string v5, "Querying Buzz: SELECT buzzId, name, blurb, thumbnail, uri, link, lastUpdated, json, bookmarked FROM bfBuzz WHERE bookmarked > ?"

    invoke-static {v0, v5}, Lcom/buzzfeed/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    const-string v5, "SELECT buzzId, name, blurb, thumbnail, uri, link, lastUpdated, json, bookmarked FROM bfBuzz WHERE bookmarked > ?"

    new-array v6, v7, [Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-virtual {p1, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 311
    .local v3, "cursor":Landroid/database/Cursor;
    if-eqz v3, :cond_95

    .line 313
    :try_start_33
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_92

    .line 315
    :cond_39
    new-instance v1, Lcom/buzzfeed/android/data/Buzz;

    iget-object v5, p0, Lcom/buzzfeed/android/database/BFDatabaseManager;->mContext:Landroid/content/Context;

    invoke-direct {v1, v5}, Lcom/buzzfeed/android/data/Buzz;-><init>(Landroid/content/Context;)V

    .line 316
    .local v1, "buzz":Lcom/buzzfeed/android/data/Buzz;
    const/4 v5, 0x0

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/buzzfeed/android/data/Buzz;->setId(Ljava/lang/String;)Lcom/buzzfeed/android/data/Buzz;

    .line 317
    const/4 v5, 0x1

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/buzzfeed/android/data/Buzz;->setName(Ljava/lang/String;)Lcom/buzzfeed/android/data/Buzz;

    .line 318
    const/4 v5, 0x2

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/buzzfeed/android/data/Buzz;->setBlurb(Ljava/lang/String;)Lcom/buzzfeed/android/data/Buzz;

    .line 319
    const/4 v5, 0x3

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/buzzfeed/android/data/Buzz;->setThumbnail(Ljava/lang/String;)Lcom/buzzfeed/android/data/Buzz;

    .line 320
    const/4 v5, 0x4

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/buzzfeed/android/data/Buzz;->setUri(Ljava/lang/String;)Lcom/buzzfeed/android/data/Buzz;

    .line 321
    const/4 v5, 0x5

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/buzzfeed/android/data/Buzz;->setLink(Ljava/lang/String;)Lcom/buzzfeed/android/data/Buzz;

    .line 322
    const/4 v5, 0x6

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/buzzfeed/android/data/Buzz;->setLastUpdated(Ljava/lang/String;)Lcom/buzzfeed/android/data/Buzz;

    .line 323
    const/4 v5, 0x7

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/buzzfeed/android/data/Buzz;->setJson(Ljava/lang/String;)Lcom/buzzfeed/android/data/Buzz;

    .line 324
    const/16 v5, 0x8

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-virtual {v1, v6, v7}, Lcom/buzzfeed/android/data/Buzz;->setBookmarked(J)Lcom/buzzfeed/android/data/Buzz;

    .line 325
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 326
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_8f
    .catchall {:try_start_33 .. :try_end_8f} :catchall_96

    move-result v5

    if-nez v5, :cond_39

    .line 329
    .end local v1    # "buzz":Lcom/buzzfeed/android/data/Buzz;
    :cond_92
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 332
    :cond_95
    return-object v2

    .line 329
    :catchall_96
    move-exception v5

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    throw v5
.end method

.method private getAllBookmarkedBuzzFromDatabaseOldTable(Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/List;
    .registers 11
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/buzzfeed/android/data/Buzz;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 342
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/buzzfeed/android/database/BFDatabaseManager;->TAG:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".getAllBookmarkedBuzzFromDatabase"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 343
    .local v0, "TAG":Ljava/lang/String;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 344
    .local v2, "buzzList":Ljava/util/List;, "Ljava/util/List<Lcom/buzzfeed/android/data/Buzz;>;"
    const-string v4, "SELECT buzzId, name, blurb, thumbnail, uri, link, lastUpdated, category, color, position, subtitle, title, size, body, bookmarked FROM bfBuzz WHERE bookmarked > ?"

    .line 349
    .local v4, "query":Ljava/lang/String;
    const-string v5, "Querying Buzz: SELECT buzzId, name, blurb, thumbnail, uri, link, lastUpdated, category, color, position, subtitle, title, size, body, bookmarked FROM bfBuzz WHERE bookmarked > ?"

    invoke-static {v0, v5}, Lcom/buzzfeed/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 350
    const-string v5, "SELECT buzzId, name, blurb, thumbnail, uri, link, lastUpdated, category, color, position, subtitle, title, size, body, bookmarked FROM bfBuzz WHERE bookmarked > ?"

    new-array v6, v7, [Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-virtual {p1, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 351
    .local v3, "cursor":Landroid/database/Cursor;
    if-eqz v3, :cond_cb

    .line 353
    :try_start_33
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_c8

    .line 355
    :cond_39
    new-instance v1, Lcom/buzzfeed/android/data/Buzz;

    iget-object v5, p0, Lcom/buzzfeed/android/database/BFDatabaseManager;->mContext:Landroid/content/Context;

    invoke-direct {v1, v5}, Lcom/buzzfeed/android/data/Buzz;-><init>(Landroid/content/Context;)V

    .line 356
    .local v1, "buzz":Lcom/buzzfeed/android/data/Buzz;
    const/4 v5, 0x0

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/buzzfeed/android/data/Buzz;->setId(Ljava/lang/String;)Lcom/buzzfeed/android/data/Buzz;

    .line 357
    const/4 v5, 0x1

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/buzzfeed/android/data/Buzz;->setName(Ljava/lang/String;)Lcom/buzzfeed/android/data/Buzz;

    .line 358
    const/4 v5, 0x2

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/buzzfeed/android/data/Buzz;->setBlurb(Ljava/lang/String;)Lcom/buzzfeed/android/data/Buzz;

    .line 359
    const/4 v5, 0x3

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/buzzfeed/android/data/Buzz;->setThumbnail(Ljava/lang/String;)Lcom/buzzfeed/android/data/Buzz;

    .line 360
    const/4 v5, 0x4

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/buzzfeed/android/data/Buzz;->setUri(Ljava/lang/String;)Lcom/buzzfeed/android/data/Buzz;

    .line 361
    const/4 v5, 0x5

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/buzzfeed/android/data/Buzz;->setLink(Ljava/lang/String;)Lcom/buzzfeed/android/data/Buzz;

    .line 362
    const/4 v5, 0x6

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/buzzfeed/android/data/Buzz;->setLastUpdated(Ljava/lang/String;)Lcom/buzzfeed/android/data/Buzz;

    .line 363
    const/4 v5, 0x7

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/buzzfeed/android/data/Buzz;->setCategory(Ljava/lang/String;)Lcom/buzzfeed/android/data/Buzz;

    .line 364
    const/16 v5, 0x8

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/buzzfeed/android/data/Buzz;->setSplashColorScheme(Ljava/lang/String;)Lcom/buzzfeed/android/data/Buzz;

    .line 365
    const/16 v5, 0x9

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/buzzfeed/android/data/Buzz;->setSplashPosition(Ljava/lang/String;)Lcom/buzzfeed/android/data/Buzz;

    .line 366
    const/16 v5, 0xa

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/buzzfeed/android/data/Buzz;->setSubtitle(Ljava/lang/String;)Lcom/buzzfeed/android/data/Buzz;

    .line 367
    const/16 v5, 0xb

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/buzzfeed/android/data/Buzz;->setTitle(Ljava/lang/String;)Lcom/buzzfeed/android/data/Buzz;

    .line 368
    const/16 v5, 0xc

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/buzzfeed/android/data/Buzz;->setSplashTextSize(Ljava/lang/String;)Lcom/buzzfeed/android/data/Buzz;

    .line 369
    const/16 v5, 0xd

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/buzzfeed/android/data/Buzz;->setBody(Ljava/lang/String;)Lcom/buzzfeed/android/data/Buzz;

    .line 370
    const/16 v5, 0xe

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-virtual {v1, v6, v7}, Lcom/buzzfeed/android/data/Buzz;->setBookmarked(J)Lcom/buzzfeed/android/data/Buzz;

    .line 371
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 372
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_c5
    .catchall {:try_start_33 .. :try_end_c5} :catchall_cc

    move-result v5

    if-nez v5, :cond_39

    .line 375
    .end local v1    # "buzz":Lcom/buzzfeed/android/data/Buzz;
    :cond_c8
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 378
    :cond_cb
    return-object v2

    .line 375
    :catchall_cc
    move-exception v5

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    throw v5
.end method

.method private getAllBookmarkedBuzzFromDatabaseOldTable2(Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/List;
    .registers 11
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/buzzfeed/android/data/Buzz;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 388
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/buzzfeed/android/database/BFDatabaseManager;->TAG:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".getAllBookmarkedBuzzFromDatabase"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 389
    .local v0, "TAG":Ljava/lang/String;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 390
    .local v2, "buzzList":Ljava/util/List;, "Ljava/util/List<Lcom/buzzfeed/android/data/Buzz;>;"
    const-string v4, "SELECT itemId, name, blurb, thumbnail, uri, link, lastUpdated, category, \'\', \'\', \'\', \'\', \'28\', body, bookmarked FROM bfItem WHERE bookmarked > ?"

    .line 395
    .local v4, "query":Ljava/lang/String;
    const-string v5, "Querying Buzz: SELECT itemId, name, blurb, thumbnail, uri, link, lastUpdated, category, \'\', \'\', \'\', \'\', \'28\', body, bookmarked FROM bfItem WHERE bookmarked > ?"

    invoke-static {v0, v5}, Lcom/buzzfeed/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 396
    const-string v5, "SELECT itemId, name, blurb, thumbnail, uri, link, lastUpdated, category, \'\', \'\', \'\', \'\', \'28\', body, bookmarked FROM bfItem WHERE bookmarked > ?"

    new-array v6, v7, [Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-virtual {p1, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 397
    .local v3, "cursor":Landroid/database/Cursor;
    if-eqz v3, :cond_cb

    .line 399
    :try_start_33
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_c8

    .line 401
    :cond_39
    new-instance v1, Lcom/buzzfeed/android/data/Buzz;

    iget-object v5, p0, Lcom/buzzfeed/android/database/BFDatabaseManager;->mContext:Landroid/content/Context;

    invoke-direct {v1, v5}, Lcom/buzzfeed/android/data/Buzz;-><init>(Landroid/content/Context;)V

    .line 402
    .local v1, "buzz":Lcom/buzzfeed/android/data/Buzz;
    const/4 v5, 0x0

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/buzzfeed/android/data/Buzz;->setId(Ljava/lang/String;)Lcom/buzzfeed/android/data/Buzz;

    .line 403
    const/4 v5, 0x1

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/buzzfeed/android/data/Buzz;->setName(Ljava/lang/String;)Lcom/buzzfeed/android/data/Buzz;

    .line 404
    const/4 v5, 0x2

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/buzzfeed/android/data/Buzz;->setBlurb(Ljava/lang/String;)Lcom/buzzfeed/android/data/Buzz;

    .line 405
    const/4 v5, 0x3

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/buzzfeed/android/data/Buzz;->setThumbnail(Ljava/lang/String;)Lcom/buzzfeed/android/data/Buzz;

    .line 406
    const/4 v5, 0x4

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/buzzfeed/android/data/Buzz;->setUri(Ljava/lang/String;)Lcom/buzzfeed/android/data/Buzz;

    .line 407
    const/4 v5, 0x5

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/buzzfeed/android/data/Buzz;->setLink(Ljava/lang/String;)Lcom/buzzfeed/android/data/Buzz;

    .line 408
    const/4 v5, 0x6

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/buzzfeed/android/data/Buzz;->setLastUpdated(Ljava/lang/String;)Lcom/buzzfeed/android/data/Buzz;

    .line 409
    const/4 v5, 0x7

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/buzzfeed/android/data/Buzz;->setCategory(Ljava/lang/String;)Lcom/buzzfeed/android/data/Buzz;

    .line 410
    const/16 v5, 0x8

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/buzzfeed/android/data/Buzz;->setSplashColorScheme(Ljava/lang/String;)Lcom/buzzfeed/android/data/Buzz;

    .line 411
    const/16 v5, 0x9

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/buzzfeed/android/data/Buzz;->setSplashPosition(Ljava/lang/String;)Lcom/buzzfeed/android/data/Buzz;

    .line 412
    const/16 v5, 0xa

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/buzzfeed/android/data/Buzz;->setSubtitle(Ljava/lang/String;)Lcom/buzzfeed/android/data/Buzz;

    .line 413
    const/16 v5, 0xb

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/buzzfeed/android/data/Buzz;->setTitle(Ljava/lang/String;)Lcom/buzzfeed/android/data/Buzz;

    .line 414
    const/16 v5, 0xc

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/buzzfeed/android/data/Buzz;->setSplashTextSize(Ljava/lang/String;)Lcom/buzzfeed/android/data/Buzz;

    .line 415
    const/16 v5, 0xd

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/buzzfeed/android/data/Buzz;->setBody(Ljava/lang/String;)Lcom/buzzfeed/android/data/Buzz;

    .line 416
    const/16 v5, 0xe

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-virtual {v1, v6, v7}, Lcom/buzzfeed/android/data/Buzz;->setBookmarked(J)Lcom/buzzfeed/android/data/Buzz;

    .line 417
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 418
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_c5
    .catchall {:try_start_33 .. :try_end_c5} :catchall_cc

    move-result v5

    if-nez v5, :cond_39

    .line 421
    .end local v1    # "buzz":Lcom/buzzfeed/android/data/Buzz;
    :cond_c8
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 424
    :cond_cb
    return-object v2

    .line 421
    :catchall_cc
    move-exception v5

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    throw v5
.end method

.method public static getCacheFileName(Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .param p0, "fileName"    # Ljava/lang/String;

    .prologue
    .line 540
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    .line 541
    .local v3, "path":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/buzzfeed/.files"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 542
    .local v0, "cacheDir":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 544
    .local v1, "cacheFileName":Ljava/lang/String;
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_45

    .line 546
    :try_start_3d
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z
    :try_end_45
    .catch Ljava/lang/Exception; {:try_start_3d .. :try_end_45} :catch_46

    .line 553
    .end local v1    # "cacheFileName":Ljava/lang/String;
    :cond_45
    :goto_45
    return-object v1

    .line 547
    .restart local v1    # "cacheFileName":Ljava/lang/String;
    :catch_46
    move-exception v2

    .line 548
    .local v2, "e":Ljava/lang/Exception;
    sget-object v4, Lcom/buzzfeed/android/database/BFDatabaseManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error creating cache dir: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v2}, Lcom/buzzfeed/toolkit/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 549
    const/4 v1, 0x0

    goto :goto_45
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/buzzfeed/android/database/BFDatabaseManager;
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 80
    const-string v0, "buzzfeed.db"

    invoke-static {p0, v0}, Lcom/buzzfeed/android/database/BFDatabaseManager;->getInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/buzzfeed/android/database/BFDatabaseManager;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/buzzfeed/android/database/BFDatabaseManager;
    .registers 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "databaseName"    # Ljava/lang/String;

    .prologue
    .line 65
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 66
    sget-object v1, Lcom/buzzfeed/android/database/BFDatabaseManager;->dbmMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3a

    .line 67
    sget-object v2, Lcom/buzzfeed/android/database/BFDatabaseManager;->syncObject:Ljava/lang/Object;

    monitor-enter v2

    .line 68
    :try_start_f
    sget-object v1, Lcom/buzzfeed/android/database/BFDatabaseManager;->dbmMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_39

    .line 69
    sget-object v1, Lcom/buzzfeed/android/database/BFDatabaseManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Creating BFDatabaseManager instance for database: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/buzzfeed/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    sget-object v1, Lcom/buzzfeed/android/database/BFDatabaseManager;->dbmMap:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v3, Lcom/buzzfeed/android/database/BFDatabaseManager;

    invoke-direct {v3, p0, p1}, Lcom/buzzfeed/android/database/BFDatabaseManager;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v1, p1, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    :cond_39
    monitor-exit v2
    :try_end_3a
    .catchall {:try_start_f .. :try_end_3a} :catchall_46

    .line 74
    :cond_3a
    sget-object v1, Lcom/buzzfeed/android/database/BFDatabaseManager;->dbmMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/buzzfeed/android/database/BFDatabaseManager;

    .line 75
    .local v0, "dbm":Lcom/buzzfeed/android/database/BFDatabaseManager;
    invoke-virtual {v0}, Lcom/buzzfeed/android/database/BFDatabaseManager;->open()V

    .line 76
    return-object v0

    .line 72
    .end local v0    # "dbm":Lcom/buzzfeed/android/database/BFDatabaseManager;
    :catchall_46
    move-exception v1

    :try_start_47
    monitor-exit v2
    :try_end_48
    .catchall {:try_start_47 .. :try_end_48} :catchall_46

    throw v1
.end method

.method private importBFBuzz(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 6
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 141
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/buzzfeed/android/database/BFDatabaseManager;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".importBFBuzz "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 142
    .local v0, "TAG":Ljava/lang/String;
    sget-object v2, Lcom/buzzfeed/android/database/BFDatabaseManager;->syncObject:Ljava/lang/Object;

    monitor-enter v2

    .line 143
    :try_start_18
    sget-object v1, Lcom/buzzfeed/android/database/BFDatabaseManager;->migrationBuzzList:Ljava/util/List;

    if-nez v1, :cond_6f

    .line 145
    const-string v1, "Migration list is empty; attempting to load from media..."

    invoke-static {v0, v1}, Lcom/buzzfeed/toolkit/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    const-string v1, "bfBuzz"

    invoke-static {v1}, Lcom/buzzfeed/android/database/BFDatabaseManager;->loadObjectFromMedia(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    sput-object v1, Lcom/buzzfeed/android/database/BFDatabaseManager;->migrationBuzzList:Ljava/util/List;

    .line 147
    sget-object v1, Lcom/buzzfeed/android/database/BFDatabaseManager;->migrationBuzzList:Ljava/util/List;

    if-eqz v1, :cond_66

    .line 148
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Found "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v3, Lcom/buzzfeed/android/database/BFDatabaseManager;->migrationBuzzList:Ljava/util/List;

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

    .line 155
    :goto_51
    sget-object v1, Lcom/buzzfeed/android/database/BFDatabaseManager;->migrationBuzzList:Ljava/util/List;

    if-eqz v1, :cond_64

    .line 156
    sget-object v1, Lcom/buzzfeed/android/database/BFDatabaseManager;->migrationBuzzList:Ljava/util/List;

    const-string v3, "bookmark"

    invoke-direct {p0, p1, v1, v3}, Lcom/buzzfeed/android/database/BFDatabaseManager;->importBuzzListToBFCache(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/List;Ljava/lang/String;)V

    .line 157
    const/4 v1, 0x0

    sput-object v1, Lcom/buzzfeed/android/database/BFDatabaseManager;->migrationBuzzList:Ljava/util/List;

    .line 158
    const-string v1, "bfBuzz"

    invoke-static {v1}, Lcom/buzzfeed/android/database/BFDatabaseManager;->deleteFileFromMedia(Ljava/lang/String;)V

    .line 160
    :cond_64
    monitor-exit v2

    .line 161
    return-void

    .line 150
    :cond_66
    const-string v1, "No migration list found on media; nothing to restore"

    invoke-static {v0, v1}, Lcom/buzzfeed/toolkit/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_51

    .line 160
    :catchall_6c
    move-exception v1

    monitor-exit v2
    :try_end_6e
    .catchall {:try_start_18 .. :try_end_6e} :catchall_6c

    throw v1

    .line 153
    :cond_6f
    :try_start_6f
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Found "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v3, Lcom/buzzfeed/android/database/BFDatabaseManager;->migrationBuzzList:Ljava/util/List;

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
    :try_end_91
    .catchall {:try_start_6f .. :try_end_91} :catchall_6c

    goto :goto_51
.end method

.method private importBuzzListToBFCache(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/List;Ljava/lang/String;)V
    .registers 14
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p3, "bfCacheType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/util/List",
            "<",
            "Lcom/buzzfeed/android/data/Buzz;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 171
    .local p2, "buzzList":Ljava/util/List;, "Ljava/util/List<Lcom/buzzfeed/android/data/Buzz;>;"
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/buzzfeed/android/database/BFDatabaseManager;->TAG:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".importBuzzListToBFCache"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 172
    .local v0, "TAG":Ljava/lang/String;
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 173
    .local v3, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/buzzfeed/android/data/FlowItem;>;"
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Importing "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " buzzes into BFCache"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/buzzfeed/toolkit/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_3e
    :goto_3e
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_a1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/buzzfeed/android/data/Buzz;

    .line 177
    .local v2, "legacyBuzz":Lcom/buzzfeed/android/data/Buzz;
    :try_start_4a
    invoke-virtual {v2}, Lcom/buzzfeed/android/data/Buzz;->getJson()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_8b

    .line 178
    invoke-virtual {v2}, Lcom/buzzfeed/android/data/Buzz;->getJson()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/buzzfeed/android/data/Buzz;->parse(Ljava/lang/String;)V
    :try_end_57
    .catch Ljava/lang/Exception; {:try_start_4a .. :try_end_57} :catch_93

    .line 185
    :goto_57
    invoke-virtual {v2}, Lcom/buzzfeed/android/data/Buzz;->getJson()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3e

    .line 187
    :try_start_61
    invoke-virtual {v2}, Lcom/buzzfeed/android/data/Buzz;->isAd()Z

    move-result v6

    if-eqz v6, :cond_9a

    sget-object v6, Lcom/buzzfeed/toolkit/content/BuffetType;->EDITORIAL_AD:Lcom/buzzfeed/toolkit/content/BuffetType;

    invoke-virtual {v6}, Lcom/buzzfeed/toolkit/content/BuffetType;->name()Ljava/lang/String;

    move-result-object v4

    .line 188
    .local v4, "type":Ljava/lang/String;
    :goto_6d
    invoke-virtual {v2}, Lcom/buzzfeed/android/data/Buzz;->getId()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/buzzfeed/android/database/BFDatabaseManager;->mContext:Landroid/content/Context;

    new-instance v8, Lorg/json/JSONObject;

    invoke-virtual {v2}, Lcom/buzzfeed/android/data/Buzz;->getJson()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v7, v8, v4}, Lcom/buzzfeed/android/data/FlowItem;->parse(Landroid/content/Context;Lorg/json/JSONObject;Ljava/lang/String;)Lcom/buzzfeed/android/data/FlowItem;

    move-result-object v7

    invoke-interface {v3, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_83
    .catch Ljava/lang/Exception; {:try_start_61 .. :try_end_83} :catch_84

    goto :goto_3e

    .line 189
    .end local v4    # "type":Ljava/lang/String;
    :catch_84
    move-exception v1

    .line 190
    .local v1, "e":Ljava/lang/Exception;
    const-string v6, "Error in Buzz JSON when trying to parse it into Buzz object"

    invoke-static {v0, v6, v1}, Lcom/buzzfeed/toolkit/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3e

    .line 180
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_8b
    :try_start_8b
    invoke-virtual {v2}, Lcom/buzzfeed/android/data/Buzz;->generateJson()Lorg/json/JSONObject;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/buzzfeed/android/data/Buzz;->parse(Lorg/json/JSONObject;)V
    :try_end_92
    .catch Ljava/lang/Exception; {:try_start_8b .. :try_end_92} :catch_93

    goto :goto_57

    .line 182
    :catch_93
    move-exception v1

    .line 183
    .restart local v1    # "e":Ljava/lang/Exception;
    const-string v6, "Error in Buzz JSON when trying to parse it into Buzz object"

    invoke-static {v0, v6, v1}, Lcom/buzzfeed/toolkit/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_57

    .line 187
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_9a
    :try_start_9a
    sget-object v6, Lcom/buzzfeed/toolkit/content/BuffetType;->POST:Lcom/buzzfeed/toolkit/content/BuffetType;

    invoke-virtual {v6}, Lcom/buzzfeed/toolkit/content/BuffetType;->name()Ljava/lang/String;
    :try_end_9f
    .catch Ljava/lang/Exception; {:try_start_9a .. :try_end_9f} :catch_84

    move-result-object v4

    goto :goto_6d

    .line 194
    .end local v2    # "legacyBuzz":Lcom/buzzfeed/android/data/Buzz;
    :cond_a1
    invoke-static {p1, p3, v3}, Lcom/buzzfeed/android/database/BFCacheData;->importSynchronousMap(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/util/Map;)V

    .line 195
    return-void
.end method

.method private importDeprecated(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 2
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 132
    invoke-direct {p0, p1}, Lcom/buzzfeed/android/database/BFDatabaseManager;->importBFBuzz(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 133
    return-void
.end method

.method public static loadObjectFromMedia(Ljava/lang/String;)Ljava/lang/Object;
    .registers 12
    .param p0, "fileName"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    .line 434
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v10, Lcom/buzzfeed/android/database/BFDatabaseManager;->TAG:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ".loadObjectFromMedia"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 436
    .local v0, "TAG":Ljava/lang/String;
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v7

    .line 437
    .local v7, "state":Ljava/lang/String;
    const-string v9, "mounted"

    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_29

    .line 438
    const-string v9, "External storage is not mounted; cannot load bookmarks"

    invoke-static {v0, v9}, Lcom/buzzfeed/toolkit/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v5, v8

    .line 459
    :goto_28
    return-object v5

    .line 442
    :cond_29
    invoke-static {p0}, Lcom/buzzfeed/android/database/BFDatabaseManager;->getCacheFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 443
    .local v2, "cacheFileName":Ljava/lang/String;
    if-eqz v2, :cond_52

    .line 445
    :try_start_2f
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 446
    .local v1, "cacheFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_52

    .line 447
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v2}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 448
    .local v4, "fileOutputStream":Ljava/io/FileInputStream;
    new-instance v6, Ljava/io/ObjectInputStream;

    invoke-direct {v6, v4}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    .line 450
    .local v6, "objectInputStream":Ljava/io/ObjectInputStream;
    invoke-virtual {v6}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v5

    .line 451
    .local v5, "object":Ljava/lang/Object;
    invoke-virtual {v6}, Ljava/io/ObjectInputStream;->close()V
    :try_end_4b
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_4b} :catch_4c

    goto :goto_28

    .line 454
    .end local v1    # "cacheFile":Ljava/io/File;
    .end local v4    # "fileOutputStream":Ljava/io/FileInputStream;
    .end local v5    # "object":Ljava/lang/Object;
    .end local v6    # "objectInputStream":Ljava/io/ObjectInputStream;
    :catch_4c
    move-exception v3

    .line 455
    .local v3, "e":Ljava/lang/Exception;
    const-string v9, "Error loading cache file"

    invoke-static {v0, v9, v3}, Lcom/buzzfeed/toolkit/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v3    # "e":Ljava/lang/Exception;
    :cond_52
    move-object v5, v8

    .line 459
    goto :goto_28
.end method

.method private migrateBFBadge(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 3
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 235
    const-string v0, "DROP TABLE IF EXISTS bfBadge"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 236
    return-void
.end method

.method private migrateBFBuzz(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 11
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 262
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/buzzfeed/android/database/BFDatabaseManager;->TAG:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".migrateBFBuzz"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 264
    .local v0, "TAG":Ljava/lang/String;
    sget-object v6, Lcom/buzzfeed/android/database/BFDatabaseManager;->syncObject:Ljava/lang/Object;

    monitor-enter v6

    .line 266
    :try_start_18
    invoke-direct {p0, p1}, Lcom/buzzfeed/android/database/BFDatabaseManager;->getAllBookmarkedBuzzFromDatabase(Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/List;

    move-result-object v5

    sput-object v5, Lcom/buzzfeed/android/database/BFDatabaseManager;->migrationBuzzList:Ljava/util/List;
    :try_end_1e
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_18 .. :try_end_1e} :catch_74
    .catchall {:try_start_18 .. :try_end_1e} :catchall_71

    .line 282
    :goto_1e
    :try_start_1e
    sget-object v5, Lcom/buzzfeed/android/database/BFDatabaseManager;->migrationBuzzList:Ljava/util/List;

    if-eqz v5, :cond_ee

    .line 283
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Migrating "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v7, Lcom/buzzfeed/android/database/BFDatabaseManager;->migrationBuzzList:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " bookmarks..."

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/buzzfeed/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    sget-object v5, Lcom/buzzfeed/android/database/BFDatabaseManager;->migrationBuzzList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_4a
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_e0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/buzzfeed/android/data/Buzz;

    .line 285
    .local v1, "buzz":Lcom/buzzfeed/android/data/Buzz;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "  "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Lcom/buzzfeed/android/data/Buzz;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Lcom/buzzfeed/toolkit/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4a

    .line 291
    .end local v1    # "buzz":Lcom/buzzfeed/android/data/Buzz;
    :catchall_71
    move-exception v5

    monitor-exit v6
    :try_end_73
    .catchall {:try_start_1e .. :try_end_73} :catchall_71

    throw v5

    .line 267
    :catch_74
    move-exception v2

    .line 268
    .local v2, "e":Landroid/database/sqlite/SQLiteException;
    :try_start_75
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Could not read from the database: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/buzzfeed/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    const-string v5, "Trying old table schema..."

    invoke-static {v0, v5}, Lcom/buzzfeed/toolkit/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_94
    .catchall {:try_start_75 .. :try_end_94} :catchall_71

    .line 271
    :try_start_94
    invoke-direct {p0, p1}, Lcom/buzzfeed/android/database/BFDatabaseManager;->getAllBookmarkedBuzzFromDatabaseOldTable(Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/List;

    move-result-object v5

    sput-object v5, Lcom/buzzfeed/android/database/BFDatabaseManager;->migrationBuzzList:Ljava/util/List;
    :try_end_9a
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_94 .. :try_end_9a} :catch_9b
    .catchall {:try_start_94 .. :try_end_9a} :catchall_71

    goto :goto_1e

    .line 272
    :catch_9b
    move-exception v3

    .line 273
    .local v3, "e2":Landroid/database/sqlite/SQLiteException;
    :try_start_9c
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Could not read from the database: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/buzzfeed/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    const-string v5, "Trying older table schema..."

    invoke-static {v0, v5}, Lcom/buzzfeed/toolkit/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_bb
    .catchall {:try_start_9c .. :try_end_bb} :catchall_71

    .line 276
    :try_start_bb
    invoke-direct {p0, p1}, Lcom/buzzfeed/android/database/BFDatabaseManager;->getAllBookmarkedBuzzFromDatabaseOldTable2(Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/List;

    move-result-object v5

    sput-object v5, Lcom/buzzfeed/android/database/BFDatabaseManager;->migrationBuzzList:Ljava/util/List;
    :try_end_c1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_bb .. :try_end_c1} :catch_c3
    .catchall {:try_start_bb .. :try_end_c1} :catchall_71

    goto/16 :goto_1e

    .line 277
    :catch_c3
    move-exception v4

    .line 278
    .local v4, "e3":Landroid/database/sqlite/SQLiteException;
    :try_start_c4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Could not read from the database: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/buzzfeed/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1e

    .line 287
    .end local v2    # "e":Landroid/database/sqlite/SQLiteException;
    .end local v3    # "e2":Landroid/database/sqlite/SQLiteException;
    .end local v4    # "e3":Landroid/database/sqlite/SQLiteException;
    :cond_e0
    sget-object v5, Lcom/buzzfeed/android/database/BFDatabaseManager;->migrationBuzzList:Ljava/util/List;

    const-string v7, "bfBuzz"

    invoke-static {v5, v7}, Lcom/buzzfeed/android/database/BFDatabaseManager;->saveObjectToMedia(Ljava/lang/Object;Ljava/lang/String;)V

    .line 291
    :goto_e7
    monitor-exit v6
    :try_end_e8
    .catchall {:try_start_c4 .. :try_end_e8} :catchall_71

    .line 292
    const-string v5, "DROP TABLE IF EXISTS bfBuzz"

    invoke-virtual {p1, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 293
    return-void

    .line 289
    :cond_ee
    :try_start_ee
    const-string v5, "No bookmarks found to migrate"

    invoke-static {v0, v5}, Lcom/buzzfeed/toolkit/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_f3
    .catchall {:try_start_ee .. :try_end_f3} :catchall_71

    goto :goto_e7
.end method

.method private migrateBFFeedItem(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 3
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 226
    const-string v0, "DROP TABLE IF EXISTS bfFeedItem"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 227
    return-void
.end method

.method private migrateBFImage(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 3
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 244
    const-string v0, "DROP TABLE IF EXISTS bfImage"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 245
    return-void
.end method

.method private migrateBFItem(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 3
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 217
    const-string v0, "DROP TABLE IF EXISTS bfItem"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 218
    return-void
.end method

.method private migrateBFPage(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 3
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 253
    const-string v0, "DROP TABLE IF EXISTS bfPage"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 254
    return-void
.end method

.method private migrateDeprecated(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 2
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 203
    invoke-direct {p0, p1}, Lcom/buzzfeed/android/database/BFDatabaseManager;->migrateBFItem(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 204
    invoke-direct {p0, p1}, Lcom/buzzfeed/android/database/BFDatabaseManager;->migrateBFFeedItem(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 205
    invoke-direct {p0, p1}, Lcom/buzzfeed/android/database/BFDatabaseManager;->migrateBFBadge(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 206
    invoke-direct {p0, p1}, Lcom/buzzfeed/android/database/BFDatabaseManager;->migrateBFBuzz(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 207
    invoke-direct {p0, p1}, Lcom/buzzfeed/android/database/BFDatabaseManager;->migrateBFPage(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 208
    invoke-direct {p0, p1}, Lcom/buzzfeed/android/database/BFDatabaseManager;->migrateBFImage(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 209
    return-void
.end method

.method public static saveObjectToMedia(Ljava/lang/Object;Ljava/lang/String;)V
    .registers 20
    .param p0, "object"    # Ljava/lang/Object;
    .param p1, "fileName"    # Ljava/lang/String;

    .prologue
    .line 469
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v12, Lcom/buzzfeed/android/database/BFDatabaseManager;->TAG:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ".saveObjectToMedia"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 471
    .local v2, "TAG":Ljava/lang/String;
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v10

    .line 472
    .local v10, "state":Ljava/lang/String;
    const-string v11, "mounted"

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_27

    .line 473
    const-string v11, "External storage is not mounted; cannot save bookmarks"

    invoke-static {v2, v11}, Lcom/buzzfeed/toolkit/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 503
    :cond_26
    :goto_26
    return-void

    .line 477
    :cond_27
    invoke-static/range {p1 .. p1}, Lcom/buzzfeed/android/database/BFDatabaseManager;->getCacheFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 479
    .local v4, "cacheFileName":Ljava/lang/String;
    if-eqz v4, :cond_26

    .line 480
    sget-object v12, Lcom/buzzfeed/android/database/BFDatabaseManager;->syncObject:Ljava/lang/Object;

    monitor-enter v12

    .line 481
    :try_start_30
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v13, ".tmp"

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 482
    .local v6, "cacheTempFileName":Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 483
    .local v3, "cacheFile":Ljava/io/File;
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_4d
    .catchall {:try_start_30 .. :try_end_4d} :catchall_6e

    .line 485
    .local v5, "cacheTempFile":Ljava/io/File;
    :try_start_4d
    new-instance v8, Ljava/io/FileOutputStream;

    invoke-direct {v8, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 486
    .local v8, "fileOutputStream":Ljava/io/FileOutputStream;
    new-instance v9, Ljava/io/ObjectOutputStream;

    invoke-direct {v9, v8}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 487
    .local v9, "objectOutputStream":Ljava/io/ObjectOutputStream;
    move-object/from16 v0, p0

    invoke-virtual {v9, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 488
    invoke-virtual {v9}, Ljava/io/ObjectOutputStream;->close()V

    .line 490
    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v14

    const-wide/16 v16, 0x0

    cmp-long v11, v14, v16

    if-lez v11, :cond_71

    .line 491
    invoke-virtual {v5, v3}, Ljava/io/File;->renameTo(Ljava/io/File;)Z
    :try_end_6c
    .catch Ljava/io/FileNotFoundException; {:try_start_4d .. :try_end_6c} :catch_76
    .catch Ljava/lang/Exception; {:try_start_4d .. :try_end_6c} :catch_7d
    .catchall {:try_start_4d .. :try_end_6c} :catchall_6e

    .line 492
    :try_start_6c
    monitor-exit v12

    goto :goto_26

    .line 501
    .end local v3    # "cacheFile":Ljava/io/File;
    .end local v5    # "cacheTempFile":Ljava/io/File;
    .end local v6    # "cacheTempFileName":Ljava/lang/String;
    .end local v8    # "fileOutputStream":Ljava/io/FileOutputStream;
    .end local v9    # "objectOutputStream":Ljava/io/ObjectOutputStream;
    :catchall_6e
    move-exception v11

    monitor-exit v12
    :try_end_70
    .catchall {:try_start_6c .. :try_end_70} :catchall_6e

    throw v11

    .line 494
    .restart local v3    # "cacheFile":Ljava/io/File;
    .restart local v5    # "cacheTempFile":Ljava/io/File;
    .restart local v6    # "cacheTempFileName":Ljava/lang/String;
    .restart local v8    # "fileOutputStream":Ljava/io/FileOutputStream;
    .restart local v9    # "objectOutputStream":Ljava/io/ObjectOutputStream;
    :cond_71
    :try_start_71
    invoke-virtual {v5}, Ljava/io/File;->delete()Z
    :try_end_74
    .catch Ljava/io/FileNotFoundException; {:try_start_71 .. :try_end_74} :catch_76
    .catch Ljava/lang/Exception; {:try_start_71 .. :try_end_74} :catch_7d
    .catchall {:try_start_71 .. :try_end_74} :catchall_6e

    .line 501
    .end local v8    # "fileOutputStream":Ljava/io/FileOutputStream;
    .end local v9    # "objectOutputStream":Ljava/io/ObjectOutputStream;
    :goto_74
    :try_start_74
    monitor-exit v12

    goto :goto_26

    .line 496
    :catch_76
    move-exception v7

    .line 497
    .local v7, "e":Ljava/io/FileNotFoundException;
    const-string v11, "FileNotFoundException while saving list to media"

    invoke-static {v2, v11, v7}, Lcom/buzzfeed/toolkit/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_74

    .line 498
    .end local v7    # "e":Ljava/io/FileNotFoundException;
    :catch_7d
    move-exception v7

    .line 499
    .local v7, "e":Ljava/lang/Exception;
    const-string v11, "Error saving list to media"

    invoke-static {v2, v11, v7}, Lcom/buzzfeed/toolkit/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_83
    .catchall {:try_start_74 .. :try_end_83} :catchall_6e

    goto :goto_74
.end method


# virtual methods
.method public close()V
    .registers 1

    .prologue
    .line 122
    return-void
.end method

.method public isClosed()Z
    .registers 2

    .prologue
    .line 561
    invoke-virtual {p0}, Lcom/buzzfeed/android/database/BFDatabaseManager;->isOpen()Z

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
    .line 557
    iget-boolean v0, p0, Lcom/buzzfeed/android/database/BFDatabaseManager;->isOpen:Z

    return v0
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 5
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 85
    sget-object v0, Lcom/buzzfeed/android/database/BFDatabaseManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Creating database: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/buzzfeed/toolkit/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/buzzfeed/android/database/BFDatabaseManager;->wasUpgraded:Z

    .line 87
    const-string v0, "PRAGMA auto_vacuum = 1"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 88
    invoke-static {p1}, Lcom/buzzfeed/android/database/BFReactionsData;->tableCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 89
    invoke-static {p1}, Lcom/buzzfeed/android/database/BFCacheData;->tableCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 90
    invoke-direct {p0, p1}, Lcom/buzzfeed/android/database/BFDatabaseManager;->importDeprecated(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 91
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .registers 7
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .prologue
    .line 95
    sget-object v0, Lcom/buzzfeed/android/database/BFDatabaseManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Upgrading database: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/buzzfeed/toolkit/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/buzzfeed/android/database/BFDatabaseManager;->wasAppUpgraded:Z

    .line 97
    invoke-static {p1}, Lcom/buzzfeed/android/database/BFReactionsData;->tableDrop(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 98
    invoke-static {p1}, Lcom/buzzfeed/android/database/BFCacheData;->tableDrop(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 99
    invoke-direct {p0, p1}, Lcom/buzzfeed/android/database/BFDatabaseManager;->migrateDeprecated(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 100
    invoke-virtual {p0, p1}, Lcom/buzzfeed/android/database/BFDatabaseManager;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 101
    return-void
.end method

.method public open()V
    .registers 5

    .prologue
    .line 104
    iget-boolean v0, p0, Lcom/buzzfeed/android/database/BFDatabaseManager;->isOpen:Z

    if-nez v0, :cond_46

    .line 105
    sget-object v1, Lcom/buzzfeed/android/database/BFDatabaseManager;->syncObject:Ljava/lang/Object;

    monitor-enter v1

    .line 106
    :try_start_7
    iget-boolean v0, p0, Lcom/buzzfeed/android/database/BFDatabaseManager;->isOpen:Z

    if-nez v0, :cond_45

    .line 107
    sget-object v0, Lcom/buzzfeed/android/database/BFDatabaseManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Opening database: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/buzzfeed/android/database/BFDatabaseManager;->databaseName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/buzzfeed/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    iget-object v0, p0, Lcom/buzzfeed/android/database/BFDatabaseManager;->bfReactionsData:Lcom/buzzfeed/android/database/BFReactionsData;

    if-nez v0, :cond_32

    .line 110
    iget-object v0, p0, Lcom/buzzfeed/android/database/BFDatabaseManager;->databaseName:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-static {v0, p0, v2}, Lcom/buzzfeed/android/database/BFReactionsData;->getInstance(Ljava/lang/String;Landroid/database/sqlite/SQLiteOpenHelper;Z)Lcom/buzzfeed/android/database/BFReactionsData;

    move-result-object v0

    iput-object v0, p0, Lcom/buzzfeed/android/database/BFDatabaseManager;->bfReactionsData:Lcom/buzzfeed/android/database/BFReactionsData;

    .line 111
    :cond_32
    iget-object v0, p0, Lcom/buzzfeed/android/database/BFDatabaseManager;->bfCacheData:Lcom/buzzfeed/android/database/BFCacheData;

    if-nez v0, :cond_3f

    .line 112
    iget-object v0, p0, Lcom/buzzfeed/android/database/BFDatabaseManager;->databaseName:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-static {v0, p0, v2}, Lcom/buzzfeed/android/database/BFCacheData;->getInstance(Ljava/lang/String;Landroid/database/sqlite/SQLiteOpenHelper;Z)Lcom/buzzfeed/android/database/BFCacheData;

    move-result-object v0

    iput-object v0, p0, Lcom/buzzfeed/android/database/BFDatabaseManager;->bfCacheData:Lcom/buzzfeed/android/database/BFCacheData;

    .line 113
    :cond_3f
    invoke-virtual {p0}, Lcom/buzzfeed/android/database/BFDatabaseManager;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 114
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/buzzfeed/android/database/BFDatabaseManager;->isOpen:Z

    .line 116
    :cond_45
    monitor-exit v1

    .line 118
    :cond_46
    return-void

    .line 116
    :catchall_47
    move-exception v0

    monitor-exit v1
    :try_end_49
    .catchall {:try_start_7 .. :try_end_49} :catchall_47

    throw v0
.end method

.method public wasAppUpgraded()Z
    .registers 2

    .prologue
    .line 569
    iget-boolean v0, p0, Lcom/buzzfeed/android/database/BFDatabaseManager;->wasAppUpgraded:Z

    return v0
.end method

.method public wasUpgraded()Z
    .registers 2

    .prologue
    .line 565
    iget-boolean v0, p0, Lcom/buzzfeed/android/database/BFDatabaseManager;->wasUpgraded:Z

    return v0
.end method
