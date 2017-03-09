.class Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager$4;
.super Lcom/buzzfeed/toolkit/util/retrofit/StringCallback;
.source "BFBookmarkManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager;->deleteBookmarksFromServer(Lcom/buzzfeed/android/data/BuzzUser;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager;

.field final synthetic val$TAG:Ljava/lang/String;

.field final synthetic val$b:Lcom/buzzfeed/toolkit/content/Buzz;

.field final synthetic val$user:Lcom/buzzfeed/android/data/BuzzUser;


# direct methods
.method constructor <init>(Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager;Lcom/buzzfeed/toolkit/content/Buzz;Lcom/buzzfeed/android/data/BuzzUser;Ljava/lang/String;)V
    .registers 5
    .param p1, "this$0"    # Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager;

    .prologue
    .line 671
    iput-object p1, p0, Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager$4;->this$0:Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager;

    iput-object p2, p0, Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager$4;->val$b:Lcom/buzzfeed/toolkit/content/Buzz;

    iput-object p3, p0, Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager$4;->val$user:Lcom/buzzfeed/android/data/BuzzUser;

    iput-object p4, p0, Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager$4;->val$TAG:Ljava/lang/String;

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
    .line 685
    .local p1, "call":Lretrofit2/Call;, "Lretrofit2/Call<Lokhttp3/ResponseBody;>;"
    iget-object v0, p0, Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager$4;->val$TAG:Ljava/lang/String;

    const-string v1, "Error deleting bookmarks from server "

    invoke-static {v0, v1, p2}, Lcom/buzzfeed/toolkit/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 686
    iget-object v0, p0, Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager$4;->this$0:Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager;

    const/4 v1, 0x0

    # invokes: Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager;->onUploadBookmarksCompleted(Z)V
    invoke-static {v0, v1}, Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager;->access$500(Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager;Z)V

    .line 687
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
    .line 679
    .local p1, "call":Lretrofit2/Call;, "Lretrofit2/Call<Lokhttp3/ResponseBody;>;"
    .local p2, "response":Lretrofit2/Response;, "Lretrofit2/Response<Lokhttp3/ResponseBody;>;"
    invoke-virtual {p2}, Lretrofit2/Response;->code()I

    move-result v1

    invoke-static {v1}, Lcom/buzzfeed/toolkit/util/HttpErrorParser;->createExceptionOnHttpError(I)Lcom/buzzfeed/toolkit/util/HttpException;

    move-result-object v0

    .line 680
    .local v0, "httpError":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager$4;->val$TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Network Response Error "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Lretrofit2/Response;->code()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/buzzfeed/toolkit/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 681
    return-void
.end method

.method public onStringResponse(Ljava/lang/String;)V
    .registers 5
    .param p1, "response"    # Ljava/lang/String;

    .prologue
    .line 674
    iget-object v0, p0, Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager$4;->this$0:Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager;

    iget-object v1, p0, Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager$4;->val$b:Lcom/buzzfeed/toolkit/content/Buzz;

    iget-object v2, p0, Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager$4;->val$user:Lcom/buzzfeed/android/data/BuzzUser;

    # invokes: Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager;->handleDeleteBookmarkResponse(Lcom/buzzfeed/toolkit/content/Buzz;Ljava/lang/String;Lcom/buzzfeed/android/data/BuzzUser;)V
    invoke-static {v0, v1, p1, v2}, Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager;->access$600(Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager;Lcom/buzzfeed/toolkit/content/Buzz;Ljava/lang/String;Lcom/buzzfeed/android/data/BuzzUser;)V

    .line 675
    return-void
.end method
