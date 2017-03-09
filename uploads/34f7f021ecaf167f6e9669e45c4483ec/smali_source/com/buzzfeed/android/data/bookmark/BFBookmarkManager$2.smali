.class Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager$2;
.super Lcom/buzzfeed/toolkit/util/retrofit/StringCallback;
.source "BFBookmarkManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager;->updateLocalBookmarksFromServer(Lcom/buzzfeed/android/data/BuzzUser;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager;

.field final synthetic val$TAG:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager;Ljava/lang/String;)V
    .registers 3
    .param p1, "this$0"    # Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager;

    .prologue
    .line 557
    iput-object p1, p0, Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager$2;->this$0:Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager;

    iput-object p2, p0, Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager$2;->val$TAG:Ljava/lang/String;

    invoke-direct {p0}, Lcom/buzzfeed/toolkit/util/retrofit/StringCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lretrofit2/Call;Ljava/lang/Throwable;)V
    .registers 5
    .param p2, "t"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call",
            "<",
            "Lokhttp3/ResponseBody;",
            ">;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .prologue
    .line 581
    .local p1, "call":Lretrofit2/Call;, "Lretrofit2/Call<Lokhttp3/ResponseBody;>;"
    iget-object v0, p0, Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager$2;->val$TAG:Ljava/lang/String;

    const-string v1, "Error retrieving bookmarks list"

    invoke-static {v0, v1, p2}, Lcom/buzzfeed/toolkit/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 582
    iget-object v0, p0, Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager$2;->this$0:Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager;

    const/4 v1, 0x0

    # invokes: Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager;->onBookmarkSyncCompleted(ZLjava/lang/Throwable;)V
    invoke-static {v0, v1, p2}, Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager;->access$000(Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager;ZLjava/lang/Throwable;)V

    .line 583
    return-void
.end method

.method protected onNetworkError(Lretrofit2/Call;Lretrofit2/Response;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call",
            "<",
            "Lokhttp3/ResponseBody;",
            ">;",
            "Lretrofit2/Response",
            "<",
            "Lokhttp3/ResponseBody;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 574
    .local p1, "call":Lretrofit2/Call;, "Lretrofit2/Call<Lokhttp3/ResponseBody;>;"
    .local p2, "response":Lretrofit2/Response;, "Lretrofit2/Response<Lokhttp3/ResponseBody;>;"
    invoke-virtual {p2}, Lretrofit2/Response;->code()I

    move-result v1

    invoke-static {v1}, Lcom/buzzfeed/toolkit/util/HttpErrorParser;->createExceptionOnHttpError(I)Lcom/buzzfeed/toolkit/util/HttpException;

    move-result-object v0

    .line 575
    .local v0, "httpError":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager$2;->val$TAG:Ljava/lang/String;

    const-string v2, "Network Response Error "

    invoke-static {v1, v2, v0}, Lcom/buzzfeed/toolkit/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 576
    iget-object v1, p0, Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager$2;->this$0:Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager;

    const/4 v2, 0x0

    const/4 v3, 0x0

    # invokes: Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager;->onBookmarkSyncCompleted(ZLjava/lang/Throwable;)V
    invoke-static {v1, v2, v3}, Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager;->access$000(Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager;ZLjava/lang/Throwable;)V

    .line 577
    return-void
.end method

.method public onStringResponse(Ljava/lang/String;)V
    .registers 10
    .param p1, "response"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    const/4 v4, 0x0

    .line 561
    :try_start_2
    iget-object v5, p0, Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager$2;->this$0:Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager;

    # invokes: Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager;->getBuzzFeedJsonReaderFromResponseString(Ljava/lang/String;)Lcom/buzzfeed/android/util/BuzzFeedJsonReader;
    invoke-static {v5, p1}, Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager;->access$100(Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager;Ljava/lang/String;)Lcom/buzzfeed/android/util/BuzzFeedJsonReader;

    move-result-object v2

    .line 562
    .local v2, "reader":Lcom/buzzfeed/android/util/BuzzFeedJsonReader;
    iget-object v5, p0, Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager$2;->this$0:Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager;

    # invokes: Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager;->getBookmarkListAndSetSyncId(Lcom/buzzfeed/android/util/BuzzFeedJsonReader;)Lcom/buzzfeed/toolkit/content/FlowList;
    invoke-static {v5, v2}, Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager;->access$200(Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager;Lcom/buzzfeed/android/util/BuzzFeedJsonReader;)Lcom/buzzfeed/toolkit/content/FlowList;

    move-result-object v1

    .line 563
    .local v1, "flowList":Lcom/buzzfeed/toolkit/content/FlowList;
    if-eqz v1, :cond_1f

    const/4 v3, 0x1

    .line 564
    .local v3, "success":Z
    :goto_11
    if-eqz v3, :cond_18

    iget-object v5, p0, Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager$2;->this$0:Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager;

    # invokes: Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager;->syncBookmarksWithJson(Lcom/buzzfeed/toolkit/content/FlowList;)V
    invoke-static {v5, v1}, Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager;->access$300(Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager;Lcom/buzzfeed/toolkit/content/FlowList;)V

    .line 565
    :cond_18
    iget-object v5, p0, Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager$2;->this$0:Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager;

    const/4 v6, 0x0

    # invokes: Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager;->onBookmarkSyncCompleted(ZLjava/lang/Throwable;)V
    invoke-static {v5, v3, v6}, Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager;->access$000(Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager;ZLjava/lang/Throwable;)V
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_1e} :catch_21

    .line 570
    .end local v1    # "flowList":Lcom/buzzfeed/toolkit/content/FlowList;
    .end local v2    # "reader":Lcom/buzzfeed/android/util/BuzzFeedJsonReader;
    .end local v3    # "success":Z
    :goto_1e
    return-void

    .restart local v1    # "flowList":Lcom/buzzfeed/toolkit/content/FlowList;
    .restart local v2    # "reader":Lcom/buzzfeed/android/util/BuzzFeedJsonReader;
    :cond_1f
    move v3, v4

    .line 563
    goto :goto_11

    .line 566
    .end local v1    # "flowList":Lcom/buzzfeed/toolkit/content/FlowList;
    .end local v2    # "reader":Lcom/buzzfeed/android/util/BuzzFeedJsonReader;
    :catch_21
    move-exception v0

    .line 567
    .local v0, "ex":Ljava/lang/Exception;
    iget-object v5, p0, Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager$2;->val$TAG:Ljava/lang/String;

    const-string v6, "Error retrieving bookmarks list "

    invoke-static {v5, v6, v0}, Lcom/buzzfeed/toolkit/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 568
    iget-object v5, p0, Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager$2;->this$0:Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager;

    # invokes: Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager;->onBookmarkSyncCompleted(ZLjava/lang/Throwable;)V
    invoke-static {v5, v4, v7}, Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager;->access$000(Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager;ZLjava/lang/Throwable;)V

    goto :goto_1e
.end method
