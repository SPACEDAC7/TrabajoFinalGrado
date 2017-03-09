.class Lcom/buzzfeed/android/data/loader/BaseFeedLoader$1;
.super Lcom/buzzfeed/toolkit/util/retrofit/StringCallback;
.source "BaseFeedLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/buzzfeed/android/data/loader/BaseFeedLoader;->loadExecute()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/buzzfeed/android/data/loader/BaseFeedLoader;


# direct methods
.method constructor <init>(Lcom/buzzfeed/android/data/loader/BaseFeedLoader;)V
    .registers 2
    .param p1, "this$0"    # Lcom/buzzfeed/android/data/loader/BaseFeedLoader;

    .prologue
    .line 72
    iput-object p1, p0, Lcom/buzzfeed/android/data/loader/BaseFeedLoader$1;->this$0:Lcom/buzzfeed/android/data/loader/BaseFeedLoader;

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
    .line 88
    .local p1, "call":Lretrofit2/Call;, "Lretrofit2/Call<Lokhttp3/ResponseBody;>;"
    # getter for: Lcom/buzzfeed/android/data/loader/BaseFeedLoader;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/buzzfeed/android/data/loader/BaseFeedLoader;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Error fetching buzz feed JSON"

    invoke-static {v0, v1, p2}, Lcom/buzzfeed/toolkit/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 89
    iget-object v0, p0, Lcom/buzzfeed/android/data/loader/BaseFeedLoader$1;->this$0:Lcom/buzzfeed/android/data/loader/BaseFeedLoader;

    # getter for: Lcom/buzzfeed/android/data/loader/BaseFeedLoader;->mCallback:Lcom/buzzfeed/toolkit/content/BaseLoader$LoaderCallback;
    invoke-static {v0}, Lcom/buzzfeed/android/data/loader/BaseFeedLoader;->access$200(Lcom/buzzfeed/android/data/loader/BaseFeedLoader;)Lcom/buzzfeed/toolkit/content/BaseLoader$LoaderCallback;

    move-result-object v0

    new-instance v1, Ljava/lang/Exception;

    invoke-direct {v1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    invoke-interface {v0, v1}, Lcom/buzzfeed/toolkit/content/BaseLoader$LoaderCallback;->onError(Ljava/lang/Exception;)V

    .line 90
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
    .line 81
    .local p1, "call":Lretrofit2/Call;, "Lretrofit2/Call<Lokhttp3/ResponseBody;>;"
    .local p2, "response":Lretrofit2/Response;, "Lretrofit2/Response<Lokhttp3/ResponseBody;>;"
    invoke-virtual {p2}, Lretrofit2/Response;->code()I

    move-result v1

    invoke-static {v1}, Lcom/buzzfeed/toolkit/util/HttpErrorParser;->createExceptionOnHttpError(I)Lcom/buzzfeed/toolkit/util/HttpException;

    move-result-object v0

    .line 82
    .local v0, "httpError":Ljava/lang/Exception;
    # getter for: Lcom/buzzfeed/android/data/loader/BaseFeedLoader;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/buzzfeed/android/data/loader/BaseFeedLoader;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Network Error fetching buzz feed JSON"

    invoke-static {v1, v2, v0}, Lcom/buzzfeed/toolkit/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 83
    iget-object v1, p0, Lcom/buzzfeed/android/data/loader/BaseFeedLoader$1;->this$0:Lcom/buzzfeed/android/data/loader/BaseFeedLoader;

    # getter for: Lcom/buzzfeed/android/data/loader/BaseFeedLoader;->mCallback:Lcom/buzzfeed/toolkit/content/BaseLoader$LoaderCallback;
    invoke-static {v1}, Lcom/buzzfeed/android/data/loader/BaseFeedLoader;->access$100(Lcom/buzzfeed/android/data/loader/BaseFeedLoader;)Lcom/buzzfeed/toolkit/content/BaseLoader$LoaderCallback;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/buzzfeed/toolkit/content/BaseLoader$LoaderCallback;->onError(Ljava/lang/Exception;)V

    .line 84
    return-void
.end method

.method public onStringResponse(Ljava/lang/String;)V
    .registers 3
    .param p1, "response"    # Ljava/lang/String;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/buzzfeed/android/data/loader/BaseFeedLoader$1;->this$0:Lcom/buzzfeed/android/data/loader/BaseFeedLoader;

    invoke-virtual {v0, p1}, Lcom/buzzfeed/android/data/loader/BaseFeedLoader;->parseResponse(Ljava/lang/String;)V

    .line 77
    return-void
.end method
