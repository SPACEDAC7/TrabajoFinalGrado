.class Lcom/buzzfeed/android/database/BFCacheData$PutCacheQueueManager;
.super Ljava/lang/Object;
.source "BFCacheData.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/buzzfeed/android/database/BFCacheData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PutCacheQueueManager"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/buzzfeed/android/database/BFCacheData;


# direct methods
.method private constructor <init>(Lcom/buzzfeed/android/database/BFCacheData;)V
    .registers 2

    .prologue
    .line 405
    iput-object p1, p0, Lcom/buzzfeed/android/database/BFCacheData$PutCacheQueueManager;->this$0:Lcom/buzzfeed/android/database/BFCacheData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/buzzfeed/android/database/BFCacheData;Lcom/buzzfeed/android/database/BFCacheData$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/buzzfeed/android/database/BFCacheData;
    .param p2, "x1"    # Lcom/buzzfeed/android/database/BFCacheData$1;

    .prologue
    .line 405
    invoke-direct {p0, p1}, Lcom/buzzfeed/android/database/BFCacheData$PutCacheQueueManager;-><init>(Lcom/buzzfeed/android/database/BFCacheData;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    .line 408
    iget-object v3, p0, Lcom/buzzfeed/android/database/BFCacheData$PutCacheQueueManager;->this$0:Lcom/buzzfeed/android/database/BFCacheData;

    # getter for: Lcom/buzzfeed/android/database/BFCacheData;->dbHelper:Landroid/database/sqlite/SQLiteOpenHelper;
    invoke-static {v3}, Lcom/buzzfeed/android/database/BFCacheData;->access$300(Lcom/buzzfeed/android/database/BFCacheData;)Landroid/database/sqlite/SQLiteOpenHelper;

    move-result-object v3

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 412
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    :cond_a
    :try_start_a
    iget-object v3, p0, Lcom/buzzfeed/android/database/BFCacheData$PutCacheQueueManager;->this$0:Lcom/buzzfeed/android/database/BFCacheData;

    # getter for: Lcom/buzzfeed/android/database/BFCacheData;->putCacheQueue:Lcom/buzzfeed/android/database/BFCacheData$PutCacheQueue;
    invoke-static {v3}, Lcom/buzzfeed/android/database/BFCacheData;->access$400(Lcom/buzzfeed/android/database/BFCacheData;)Lcom/buzzfeed/android/database/BFCacheData$PutCacheQueue;

    move-result-object v3

    # getter for: Lcom/buzzfeed/android/database/BFCacheData$PutCacheQueue;->stack:Ljava/util/Stack;
    invoke-static {v3}, Lcom/buzzfeed/android/database/BFCacheData$PutCacheQueue;->access$200(Lcom/buzzfeed/android/database/BFCacheData$PutCacheQueue;)Ljava/util/Stack;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Stack;->size()I

    move-result v3

    if-nez v3, :cond_3f

    .line 413
    iget-object v3, p0, Lcom/buzzfeed/android/database/BFCacheData$PutCacheQueueManager;->this$0:Lcom/buzzfeed/android/database/BFCacheData;

    # getter for: Lcom/buzzfeed/android/database/BFCacheData;->putCacheQueue:Lcom/buzzfeed/android/database/BFCacheData$PutCacheQueue;
    invoke-static {v3}, Lcom/buzzfeed/android/database/BFCacheData;->access$400(Lcom/buzzfeed/android/database/BFCacheData;)Lcom/buzzfeed/android/database/BFCacheData$PutCacheQueue;

    move-result-object v3

    # getter for: Lcom/buzzfeed/android/database/BFCacheData$PutCacheQueue;->stack:Ljava/util/Stack;
    invoke-static {v3}, Lcom/buzzfeed/android/database/BFCacheData$PutCacheQueue;->access$200(Lcom/buzzfeed/android/database/BFCacheData$PutCacheQueue;)Ljava/util/Stack;

    move-result-object v4

    monitor-enter v4
    :try_end_25
    .catch Ljava/lang/InterruptedException; {:try_start_a .. :try_end_25} :catch_3d

    .line 414
    :try_start_25
    iget-object v3, p0, Lcom/buzzfeed/android/database/BFCacheData$PutCacheQueueManager;->this$0:Lcom/buzzfeed/android/database/BFCacheData;

    # getter for: Lcom/buzzfeed/android/database/BFCacheData;->putCacheQueue:Lcom/buzzfeed/android/database/BFCacheData$PutCacheQueue;
    invoke-static {v3}, Lcom/buzzfeed/android/database/BFCacheData;->access$400(Lcom/buzzfeed/android/database/BFCacheData;)Lcom/buzzfeed/android/database/BFCacheData$PutCacheQueue;

    move-result-object v3

    # getter for: Lcom/buzzfeed/android/database/BFCacheData$PutCacheQueue;->stack:Ljava/util/Stack;
    invoke-static {v3}, Lcom/buzzfeed/android/database/BFCacheData$PutCacheQueue;->access$200(Lcom/buzzfeed/android/database/BFCacheData$PutCacheQueue;)Ljava/util/Stack;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->wait()V

    .line 415
    monitor-exit v4
    :try_end_33
    .catchall {:try_start_25 .. :try_end_33} :catchall_3a

    .line 426
    :cond_33
    :goto_33
    :try_start_33
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z
    :try_end_36
    .catch Ljava/lang/InterruptedException; {:try_start_33 .. :try_end_36} :catch_3d

    move-result v3

    if-eqz v3, :cond_a

    .line 430
    :goto_39
    return-void

    .line 415
    :catchall_3a
    move-exception v3

    :try_start_3b
    monitor-exit v4
    :try_end_3c
    .catchall {:try_start_3b .. :try_end_3c} :catchall_3a

    :try_start_3c
    throw v3

    .line 428
    :catch_3d
    move-exception v3

    goto :goto_39

    .line 417
    :cond_3f
    const/4 v2, 0x0

    .line 418
    .local v2, "putCache":Lcom/buzzfeed/android/database/BFCacheData$PutCache;
    iget-object v3, p0, Lcom/buzzfeed/android/database/BFCacheData$PutCacheQueueManager;->this$0:Lcom/buzzfeed/android/database/BFCacheData;

    # getter for: Lcom/buzzfeed/android/database/BFCacheData;->putCacheQueue:Lcom/buzzfeed/android/database/BFCacheData$PutCacheQueue;
    invoke-static {v3}, Lcom/buzzfeed/android/database/BFCacheData;->access$400(Lcom/buzzfeed/android/database/BFCacheData;)Lcom/buzzfeed/android/database/BFCacheData$PutCacheQueue;

    move-result-object v3

    # getter for: Lcom/buzzfeed/android/database/BFCacheData$PutCacheQueue;->stack:Ljava/util/Stack;
    invoke-static {v3}, Lcom/buzzfeed/android/database/BFCacheData$PutCacheQueue;->access$200(Lcom/buzzfeed/android/database/BFCacheData$PutCacheQueue;)Ljava/util/Stack;

    move-result-object v4

    monitor-enter v4
    :try_end_4b
    .catch Ljava/lang/InterruptedException; {:try_start_3c .. :try_end_4b} :catch_3d

    .line 419
    :try_start_4b
    iget-object v3, p0, Lcom/buzzfeed/android/database/BFCacheData$PutCacheQueueManager;->this$0:Lcom/buzzfeed/android/database/BFCacheData;

    # getter for: Lcom/buzzfeed/android/database/BFCacheData;->putCacheQueue:Lcom/buzzfeed/android/database/BFCacheData$PutCacheQueue;
    invoke-static {v3}, Lcom/buzzfeed/android/database/BFCacheData;->access$400(Lcom/buzzfeed/android/database/BFCacheData;)Lcom/buzzfeed/android/database/BFCacheData$PutCacheQueue;

    move-result-object v3

    # getter for: Lcom/buzzfeed/android/database/BFCacheData$PutCacheQueue;->stack:Ljava/util/Stack;
    invoke-static {v3}, Lcom/buzzfeed/android/database/BFCacheData$PutCacheQueue;->access$200(Lcom/buzzfeed/android/database/BFCacheData$PutCacheQueue;)Ljava/util/Stack;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Stack;->size()I

    move-result v3

    if-lez v3, :cond_6d

    .line 420
    iget-object v3, p0, Lcom/buzzfeed/android/database/BFCacheData$PutCacheQueueManager;->this$0:Lcom/buzzfeed/android/database/BFCacheData;

    # getter for: Lcom/buzzfeed/android/database/BFCacheData;->putCacheQueue:Lcom/buzzfeed/android/database/BFCacheData$PutCacheQueue;
    invoke-static {v3}, Lcom/buzzfeed/android/database/BFCacheData;->access$400(Lcom/buzzfeed/android/database/BFCacheData;)Lcom/buzzfeed/android/database/BFCacheData$PutCacheQueue;

    move-result-object v3

    # getter for: Lcom/buzzfeed/android/database/BFCacheData$PutCacheQueue;->stack:Ljava/util/Stack;
    invoke-static {v3}, Lcom/buzzfeed/android/database/BFCacheData$PutCacheQueue;->access$200(Lcom/buzzfeed/android/database/BFCacheData$PutCacheQueue;)Ljava/util/Stack;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/buzzfeed/android/database/BFCacheData$PutCache;

    move-object v2, v0

    .line 421
    :cond_6d
    monitor-exit v4
    :try_end_6e
    .catchall {:try_start_4b .. :try_end_6e} :catchall_74

    .line 422
    if-eqz v2, :cond_33

    .line 423
    :try_start_70
    # invokes: Lcom/buzzfeed/android/database/BFCacheData;->writePutCache(Landroid/database/sqlite/SQLiteDatabase;Lcom/buzzfeed/android/database/BFCacheData$PutCache;)V
    invoke-static {v1, v2}, Lcom/buzzfeed/android/database/BFCacheData;->access$500(Landroid/database/sqlite/SQLiteDatabase;Lcom/buzzfeed/android/database/BFCacheData$PutCache;)V
    :try_end_73
    .catch Ljava/lang/InterruptedException; {:try_start_70 .. :try_end_73} :catch_3d

    goto :goto_33

    .line 421
    :catchall_74
    move-exception v3

    :try_start_75
    monitor-exit v4
    :try_end_76
    .catchall {:try_start_75 .. :try_end_76} :catchall_74

    :try_start_76
    throw v3
    :try_end_77
    .catch Ljava/lang/InterruptedException; {:try_start_76 .. :try_end_77} :catch_3d
.end method
