.class public Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager;
.super Ljava/lang/Object;
.source "BFBookmarkManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager$BookmarkChangeListener;,
        Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager$ToggleBookmarkInterface;,
        Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager$SyncCompleteListener;,
        Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager$CompletionListener;
    }
.end annotation


# static fields
.field private static final SETTINGS_KEY_SYNCED_ON_UPGRADE:Ljava/lang/String; = "bookmarksSyncedOnUpgrade"

.field private static final TAG:Ljava/lang/String;

.field private static bookmarkManager:Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager;

.field public static hasPromptedToSignInBookmarkFeed:Z

.field public static hasPromptedToSignInHomeFeed:Z

.field private static mCurrentAlertDialog:Landroid/support/v7/app/AlertDialog;


# instance fields
.field private bookmarkList:Lcom/buzzfeed/android/data/bookmark/BookmarkFlowList;

.field private bookmarkSyncMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/buzzfeed/toolkit/content/FlowItem;",
            ">;"
        }
    .end annotation
.end field

.field private buzzesToAdd:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/buzzfeed/toolkit/content/Buzz;",
            ">;"
        }
    .end annotation
.end field

.field private buzzesToDelete:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/buzzfeed/toolkit/content/Buzz;",
            ">;"
        }
    .end annotation
.end field

.field private context:Landroid/content/Context;

.field private databaseManager:Lcom/buzzfeed/android/database/BFDatabaseManager;

.field private hasSyncedOnUpgrade:Z

.field private isSynced:Z

.field private isSyncing:Z

.field private listener:Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager$CompletionListener;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 62
    const-class v0, Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/buzzfeed/android/database/BFDatabaseManager;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "databaseManager"    # Lcom/buzzfeed/android/database/BFDatabaseManager;

    .prologue
    const/4 v1, 0x0

    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager;->bookmarkSyncMap:Ljava/util/HashMap;

    .line 82
    new-instance v0, Lcom/buzzfeed/android/data/bookmark/BookmarkFlowList;

    invoke-direct {v0}, Lcom/buzzfeed/android/data/bookmark/BookmarkFlowList;-><init>()V

    iput-object v0, p0, Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager;->bookmarkList:Lcom/buzzfeed/android/data/bookmark/BookmarkFlowList;

    .line 92
    iput-boolean v1, p0, Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager;->hasSyncedOnUpgrade:Z

    .line 97
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager;->buzzesToAdd:Ljava/util/ArrayList;

    .line 98
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager;->buzzesToDelete:Ljava/util/ArrayList;

    .line 122
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager;->context:Landroid/content/Context;

    .line 123
    iput-object p2, p0, Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager;->databaseManager:Lcom/buzzfeed/android/database/BFDatabaseManager;

    .line 124
    iput-boolean v1, p0, Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager;->isSyncing:Z

    .line 125
    return-void
.end method

.method static synthetic access$000(Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager;ZLjava/lang/Throwable;)V
    .registers 3
    .param p0, "x0"    # Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Ljava/lang/Throwable;

    .prologue
    .line 60
    invoke-direct {p0, p1, p2}, Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager;->onBookmarkSyncCompleted(ZLjava/lang/Throwable;)V

    return-void
.end method

.method static synthetic access$100(Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager;Ljava/lang/String;)Lcom/buzzfeed/android/util/BuzzFeedJsonReader;
    .registers 3
    .param p0, "x0"    # Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager;->getBuzzFeedJsonReaderFromResponseString(Ljava/lang/String;)Lcom/buzzfeed/android/util/BuzzFeedJsonReader;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1000()Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager;
    .registers 1

    .prologue
    .line 60
    sget-object v0, Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager;->bookmarkManager:Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager;Lcom/buzzfeed/android/util/BuzzFeedJsonReader;)Lcom/buzzfeed/toolkit/content/FlowList;
    .registers 3
    .param p0, "x0"    # Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager;
    .param p1, "x1"    # Lcom/buzzfeed/android/util/BuzzFeedJsonReader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager;->getBookmarkListAndSetSyncId(Lcom/buzzfeed/android/util/BuzzFeedJsonReader;)Lcom/buzzfeed/toolkit/content/FlowList;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager;Lcom/buzzfeed/toolkit/content/FlowList;)V
    .registers 2
    .param p0, "x0"    # Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager;
    .param p1, "x1"    # Lcom/buzzfeed/toolkit/content/FlowList;

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager;->syncBookmarksWithJson(Lcom/buzzfeed/toolkit/content/FlowList;)V

    return-void
.end method

.method static synthetic access$400(Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager;Ljava/lang/String;Lcom/buzzfeed/android/data/BuzzUser;)V
    .registers 3
    .param p0, "x0"    # Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Lcom/buzzfeed/android/data/BuzzUser;

    .prologue
    .line 60
    invoke-direct {p0, p1, p2}, Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager;->handleAddBookmarksResponse(Ljava/lang/String;Lcom/buzzfeed/android/data/BuzzUser;)V

    return-void
.end method

.method static synthetic access$500(Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager;Z)V
    .registers 2
    .param p0, "x0"    # Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager;
    .param p1, "x1"    # Z

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager;->onUploadBookmarksCompleted(Z)V

    return-void
.end method

.method static synthetic access$600(Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager;Lcom/buzzfeed/toolkit/content/Buzz;Ljava/lang/String;Lcom/buzzfeed/android/data/BuzzUser;)V
    .registers 4
    .param p0, "x0"    # Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager;
    .param p1, "x1"    # Lcom/buzzfeed/toolkit/content/Buzz;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Lcom/buzzfeed/android/data/BuzzUser;

    .prologue
    .line 60
    invoke-direct {p0, p1, p2, p3}, Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager;->handleDeleteBookmarkResponse(Lcom/buzzfeed/toolkit/content/Buzz;Ljava/lang/String;Lcom/buzzfeed/android/data/BuzzUser;)V

    return-void
.end method

.method static synthetic access$700(Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager;Lcom/buzzfeed/toolkit/content/FlowItem;)Z
    .registers 3
    .param p0, "x0"    # Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager;
    .param p1, "x1"    # Lcom/buzzfeed/toolkit/content/FlowItem;

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager;->isTypeBuzz(Lcom/buzzfeed/toolkit/content/FlowItem;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$800()Landroid/support/v7/app/AlertDialog;
    .registers 1

    .prologue
    .line 60
    sget-object v0, Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager;->mCurrentAlertDialog:Landroid/support/v7/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$900(Landroid/app/Activity;Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager$BookmarkChangeListener;)V
    .registers 2
    .param p0, "x0"    # Landroid/app/Activity;
    .param p1, "x1"    # Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager$BookmarkChangeListener;

    .prologue
    .line 60
    invoke-static {p0, p1}, Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager;->showSecondWarningBookmarkDialog(Landroid/app/Activity;Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager$BookmarkChangeListener;)V

    return-void
.end method

.method private declared-synchronized addLocalBookmarksToServer(Lcom/buzzfeed/android/data/BuzzUser;)V
    .registers 7
    .param p1, "user"    # Lcom/buzzfeed/android/data/BuzzUser;

    .prologue
    .line 620
    monitor-enter p0

    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager;->TAG:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".addLocalBookmarksToServer"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 621
    .local v0, "TAG":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/buzzfeed/android/data/BuzzUser;->getSessionKey()Ljava/lang/String;

    move-result-object v1

    .line 622
    .local v1, "sessionKey":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/buzzfeed/android/data/BuzzUser;->getSyncId()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_30

    invoke-virtual {p1}, Lcom/buzzfeed/android/data/BuzzUser;->getSyncId()Ljava/lang/String;

    move-result-object v2

    .line 623
    .local v2, "syncId":Ljava/lang/String;
    :goto_24
    iget-object v3, p0, Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager;->buzzesToAdd:Ljava/util/ArrayList;

    new-instance v4, Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager$3;

    invoke-direct {v4, p0, p1, v0}, Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager$3;-><init>(Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager;Lcom/buzzfeed/android/data/BuzzUser;Ljava/lang/String;)V

    invoke-static {v3, v1, v2, v4}, Lcom/buzzfeed/android/util/BuzzApiClient;->addBookmarks(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Lcom/buzzfeed/toolkit/util/retrofit/SafeCallback;)V
    :try_end_2e
    .catchall {:try_start_1 .. :try_end_2e} :catchall_33

    .line 641
    monitor-exit p0

    return-void

    .line 622
    .end local v2    # "syncId":Ljava/lang/String;
    :cond_30
    :try_start_30
    const-string v2, ""
    :try_end_32
    .catchall {:try_start_30 .. :try_end_32} :catchall_33

    goto :goto_24

    .line 620
    .end local v0    # "TAG":Ljava/lang/String;
    .end local v1    # "sessionKey":Ljava/lang/String;
    :catchall_33
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method private convertPostContentToBuzz(Lcom/buzzfeed/toolkit/content/PostContent;)Lcom/buzzfeed/toolkit/content/Buzz;
    .registers 4
    .param p1, "postContent"    # Lcom/buzzfeed/toolkit/content/PostContent;

    .prologue
    .line 821
    instance-of v1, p1, Lcom/buzzfeed/toolkit/content/Buzz;

    if-nez v1, :cond_11

    .line 822
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1}, Lcom/buzzfeed/toolkit/util/UIUtil;->getScreenDensityDpi(Landroid/content/res/Resources;)F

    move-result v0

    .line 823
    .local v0, "screenDensityDpi":F
    invoke-static {p1, v0}, Lcom/buzzfeed/android/data/bookmark/BookmarkConverter;->fromPostContent(Lcom/buzzfeed/toolkit/content/PostContent;F)Lcom/buzzfeed/toolkit/content/Buzz;

    move-result-object p1

    .line 825
    .end local v0    # "screenDensityDpi":F
    .end local p1    # "postContent":Lcom/buzzfeed/toolkit/content/PostContent;
    :goto_10
    return-object p1

    .restart local p1    # "postContent":Lcom/buzzfeed/toolkit/content/PostContent;
    :cond_11
    check-cast p1, Lcom/buzzfeed/toolkit/content/Buzz;

    goto :goto_10
.end method

