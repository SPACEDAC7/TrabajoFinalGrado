.class Lcom/buzzfeed/android/data/loader/SearchFeedLoader$1;
.super Lcom/buzzfeed/toolkit/util/retrofit/StringCallback;
.source "SearchFeedLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/buzzfeed/android/data/loader/SearchFeedLoader;->loadExecute()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/buzzfeed/android/data/loader/SearchFeedLoader;


# direct methods
.method constructor <init>(Lcom/buzzfeed/android/data/loader/SearchFeedLoader;)V
    .registers 2
    .param p1, "this$0"    # Lcom/buzzfeed/android/data/loader/SearchFeedLoader;

    .prologue
    .line 45
    iput-object p1, p0, Lcom/buzzfeed/android/data/loader/SearchFeedLoader$1;->this$0:Lcom/buzzfeed/android/data/loader/SearchFeedLoader;

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
    .line 63
    .local p1, "call":Lretrofit2/Call;, "Lretrofit2/Call<Lokhttp3/ResponseBody;>;"
    iget-object v0, p0, Lcom/buzzfeed/android/data/loader/SearchFeedLoader$1;->this$0:Lcom/buzzfeed/android/data/loader/SearchFeedLoader;

    const/4 v1, 0x0

    # setter for: Lcom/buzzfeed/android/data/loader/SearchFeedLoader;->mRequest:Lcom/buzzfeed/toolkit/util/retrofit/SafeCall;
    invoke-static {v0, v1}, Lcom/buzzfeed/android/data/loader/SearchFeedLoader;->access$402(Lcom/buzzfeed/android/data/loader/SearchFeedLoader;Lcom/buzzfeed/toolkit/util/retrofit/SafeCall;)Lcom/buzzfeed/toolkit/util/retrofit/SafeCall;

    .line 64
    # getter for: Lcom/buzzfeed/android/data/loader/SearchFeedLoader;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/buzzfeed/android/data/loader/SearchFeedLoader;->access$200()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Error fetching Feed Search Query"

    invoke-static {v0, v1, p2}, Lcom/buzzfeed/toolkit/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 65
    iget-object v0, p0, Lcom/buzzfeed/android/data/loader/SearchFeedLoader$1;->this$0:Lcom/buzzfeed/android/data/loader/SearchFeedLoader;

    # getter for: Lcom/buzzfeed/android/data/loader/SearchFeedLoader;->mCallback:Lcom/buzzfeed/toolkit/content/BaseLoader$LoaderCallback;
    invoke-static {v0}, Lcom/buzzfeed/android/data/loader/SearchFeedLoader;->access$500(Lcom/buzzfeed/android/data/loader/SearchFeedLoader;)Lcom/buzzfeed/toolkit/content/BaseLoader$LoaderCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/buzzfeed/toolkit/content/BaseLoader$LoaderCallback;->onLoadComplete()V

    .line 66
    return-void
.end method

.method public onNetworkError(Lretrofit2/Call;Lretrofit2/Response;)V
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
    .line 55
    .local p1, "call":Lretrofit2/Call;, "Lretrofit2/Call<Lokhttp3/ResponseBody;>;"
    .local p2, "response":Lretrofit2/Response;, "Lretrofit2/Response<Lokhttp3/ResponseBody;>;"
    iget-object v1, p0, Lcom/buzzfeed/android/data/loader/SearchFeedLoader$1;->this$0:Lcom/buzzfeed/android/data/loader/SearchFeedLoader;

    const/4 v2, 0x0

    # setter for: Lcom/buzzfeed/android/data/loader/SearchFeedLoader;->mRequest:Lcom/buzzfeed/toolkit/util/retrofit/SafeCall;
    invoke-static {v1, v2}, Lcom/buzzfeed/android/data/loader/SearchFeedLoader;->access$102(Lcom/buzzfeed/android/data/loader/SearchFeedLoader;Lcom/buzzfeed/toolkit/util/retrofit/SafeCall;)Lcom/buzzfeed/toolkit/util/retrofit/SafeCall;

    .line 56
    invoke-virtual {p2}, Lretrofit2/Response;->code()I

    move-result v1

    invoke-static {v1}, Lcom/buzzfeed/toolkit/util/HttpErrorParser;->createExceptionOnHttpError(I)Lcom/buzzfeed/toolkit/util/HttpException;

    move-result-object v0

    .line 57
    .local v0, "httpError":Ljava/lang/Exception;
    # getter for: Lcom/buzzfeed/android/data/loader/SearchFeedLoader;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/buzzfeed/android/data/loader/SearchFeedLoader;->access$200()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Network Error Searching Feeds"

    invoke-static {v1, v2, v0}, Lcom/buzzfeed/toolkit/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 58
    iget-object v1, p0, Lcom/buzzfeed/android/data/loader/SearchFeedLoader$1;->this$0:Lcom/buzzfeed/android/data/loader/SearchFeedLoader;

    # getter for: Lcom/buzzfeed/android/data/loader/SearchFeedLoader;->mCallback:Lcom/buzzfeed/toolkit/content/BaseLoader$LoaderCallback;
    invoke-static {v1}, Lcom/buzzfeed/android/data/loader/SearchFeedLoader;->access$300(Lcom/buzzfeed/android/data/loader/SearchFeedLoader;)Lcom/buzzfeed/toolkit/content/BaseLoader$LoaderCallback;

    move-result-object v1

    invoke-interface {v1}, Lcom/buzzfeed/toolkit/content/BaseLoader$LoaderCallback;->onLoadComplete()V

    .line 59
    return-void
.end method

.method public onStringResponse(Ljava/lang/String;)V
    .registers 4
    .param p1, "response"    # Ljava/lang/String;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/buzzfeed/android/data/loader/SearchFeedLoader$1;->this$0:Lcom/buzzfeed/android/data/loader/SearchFeedLoader;

    const/4 v1, 0x0

    # setter for: Lcom/buzzfeed/android/data/loader/SearchFeedLoader;->mRequest:Lcom/buzzfeed/toolkit/util/retrofit/SafeCall;
    invoke-static {v0, v1}, Lcom/buzzfeed/android/data/loader/SearchFeedLoader;->access$002(Lcom/buzzfeed/android/data/loader/SearchFeedLoader;Lcom/buzzfeed/toolkit/util/retrofit/SafeCall;)Lcom/buzzfeed/toolkit/util/retrofit/SafeCall;

    .line 50
    iget-object v0, p0, Lcom/buzzfeed/android/data/loader/SearchFeedLoader$1;->this$0:Lcom/buzzfeed/android/data/loader/SearchFeedLoader;

    invoke-virtual {v0, p1}, Lcom/buzzfeed/android/data/loader/SearchFeedLoader;->parseResponse(Ljava/lang/String;)V

    .line 51
    return-void
.end method
