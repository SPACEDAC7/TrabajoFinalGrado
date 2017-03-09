.class Lcom/buzzfeed/showx/showpage/data/loader/ShowPageLoader$1;
.super Lcom/buzzfeed/toolkit/util/retrofit/SafeCallback;
.source "ShowPageLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/buzzfeed/showx/showpage/data/loader/ShowPageLoader;->getShowPage(ILcom/buzzfeed/showx/showpage/data/loader/ShowPageLoader$Callbacks;)V
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
.field final synthetic this$0:Lcom/buzzfeed/showx/showpage/data/loader/ShowPageLoader;

.field final synthetic val$callbacks:Lcom/buzzfeed/showx/showpage/data/loader/ShowPageLoader$Callbacks;

.field final synthetic val$page:I


# direct methods
.method constructor <init>(Lcom/buzzfeed/showx/showpage/data/loader/ShowPageLoader;Lcom/buzzfeed/showx/showpage/data/loader/ShowPageLoader$Callbacks;I)V
    .registers 4
    .param p1, "this$0"    # Lcom/buzzfeed/showx/showpage/data/loader/ShowPageLoader;

    .prologue
    .line 84
    iput-object p1, p0, Lcom/buzzfeed/showx/showpage/data/loader/ShowPageLoader$1;->this$0:Lcom/buzzfeed/showx/showpage/data/loader/ShowPageLoader;

    iput-object p2, p0, Lcom/buzzfeed/showx/showpage/data/loader/ShowPageLoader$1;->val$callbacks:Lcom/buzzfeed/showx/showpage/data/loader/ShowPageLoader$Callbacks;

    iput p3, p0, Lcom/buzzfeed/showx/showpage/data/loader/ShowPageLoader$1;->val$page:I

    invoke-direct {p0}, Lcom/buzzfeed/toolkit/util/retrofit/SafeCallback;-><init>()V

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
            "Lcom/buzzfeed/toolkit/weaver/model/WeaverResponse;",
            ">;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .prologue
    .line 120
    .local p1, "call":Lretrofit2/Call;, "Lretrofit2/Call<Lcom/buzzfeed/toolkit/weaver/model/WeaverResponse;>;"
    iget-object v0, p0, Lcom/buzzfeed/showx/showpage/data/loader/ShowPageLoader$1;->this$0:Lcom/buzzfeed/showx/showpage/data/loader/ShowPageLoader;

    const/4 v1, 0x0

    # setter for: Lcom/buzzfeed/showx/showpage/data/loader/ShowPageLoader;->mIsLoading:Z
    invoke-static {v0, v1}, Lcom/buzzfeed/showx/showpage/data/loader/ShowPageLoader;->access$002(Lcom/buzzfeed/showx/showpage/data/loader/ShowPageLoader;Z)Z

    .line 122
    iget-object v0, p0, Lcom/buzzfeed/showx/showpage/data/loader/ShowPageLoader$1;->val$callbacks:Lcom/buzzfeed/showx/showpage/data/loader/ShowPageLoader$Callbacks;

    if-eqz v0, :cond_14

    .line 123
    iget-object v0, p0, Lcom/buzzfeed/showx/showpage/data/loader/ShowPageLoader$1;->val$callbacks:Lcom/buzzfeed/showx/showpage/data/loader/ShowPageLoader$Callbacks;

    new-instance v1, Ljava/lang/Exception;

    invoke-direct {v1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    invoke-interface {v0, v1}, Lcom/buzzfeed/showx/showpage/data/loader/ShowPageLoader$Callbacks;->onLoadError(Ljava/lang/Exception;)V

    .line 125
    :cond_14
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
    .line 110
    .local p1, "call":Lretrofit2/Call;, "Lretrofit2/Call<Lcom/buzzfeed/toolkit/weaver/model/WeaverResponse;>;"
    .local p2, "response":Lretrofit2/Response;, "Lretrofit2/Response<Lcom/buzzfeed/toolkit/weaver/model/WeaverResponse;>;"
    iget-object v1, p0, Lcom/buzzfeed/showx/showpage/data/loader/ShowPageLoader$1;->this$0:Lcom/buzzfeed/showx/showpage/data/loader/ShowPageLoader;

    const/4 v2, 0x0

    # setter for: Lcom/buzzfeed/showx/showpage/data/loader/ShowPageLoader;->mIsLoading:Z
    invoke-static {v1, v2}, Lcom/buzzfeed/showx/showpage/data/loader/ShowPageLoader;->access$002(Lcom/buzzfeed/showx/showpage/data/loader/ShowPageLoader;Z)Z

    .line 112
    iget-object v1, p0, Lcom/buzzfeed/showx/showpage/data/loader/ShowPageLoader$1;->val$callbacks:Lcom/buzzfeed/showx/showpage/data/loader/ShowPageLoader$Callbacks;

    if-eqz v1, :cond_17

    .line 113
    invoke-virtual {p2}, Lretrofit2/Response;->code()I

    move-result v1

    invoke-static {v1}, Lcom/buzzfeed/toolkit/util/HttpErrorParser;->createExceptionOnHttpError(I)Lcom/buzzfeed/toolkit/util/HttpException;

    move-result-object v0

    .line 114
    .local v0, "httpError":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/buzzfeed/showx/showpage/data/loader/ShowPageLoader$1;->val$callbacks:Lcom/buzzfeed/showx/showpage/data/loader/ShowPageLoader$Callbacks;

    invoke-interface {v1, v0}, Lcom/buzzfeed/showx/showpage/data/loader/ShowPageLoader$Callbacks;->onLoadError(Ljava/lang/Exception;)V

    .line 116
    .end local v0    # "httpError":Ljava/lang/Exception;
    :cond_17
    return-void
.end method

.method protected onSafeResponse(Lretrofit2/Call;Lretrofit2/Response;)V
    .registers 8
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
    .line 87
    .local p1, "call":Lretrofit2/Call;, "Lretrofit2/Call<Lcom/buzzfeed/toolkit/weaver/model/WeaverResponse;>;"
    .local p2, "response":Lretrofit2/Response;, "Lretrofit2/Response<Lcom/buzzfeed/toolkit/weaver/model/WeaverResponse;>;"
    iget-object v3, p0, Lcom/buzzfeed/showx/showpage/data/loader/ShowPageLoader$1;->this$0:Lcom/buzzfeed/showx/showpage/data/loader/ShowPageLoader;

    const/4 v4, 0x0

    # setter for: Lcom/buzzfeed/showx/showpage/data/loader/ShowPageLoader;->mIsLoading:Z
    invoke-static {v3, v4}, Lcom/buzzfeed/showx/showpage/data/loader/ShowPageLoader;->access$002(Lcom/buzzfeed/showx/showpage/data/loader/ShowPageLoader;Z)Z

    .line 89
    iget-object v3, p0, Lcom/buzzfeed/showx/showpage/data/loader/ShowPageLoader$1;->val$callbacks:Lcom/buzzfeed/showx/showpage/data/loader/ShowPageLoader$Callbacks;

    if-nez v3, :cond_b

    .line 106
    :goto_a
    return-void

    .line 93
    :cond_b
    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/buzzfeed/toolkit/weaver/model/WeaverResponse;

    .line 95
    .local v2, "weaverResponse":Lcom/buzzfeed/toolkit/weaver/model/WeaverResponse;
    iget-object v3, p0, Lcom/buzzfeed/showx/showpage/data/loader/ShowPageLoader$1;->this$0:Lcom/buzzfeed/showx/showpage/data/loader/ShowPageLoader;

    # invokes: Lcom/buzzfeed/showx/showpage/data/loader/ShowPageLoader;->ensureResponseContent(Lcom/buzzfeed/toolkit/weaver/model/WeaverResponse;)Z
    invoke-static {v3, v2}, Lcom/buzzfeed/showx/showpage/data/loader/ShowPageLoader;->access$100(Lcom/buzzfeed/showx/showpage/data/loader/ShowPageLoader;Lcom/buzzfeed/toolkit/weaver/model/WeaverResponse;)Z

    move-result v3

    if-eqz v3, :cond_37

    .line 96
    iget-object v3, p0, Lcom/buzzfeed/showx/showpage/data/loader/ShowPageLoader$1;->this$0:Lcom/buzzfeed/showx/showpage/data/loader/ShowPageLoader;

    iget v4, p0, Lcom/buzzfeed/showx/showpage/data/loader/ShowPageLoader$1;->val$page:I

    # invokes: Lcom/buzzfeed/showx/showpage/data/loader/ShowPageLoader;->buildShowPageModel(ILcom/buzzfeed/toolkit/weaver/model/WeaverResponse;)Lcom/buzzfeed/showx/showpage/data/model/ShowPage;
    invoke-static {v3, v4, v2}, Lcom/buzzfeed/showx/showpage/data/loader/ShowPageLoader;->access$200(Lcom/buzzfeed/showx/showpage/data/loader/ShowPageLoader;ILcom/buzzfeed/toolkit/weaver/model/WeaverResponse;)Lcom/buzzfeed/showx/showpage/data/model/ShowPage;

    move-result-object v1

    .line 98
    .local v1, "model":Lcom/buzzfeed/showx/showpage/data/model/ShowPage;
    iget-object v3, p0, Lcom/buzzfeed/showx/showpage/data/loader/ShowPageLoader$1;->this$0:Lcom/buzzfeed/showx/showpage/data/loader/ShowPageLoader;

    iget v4, p0, Lcom/buzzfeed/showx/showpage/data/loader/ShowPageLoader$1;->val$page:I

    # setter for: Lcom/buzzfeed/showx/showpage/data/loader/ShowPageLoader;->mCurrentPage:I
    invoke-static {v3, v4}, Lcom/buzzfeed/showx/showpage/data/loader/ShowPageLoader;->access$302(Lcom/buzzfeed/showx/showpage/data/loader/ShowPageLoader;I)I

    .line 99
    iget-object v3, p0, Lcom/buzzfeed/showx/showpage/data/loader/ShowPageLoader$1;->this$0:Lcom/buzzfeed/showx/showpage/data/loader/ShowPageLoader;

    invoke-virtual {v2}, Lcom/buzzfeed/toolkit/weaver/model/WeaverResponse;->hasMorePages()Z

    move-result v4

    # setter for: Lcom/buzzfeed/showx/showpage/data/loader/ShowPageLoader;->mHasMorePages:Z
    invoke-static {v3, v4}, Lcom/buzzfeed/showx/showpage/data/loader/ShowPageLoader;->access$402(Lcom/buzzfeed/showx/showpage/data/loader/ShowPageLoader;Z)Z

    .line 101
    iget-object v3, p0, Lcom/buzzfeed/showx/showpage/data/loader/ShowPageLoader$1;->val$callbacks:Lcom/buzzfeed/showx/showpage/data/loader/ShowPageLoader$Callbacks;

    invoke-interface {v3, v1}, Lcom/buzzfeed/showx/showpage/data/loader/ShowPageLoader$Callbacks;->onLoadComplete(Lcom/buzzfeed/showx/showpage/data/model/ShowPage;)V

    goto :goto_a

    .line 103
    .end local v1    # "model":Lcom/buzzfeed/showx/showpage/data/model/ShowPage;
    :cond_37
    const-string v0, "Response was null or contains no results. Can\'t continue."

    .line 104
    .local v0, "message":Ljava/lang/String;
    iget-object v3, p0, Lcom/buzzfeed/showx/showpage/data/loader/ShowPageLoader$1;->val$callbacks:Lcom/buzzfeed/showx/showpage/data/loader/ShowPageLoader$Callbacks;

    new-instance v4, Lcom/buzzfeed/showx/showpage/data/loader/ShowPageLoader$LoadFailedException;

    invoke-direct {v4, v0}, Lcom/buzzfeed/showx/showpage/data/loader/ShowPageLoader$LoadFailedException;-><init>(Ljava/lang/String;)V

    invoke-interface {v3, v4}, Lcom/buzzfeed/showx/showpage/data/loader/ShowPageLoader$Callbacks;->onLoadError(Ljava/lang/Exception;)V

    goto :goto_a
.end method