.method private declared-synchronized deleteBookmarksFromServer(Lcom/buzzfeed/android/data/BuzzUser;)V
    .registers 8
    .param p1, "user"    # Lcom/buzzfeed/android/data/BuzzUser;

    .prologue
    .line 666
    monitor-enter p0

    :try_start_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager;->TAG:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".deleteBookmarksFromServer"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 667
    .local v0, "TAG":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/buzzfeed/android/data/BuzzUser;->getSessionKey()Ljava/lang/String;

    move-result-object v2

    .line 668
    .local v2, "sessionKey":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/buzzfeed/android/data/BuzzUser;->getSyncId()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_3e

    invoke-virtual {p1}, Lcom/buzzfeed/android/data/BuzzUser;->getSyncId()Ljava/lang/String;

    move-result-object v3

    .line 669
    .local v3, "syncId":Ljava/lang/String;
    :goto_24
    iget-object v4, p0, Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager;->buzzesToDelete:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager;->buzzesToDelete:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/buzzfeed/toolkit/content/Buzz;

    .line 671
    .local v1, "b":Lcom/buzzfeed/toolkit/content/Buzz;
    new-instance v4, Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager$4;

    invoke-direct {v4, p0, v1, p1, v0}, Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager$4;-><init>(Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager;Lcom/buzzfeed/toolkit/content/Buzz;Lcom/buzzfeed/android/data/BuzzUser;Ljava/lang/String;)V

    invoke-static {v1, v2, v3, v4}, Lcom/buzzfeed/android/util/BuzzApiClient;->deleteBookmark(Lcom/buzzfeed/toolkit/content/Buzz;Ljava/lang/String;Ljava/lang/String;Lcom/buzzfeed/toolkit/util/retrofit/SafeCallback;)V
    :try_end_3c
    .catchall {:try_start_1 .. :try_end_3c} :catchall_41

    .line 689
    monitor-exit p0

    return-void

    .line 668
    .end local v1    # "b":Lcom/buzzfeed/toolkit/content/Buzz;
    .end local v3    # "syncId":Ljava/lang/String;
    :cond_3e
    :try_start_3e
    const-string v3, ""
    :try_end_40
    .catchall {:try_start_3e .. :try_end_40} :catchall_41

    goto :goto_24

    .line 666
    .end local v0    # "TAG":Ljava/lang/String;
    .end local v2    # "sessionKey":Ljava/lang/String;
    :catchall_41
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method private getBookmarkListAndSetSyncId(Lcom/buzzfeed/android/util/BuzzFeedJsonReader;)Lcom/buzzfeed/toolkit/content/FlowList;
    .registers 22
    .param p1, "reader"    # Lcom/buzzfeed/android/util/BuzzFeedJsonReader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 459
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v17, Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager;->TAG:Ljava/lang/String;

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ".getBookmarkListAndSetSyncId"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 460
    .local v2, "TAG":Ljava/lang/String;
    const/4 v10, 0x0

    .line 461
    .local v10, "success":Z
    new-instance v8, Lcom/buzzfeed/toolkit/content/FlowList;

    invoke-direct {v8}, Lcom/buzzfeed/toolkit/content/FlowList;-><init>()V

    .line 462
    .local v8, "flowList":Lcom/buzzfeed/toolkit/content/FlowList;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 463
    .local v12, "timestamp":J
    if-eqz p1, :cond_1ac

    .line 464
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager;->context:Landroid/content/Context;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/buzzfeed/android/data/BuzzUser;->getInstance(Landroid/content/Context;)Lcom/buzzfeed/android/data/BuzzUser;

    move-result-object v15

    .line 465
    .local v15, "user":Lcom/buzzfeed/android/data/BuzzUser;
    invoke-virtual/range {p1 .. p1}, Lcom/buzzfeed/android/util/BuzzFeedJsonReader;->beginObject()V

    .line 466
    :goto_2e
    invoke-virtual/range {p1 .. p1}, Lcom/buzzfeed/android/util/BuzzFeedJsonReader;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_1a9

    .line 467
    invoke-virtual/range {p1 .. p1}, Lcom/buzzfeed/android/util/BuzzFeedJsonReader;->nextName()Ljava/lang/String;

    move-result-object v9

    .line 468
    .local v9, "name":Ljava/lang/String;
    const-string/jumbo v16, "success"

    move-object/from16 v0, v16

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_69

    .line 469
    invoke-virtual/range {p1 .. p1}, Lcom/buzzfeed/android/util/BuzzFeedJsonReader;->nextString()Ljava/lang/String;

    move-result-object v16

    const-string v17, "1"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    .line 470
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "success: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v2, v0}, Lcom/buzzfeed/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2e

    .line 471
    :cond_69
    const-string/jumbo v16, "sync_id"

    move-object/from16 v0, v16

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_97

    .line 472
    invoke-virtual/range {p1 .. p1}, Lcom/buzzfeed/android/util/BuzzFeedJsonReader;->nextString()Ljava/lang/String;

    move-result-object v11

    .line 473
    .local v11, "syncId":Ljava/lang/String;
    invoke-virtual {v15, v11}, Lcom/buzzfeed/android/data/BuzzUser;->setSyncId(Ljava/lang/String;)V

    .line 474
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "sync_id: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v2, v0}, Lcom/buzzfeed/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2e

    .line 475
    .end local v11    # "syncId":Ljava/lang/String;
    :cond_97
    const-string v16, "bookmarks"

    move-object/from16 v0, v16

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_18a

    .line 476
    const/4 v5, 0x0

    .line 477
    .local v5, "count":I
    invoke-virtual/range {p1 .. p1}, Lcom/buzzfeed/android/util/BuzzFeedJsonReader;->beginArray()V

    .line 478
    :goto_a5
    invoke-virtual/range {p1 .. p1}, Lcom/buzzfeed/android/util/BuzzFeedJsonReader;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_165

    .line 479
    const/4 v4, 0x0

    .line 481
    .local v4, "buzzJsonObject":Lorg/json/JSONObject;
    :try_start_ac
    invoke-virtual/range {p1 .. p1}, Lcom/buzzfeed/android/util/BuzzFeedJsonReader;->getArrayObjectAsJson()Lorg/json/JSONObject;

    move-result-object v4

    .line 482
    new-instance v3, Lcom/buzzfeed/toolkit/content/Buzz;

    invoke-direct {v3}, Lcom/buzzfeed/toolkit/content/Buzz;-><init>()V

    .line 484
    .local v3, "buzz":Lcom/buzzfeed/toolkit/content/Buzz;
    invoke-virtual {v3, v4}, Lcom/buzzfeed/toolkit/content/Buzz;->parse(Lorg/json/JSONObject;)V

    .line 485
    invoke-virtual {v3}, Lcom/buzzfeed/toolkit/content/Buzz;->isAd()Z

    move-result v16

    if-eqz v16, :cond_135

    sget-object v14, Lcom/buzzfeed/toolkit/content/BuffetType;->EDITORIAL_AD:Lcom/buzzfeed/toolkit/content/BuffetType;

    .line 487
    .local v14, "type":Lcom/buzzfeed/toolkit/content/BuffetType;
    :goto_c0
    new-instance v7, Lcom/buzzfeed/toolkit/content/FlowItem;

    invoke-direct {v7}, Lcom/buzzfeed/toolkit/content/FlowItem;-><init>()V

    .line 488
    .local v7, "flowItem":Lcom/buzzfeed/toolkit/content/FlowItem;
    new-instance v16, Lcom/buzzfeed/android/data/factory/MobileFeedFactory;

    invoke-virtual {v14}, Lcom/buzzfeed/toolkit/content/BuffetType;->name()Ljava/lang/String;

    move-result-object v17

    invoke-direct/range {v16 .. v17}, Lcom/buzzfeed/android/data/factory/MobileFeedFactory;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v16

    invoke-virtual {v7, v4, v0}, Lcom/buzzfeed/toolkit/content/FlowItem;->parse(Lorg/json/JSONObject;Lcom/buzzfeed/toolkit/content/ContentFactory;)V

    .line 489
    invoke-virtual {v7}, Lcom/buzzfeed/toolkit/content/FlowItem;->getContent()Lcom/buzzfeed/toolkit/content/Content;

    move-result-object v3

    .end local v3    # "buzz":Lcom/buzzfeed/toolkit/content/Buzz;
    check-cast v3, Lcom/buzzfeed/toolkit/content/Buzz;

    .line 491
    .restart local v3    # "buzz":Lcom/buzzfeed/toolkit/content/Buzz;
    invoke-virtual {v3}, Lcom/buzzfeed/toolkit/content/Buzz;->getBookmarked()J

    move-result-wide v16

    const-wide/16 v18, 0x0

    cmp-long v16, v16, v18

    if-gtz v16, :cond_ea

    .line 492
    invoke-virtual {v3, v12, v13}, Lcom/buzzfeed/toolkit/content/Buzz;->setBookmarked(J)V

    .line 493
    const-wide/16 v16, 0x1

    sub-long v12, v12, v16

    .line 495
    :cond_ea
    add-int/lit8 v5, v5, 0x1

    .line 496
    invoke-virtual {v3}, Lcom/buzzfeed/toolkit/content/Buzz;->isValid()Z

    move-result v16

    if-eqz v16, :cond_138

    .line 497
    invoke-virtual {v8, v7}, Lcom/buzzfeed/toolkit/content/FlowList;->add(Lcom/buzzfeed/toolkit/content/FlowItem;)Z

    .line 498
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Successfully parsed bookmark buzz: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual {v3}, Lcom/buzzfeed/toolkit/content/Buzz;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v2, v0}, Lcom/buzzfeed/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_111
    .catch Lorg/json/JSONException; {:try_start_ac .. :try_end_111} :catch_112
    .catch Ljava/lang/Exception; {:try_start_ac .. :try_end_111} :catch_156

    goto :goto_a5

    .line 502
    .end local v3    # "buzz":Lcom/buzzfeed/toolkit/content/Buzz;
    .end local v7    # "flowItem":Lcom/buzzfeed/toolkit/content/FlowItem;
    .end local v14    # "type":Lcom/buzzfeed/toolkit/content/BuffetType;
    :catch_112
    move-exception v6

    .line 503
    .local v6, "e":Lorg/json/JSONException;
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Error parsing buzz (invalid JSONObject): "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    if-nez v4, :cond_160

    const-string v16, "null"

    :goto_122
    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v2, v0, v6}, Lcom/buzzfeed/toolkit/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_a5

    .line 485
    .end local v6    # "e":Lorg/json/JSONException;
    .restart local v3    # "buzz":Lcom/buzzfeed/toolkit/content/Buzz;
    :cond_135
    :try_start_135
    sget-object v14, Lcom/buzzfeed/toolkit/content/BuffetType;->POST:Lcom/buzzfeed/toolkit/content/BuffetType;

    goto :goto_c0

    .line 500
    .restart local v7    # "flowItem":Lcom/buzzfeed/toolkit/content/FlowItem;
    .restart local v14    # "type":Lcom/buzzfeed/toolkit/content/BuffetType;
    :cond_138
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Error parsing buzz (missing fields): "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual {v3}, Lcom/buzzfeed/toolkit/content/Buzz;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v2, v0}, Lcom/buzzfeed/toolkit/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_154
    .catch Lorg/json/JSONException; {:try_start_135 .. :try_end_154} :catch_112
    .catch Ljava/lang/Exception; {:try_start_135 .. :try_end_154} :catch_156

    goto/16 :goto_a5

    .line 504
    .end local v3    # "buzz":Lcom/buzzfeed/toolkit/content/Buzz;
    .end local v7    # "flowItem":Lcom/buzzfeed/toolkit/content/FlowItem;
    .end local v14    # "type":Lcom/buzzfeed/toolkit/content/BuffetType;
    :catch_156
    move-exception v6

    .line 505
    .local v6, "e":Ljava/lang/Exception;
    const-string v16, "Internal Error parsing buzz (invalid JSONObject)"

    move-object/from16 v0, v16

    invoke-static {v2, v0, v6}, Lcom/buzzfeed/toolkit/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_a5

    .line 503
    .local v6, "e":Lorg/json/JSONException;
    :cond_160
    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v16

    goto :goto_122

    .line 508
    .end local v4    # "buzzJsonObject":Lorg/json/JSONObject;
    .end local v6    # "e":Lorg/json/JSONException;
    :cond_165
    invoke-virtual/range {p1 .. p1}, Lcom/buzzfeed/android/util/BuzzFeedJsonReader;->endArray()V

    .line 509
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Synchronized "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " bookmarks"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v2, v0}, Lcom/buzzfeed/toolkit/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2e

    .line 512
    .end local v5    # "count":I
    :cond_18a
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Skipping key: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v2, v0}, Lcom/buzzfeed/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 513
    invoke-virtual/range {p1 .. p1}, Lcom/buzzfeed/android/util/BuzzFeedJsonReader;->skipValue()V

    goto/16 :goto_2e

    .line 516
    .end local v9    # "name":Ljava/lang/String;
    :cond_1a9
    invoke-virtual/range {p1 .. p1}, Lcom/buzzfeed/android/util/BuzzFeedJsonReader;->endObject()V

    .line 518
    .end local v15    # "user":Lcom/buzzfeed/android/data/BuzzUser;
    :cond_1ac
    if-eqz v10, :cond_1af

    .line 519
    .end local v8    # "flowList":Lcom/buzzfeed/toolkit/content/FlowList;
    :goto_1ae
    return-object v8

    .restart local v8    # "flowList":Lcom/buzzfeed/toolkit/content/FlowList;
    :cond_1af
    const/4 v8, 0x0

    goto :goto_1ae
.end method

