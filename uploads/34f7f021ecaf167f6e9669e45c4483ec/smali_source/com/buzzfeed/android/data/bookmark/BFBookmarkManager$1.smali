.class Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager$1;
.super Lcom/buzzfeed/toolkit/util/retrofit/RetryCallback;
.source "BFBookmarkManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager;->syncBookmarks(ZLcom/buzzfeed/android/data/bookmark/BFBookmarkManager$SyncCompleteListener;)Lcom/buzzfeed/toolkit/util/retrofit/SafeCall;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/buzzfeed/toolkit/util/retrofit/RetryCallback",
        "<",
        "Lokhttp3/ResponseBody;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager;

.field final synthetic val$TAG:Ljava/lang/String;

.field final synthetic val$syncCompleteListener:Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager$SyncCompleteListener;


# direct methods
.method constructor <init>(Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager;Landroid/os/Handler;Ljava/lang/String;Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager$SyncCompleteListener;)V
    .registers 5
    .param p1, "this$0"    # Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager;
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 400
    iput-object p1, p0, Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager$1;->this$0:Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager;

    iput-object p3, p0, Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager$1;->val$TAG:Ljava/lang/String;

    iput-object p4, p0, Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager$1;->val$syncCompleteListener:Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager$SyncCompleteListener;

    invoke-direct {p0, p2}, Lcom/buzzfeed/toolkit/util/retrofit/RetryCallback;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onFailedAfterRetry(Ljava/lang/Throwable;)V
    .registers 4
    .param p1, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 421
    iget-object v0, p0, Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager$1;->val$TAG:Ljava/lang/String;

    const-string v1, "Error syncBookmarks"

    invoke-static {v0, v1, p1}, Lcom/buzzfeed/toolkit/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 422
    iget-object v0, p0, Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager$1;->this$0:Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager;

    const/4 v1, 0x0

    # invokes: Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager;->onBookmarkSyncCompleted(ZLjava/lang/Throwable;)V
    invoke-static {v0, v1, p1}, Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager;->access$000(Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager;ZLjava/lang/Throwable;)V

    .line 423
    iget-object v0, p0, Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager$1;->val$syncCompleteListener:Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager$SyncCompleteListener;

    if-eqz v0, :cond_1b

    .line 424
    iget-object v0, p0, Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager$1;->val$syncCompleteListener:Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager$SyncCompleteListener;

    new-instance v1, Ljava/lang/Exception;

    invoke-direct {v1, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    invoke-interface {v0, v1}, Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager$SyncCompleteListener;->onBookmarkSyncError(Ljava/lang/Exception;)V

    .line 426
    :cond_1b
    return-void
.end method

.method public onSafeResponse(Lretrofit2/Call;Lretrofit2/Response;)V
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
    .line 403
    .local p1, "call":Lretrofit2/Call;, "Lretrofit2/Call<Lokhttp3/ResponseBody;>;"
    .local p2, "response":Lretrofit2/Response;, "Lretrofit2/Response<Lokhttp3/ResponseBody;>;"
    invoke-virtual {p2}, Lretrofit2/Response;->isSuccessful()Z

    move-result v2

    if-eqz v2, :cond_28

    .line 405
    :try_start_6
    iget-object v3, p0, Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager$1;->this$0:Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager;

    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lokhttp3/ResponseBody;

    invoke-virtual {v2}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager;->handleGetBookmarkListResponse(Ljava/lang/Object;)V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_15} :catch_1f

    .line 409
    :goto_15
    iget-object v2, p0, Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager$1;->val$syncCompleteListener:Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager$SyncCompleteListener;

    if-eqz v2, :cond_1e

    .line 410
    iget-object v2, p0, Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager$1;->val$syncCompleteListener:Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager$SyncCompleteListener;

    invoke-interface {v2}, Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager$SyncCompleteListener;->onBookmarkSyncCompleted()V

    .line 416
    :cond_1e
    :goto_1e
    return-void

    .line 406
    :catch_1f
    move-exception v0

    .line 407
    .local v0, "e":Ljava/io/IOException;
    iget-object v2, p0, Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager$1;->val$TAG:Ljava/lang/String;

    const-string v3, "IOException accessing response body "

    invoke-static {v2, v3, v0}, Lcom/buzzfeed/toolkit/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_15

    .line 413
    .end local v0    # "e":Ljava/io/IOException;
    :cond_28
    invoke-virtual {p2}, Lretrofit2/Response;->code()I

    move-result v2

    invoke-static {v2}, Lcom/buzzfeed/toolkit/util/HttpErrorParser;->createExceptionOnHttpError(I)Lcom/buzzfeed/toolkit/util/HttpException;

    move-result-object v1

    .line 414
    .local v1, "httpError":Ljava/lang/Exception;
    iget-object v2, p0, Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager$1;->val$syncCompleteListener:Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager$SyncCompleteListener;

    invoke-interface {v2, v1}, Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager$SyncCompleteListener;->onBookmarkSyncError(Ljava/lang/Exception;)V

    goto :goto_1e
.end method
