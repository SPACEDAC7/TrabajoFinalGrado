.class Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager$3;
.super Lcom/buzzfeed/toolkit/util/retrofit/StringCallback;
.source "BFBookmarkManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager;->addLocalBookmarksToServer(Lcom/buzzfeed/android/data/BuzzUser;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager;

.field final synthetic val$TAG:Ljava/lang/String;

.field final synthetic val$user:Lcom/buzzfeed/android/data/BuzzUser;


# direct methods
.method constructor <init>(Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager;Lcom/buzzfeed/android/data/BuzzUser;Ljava/lang/String;)V
    .registers 4
    .param p1, "this$0"    # Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager;

    .prologue
    .line 623
    iput-object p1, p0, Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager$3;->this$0:Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager;

    iput-object p2, p0, Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager$3;->val$user:Lcom/buzzfeed/android/data/BuzzUser;

    iput-object p3, p0, Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager$3;->val$TAG:Ljava/lang/String;

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
    .line 637
    .local p1, "call":Lretrofit2/Call;, "Lretrofit2/Call<Lokhttp3/ResponseBody;>;"
    iget-object v0, p0, Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager$3;->val$TAG:Ljava/lang/String;

    const-string v1, "Error adding bookmarks to server "

    invoke-static {v0, v1, p2}, Lcom/buzzfeed/toolkit/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 638
    iget-object v0, p0, Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager$3;->this$0:Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager;

    const/4 v1, 0x0

    # invokes: Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager;->onUploadBookmarksCompleted(Z)V
    invoke-static {v0, v1}, Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager;->access$500(Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager;Z)V

    .line 639
    return-void
.end method

.method protected onNetworkError(Lretrofit2/Call;Lretrofit2/Response;)V
    .registers 6
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
    .line 631
    .local p1, "call":Lretrofit2/Call;, "Lretrofit2/Call<Lokhttp3/ResponseBody;>;"
    .local p2, "response":Lretrofit2/Response;, "Lretrofit2/Response<Lokhttp3/ResponseBody;>;"
    invoke-virtual {p2}, Lretrofit2/Response;->code()I

    move-result v1

    invoke-static {v1}, Lcom/buzzfeed/toolkit/util/HttpErrorParser;->createExceptionOnHttpError(I)Lcom/buzzfeed/toolkit/util/HttpException;

    move-result-object v0

    .line 632
    .local v0, "httpError":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager$3;->val$TAG:Ljava/lang/String;

    const-string v2, "IOException accessing response body "

    invoke-static {v1, v2, v0}, Lcom/buzzfeed/toolkit/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 633
    return-void
.end method

.method public onStringResponse(Ljava/lang/String;)V
    .registers 4
    .param p1, "response"    # Ljava/lang/String;

    .prologue
    .line 626
    iget-object v0, p0, Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager$3;->this$0:Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager;

    iget-object v1, p0, Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager$3;->val$user:Lcom/buzzfeed/android/data/BuzzUser;

    # invokes: Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager;->handleAddBookmarksResponse(Ljava/lang/String;Lcom/buzzfeed/android/data/BuzzUser;)V
    invoke-static {v0, p1, v1}, Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager;->access$400(Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager;Ljava/lang/String;Lcom/buzzfeed/android/data/BuzzUser;)V

    .line 627
    return-void
.end method