.method private getBuzzFeedJsonReaderFromResponseString(Ljava/lang/String;)Lcom/buzzfeed/android/util/BuzzFeedJsonReader;
    .registers 10
    .param p1, "response"    # Ljava/lang/String;

    .prologue
    .line 441
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager;->TAG:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".getBuzzFeedJsonReaderFromResponseString"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 442
    .local v0, "TAG":Ljava/lang/String;
    const/4 v2, 0x0

    .line 443
    .local v2, "reader":Lcom/buzzfeed/android/util/BuzzFeedJsonReader;
    if-eqz p1, :cond_37

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_37

    .line 444
    const/4 v4, 0x0

    .line 446
    .local v4, "stream":Ljava/io/InputStream;
    :try_start_1f
    new-instance v5, Ljava/io/ByteArrayInputStream;

    const-string v6, "UTF-8"

    invoke-virtual {p1, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_2a
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1f .. :try_end_2a} :catch_38

    .line 447
    .end local v4    # "stream":Ljava/io/InputStream;
    .local v5, "stream":Ljava/io/InputStream;
    :try_start_2a
    new-instance v3, Lcom/buzzfeed/android/util/BuzzFeedJsonReader;

    new-instance v6, Ljava/io/InputStreamReader;

    const-string v7, "UTF-8"

    invoke-direct {v6, v5, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v3, v6}, Lcom/buzzfeed/android/util/BuzzFeedJsonReader;-><init>(Ljava/io/Reader;)V
    :try_end_36
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2a .. :try_end_36} :catch_3f

    .end local v2    # "reader":Lcom/buzzfeed/android/util/BuzzFeedJsonReader;
    .local v3, "reader":Lcom/buzzfeed/android/util/BuzzFeedJsonReader;
    move-object v2, v3

    .line 452
    .end local v3    # "reader":Lcom/buzzfeed/android/util/BuzzFeedJsonReader;
    .end local v5    # "stream":Ljava/io/InputStream;
    .restart local v2    # "reader":Lcom/buzzfeed/android/util/BuzzFeedJsonReader;
    :cond_37
    :goto_37
    return-object v2

    .line 448
    .restart local v4    # "stream":Ljava/io/InputStream;
    :catch_38
    move-exception v1

    .line 449
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    :goto_39
    const-string v6, "UnsupportedEncodingException: "

    invoke-static {v0, v6, v1}, Lcom/buzzfeed/toolkit/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_37

    .line 448
    .end local v1    # "e":Ljava/io/UnsupportedEncodingException;
    .end local v4    # "stream":Ljava/io/InputStream;
    .restart local v5    # "stream":Ljava/io/InputStream;
    :catch_3f
    move-exception v1

    move-object v4, v5

    .end local v5    # "stream":Ljava/io/InputStream;
    .restart local v4    # "stream":Ljava/io/InputStream;
    goto :goto_39
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager;
    .registers 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 114
    const-class v1, Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager;->bookmarkManager:Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager;

    if-nez v0, :cond_16

    .line 115
    new-instance v0, Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/buzzfeed/android/database/BFDatabaseManager;->getInstance(Landroid/content/Context;)Lcom/buzzfeed/android/database/BFDatabaseManager;

    move-result-object v2

    invoke-direct {v0, p0, v2}, Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager;-><init>(Landroid/content/Context;Lcom/buzzfeed/android/database/BFDatabaseManager;)V

    sput-object v0, Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager;->bookmarkManager:Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager;

    .line 117
    :cond_16
    sget-object v0, Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager;->bookmarkManager:Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager;
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_1a

    monitor-exit v1

    return-object v0

    .line 114
    :catchall_1a
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private declared-synchronized handleAddBookmarksResponse(Ljava/lang/String;Lcom/buzzfeed/android/data/BuzzUser;)V
    .registers 10
    .param p1, "response"    # Ljava/lang/String;
    .param p2, "user"    # Lcom/buzzfeed/android/data/BuzzUser;

    .prologue
    .line 645
    monitor-enter p0

    :try_start_1
    iget-object v4, p0, Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager;->buzzesToAdd:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_7
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/buzzfeed/toolkit/content/Buzz;

    .line 646
    .local v0, "b":Lcom/buzzfeed/toolkit/content/Buzz;
    iget-object v5, p0, Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager;->bookmarkSyncMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Lcom/buzzfeed/toolkit/content/Buzz;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1c} :catch_1d
    .catchall {:try_start_1 .. :try_end_1c} :catchall_5a

    goto :goto_7

    .line 659
    .end local v0    # "b":Lcom/buzzfeed/toolkit/content/Buzz;
    :catch_1d
    move-exception v1

    .line 660
    .local v1, "ex":Ljava/lang/Exception;
    :try_start_1e
    sget-object v4, Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager;->TAG:Ljava/lang/String;

    const-string v5, "Error adding bookmarks to server "

    invoke-static {v4, v5, v1}, Lcom/buzzfeed/toolkit/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 661
    const/4 v4, 0x0

    invoke-direct {p0, v4}, Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager;->onUploadBookmarksCompleted(Z)V
    :try_end_29
    .catchall {:try_start_1e .. :try_end_29} :catchall_5a

    .line 663
    .end local v1    # "ex":Ljava/lang/Exception;
    :goto_29
    monitor-exit p0

    return-void

    .line 648
    :cond_2b
    :try_start_2b
    iget-object v4, p0, Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager;->buzzesToAdd:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 650
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 651
    .local v2, "json":Lorg/json/JSONObject;
    const-string/jumbo v4, "success"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "1"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 652
    .local v3, "success":Z
    const-string/jumbo v4, "sync_id"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Lcom/buzzfeed/android/data/BuzzUser;->setSyncId(Ljava/lang/String;)V

    .line 654
    if-eqz v3, :cond_5d

    iget-object v4, p0, Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager;->buzzesToDelete:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_5d

    .line 655
    invoke-direct {p0, p2}, Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager;->deleteBookmarksFromServer(Lcom/buzzfeed/android/data/BuzzUser;)V
    :try_end_59
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_59} :catch_1d
    .catchall {:try_start_2b .. :try_end_59} :catchall_5a

    goto :goto_29

    .line 645
    .end local v2    # "json":Lorg/json/JSONObject;
    .end local v3    # "success":Z
    :catchall_5a
    move-exception v4

    monitor-exit p0

    throw v4

    .line 657
    .restart local v2    # "json":Lorg/json/JSONObject;
    .restart local v3    # "success":Z
    :cond_5d
    :try_start_5d
    invoke-direct {p0, v3}, Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager;->onUploadBookmarksCompleted(Z)V
    :try_end_60
    .catch Ljava/lang/Exception; {:try_start_5d .. :try_end_60} :catch_1d
    .catchall {:try_start_5d .. :try_end_60} :catchall_5a

    goto :goto_29
.end method

.method private declared-synchronized handleDeleteBookmarkResponse(Lcom/buzzfeed/toolkit/content/Buzz;Ljava/lang/String;Lcom/buzzfeed/android/data/BuzzUser;)V
    .registers 9
    .param p1, "b"    # Lcom/buzzfeed/toolkit/content/Buzz;
    .param p2, "response"    # Ljava/lang/String;
    .param p3, "user"    # Lcom/buzzfeed/android/data/BuzzUser;

    .prologue
    .line 693
    monitor-enter p0

    :try_start_1
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 694
    .local v1, "json":Lorg/json/JSONObject;
    const-string/jumbo v3, "success"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "1"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 695
    .local v2, "success":Z
    const-string/jumbo v3, "sync_id"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v3}, Lcom/buzzfeed/android/data/BuzzUser;->setSyncId(Ljava/lang/String;)V

    .line 697
    if-eqz v2, :cond_4f

    .line 698
    iget-object v3, p0, Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager;->buzzesToDelete:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 699
    iget-object v3, p0, Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager;->bookmarkSyncMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/buzzfeed/toolkit/content/Buzz;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 700
    iget-object v3, p0, Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager;->buzzesToDelete:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_3a

    .line 701
    invoke-direct {p0, p3}, Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager;->deleteBookmarksFromServer(Lcom/buzzfeed/android/data/BuzzUser;)V
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_38} :catch_3f
    .catchall {:try_start_1 .. :try_end_38} :catchall_4c

    .line 712
    .end local v1    # "json":Lorg/json/JSONObject;
    .end local v2    # "success":Z
    :goto_38
    monitor-exit p0

    return-void

    .line 703
    .restart local v1    # "json":Lorg/json/JSONObject;
    .restart local v2    # "success":Z
    :cond_3a
    const/4 v3, 0x1

    :try_start_3b
    invoke-direct {p0, v3}, Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager;->onUploadBookmarksCompleted(Z)V
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_3b .. :try_end_3e} :catch_3f
    .catchall {:try_start_3b .. :try_end_3e} :catchall_4c

    goto :goto_38

    .line 708
    .end local v1    # "json":Lorg/json/JSONObject;
    .end local v2    # "success":Z
    :catch_3f
    move-exception v0

    .line 709
    .local v0, "ex":Ljava/lang/Exception;
    :try_start_40
    sget-object v3, Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager;->TAG:Ljava/lang/String;

    const-string v4, "Error deleting bookmarks from server "

    invoke-static {v3, v4, v0}, Lcom/buzzfeed/toolkit/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 710
    const/4 v3, 0x0

    invoke-direct {p0, v3}, Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager;->onUploadBookmarksCompleted(Z)V
    :try_end_4b
    .catchall {:try_start_40 .. :try_end_4b} :catchall_4c

    goto :goto_38

    .line 693
    .end local v0    # "ex":Ljava/lang/Exception;
    :catchall_4c
    move-exception v3

    monitor-exit p0

    throw v3

    .line 706
    .restart local v1    # "json":Lorg/json/JSONObject;
    .restart local v2    # "success":Z
    :cond_4f
    const/4 v3, 0x0

    :try_start_50
    invoke-direct {p0, v3}, Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager;->onUploadBookmarksCompleted(Z)V
    :try_end_53
    .catch Ljava/lang/Exception; {:try_start_50 .. :try_end_53} :catch_3f
    .catchall {:try_start_50 .. :try_end_53} :catchall_4c

    goto :goto_38
.end method

.method private isTypeBuzz(Lcom/buzzfeed/toolkit/content/FlowItem;)Z
    .registers 3
    .param p1, "flowItem"    # Lcom/buzzfeed/toolkit/content/FlowItem;

    .prologue
    .line 306
    invoke-virtual {p1}, Lcom/buzzfeed/toolkit/content/FlowItem;->getContent()Lcom/buzzfeed/toolkit/content/Content;

    move-result-object v0

    instance-of v0, v0, Lcom/buzzfeed/toolkit/content/Buzz;

    if-nez v0, :cond_10

    .line 307
    invoke-virtual {p1}, Lcom/buzzfeed/toolkit/content/FlowItem;->getContent()Lcom/buzzfeed/toolkit/content/Content;

    move-result-object v0

    instance-of v0, v0, Lcom/buzzfeed/android/data/Buzz;

    if-eqz v0, :cond_12

    :cond_10
    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method private onBookmarkSyncCompleted(ZLjava/lang/Throwable;)V
    .registers 7
    .param p1, "success"    # Z
    .param p2, "error"    # Ljava/lang/Throwable;

    .prologue
    const/4 v3, 0x1

    .line 748
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager;->isSyncing:Z

    .line 749
    iput-boolean v3, p0, Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager;->isSynced:Z

    .line 751
    iget-object v1, p0, Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager;->listener:Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager$CompletionListener;

    if-eqz v1, :cond_f

    iget-object v1, p0, Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager;->listener:Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager$CompletionListener;

    invoke-interface {v1, p1, p2}, Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager$CompletionListener;->onBookmarkSyncCompleted(ZLjava/lang/Throwable;)V

    .line 753
    :cond_f
    if-eqz p1, :cond_26

    .line 754
    iget-object v1, p0, Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager;->context:Landroid/content/Context;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 755
    .local v0, "sharedPref":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "bookmarksSyncedOnUpgrade"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 756
    iput-boolean v3, p0, Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager;->hasSyncedOnUpgrade:Z

    .line 758
    .end local v0    # "sharedPref":Landroid/content/SharedPreferences;
    :cond_26
    return-void
.end method

.method private onUploadBookmarksCompleted(Z)V
    .registers 3
    .param p1, "success"    # Z

    .prologue
    .line 761
    iget-object v0, p0, Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager;->listener:Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager$CompletionListener;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager;->listener:Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager$CompletionListener;

    invoke-interface {v0, p1}, Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager$CompletionListener;->onUploadBookmarksCompleted(Z)V

    .line 762
    :cond_9
    return-void
.end method

