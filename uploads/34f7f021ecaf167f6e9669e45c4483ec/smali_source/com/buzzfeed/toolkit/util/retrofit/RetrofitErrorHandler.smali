.class public abstract Lcom/buzzfeed/toolkit/util/retrofit/RetrofitErrorHandler;
.super Ljava/lang/Object;
.source "RetrofitErrorHandler.java"

# interfaces
.implements Lcom/buzzfeed/toolkit/util/NetworkErrorHandler;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleErrorResponse(Ljava/lang/Exception;)V
    .registers 4
    .param p1, "e"    # Ljava/lang/Exception;

    .prologue
    .line 15
    instance-of v1, p1, Lcom/buzzfeed/toolkit/util/HttpException;

    if-nez v1, :cond_7

    .line 16
    invoke-virtual {p0}, Lcom/buzzfeed/toolkit/util/retrofit/RetrofitErrorHandler;->onUnknownError()V

    .line 20
    :cond_7
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 21
    .local v0, "errorMsg":Ljava/lang/String;
    const-string/jumbo v1, "timeout_error"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 22
    invoke-virtual {p0}, Lcom/buzzfeed/toolkit/util/retrofit/RetrofitErrorHandler;->onTimeoutError()V

    .line 37
    :goto_17
    return-void

    .line 23
    :cond_18
    const-string v1, "not_found_error"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_24

    .line 24
    invoke-virtual {p0}, Lcom/buzzfeed/toolkit/util/retrofit/RetrofitErrorHandler;->onResourceNotFoundError()V

    goto :goto_17

    .line 25
    :cond_24
    const-string/jumbo v1, "unauthorized_error"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_31

    .line 26
    invoke-virtual {p0}, Lcom/buzzfeed/toolkit/util/retrofit/RetrofitErrorHandler;->onAuthFailureError()V

    goto :goto_17

    .line 27
    :cond_31
    const-string v1, "gateway_timeout_error"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3d

    .line 32
    invoke-virtual {p0}, Lcom/buzzfeed/toolkit/util/retrofit/RetrofitErrorHandler;->onGateWayTimeoutError()V

    goto :goto_17

    .line 34
    :cond_3d
    invoke-virtual {p0}, Lcom/buzzfeed/toolkit/util/retrofit/RetrofitErrorHandler;->onServerError()V

    goto :goto_17
.end method
