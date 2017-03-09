.class Lcom/buzzfeed/toolkit/weaver/loader/WeaverLoader$1;
.super Lcom/buzzfeed/toolkit/util/retrofit/SafeCallback;
.source "WeaverLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/buzzfeed/toolkit/weaver/loader/WeaverLoader;->getSafeCallback(Lcom/buzzfeed/toolkit/content/BaseLoader$LoaderCallback;)Lcom/buzzfeed/toolkit/util/retrofit/SafeCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/buzzfeed/toolkit/util/retrofit/SafeCallback",
        "<",
        "Lcom/buzzfeed/toolkit/weaver/model/WeaverResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/buzzfeed/toolkit/weaver/loader/WeaverLoader;

.field final synthetic val$callback:Lcom/buzzfeed/toolkit/content/BaseLoader$LoaderCallback;


# direct methods
.method constructor <init>(Lcom/buzzfeed/toolkit/weaver/loader/WeaverLoader;Lcom/buzzfeed/toolkit/content/BaseLoader$LoaderCallback;)V
    .registers 3
    .param p1, "this$0"    # Lcom/buzzfeed/toolkit/weaver/loader/WeaverLoader;

    .prologue
    .line 88
    iput-object p1, p0, Lcom/buzzfeed/toolkit/weaver/loader/WeaverLoader$1;->this$0:Lcom/buzzfeed/toolkit/weaver/loader/WeaverLoader;

    iput-object p2, p0, Lcom/buzzfeed/toolkit/weaver/loader/WeaverLoader$1;->val$callback:Lcom/buzzfeed/toolkit/content/BaseLoader$LoaderCallback;

    invoke-direct {p0}, Lcom/buzzfeed/toolkit/util/retrofit/SafeCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lretrofit2/Call;Ljava/lang/Throwable;)V
    .registers 6
    .param p2, "t"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call",
            "<",
            "Lcom/buzzfeed/toolkit/weaver/model/WeaverResponse;",
            ">;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .prologue
    .line 113
    .local p1, "call":Lretrofit2/Call;, "Lretrofit2/Call<Lcom/buzzfeed/toolkit/weaver/model/WeaverResponse;>;"
    iget-object v0, p0, Lcom/buzzfeed/toolkit/weaver/loader/WeaverLoader$1;->this$0:Lcom/buzzfeed/toolkit/weaver/loader/WeaverLoader;

    const/4 v1, 0x0

    # setter for: Lcom/buzzfeed/toolkit/weaver/loader/WeaverLoader;->mRequest:Lcom/buzzfeed/toolkit/util/retrofit/SafeCall;
    invoke-static {v0, v1}, Lcom/buzzfeed/toolkit/weaver/loader/WeaverLoader;->access$402(Lcom/buzzfeed/toolkit/weaver/loader/WeaverLoader;Lcom/buzzfeed/toolkit/util/retrofit/SafeCall;)Lcom/buzzfeed/toolkit/util/retrofit/SafeCall;

    .line 114
    iget-object v0, p0, Lcom/buzzfeed/toolkit/weaver/loader/WeaverLoader$1;->val$callback:Lcom/buzzfeed/toolkit/content/BaseLoader$LoaderCallback;

    new-instance v1, Ljava/lang/Exception;

    invoke-direct {v1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    invoke-interface {v0, v1}, Lcom/buzzfeed/toolkit/content/BaseLoader$LoaderCallback;->onError(Ljava/lang/Exception;)V

    .line 115
    sget-object v0, Lcom/buzzfeed/toolkit/weaver/loader/WeaverLoader;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to load weaver response: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/buzzfeed/toolkit/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    return-void
.end method

.method protected onNetworkError(Lretrofit2/Call;Lretrofit2/Response;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call",
            "<",
            "Lcom/buzzfeed/toolkit/weaver/model/WeaverResponse;",
            ">;",
            "Lretrofit2/Response",
            "<",
            "Lcom/buzzfeed/toolkit/weaver/model/WeaverResponse;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 105
    .local p1, "call":Lretrofit2/Call;, "Lretrofit2/Call<Lcom/buzzfeed/toolkit/weaver/model/WeaverResponse;>;"
    .local p2, "response":Lretrofit2/Response;, "Lretrofit2/Response<Lcom/buzzfeed/toolkit/weaver/model/WeaverResponse;>;"
    iget-object v1, p0, Lcom/buzzfeed/toolkit/weaver/loader/WeaverLoader$1;->this$0:Lcom/buzzfeed/toolkit/weaver/loader/WeaverLoader;

    const/4 v2, 0x0

    # setter for: Lcom/buzzfeed/toolkit/weaver/loader/WeaverLoader;->mRequest:Lcom/buzzfeed/toolkit/util/retrofit/SafeCall;
    invoke-static {v1, v2}, Lcom/buzzfeed/toolkit/weaver/loader/WeaverLoader;->access$302(Lcom/buzzfeed/toolkit/weaver/loader/WeaverLoader;Lcom/buzzfeed/toolkit/util/retrofit/SafeCall;)Lcom/buzzfeed/toolkit/util/retrofit/SafeCall;

    .line 106
    invoke-virtual {p2}, Lretrofit2/Response;->code()I

    move-result v1

    invoke-static {v1}, Lcom/buzzfeed/toolkit/util/HttpErrorParser;->createExceptionOnHttpError(I)Lcom/buzzfeed/toolkit/util/HttpException;

    move-result-object v0

    .line 107
    .local v0, "httpError":Ljava/lang/Exception;
    sget-object v1, Lcom/buzzfeed/toolkit/weaver/loader/WeaverLoader;->TAG:Ljava/lang/String;

    const-string v2, "Unable to load weaver response: "

    invoke-static {v1, v2, v0}, Lcom/buzzfeed/toolkit/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 108
    iget-object v1, p0, Lcom/buzzfeed/toolkit/weaver/loader/WeaverLoader$1;->val$callback:Lcom/buzzfeed/toolkit/content/BaseLoader$LoaderCallback;

    invoke-interface {v1, v0}, Lcom/buzzfeed/toolkit/content/BaseLoader$LoaderCallback;->onError(Ljava/lang/Exception;)V

    .line 109
    return-void
.end method

.method protected onSafeResponse(Lretrofit2/Call;Lretrofit2/Response;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call",
            "<",
            "Lcom/buzzfeed/toolkit/weaver/model/WeaverResponse;",
            ">;",
            "Lretrofit2/Response",
            "<",
            "Lcom/buzzfeed/toolkit/weaver/model/WeaverResponse;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 92
    .local p1, "call":Lretrofit2/Call;, "Lretrofit2/Call<Lcom/buzzfeed/toolkit/weaver/model/WeaverResponse;>;"
    .local p2, "response":Lretrofit2/Response;, "Lretrofit2/Response<Lcom/buzzfeed/toolkit/weaver/model/WeaverResponse;>;"
    iget-object v1, p0, Lcom/buzzfeed/toolkit/weaver/loader/WeaverLoader$1;->this$0:Lcom/buzzfeed/toolkit/weaver/loader/WeaverLoader;

    const/4 v2, 0x0

    # setter for: Lcom/buzzfeed/toolkit/weaver/loader/WeaverLoader;->mRequest:Lcom/buzzfeed/toolkit/util/retrofit/SafeCall;
    invoke-static {v1, v2}, Lcom/buzzfeed/toolkit/weaver/loader/WeaverLoader;->access$002(Lcom/buzzfeed/toolkit/weaver/loader/WeaverLoader;Lcom/buzzfeed/toolkit/util/retrofit/SafeCall;)Lcom/buzzfeed/toolkit/util/retrofit/SafeCall;

    .line 93
    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/buzzfeed/toolkit/weaver/model/WeaverResponse;

    .line 94
    .local v0, "weaverResponse":Lcom/buzzfeed/toolkit/weaver/model/WeaverResponse;
    if-eqz v0, :cond_2e

    invoke-virtual {v0}, Lcom/buzzfeed/toolkit/weaver/model/WeaverResponse;->getResults()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_2e

    .line 95
    iget-object v1, p0, Lcom/buzzfeed/toolkit/weaver/loader/WeaverLoader$1;->this$0:Lcom/buzzfeed/toolkit/weaver/loader/WeaverLoader;

    iget-object v2, p0, Lcom/buzzfeed/toolkit/weaver/loader/WeaverLoader$1;->this$0:Lcom/buzzfeed/toolkit/weaver/loader/WeaverLoader;

    invoke-virtual {v2, v0}, Lcom/buzzfeed/toolkit/weaver/loader/WeaverLoader;->parseModules(Lcom/buzzfeed/toolkit/weaver/model/WeaverResponse;)Lcom/buzzfeed/toolkit/content/FlowList;

    move-result-object v2

    # setter for: Lcom/buzzfeed/toolkit/weaver/loader/WeaverLoader;->mLocalFlowList:Lcom/buzzfeed/toolkit/content/FlowList;
    invoke-static {v1, v2}, Lcom/buzzfeed/toolkit/weaver/loader/WeaverLoader;->access$102(Lcom/buzzfeed/toolkit/weaver/loader/WeaverLoader;Lcom/buzzfeed/toolkit/content/FlowList;)Lcom/buzzfeed/toolkit/content/FlowList;

    .line 96
    iget-object v1, p0, Lcom/buzzfeed/toolkit/weaver/loader/WeaverLoader$1;->this$0:Lcom/buzzfeed/toolkit/weaver/loader/WeaverLoader;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    # setter for: Lcom/buzzfeed/toolkit/weaver/loader/WeaverLoader;->mBuzzTimeStamp:J
    invoke-static {v1, v2, v3}, Lcom/buzzfeed/toolkit/weaver/loader/WeaverLoader;->access$202(Lcom/buzzfeed/toolkit/weaver/loader/WeaverLoader;J)J

    .line 97
    iget-object v1, p0, Lcom/buzzfeed/toolkit/weaver/loader/WeaverLoader$1;->val$callback:Lcom/buzzfeed/toolkit/content/BaseLoader$LoaderCallback;

    invoke-interface {v1}, Lcom/buzzfeed/toolkit/content/BaseLoader$LoaderCallback;->onLoadComplete()V

    .line 101
    :goto_2d
    return-void

    .line 99
    :cond_2e
    iget-object v1, p0, Lcom/buzzfeed/toolkit/weaver/loader/WeaverLoader$1;->val$callback:Lcom/buzzfeed/toolkit/content/BaseLoader$LoaderCallback;

    new-instance v2, Ljava/lang/Exception;

    const-string v3, "Response was null or contained no results."

    invoke-direct {v2, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2}, Lcom/buzzfeed/toolkit/content/BaseLoader$LoaderCallback;->onError(Ljava/lang/Exception;)V

    goto :goto_2d
.end method