.method private declared-synchronized setBookmark(Lcom/buzzfeed/toolkit/content/FlowItem;ZZ)V
    .registers 22
    .param p1, "flowItem"    # Lcom/buzzfeed/toolkit/content/FlowItem;
    .param p2, "isBookmarked"    # Z
    .param p3, "shouldSync"    # Z

    .prologue
    .line 311
    monitor-enter p0

    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager;->TAG:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ".setBookmark"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 313
    .local v8, "TAG":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/buzzfeed/toolkit/content/FlowItem;->getId()Ljava/lang/String;

    move-result-object v10

    .line 314
    .local v10, "id":Ljava/lang/String;
    if-eqz p3, :cond_25

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager;->bookmarkSyncMap:Ljava/util/HashMap;

    move-object/from16 v0, p1

    invoke-virtual {v3, v10, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 316
    :cond_25
    if-eqz p2, :cond_33

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager;->bookmarkList:Lcom/buzzfeed/android/data/bookmark/BookmarkFlowList;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Lcom/buzzfeed/android/data/bookmark/BookmarkFlowList;->containsFlowItem(Lcom/buzzfeed/toolkit/content/FlowItem;)Z

    move-result v3

    if-nez v3, :cond_41

    :cond_33
    if-nez p2, :cond_43

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager;->bookmarkList:Lcom/buzzfeed/android/data/bookmark/BookmarkFlowList;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Lcom/buzzfeed/android/data/bookmark/BookmarkFlowList;->containsFlowItem(Lcom/buzzfeed/toolkit/content/FlowItem;)Z
    :try_end_3e
    .catchall {:try_start_1 .. :try_end_3e} :catchall_b2

    move-result v3

    if-nez v3, :cond_43

    .line 354
    :cond_41
    :goto_41
    monitor-exit p0

    return-void

    .line 321
    :cond_43
    if-eqz p2, :cond_ed

    .line 322
    :try_start_45
    invoke-direct/range {p0 .. p1}, Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager;->isTypeBuzz(Lcom/buzzfeed/toolkit/content/FlowItem;)Z

    move-result v3

    if-eqz v3, :cond_c1

    .line 323
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 324
    .local v12, "timestamp":J
    invoke-virtual/range {p1 .. p1}, Lcom/buzzfeed/toolkit/content/FlowItem;->getContent()Lcom/buzzfeed/toolkit/content/Content;

    move-result-object v9

    check-cast v9, Lcom/buzzfeed/toolkit/content/Buzz;

    .line 325
    .local v9, "buzz":Lcom/buzzfeed/toolkit/content/Buzz;
    const-wide/16 v6, 0x0

    .line 327
    .local v6, "bookmarked":J
    invoke-virtual {v9}, Lcom/buzzfeed/toolkit/content/Buzz;->getBookmarked()J

    move-result-wide v14

    const-wide/16 v16, 0x0

    cmp-long v3, v14, v16

    if-gtz v3, :cond_b5

    .line 328
    move-wide v6, v12

    .line 332
    :goto_62
    invoke-virtual {v9, v6, v7}, Lcom/buzzfeed/toolkit/content/Buzz;->setBookmarked(J)V

    .line 335
    invoke-virtual {v9}, Lcom/buzzfeed/toolkit/content/Buzz;->isAd()Z

    move-result v3

    if-eqz v3, :cond_ba

    sget-object v3, Lcom/buzzfeed/toolkit/content/BuffetType;->EDITORIAL_AD:Lcom/buzzfeed/toolkit/content/BuffetType;

    invoke-virtual {v3}, Lcom/buzzfeed/toolkit/content/BuffetType;->name()Ljava/lang/String;

    move-result-object v4

    .line 336
    .local v4, "type":Ljava/lang/String;
    :goto_71
    new-instance v2, Lcom/buzzfeed/android/data/Bookmark;

    invoke-virtual/range {p1 .. p1}, Lcom/buzzfeed/toolkit/content/FlowItem;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9}, Lcom/buzzfeed/toolkit/content/Buzz;->getJson()Ljava/lang/String;

    move-result-object v5

    invoke-direct/range {v2 .. v7}, Lcom/buzzfeed/android/data/Bookmark;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 337
    .local v2, "bookmark":Lcom/buzzfeed/android/data/Bookmark;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager;->databaseManager:Lcom/buzzfeed/android/database/BFDatabaseManager;

    iget-object v3, v3, Lcom/buzzfeed/android/database/BFDatabaseManager;->bfCacheData:Lcom/buzzfeed/android/database/BFCacheData;

    invoke-virtual {v2}, Lcom/buzzfeed/android/data/Bookmark;->getId()Ljava/lang/String;

    move-result-object v5

    const-string v11, "bookmark"

    invoke-virtual {v3, v5, v11, v2}, Lcom/buzzfeed/android/database/BFCacheData;->putObject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 338
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Added bookmark to cache: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Lcom/buzzfeed/android/data/Bookmark;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v8, v3}, Lcom/buzzfeed/toolkit/util/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 343
    .end local v2    # "bookmark":Lcom/buzzfeed/android/data/Bookmark;
    .end local v4    # "type":Ljava/lang/String;
    .end local v6    # "bookmarked":J
    .end local v9    # "buzz":Lcom/buzzfeed/toolkit/content/Buzz;
    .end local v12    # "timestamp":J
    :goto_a7
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager;->bookmarkList:Lcom/buzzfeed/android/data/bookmark/BookmarkFlowList;

    const/4 v5, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v3, v5, v0}, Lcom/buzzfeed/android/data/bookmark/BookmarkFlowList;->add(ILcom/buzzfeed/toolkit/content/FlowItem;)V
    :try_end_b1
    .catchall {:try_start_45 .. :try_end_b1} :catchall_b2

    goto :goto_41

    .line 311
    .end local v8    # "TAG":Ljava/lang/String;
    .end local v10    # "id":Ljava/lang/String;
    :catchall_b2
    move-exception v3

    monitor-exit p0

    throw v3

    .line 330
    .restart local v6    # "bookmarked":J
    .restart local v8    # "TAG":Ljava/lang/String;
    .restart local v9    # "buzz":Lcom/buzzfeed/toolkit/content/Buzz;
    .restart local v10    # "id":Ljava/lang/String;
    .restart local v12    # "timestamp":J
    :cond_b5
    :try_start_b5
    invoke-virtual {v9}, Lcom/buzzfeed/toolkit/content/Buzz;->getBookmarked()J

    move-result-wide v6

    goto :goto_62

    .line 335
    :cond_ba
    sget-object v3, Lcom/buzzfeed/toolkit/content/BuffetType;->POST:Lcom/buzzfeed/toolkit/content/BuffetType;

    invoke-virtual {v3}, Lcom/buzzfeed/toolkit/content/BuffetType;->name()Ljava/lang/String;

    move-result-object v4

    goto :goto_71

    .line 340
    .end local v6    # "bookmarked":J
    .end local v9    # "buzz":Lcom/buzzfeed/toolkit/content/Buzz;
    .end local v12    # "timestamp":J
    :cond_c1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager;->databaseManager:Lcom/buzzfeed/android/database/BFDatabaseManager;

    iget-object v3, v3, Lcom/buzzfeed/android/database/BFDatabaseManager;->bfCacheData:Lcom/buzzfeed/android/database/BFCacheData;

    invoke-virtual/range {p1 .. p1}, Lcom/buzzfeed/toolkit/content/FlowItem;->getId()Ljava/lang/String;

    move-result-object v5

    const-string v11, "bookmark"

    move-object/from16 v0, p1

    invoke-virtual {v3, v5, v11, v0}, Lcom/buzzfeed/android/database/BFCacheData;->putObject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 341
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Added bookmark to cache: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Lcom/buzzfeed/toolkit/content/FlowItem;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v8, v3}, Lcom/buzzfeed/toolkit/util/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a7

    .line 346
    :cond_ed
    invoke-direct/range {p0 .. p1}, Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager;->isTypeBuzz(Lcom/buzzfeed/toolkit/content/FlowItem;)Z

    move-result v3

    if-eqz v3, :cond_fe

    .line 347
    invoke-virtual/range {p1 .. p1}, Lcom/buzzfeed/toolkit/content/FlowItem;->getContent()Lcom/buzzfeed/toolkit/content/Content;

    move-result-object v9

    check-cast v9, Lcom/buzzfeed/toolkit/content/Buzz;

    .line 348
    .restart local v9    # "buzz":Lcom/buzzfeed/toolkit/content/Buzz;
    const-wide/16 v14, 0x0

    invoke-virtual {v9, v14, v15}, Lcom/buzzfeed/toolkit/content/Buzz;->setBookmarked(J)V

    .line 350
    .end local v9    # "buzz":Lcom/buzzfeed/toolkit/content/Buzz;
    :cond_fe
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager;->bookmarkList:Lcom/buzzfeed/android/data/bookmark/BookmarkFlowList;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Lcom/buzzfeed/android/data/bookmark/BookmarkFlowList;->remove(Ljava/lang/Object;)Z

    .line 351
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager;->databaseManager:Lcom/buzzfeed/android/database/BFDatabaseManager;

    iget-object v3, v3, Lcom/buzzfeed/android/database/BFDatabaseManager;->bfCacheData:Lcom/buzzfeed/android/database/BFCacheData;

    invoke-virtual/range {p1 .. p1}, Lcom/buzzfeed/toolkit/content/FlowItem;->getId()Ljava/lang/String;

    move-result-object v5

    const-string v11, "bookmark"

    invoke-virtual {v3, v5, v11}, Lcom/buzzfeed/android/database/BFCacheData;->delete(Ljava/lang/String;Ljava/lang/String;)V

    .line 352
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Removed bookmark from cache: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Lcom/buzzfeed/toolkit/content/FlowItem;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v8, v3}, Lcom/buzzfeed/toolkit/util/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_130
    .catchall {:try_start_b5 .. :try_end_130} :catchall_b2

    goto/16 :goto_41
.end method

.method public static showNotSignedInDialog(Lcom/buzzfeed/android/activity/SpicyActivity;)V
    .registers 5
    .param p0, "activity"    # Lcom/buzzfeed/android/activity/SpicyActivity;

    .prologue
    .line 833
    new-instance v0, Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 834
    .local v0, "builder":Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog$Builder;
    const v2, 0x7f090076

    invoke-virtual {v0, v2}, Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog$Builder;->setTitle(I)Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog$Builder;

    .line 835
    const v2, 0x7f090074

    invoke-virtual {v0, v2}, Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog$Builder;->setMessage(I)Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog$Builder;

    .line 836
    const/4 v2, 0x2

    new-array v1, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const v3, 0x7f090092

    invoke-virtual {p0, v3}, Lcom/buzzfeed/android/activity/SpicyActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const v3, 0x7f090071

    invoke-virtual {p0, v3}, Lcom/buzzfeed/android/activity/SpicyActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 837
    .local v1, "listItems":[Ljava/lang/String;
    new-instance v2, Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager$6;

    invoke-direct {v2, p0}, Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager$6;-><init>(Lcom/buzzfeed/android/activity/SpicyActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog$Builder;->setStackedListItems([Ljava/lang/String;Landroid/widget/AdapterView$OnItemClickListener;)Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog$Builder;

    .line 853
    invoke-virtual {v0}, Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v2

    sput-object v2, Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager;->mCurrentAlertDialog:Landroid/support/v7/app/AlertDialog;

    .line 854
    sget-object v2, Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager;->mCurrentAlertDialog:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {v2}, Landroid/support/v7/app/AlertDialog;->show()V

    .line 855
    return-void
.end method

.method public static showSaveYourBookmarksDialogLogIn(Landroid/app/Activity;Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager$BookmarkChangeListener;)V
    .registers 7
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "changeListener"    # Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager$BookmarkChangeListener;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 862
    new-instance v0, Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 863
    .local v0, "builder":Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog$Builder;
    const v2, 0x7f090075

    invoke-virtual {v0, v2}, Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog$Builder;->setTitle(I)Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog$Builder;

    .line 864
    const v2, 0x7f090074

    invoke-virtual {v0, v2}, Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog$Builder;->setMessage(I)Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog$Builder;

    .line 865
    invoke-virtual {v0, v4}, Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog$Builder;->setIsBookmarkWarningDialog(Z)Landroid/support/v7/app/AlertDialog$Builder;

    .line 866
    const/4 v2, 0x2

    new-array v1, v2, [Ljava/lang/String;

    const v2, 0x7f090092

    invoke-virtual {p0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    const v2, 0x7f090070

    invoke-virtual {p0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    .line 867
    .local v1, "listItems":[Ljava/lang/String;
    new-instance v2, Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager$7;

    invoke-direct {v2, p1, p0}, Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager$7;-><init>(Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager$BookmarkChangeListener;Landroid/app/Activity;)V

    invoke-virtual {v0, v1, v2}, Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog$Builder;->setStackedListItems([Ljava/lang/String;Landroid/widget/AdapterView$OnItemClickListener;)Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog$Builder;

    .line 884
    invoke-virtual {v0}, Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v2

    sput-object v2, Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager;->mCurrentAlertDialog:Landroid/support/v7/app/AlertDialog;

    .line 885
    sget-object v2, Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager;->mCurrentAlertDialog:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {v2, v3}, Landroid/support/v7/app/AlertDialog;->setCancelable(Z)V

    .line 886
    sget-object v2, Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager;->mCurrentAlertDialog:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {v2}, Landroid/support/v7/app/AlertDialog;->show()V

    .line 887
    return-void
.end method

.method private static showSecondWarningBookmarkDialog(Landroid/app/Activity;Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager$BookmarkChangeListener;)V
    .registers 6
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "changeListener"    # Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager$BookmarkChangeListener;

    .prologue
    .line 893
    new-instance v1, Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog$Builder;

    invoke-direct {v1, p0}, Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 894
    .local v1, "innerBuilder":Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog$Builder;
    const v2, 0x7f090073

    invoke-virtual {v1, v2}, Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog$Builder;->setTitle(I)Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog$Builder;

    .line 895
    const v2, 0x7f090072

    invoke-virtual {v1, v2}, Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog$Builder;->setMessage(I)Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog$Builder;

    .line 896
    const/high16 v2, 0x1040000

    new-instance v3, Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager$8;

    invoke-direct {v3, p0, p1}, Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager$8;-><init>(Landroid/app/Activity;Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager$BookmarkChangeListener;)V

    invoke-virtual {v1, v2, v3}, Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog$Builder;

    .line 902
    const v2, 0x7f09006f

    new-instance v3, Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager$9;

    invoke-direct {v3, p0, p1}, Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager$9;-><init>(Landroid/app/Activity;Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager$BookmarkChangeListener;)V

    invoke-virtual {v1, v2, v3}, Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog$Builder;

    .line 913
    invoke-virtual {v1}, Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    .line 914
    .local v0, "alertDialog":Landroid/support/v7/app/AlertDialog;
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/support/v7/app/AlertDialog;->setCancelable(Z)V

    .line 915
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->show()V

    .line 917
    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Landroid/support/v7/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v2

    const v3, 0x7f100025

    invoke-static {p0, v3}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setTextColor(I)V

    .line 918
    return-void
.end method

.method private declared-synchronized syncBookmarksWithJson(Lcom/buzzfeed/toolkit/content/FlowList;)V
    .registers 8
    .param p1, "bookmarks"    # Lcom/buzzfeed/toolkit/content/FlowList;

    .prologue
    .line 716
    monitor-enter p0

    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    :try_start_2
    iget-object v4, p0, Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager;->bookmarkList:Lcom/buzzfeed/android/data/bookmark/BookmarkFlowList;

    invoke-virtual {v4}, Lcom/buzzfeed/android/data/bookmark/BookmarkFlowList;->size()I

    move-result v4

    if-ge v2, v4, :cond_2c

    .line 717
    iget-object v4, p0, Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager;->bookmarkList:Lcom/buzzfeed/android/data/bookmark/BookmarkFlowList;

    invoke-virtual {v4, v2}, Lcom/buzzfeed/android/data/bookmark/BookmarkFlowList;->get(I)Lcom/buzzfeed/toolkit/content/FlowItem;

    move-result-object v0

    .line 718
    .local v0, "b":Lcom/buzzfeed/toolkit/content/FlowItem;
    iget-object v4, p0, Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager;->bookmarkSyncMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Lcom/buzzfeed/toolkit/content/FlowItem;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_29

    invoke-virtual {p1, v0}, Lcom/buzzfeed/toolkit/content/FlowList;->containsFlowItem(Lcom/buzzfeed/toolkit/content/FlowItem;)Z

    move-result v4

    if-nez v4, :cond_29

    .line 719
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {p0, v0, v4, v5}, Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager;->setBookmark(Lcom/buzzfeed/toolkit/content/FlowItem;ZZ)V

    .line 720
    add-int/lit8 v2, v2, -0x1

    .line 716
    :cond_29
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 724
    .end local v0    # "b":Lcom/buzzfeed/toolkit/content/FlowItem;
    :cond_2c
    invoke-virtual {p1}, Lcom/buzzfeed/toolkit/content/FlowList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 725
    .local v3, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/buzzfeed/toolkit/content/FlowItem;>;"
    :cond_30
    :goto_30
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4d

    .line 726
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/buzzfeed/toolkit/content/FlowItem;

    .line 727
    .local v1, "flowItem":Lcom/buzzfeed/toolkit/content/FlowItem;
    iget-object v4, p0, Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager;->bookmarkList:Lcom/buzzfeed/android/data/bookmark/BookmarkFlowList;

    invoke-virtual {v4, v1}, Lcom/buzzfeed/android/data/bookmark/BookmarkFlowList;->containsFlowItem(Lcom/buzzfeed/toolkit/content/FlowItem;)Z

    move-result v4

    if-nez v4, :cond_30

    .line 728
    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-direct {p0, v1, v4, v5}, Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager;->setBookmark(Lcom/buzzfeed/toolkit/content/FlowItem;ZZ)V
    :try_end_49
    .catchall {:try_start_2 .. :try_end_49} :catchall_4a

    goto :goto_30

    .line 716
    .end local v1    # "flowItem":Lcom/buzzfeed/toolkit/content/FlowItem;
    .end local v3    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/buzzfeed/toolkit/content/FlowItem;>;"
    :catchall_4a
    move-exception v4

    monitor-exit p0

    throw v4

    .line 732
    .restart local v3    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/buzzfeed/toolkit/content/FlowItem;>;"
    :cond_4d
    :try_start_4d
    iget-object v4, p0, Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager;->bookmarkList:Lcom/buzzfeed/android/data/bookmark/BookmarkFlowList;

    new-instance v5, Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager$5;

    invoke-direct {v5, p0}, Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager$5;-><init>(Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager;)V

    invoke-virtual {v4, v5}, Lcom/buzzfeed/android/data/bookmark/BookmarkFlowList;->sort(Ljava/util/Comparator;)V
    :try_end_57
    .catchall {:try_start_4d .. :try_end_57} :catchall_4a

    .line 745
    monitor-exit p0

    return-void
.end method


# virtual methods
.method public declared-synchronized getBookmarkCount()I
    .registers 2

    .prologue
    .line 249
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager;->bookmarkList:Lcom/buzzfeed/android/data/bookmark/BookmarkFlowList;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_f

    if-nez v0, :cond_8

    const/4 v0, 0x0

    :goto_6
    monitor-exit p0

    return v0

    :cond_8
    :try_start_8
    iget-object v0, p0, Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager;->bookmarkList:Lcom/buzzfeed/android/data/bookmark/BookmarkFlowList;

    invoke-virtual {v0}, Lcom/buzzfeed/android/data/bookmark/BookmarkFlowList;->size()I
    :try_end_d
    .catchall {:try_start_8 .. :try_end_d} :catchall_f

    move-result v0

    goto :goto_6

    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getBookmarks()Lcom/buzzfeed/toolkit/content/FlowList;
    .registers 2

    .prologue
    .line 245
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager;->bookmarkList:Lcom/buzzfeed/android/data/bookmark/BookmarkFlowList;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getSyncListCount()I
    .registers 2

    .prologue
    .line 218
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager;->bookmarkSyncMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_9

    move-result v0

    monitor-exit p0

    return v0

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized handleGetBookmarkListResponse(Ljava/lang/Object;)V
    .registers 11
    .param p1, "response"    # Ljava/lang/Object;

    .prologue
    const/4 v6, 0x0

    .line 523
    monitor-enter p0

    :try_start_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager;->TAG:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".handleGetBookmarkListResponse"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_16
    .catchall {:try_start_2 .. :try_end_16} :catchall_5e

    move-result-object v1

    .line 525
    .local v1, "TAG":Ljava/lang/String;
    :try_start_17
    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    move-object v5, v0

    .line 526
    .local v5, "responseString":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Response: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Lcom/buzzfeed/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 527
    invoke-direct {p0, v5}, Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager;->getBuzzFeedJsonReaderFromResponseString(Ljava/lang/String;)Lcom/buzzfeed/android/util/BuzzFeedJsonReader;

    move-result-object v4

    .line 528
    .local v4, "reader":Lcom/buzzfeed/android/util/BuzzFeedJsonReader;
    invoke-direct {p0, v4}, Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager;->getBookmarkListAndSetSyncId(Lcom/buzzfeed/android/util/BuzzFeedJsonReader;)Lcom/buzzfeed/toolkit/content/FlowList;

    move-result-object v3

    .line 529
    .local v3, "flowList":Lcom/buzzfeed/toolkit/content/FlowList;
    if-eqz v3, :cond_3c

    const/4 v6, 0x1

    .line 530
    .local v6, "success":Z
    :cond_3c
    if-eqz v6, :cond_4c

    .line 531
    invoke-direct {p0, v3}, Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager;->syncBookmarksWithJson(Lcom/buzzfeed/toolkit/content/FlowList;)V

    .line 532
    iget-object v7, p0, Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager;->bookmarkSyncMap:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->size()I

    move-result v7

    if-lez v7, :cond_4c

    .line 533
    invoke-virtual {p0}, Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager;->uploadLocalBookmarkChanges()V

    .line 536
    :cond_4c
    const/4 v7, 0x0

    invoke-direct {p0, v6, v7}, Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager;->onBookmarkSyncCompleted(ZLjava/lang/Throwable;)V
    :try_end_50
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_50} :catch_52
    .catchall {:try_start_17 .. :try_end_50} :catchall_5e

    .line 541
    .end local v3    # "flowList":Lcom/buzzfeed/toolkit/content/FlowList;
    .end local v4    # "reader":Lcom/buzzfeed/android/util/BuzzFeedJsonReader;
    .end local v5    # "responseString":Ljava/lang/String;
    .end local v6    # "success":Z
    :goto_50
    monitor-exit p0

    return-void

    .line 537
    :catch_52
    move-exception v2

    .line 538
    .local v2, "e":Ljava/lang/Exception;
    :try_start_53
    const-string v7, "Error syncing bookmarks"

    invoke-static {v1, v7, v2}, Lcom/buzzfeed/toolkit/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 539
    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct {p0, v7, v8}, Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager;->onBookmarkSyncCompleted(ZLjava/lang/Throwable;)V
    :try_end_5d
    .catchall {:try_start_53 .. :try_end_5d} :catchall_5e

    goto :goto_50

    .line 523
    .end local v1    # "TAG":Ljava/lang/String;
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_5e
    move-exception v7

    monitor-exit p0

    throw v7
.end method

.method public hasSyncedOnUpgrade()Z
    .registers 2

    .prologue
    .line 232
    iget-boolean v0, p0, Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager;->hasSyncedOnUpgrade:Z

    return v0
.end method

.method public declared-synchronized isBookmarked(Lcom/buzzfeed/toolkit/content/Content;)Z
    .registers 3
    .param p1, "content"    # Lcom/buzzfeed/toolkit/content/Content;

    .prologue
    .line 253
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager;->bookmarkList:Lcom/buzzfeed/android/data/bookmark/BookmarkFlowList;

    invoke-virtual {v0, p1}, Lcom/buzzfeed/android/data/bookmark/BookmarkFlowList;->containsContent(Lcom/buzzfeed/toolkit/content/Content;)Z
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_9

    move-result v0

    monitor-exit p0

    return v0

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isSynced()Z
    .registers 2

    .prologue
    .line 302
    iget-boolean v0, p0, Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager;->isSynced:Z

    return v0
.end method

.method public isSyncing()Z
    .registers 2

    .prologue
    .line 225
    iget-boolean v0, p0, Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager;->isSyncing:Z

    return v0
.end method

.method public declared-synchronized onUserLoggedIn()V
    .registers 5

    .prologue
    .line 361
    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager;->bookmarkList:Lcom/buzzfeed/android/data/bookmark/BookmarkFlowList;

    invoke-virtual {v1}, Lcom/buzzfeed/android/data/bookmark/BookmarkFlowList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/buzzfeed/toolkit/content/FlowItem;

    .line 362
    .local v0, "flowItem":Lcom/buzzfeed/toolkit/content/FlowItem;
    const/4 v2, 0x1

    const/4 v3, 0x1

    invoke-direct {p0, v0, v2, v3}, Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager;->setBookmark(Lcom/buzzfeed/toolkit/content/FlowItem;ZZ)V
    :try_end_18
    .catchall {:try_start_1 .. :try_end_18} :catchall_19

    goto :goto_7

    .line 361
    .end local v0    # "flowItem":Lcom/buzzfeed/toolkit/content/FlowItem;
    :catchall_19
    move-exception v1

    monitor-exit p0

    throw v1

    .line 364
    :cond_1c
    monitor-exit p0

    return-void
.end method

.method public promptLoginNotice(Landroid/app/Activity;Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager$BookmarkChangeListener;)V
    .registers 4
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "bookmarkChangeListener"    # Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager$BookmarkChangeListener;

    .prologue
    .line 921
    invoke-static {p1}, Lcom/buzzfeed/android/data/BuzzUser;->getInstance(Landroid/content/Context;)Lcom/buzzfeed/android/data/BuzzUser;

    move-result-object v0

    invoke-virtual {v0}, Lcom/buzzfeed/android/data/BuzzUser;->isLogin()Z

    move-result v0

    if-nez v0, :cond_13

    invoke-virtual {p0}, Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager;->getBookmarkCount()I

    move-result v0

    if-lez v0, :cond_13

    .line 922
    invoke-static {p1, p2}, Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager;->showSaveYourBookmarksDialogLogIn(Landroid/app/Activity;Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager$BookmarkChangeListener;)V

    .line 924
    :cond_13
    return-void
.end method

.method public declared-synchronized resetBookmarks()V
    .registers 3

    .prologue
    .line 239
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager;->bookmarkSyncMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 240
    iget-object v0, p0, Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager;->databaseManager:Lcom/buzzfeed/android/database/BFDatabaseManager;

    iget-object v0, v0, Lcom/buzzfeed/android/database/BFDatabaseManager;->bfCacheData:Lcom/buzzfeed/android/database/BFCacheData;

    const-string v1, "bookmark"

    invoke-virtual {v0, v1}, Lcom/buzzfeed/android/database/BFCacheData;->deleteAllOfType(Ljava/lang/String;)V

    .line 241
    iget-object v0, p0, Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager;->bookmarkList:Lcom/buzzfeed/android/data/bookmark/BookmarkFlowList;

    invoke-virtual {v0}, Lcom/buzzfeed/android/data/bookmark/BookmarkFlowList;->clear()V
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_16

    .line 242
    monitor-exit p0

    return-void

    .line 239
    :catchall_16
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized restoreBookmarks()V
    .registers 23

    .prologue
    .line 131
    monitor-enter p0

    :try_start_1
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v17, Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager;->TAG:Ljava/lang/String;

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ".restoreBookmarks"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 132
    .local v2, "TAG":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager;->bookmarkList:Lcom/buzzfeed/android/data/bookmark/BookmarkFlowList;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/buzzfeed/android/data/bookmark/BookmarkFlowList;->clear()V

    .line 133
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager;->databaseManager:Lcom/buzzfeed/android/database/BFDatabaseManager;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/buzzfeed/android/database/BFDatabaseManager;->bfCacheData:Lcom/buzzfeed/android/database/BFCacheData;

    move-object/from16 v16, v0

    const-string v17, "bookmark"

    invoke-virtual/range {v16 .. v17}, Lcom/buzzfeed/android/database/BFCacheData;->getObjectsList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v12

    .line 134
    .local v12, "objects":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    .line 135
    .local v14, "timestamp":J
    if-eqz v12, :cond_1d0

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v16

    if-lez v16, :cond_1d0

    .line 136
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :cond_41
    :goto_41
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_1d0

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    .line 137
    .local v11, "object":Ljava/lang/Object;
    instance-of v0, v11, Lcom/buzzfeed/toolkit/content/FlowItem;

    move/from16 v17, v0

    if-eqz v17, :cond_a4

    .line 138
    move-object v0, v11

    check-cast v0, Lcom/buzzfeed/toolkit/content/FlowItem;

    move-object v7, v0

    .line 140
    .local v7, "flowItem":Lcom/buzzfeed/toolkit/content/FlowItem;
    invoke-virtual {v7}, Lcom/buzzfeed/toolkit/content/FlowItem;->getContent()Lcom/buzzfeed/toolkit/content/Content;

    move-result-object v17

    move-object/from16 v0, v17

    instance-of v0, v0, Lcom/buzzfeed/toolkit/content/Buzz;

    move/from16 v17, v0
    :try_end_5f
    .catchall {:try_start_1 .. :try_end_5f} :catchall_a1

    if-eqz v17, :cond_41

    .line 142
    :try_start_61
    invoke-virtual {v7}, Lcom/buzzfeed/toolkit/content/FlowItem;->getContent()Lcom/buzzfeed/toolkit/content/Content;

    move-result-object v5

    check-cast v5, Lcom/buzzfeed/toolkit/content/Buzz;

    .line 143
    .local v5, "buzz":Lcom/buzzfeed/toolkit/content/Buzz;
    invoke-virtual {v5}, Lcom/buzzfeed/toolkit/content/Buzz;->getJson()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Lcom/buzzfeed/toolkit/content/Buzz;->parse(Ljava/lang/String;)V

    .line 144
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager;->bookmarkList:Lcom/buzzfeed/android/data/bookmark/BookmarkFlowList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Lcom/buzzfeed/android/data/bookmark/BookmarkFlowList;->add(Lcom/buzzfeed/toolkit/content/FlowItem;)Z

    .line 145
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Restored FlowItem/Buzz bookmark: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual {v5}, Lcom/buzzfeed/toolkit/content/Buzz;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-static {v2, v0}, Lcom/buzzfeed/toolkit/util/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_97
    .catch Ljava/lang/Exception; {:try_start_61 .. :try_end_97} :catch_98
    .catchall {:try_start_61 .. :try_end_97} :catchall_a1

    goto :goto_41

    .line 146
    .end local v5    # "buzz":Lcom/buzzfeed/toolkit/content/Buzz;
    :catch_98
    move-exception v6

    .line 147
    .local v6, "e":Ljava/lang/Exception;
    :try_start_99
    const-string v17, "Error in Content JSON when trying to parse it into flow item"

    move-object/from16 v0, v17

    invoke-static {v2, v0, v6}, Lcom/buzzfeed/toolkit/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_a0
    .catchall {:try_start_99 .. :try_end_a0} :catchall_a1

    goto :goto_41

    .line 131
    .end local v2    # "TAG":Ljava/lang/String;
    .end local v6    # "e":Ljava/lang/Exception;
    .end local v7    # "flowItem":Lcom/buzzfeed/toolkit/content/FlowItem;
    .end local v11    # "object":Ljava/lang/Object;
    .end local v12    # "objects":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    .end local v14    # "timestamp":J
    :catchall_a1
    move-exception v16

    monitor-exit p0

    throw v16

    .line 150
    .restart local v2    # "TAG":Ljava/lang/String;
    .restart local v11    # "object":Ljava/lang/Object;
    .restart local v12    # "objects":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    .restart local v14    # "timestamp":J
    :cond_a4
    :try_start_a4
    instance-of v0, v11, Lcom/buzzfeed/android/data/FlowItem;

    move/from16 v17, v0

    if-eqz v17, :cond_13b

    .line 151
    move-object v0, v11

    check-cast v0, Lcom/buzzfeed/android/data/FlowItem;

    move-object v10, v0

    .line 153
    .local v10, "legacyFlowItem":Lcom/buzzfeed/android/data/FlowItem;
    invoke-virtual {v10}, Lcom/buzzfeed/android/data/FlowItem;->getContent()Lcom/buzzfeed/android/data/FlowItem$Content;

    move-result-object v17

    move-object/from16 v0, v17

    instance-of v0, v0, Lcom/buzzfeed/android/data/Buzz;

    move/from16 v17, v0
    :try_end_b8
    .catchall {:try_start_a4 .. :try_end_b8} :catchall_a1

    if-eqz v17, :cond_41

    .line 155
    :try_start_ba
    invoke-virtual {v10}, Lcom/buzzfeed/android/data/FlowItem;->getContent()Lcom/buzzfeed/android/data/FlowItem$Content;

    move-result-object v9

    check-cast v9, Lcom/buzzfeed/android/data/Buzz;

    .line 157
    .local v9, "legacyBuzz":Lcom/buzzfeed/android/data/Buzz;
    new-instance v7, Lcom/buzzfeed/toolkit/content/FlowItem;

    invoke-direct {v7}, Lcom/buzzfeed/toolkit/content/FlowItem;-><init>()V

    .line 158
    .restart local v7    # "flowItem":Lcom/buzzfeed/toolkit/content/FlowItem;
    sget-object v4, Lcom/buzzfeed/toolkit/content/BuffetType;->POST:Lcom/buzzfeed/toolkit/content/BuffetType;

    .line 159
    .local v4, "buffetType":Lcom/buzzfeed/toolkit/content/BuffetType;
    invoke-virtual {v9}, Lcom/buzzfeed/android/data/Buzz;->isAd()Z

    move-result v17

    if-eqz v17, :cond_cf

    .line 160
    sget-object v4, Lcom/buzzfeed/toolkit/content/BuffetType;->EDITORIAL_AD:Lcom/buzzfeed/toolkit/content/BuffetType;

    .line 162
    :cond_cf
    new-instance v17, Lorg/json/JSONObject;

    invoke-virtual {v9}, Lcom/buzzfeed/android/data/Buzz;->getJson()Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    new-instance v18, Lcom/buzzfeed/android/data/factory/MobileFeedFactory;

    invoke-virtual {v4}, Lcom/buzzfeed/toolkit/content/BuffetType;->name()Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Lcom/buzzfeed/android/data/factory/MobileFeedFactory;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v7, v0, v1}, Lcom/buzzfeed/toolkit/content/FlowItem;->parse(Lorg/json/JSONObject;Lcom/buzzfeed/toolkit/content/ContentFactory;)V

    .line 163
    invoke-virtual {v7}, Lcom/buzzfeed/toolkit/content/FlowItem;->getContent()Lcom/buzzfeed/toolkit/content/Content;

    move-result-object v5

    check-cast v5, Lcom/buzzfeed/toolkit/content/Buzz;

    .line 165
    .restart local v5    # "buzz":Lcom/buzzfeed/toolkit/content/Buzz;
    invoke-virtual {v9}, Lcom/buzzfeed/android/data/Buzz;->getBookmarked()J

    move-result-wide v18

    move-wide/from16 v0, v18

    invoke-virtual {v5, v0, v1}, Lcom/buzzfeed/toolkit/content/Buzz;->setBookmarked(J)V

    .line 166
    invoke-virtual {v5}, Lcom/buzzfeed/toolkit/content/Buzz;->getBookmarked()J

    move-result-wide v18

    const-wide/16 v20, 0x0

    cmp-long v17, v18, v20

    if-gtz v17, :cond_108

    .line 167
    invoke-virtual {v5, v14, v15}, Lcom/buzzfeed/toolkit/content/Buzz;->setBookmarked(J)V

    .line 168
    const-wide/16 v18, 0x1

    sub-long v14, v14, v18

    .line 170
    :cond_108
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager;->bookmarkList:Lcom/buzzfeed/android/data/bookmark/BookmarkFlowList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Lcom/buzzfeed/android/data/bookmark/BookmarkFlowList;->add(Lcom/buzzfeed/toolkit/content/FlowItem;)Z

    .line 171
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Restored LegacyFlowItem/LegacyBuzz bookmark: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual {v5}, Lcom/buzzfeed/toolkit/content/Buzz;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-static {v2, v0}, Lcom/buzzfeed/toolkit/util/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_12f
    .catch Ljava/lang/Exception; {:try_start_ba .. :try_end_12f} :catch_131
    .catchall {:try_start_ba .. :try_end_12f} :catchall_a1

    goto/16 :goto_41

    .line 172
    .end local v4    # "buffetType":Lcom/buzzfeed/toolkit/content/BuffetType;
    .end local v5    # "buzz":Lcom/buzzfeed/toolkit/content/Buzz;
    .end local v7    # "flowItem":Lcom/buzzfeed/toolkit/content/FlowItem;
    .end local v9    # "legacyBuzz":Lcom/buzzfeed/android/data/Buzz;
    :catch_131
    move-exception v6

    .line 173
    .restart local v6    # "e":Ljava/lang/Exception;
    :try_start_132
    const-string v17, "Error in Content JSON when trying to parse it into flow item"

    move-object/from16 v0, v17

    invoke-static {v2, v0, v6}, Lcom/buzzfeed/toolkit/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_41

    .line 176
    .end local v6    # "e":Ljava/lang/Exception;
    .end local v10    # "legacyFlowItem":Lcom/buzzfeed/android/data/FlowItem;
    :cond_13b
    instance-of v0, v11, Lcom/buzzfeed/android/data/Bookmark;

    move/from16 v17, v0

    if-eqz v17, :cond_41

    .line 177
    move-object v0, v11

    check-cast v0, Lcom/buzzfeed/android/data/Bookmark;

    move-object v3, v0

    .line 179
    .local v3, "bookmark":Lcom/buzzfeed/android/data/Bookmark;
    invoke-virtual {v3}, Lcom/buzzfeed/android/data/Bookmark;->getJson()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_14c
    .catchall {:try_start_132 .. :try_end_14c} :catchall_a1

    move-result v17

    if-nez v17, :cond_41

    .line 182
    :try_start_14f
    new-instance v7, Lcom/buzzfeed/toolkit/content/FlowItem;

    invoke-direct {v7}, Lcom/buzzfeed/toolkit/content/FlowItem;-><init>()V

    .line 183
    .restart local v7    # "flowItem":Lcom/buzzfeed/toolkit/content/FlowItem;
    sget-object v4, Lcom/buzzfeed/toolkit/content/BuffetType;->POST:Lcom/buzzfeed/toolkit/content/BuffetType;

    .line 184
    .restart local v4    # "buffetType":Lcom/buzzfeed/toolkit/content/BuffetType;
    const-string v17, "ad"

    invoke-virtual {v3}, Lcom/buzzfeed/android/data/Bookmark;->getType()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_164

    .line 185
    sget-object v4, Lcom/buzzfeed/toolkit/content/BuffetType;->EDITORIAL_AD:Lcom/buzzfeed/toolkit/content/BuffetType;

    .line 187
    :cond_164
    new-instance v17, Lorg/json/JSONObject;

    invoke-virtual {v3}, Lcom/buzzfeed/android/data/Bookmark;->getJson()Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    new-instance v18, Lcom/buzzfeed/android/data/factory/MobileFeedFactory;

    invoke-virtual {v4}, Lcom/buzzfeed/toolkit/content/BuffetType;->name()Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Lcom/buzzfeed/android/data/factory/MobileFeedFactory;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v7, v0, v1}, Lcom/buzzfeed/toolkit/content/FlowItem;->parse(Lorg/json/JSONObject;Lcom/buzzfeed/toolkit/content/ContentFactory;)V

    .line 188
    invoke-virtual {v7}, Lcom/buzzfeed/toolkit/content/FlowItem;->getContent()Lcom/buzzfeed/toolkit/content/Content;

    move-result-object v5

    check-cast v5, Lcom/buzzfeed/toolkit/content/Buzz;

    .line 190
    .restart local v5    # "buzz":Lcom/buzzfeed/toolkit/content/Buzz;
    invoke-virtual {v3}, Lcom/buzzfeed/android/data/Bookmark;->getTimestamp()J

    move-result-wide v18

    move-wide/from16 v0, v18

    invoke-virtual {v5, v0, v1}, Lcom/buzzfeed/toolkit/content/Buzz;->setBookmarked(J)V

    .line 191
    invoke-virtual {v5}, Lcom/buzzfeed/toolkit/content/Buzz;->getBookmarked()J

    move-result-wide v18

    const-wide/16 v20, 0x0

    cmp-long v17, v18, v20

    if-gtz v17, :cond_19d

    .line 192
    invoke-virtual {v5, v14, v15}, Lcom/buzzfeed/toolkit/content/Buzz;->setBookmarked(J)V

    .line 193
    const-wide/16 v18, 0x1

    sub-long v14, v14, v18

    .line 195
    :cond_19d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager;->bookmarkList:Lcom/buzzfeed/android/data/bookmark/BookmarkFlowList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Lcom/buzzfeed/android/data/bookmark/BookmarkFlowList;->add(Lcom/buzzfeed/toolkit/content/FlowItem;)Z

    .line 196
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Restored bookmark: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual {v3}, Lcom/buzzfeed/android/data/Bookmark;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-static {v2, v0}, Lcom/buzzfeed/toolkit/util/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1c4
    .catch Ljava/lang/Exception; {:try_start_14f .. :try_end_1c4} :catch_1c6
    .catchall {:try_start_14f .. :try_end_1c4} :catchall_a1

    goto/16 :goto_41

    .line 197
    .end local v4    # "buffetType":Lcom/buzzfeed/toolkit/content/BuffetType;
    .end local v5    # "buzz":Lcom/buzzfeed/toolkit/content/Buzz;
    .end local v7    # "flowItem":Lcom/buzzfeed/toolkit/content/FlowItem;
    :catch_1c6
    move-exception v6

    .line 198
    .restart local v6    # "e":Ljava/lang/Exception;
    :try_start_1c7
    const-string v17, "Error in Content JSON when trying to parse it into flow item"

    move-object/from16 v0, v17

    invoke-static {v2, v0, v6}, Lcom/buzzfeed/toolkit/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_41

    .line 205
    .end local v3    # "bookmark":Lcom/buzzfeed/android/data/Bookmark;
    .end local v6    # "e":Ljava/lang/Exception;
    .end local v11    # "object":Ljava/lang/Object;
    :cond_1d0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager;->context:Landroid/content/Context;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v13

    .line 206
    .local v13, "sharedPref":Landroid/content/SharedPreferences;
    const-string v16, "bookmarksSyncedOnUpgrade"

    const/16 v17, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-interface {v13, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v16

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager;->hasSyncedOnUpgrade:Z

    .line 209
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager;->hasSyncedOnUpgrade:Z

    move/from16 v16, v0

    if-nez v16, :cond_21e

    .line 210
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager;->bookmarkList:Lcom/buzzfeed/android/data/bookmark/BookmarkFlowList;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/buzzfeed/android/data/bookmark/BookmarkFlowList;->getList()Ljava/util/List;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_202
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_21e

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/buzzfeed/toolkit/content/FlowItem;

    .line 211
    .restart local v7    # "flowItem":Lcom/buzzfeed/toolkit/content/FlowItem;
    invoke-virtual {v7}, Lcom/buzzfeed/toolkit/content/FlowItem;->getId()Ljava/lang/String;

    move-result-object v8

    .line 212
    .local v8, "id":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager;->bookmarkSyncMap:Ljava/util/HashMap;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v8, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_21d
    .catchall {:try_start_1c7 .. :try_end_21d} :catchall_a1

    goto :goto_202

    .line 215
    .end local v7    # "flowItem":Lcom/buzzfeed/toolkit/content/FlowItem;
    .end local v8    # "id":Ljava/lang/String;
    :cond_21e
    monitor-exit p0

    return-void
.end method

.method public setBookmark(Lcom/buzzfeed/toolkit/content/Buzz;Z)V
    .registers 7
    .param p1, "buzz"    # Lcom/buzzfeed/toolkit/content/Buzz;
    .param p2, "isBookmark"    # Z

    .prologue
    .line 286
    invoke-virtual {p1}, Lcom/buzzfeed/toolkit/content/Buzz;->isAd()Z

    move-result v2

    if-eqz v2, :cond_31

    .line 287
    invoke-virtual {p1}, Lcom/buzzfeed/toolkit/content/Buzz;->clone()Lcom/buzzfeed/toolkit/content/Buzz;

    move-result-object v0

    .line 288
    .local v0, "buzzClone":Lcom/buzzfeed/toolkit/content/Buzz;
    invoke-virtual {p1}, Lcom/buzzfeed/toolkit/content/Buzz;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/buzzfeed/toolkit/content/Buzz;->setId(Ljava/lang/String;)Lcom/buzzfeed/toolkit/content/Buzz;

    .line 293
    :goto_11
    invoke-virtual {v0}, Lcom/buzzfeed/toolkit/content/Buzz;->isAd()Z

    move-result v2

    if-eqz v2, :cond_33

    sget-object v1, Lcom/buzzfeed/toolkit/content/BuffetType;->EDITORIAL_AD:Lcom/buzzfeed/toolkit/content/BuffetType;

    .line 294
    .local v1, "type":Lcom/buzzfeed/toolkit/content/BuffetType;
    :goto_19
    new-instance v2, Lcom/buzzfeed/toolkit/content/FlowItem;

    invoke-virtual {v1}, Lcom/buzzfeed/toolkit/content/BuffetType;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lcom/buzzfeed/toolkit/content/FlowItem;-><init>(Ljava/lang/String;Lcom/buzzfeed/toolkit/content/Content;)V

    const/4 v3, 0x1

    invoke-direct {p0, v2, p2, v3}, Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager;->setBookmark(Lcom/buzzfeed/toolkit/content/FlowItem;ZZ)V

    .line 296
    invoke-virtual {v0}, Lcom/buzzfeed/toolkit/content/Buzz;->getBookmarked()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Lcom/buzzfeed/toolkit/content/Buzz;->setBookmarked(J)V

    .line 297
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager;->isSynced:Z

    .line 298
    return-void

    .line 290
    .end local v0    # "buzzClone":Lcom/buzzfeed/toolkit/content/Buzz;
    .end local v1    # "type":Lcom/buzzfeed/toolkit/content/BuffetType;
    :cond_31
    move-object v0, p1

    .restart local v0    # "buzzClone":Lcom/buzzfeed/toolkit/content/Buzz;
    goto :goto_11

    .line 293
    :cond_33
    sget-object v1, Lcom/buzzfeed/toolkit/content/BuffetType;->POST:Lcom/buzzfeed/toolkit/content/BuffetType;

    goto :goto_19
.end method

.method public declared-synchronized setIsBookmarked(Lcom/buzzfeed/toolkit/content/Buzz;)Z
    .registers 8
    .param p1, "buzz"    # Lcom/buzzfeed/toolkit/content/Buzz;

    .prologue
    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    .line 263
    monitor-enter p0

    if-nez p1, :cond_8

    .line 273
    :goto_6
    monitor-exit p0

    return v2

    .line 266
    :cond_8
    :try_start_8
    iget-object v3, p0, Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager;->bookmarkList:Lcom/buzzfeed/android/data/bookmark/BookmarkFlowList;

    invoke-virtual {v3, p1}, Lcom/buzzfeed/android/data/bookmark/BookmarkFlowList;->getLocationForContent(Lcom/buzzfeed/toolkit/content/Content;)I

    move-result v0

    .line 267
    .local v0, "location":I
    if-ltz v0, :cond_2e

    .line 268
    iget-object v2, p0, Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager;->bookmarkList:Lcom/buzzfeed/android/data/bookmark/BookmarkFlowList;

    invoke-virtual {v2, v0}, Lcom/buzzfeed/android/data/bookmark/BookmarkFlowList;->get(I)Lcom/buzzfeed/toolkit/content/FlowItem;

    move-result-object v2

    invoke-virtual {v2}, Lcom/buzzfeed/toolkit/content/FlowItem;->getContent()Lcom/buzzfeed/toolkit/content/Content;

    move-result-object v1

    check-cast v1, Lcom/buzzfeed/toolkit/content/Buzz;

    .line 269
    .local v1, "lookup":Lcom/buzzfeed/toolkit/content/Buzz;
    invoke-virtual {v1}, Lcom/buzzfeed/toolkit/content/Buzz;->isBookmarked()Z

    move-result v2

    if-eqz v2, :cond_2c

    const-wide/16 v2, 0x1

    :goto_24
    invoke-virtual {p1, v2, v3}, Lcom/buzzfeed/toolkit/content/Buzz;->setBookmarked(J)V

    .line 270
    invoke-virtual {p1}, Lcom/buzzfeed/toolkit/content/Buzz;->isBookmarked()Z

    move-result v2

    goto :goto_6

    :cond_2c
    move-wide v2, v4

    .line 269
    goto :goto_24

    .line 272
    .end local v1    # "lookup":Lcom/buzzfeed/toolkit/content/Buzz;
    :cond_2e
    const-wide/16 v4, 0x0

    invoke-virtual {p1, v4, v5}, Lcom/buzzfeed/toolkit/content/Buzz;->setBookmarked(J)V
    :try_end_33
    .catchall {:try_start_8 .. :try_end_33} :catchall_34

    goto :goto_6

    .line 263
    .end local v0    # "location":I
    :catchall_34
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public setListener(Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager$CompletionListener;)V
    .registers 2
    .param p1, "listener"    # Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager$CompletionListener;

    .prologue
    .line 765
    iput-object p1, p0, Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager;->listener:Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager$CompletionListener;

    .line 766
    return-void
.end method

.method public syncBookmarks(ZLcom/buzzfeed/android/data/bookmark/BFBookmarkManager$SyncCompleteListener;)Lcom/buzzfeed/toolkit/util/retrofit/SafeCall;
    .registers 12
    .param p1, "shouldResync"    # Z
    .param p2, "syncCompleteListener"    # Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager$SyncCompleteListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager$SyncCompleteListener;",
            ")",
            "Lcom/buzzfeed/toolkit/util/retrofit/SafeCall",
            "<",
            "Lokhttp3/ResponseBody;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    .line 390
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager;->TAG:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".syncBookmarks"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 392
    .local v0, "TAG":Ljava/lang/String;
    iget-object v6, p0, Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager;->context:Landroid/content/Context;

    invoke-static {v6}, Lcom/buzzfeed/android/data/BuzzUser;->getInstance(Landroid/content/Context;)Lcom/buzzfeed/android/data/BuzzUser;

    move-result-object v5

    .line 393
    .local v5, "user":Lcom/buzzfeed/android/data/BuzzUser;
    if-eqz v5, :cond_4d

    invoke-virtual {v5}, Lcom/buzzfeed/android/data/BuzzUser;->getUserid()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_4d

    .line 394
    invoke-virtual {v5}, Lcom/buzzfeed/android/data/BuzzUser;->getSessionKey()Ljava/lang/String;

    move-result-object v3

    .line 395
    .local v3, "sessionKey":Ljava/lang/String;
    if-eqz p1, :cond_48

    const-string v4, ""

    .line 396
    .local v4, "syncID":Ljava/lang/String;
    :goto_2c
    if-nez v4, :cond_30

    const-string v4, ""

    .line 397
    :cond_30
    iput-boolean v8, p0, Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager;->isSyncing:Z

    .line 399
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    .line 400
    .local v2, "handler":Landroid/os/Handler;
    new-instance v1, Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager$1;

    invoke-direct {v1, p0, v2, v0, p2}, Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager$1;-><init>(Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager;Landroid/os/Handler;Ljava/lang/String;Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager$SyncCompleteListener;)V

    .line 429
    .local v1, "callback":Lcom/buzzfeed/toolkit/util/retrofit/RetryCallback;, "Lcom/buzzfeed/toolkit/util/retrofit/RetryCallback<Lokhttp3/ResponseBody;>;"
    invoke-virtual {v1, v8}, Lcom/buzzfeed/toolkit/util/retrofit/RetryCallback;->setRetryCount(I)V

    .line 430
    invoke-virtual {v5}, Lcom/buzzfeed/android/data/BuzzUser;->getUserid()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v4, v6, v1}, Lcom/buzzfeed/android/util/BuzzApiClient;->getBookmarksList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/buzzfeed/toolkit/util/retrofit/SafeCallback;)Lcom/buzzfeed/toolkit/util/retrofit/SafeCall;

    move-result-object v6

    .line 436
    .end local v1    # "callback":Lcom/buzzfeed/toolkit/util/retrofit/RetryCallback;, "Lcom/buzzfeed/toolkit/util/retrofit/RetryCallback<Lokhttp3/ResponseBody;>;"
    .end local v2    # "handler":Landroid/os/Handler;
    .end local v3    # "sessionKey":Ljava/lang/String;
    .end local v4    # "syncID":Ljava/lang/String;
    :goto_47
    return-object v6

    .line 395
    .restart local v3    # "sessionKey":Ljava/lang/String;
    :cond_48
    invoke-virtual {v5}, Lcom/buzzfeed/android/data/BuzzUser;->getSyncId()Ljava/lang/String;

    move-result-object v4

    goto :goto_2c

    .line 432
    .end local v3    # "sessionKey":Ljava/lang/String;
    :cond_4d
    const-string v6, "User is not logged in.  Nothing to sync."

    invoke-static {v0, v6}, Lcom/buzzfeed/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 433
    if-eqz p2, :cond_57

    .line 434
    invoke-interface {p2}, Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager$SyncCompleteListener;->onBookmarkSyncCompleted()V

    .line 436
    :cond_57
    const/4 v6, 0x0

    goto :goto_47
.end method

.method public syncBookmarks(Z)V
    .registers 3
    .param p1, "shouldResync"    # Z

    .prologue
    .line 375
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager;->syncBookmarks(ZLcom/buzzfeed/android/data/bookmark/BFBookmarkManager$SyncCompleteListener;)Lcom/buzzfeed/toolkit/util/retrofit/SafeCall;

    .line 376
    return-void
.end method

.method public toggleBookmark(Lcom/buzzfeed/toolkit/content/PostContent;Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager$ToggleBookmarkInterface;)V
    .registers 7
    .param p1, "postContent"    # Lcom/buzzfeed/toolkit/content/PostContent;
    .param p2, "callback"    # Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager$ToggleBookmarkInterface;

    .prologue
    .line 807
    invoke-virtual {p0, p1}, Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager;->isBookmarked(Lcom/buzzfeed/toolkit/content/Content;)Z

    move-result v2

    .line 808
    .local v2, "isBookmarked":Z
    iget-object v3, p0, Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager;->context:Landroid/content/Context;

    invoke-static {v3}, Lcom/buzzfeed/android/data/BuzzUser;->getInstance(Landroid/content/Context;)Lcom/buzzfeed/android/data/BuzzUser;

    move-result-object v1

    .line 809
    .local v1, "buzzUser":Lcom/buzzfeed/android/data/BuzzUser;
    if-nez v2, :cond_18

    if-eqz v1, :cond_14

    invoke-virtual {v1}, Lcom/buzzfeed/android/data/BuzzUser;->isLogin()Z

    move-result v3

    if-nez v3, :cond_18

    .line 811
    :cond_14
    invoke-interface {p2}, Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager$ToggleBookmarkInterface;->userLogin()V

    .line 818
    :cond_17
    :goto_17
    return-void

    .line 812
    :cond_18
    if-eqz p1, :cond_17

    invoke-interface {p1}, Lcom/buzzfeed/toolkit/content/PostContent;->isValid()Z

    move-result v3

    if-eqz v3, :cond_17

    .line 813
    invoke-direct {p0, p1}, Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager;->convertPostContentToBuzz(Lcom/buzzfeed/toolkit/content/PostContent;)Lcom/buzzfeed/toolkit/content/Buzz;

    move-result-object v0

    .line 814
    .local v0, "buzz":Lcom/buzzfeed/toolkit/content/Buzz;
    if-nez v2, :cond_31

    const/4 v3, 0x1

    :goto_27
    invoke-virtual {p0, v0, v3}, Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager;->setBookmark(Lcom/buzzfeed/toolkit/content/Buzz;Z)V

    .line 815
    invoke-virtual {p0}, Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager;->uploadLocalBookmarkChanges()V

    .line 816
    invoke-interface {p2}, Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager$ToggleBookmarkInterface;->bookmarkToggled()V

    goto :goto_17

    .line 814
    :cond_31
    const/4 v3, 0x0

    goto :goto_27
.end method

.method public updateLocalBookmarksFromServer(Lcom/buzzfeed/android/data/BuzzUser;Z)V
    .registers 8
    .param p1, "user"    # Lcom/buzzfeed/android/data/BuzzUser;
    .param p2, "shouldResync"    # Z

    .prologue
    .line 552
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager;->TAG:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".updateLocalBookmarksFromServer"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 553
    .local v0, "TAG":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/buzzfeed/android/data/BuzzUser;->getSessionKey()Ljava/lang/String;

    move-result-object v1

    .line 554
    .local v1, "sessionKey":Ljava/lang/String;
    if-eqz p2, :cond_31

    const-string v2, ""

    .line 555
    .local v2, "syncID":Ljava/lang/String;
    :goto_1d
    if-nez v2, :cond_21

    const-string v2, ""

    .line 556
    :cond_21
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager;->isSyncing:Z

    .line 557
    invoke-virtual {p1}, Lcom/buzzfeed/android/data/BuzzUser;->getUserid()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager$2;

    invoke-direct {v4, p0, v0}, Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager$2;-><init>(Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager;Ljava/lang/String;)V

    invoke-static {v1, v2, v3, v4}, Lcom/buzzfeed/android/util/BuzzApiClient;->getBookmarksList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/buzzfeed/toolkit/util/retrofit/SafeCallback;)Lcom/buzzfeed/toolkit/util/retrofit/SafeCall;

    .line 585
    return-void

    .line 554
    .end local v2    # "syncID":Ljava/lang/String;
    :cond_31
    invoke-virtual {p1}, Lcom/buzzfeed/android/data/BuzzUser;->getSyncId()Ljava/lang/String;

    move-result-object v2

    goto :goto_1d
.end method

.method public declared-synchronized uploadLocalBookmarkChanges()V
    .registers 7

    .prologue
    .line 591
    monitor-enter p0

    :try_start_1
    iget-object v4, p0, Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager;->context:Landroid/content/Context;

    invoke-static {v4}, Lcom/buzzfeed/android/data/BuzzUser;->getInstance(Landroid/content/Context;)Lcom/buzzfeed/android/data/BuzzUser;

    move-result-object v3

    .line 592
    .local v3, "user":Lcom/buzzfeed/android/data/BuzzUser;
    if-eqz v3, :cond_f

    invoke-virtual {v3}, Lcom/buzzfeed/android/data/BuzzUser;->isLogin()Z
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_1e

    move-result v4

    if-nez v4, :cond_11

    .line 617
    :cond_f
    :goto_f
    monitor-exit p0

    return-void

    .line 594
    :cond_11
    :try_start_11
    iget-object v4, p0, Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager;->bookmarkSyncMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    move-result v4

    if-nez v4, :cond_21

    .line 595
    const/4 v4, 0x1

    invoke-direct {p0, v4}, Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager;->onUploadBookmarksCompleted(Z)V
    :try_end_1d
    .catchall {:try_start_11 .. :try_end_1d} :catchall_1e

    goto :goto_f

    .line 591
    .end local v3    # "user":Lcom/buzzfeed/android/data/BuzzUser;
    :catchall_1e
    move-exception v4

    monitor-exit p0

    throw v4

    .line 599
    .restart local v3    # "user":Lcom/buzzfeed/android/data/BuzzUser;
    :cond_21
    :try_start_21
    new-instance v2, Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager;->bookmarkSyncMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 601
    .local v2, "flowItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/buzzfeed/toolkit/content/FlowItem;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_30
    :goto_30
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/buzzfeed/toolkit/content/FlowItem;

    .line 602
    .local v1, "flowItem":Lcom/buzzfeed/toolkit/content/FlowItem;
    invoke-direct {p0, v1}, Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager;->isTypeBuzz(Lcom/buzzfeed/toolkit/content/FlowItem;)Z

    move-result v5

    if-eqz v5, :cond_30

    .line 603
    invoke-virtual {v1}, Lcom/buzzfeed/toolkit/content/FlowItem;->getContent()Lcom/buzzfeed/toolkit/content/Content;

    move-result-object v0

    check-cast v0, Lcom/buzzfeed/toolkit/content/Buzz;

    .line 604
    .local v0, "b":Lcom/buzzfeed/toolkit/content/Buzz;
    invoke-virtual {v0}, Lcom/buzzfeed/toolkit/content/Buzz;->isBookmarked()Z

    move-result v5

    if-eqz v5, :cond_54

    .line 605
    iget-object v5, p0, Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager;->buzzesToAdd:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_30

    .line 607
    :cond_54
    iget-object v5, p0, Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager;->buzzesToDelete:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_30

    .line 612
    .end local v0    # "b":Lcom/buzzfeed/toolkit/content/Buzz;
    .end local v1    # "flowItem":Lcom/buzzfeed/toolkit/content/FlowItem;
    :cond_5a
    iget-object v4, p0, Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager;->buzzesToAdd:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_66

    .line 613
    invoke-direct {p0, v3}, Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager;->addLocalBookmarksToServer(Lcom/buzzfeed/android/data/BuzzUser;)V

    goto :goto_f

    .line 614
    :cond_66
    iget-object v4, p0, Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager;->buzzesToDelete:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_f

    .line 615
    invoke-direct {p0, v3}, Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager;->deleteBookmarksFromServer(Lcom/buzzfeed/android/data/BuzzUser;)V
    :try_end_71
    .catchall {:try_start_21 .. :try_end_71} :catchall_1e

    goto :goto_f
.end method
