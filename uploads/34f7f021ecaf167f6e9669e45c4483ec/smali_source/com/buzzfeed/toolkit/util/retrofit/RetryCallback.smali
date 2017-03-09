.class public abstract Lcom/buzzfeed/toolkit/util/retrofit/RetryCallback;
.super Lcom/buzzfeed/toolkit/util/retrofit/SafeCallback;
.source "RetryCallback.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/buzzfeed/toolkit/util/retrofit/SafeCallback",
        "<TT;>;"
    }
.end annotation


# static fields
.field private static final RETRY_DELAY:D = 300.0


# instance fields
.field protected mAttemptCount:I

.field private mHandler:Landroid/os/Handler;

.field protected mRetryCount:I


# direct methods
.method public constructor <init>(Landroid/os/Handler;)V
    .registers 3
    .param p1, "handler"    # Landroid/os/Handler;

    .prologue
    .line 22
    .local p0, "this":Lcom/buzzfeed/toolkit/util/retrofit/RetryCallback;, "Lcom/buzzfeed/toolkit/util/retrofit/RetryCallback<TT;>;"
    invoke-direct {p0}, Lcom/buzzfeed/toolkit/util/retrofit/SafeCallback;-><init>()V

    .line 14
    const/4 v0, 0x3

    iput v0, p0, Lcom/buzzfeed/toolkit/util/retrofit/RetryCallback;->mRetryCount:I

    .line 19
    const/4 v0, 0x0

    iput v0, p0, Lcom/buzzfeed/toolkit/util/retrofit/RetryCallback;->mAttemptCount:I

    .line 23
    iput-object p1, p0, Lcom/buzzfeed/toolkit/util/retrofit/RetryCallback;->mHandler:Landroid/os/Handler;

    .line 24
    return-void
.end method

.method static synthetic access$000(Lcom/buzzfeed/toolkit/util/retrofit/RetryCallback;Lretrofit2/Call;)V
    .registers 2
    .param p0, "x0"    # Lcom/buzzfeed/toolkit/util/retrofit/RetryCallback;
    .param p1, "x1"    # Lretrofit2/Call;

    .prologue
    .line 12
    invoke-direct {p0, p1}, Lcom/buzzfeed/toolkit/util/retrofit/RetryCallback;->retry(Lretrofit2/Call;)V

    return-void
.end method

.method private retry(Lretrofit2/Call;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 59
    .local p0, "this":Lcom/buzzfeed/toolkit/util/retrofit/RetryCallback;, "Lcom/buzzfeed/toolkit/util/retrofit/RetryCallback<TT;>;"
    .local p1, "call":Lretrofit2/Call;, "Lretrofit2/Call<TT;>;"
    invoke-interface {p1}, Lretrofit2/Call;->clone()Lretrofit2/Call;

    move-result-object v0

    invoke-interface {v0, p0}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    .line 60
    return-void
.end method


# virtual methods
.method handleRetry(Lretrofit2/Call;Ljava/lang/Throwable;)V
    .registers 11
    .param p2, "t"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call",
            "<TT;>;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .prologue
    .line 44
    .local p0, "this":Lcom/buzzfeed/toolkit/util/retrofit/RetryCallback;, "Lcom/buzzfeed/toolkit/util/retrofit/RetryCallback<TT;>;"
    .local p1, "call":Lretrofit2/Call;, "Lretrofit2/Call<TT;>;"
    iget v1, p0, Lcom/buzzfeed/toolkit/util/retrofit/RetryCallback;->mAttemptCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/buzzfeed/toolkit/util/retrofit/RetryCallback;->mAttemptCount:I

    .line 45
    iget v1, p0, Lcom/buzzfeed/toolkit/util/retrofit/RetryCallback;->mAttemptCount:I

    iget v2, p0, Lcom/buzzfeed/toolkit/util/retrofit/RetryCallback;->mRetryCount:I

    if-gt v1, v2, :cond_2f

    .line 46
    const-wide v2, 0x4072c00000000000L

    const-wide/high16 v4, 0x4000000000000000L

    const/4 v1, 0x0

    iget v6, p0, Lcom/buzzfeed/toolkit/util/retrofit/RetryCallback;->mAttemptCount:I

    add-int/lit8 v6, v6, -0x1

    invoke-static {v1, v6}, Ljava/lang/Math;->max(II)I

    move-result v1

    int-to-double v6, v1

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    mul-double/2addr v2, v4

    double-to-int v0, v2

    .line 47
    .local v0, "expDelay":I
    iget-object v1, p0, Lcom/buzzfeed/toolkit/util/retrofit/RetryCallback;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/buzzfeed/toolkit/util/retrofit/RetryCallback$1;

    invoke-direct {v2, p0, p1}, Lcom/buzzfeed/toolkit/util/retrofit/RetryCallback$1;-><init>(Lcom/buzzfeed/toolkit/util/retrofit/RetryCallback;Lretrofit2/Call;)V

    int-to-long v4, v0

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 56
    .end local v0    # "expDelay":I
    :goto_2e
    return-void

    .line 54
    :cond_2f
    invoke-virtual {p0, p2}, Lcom/buzzfeed/toolkit/util/retrofit/RetryCallback;->onFailedAfterRetry(Ljava/lang/Throwable;)V

    goto :goto_2e
.end method

.method public abstract onFailedAfterRetry(Ljava/lang/Throwable;)V
.end method

.method public onFailure(Lretrofit2/Call;Ljava/lang/Throwable;)V
    .registers 3
    .param p2, "t"    # Ljava/lang/Throwable;
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call",
            "<TT;>;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .prologue
    .line 35
    .local p0, "this":Lcom/buzzfeed/toolkit/util/retrofit/RetryCallback;, "Lcom/buzzfeed/toolkit/util/retrofit/RetryCallback<TT;>;"
    .local p1, "call":Lretrofit2/Call;, "Lretrofit2/Call<TT;>;"
    invoke-virtual {p0, p1, p2}, Lcom/buzzfeed/toolkit/util/retrofit/RetryCallback;->handleRetry(Lretrofit2/Call;Ljava/lang/Throwable;)V

    .line 36
    return-void
.end method

.method protected onNetworkError(Lretrofit2/Call;Lretrofit2/Response;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call",
            "<TT;>;",
            "Lretrofit2/Response",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 40
    .local p0, "this":Lcom/buzzfeed/toolkit/util/retrofit/RetryCallback;, "Lcom/buzzfeed/toolkit/util/retrofit/RetryCallback<TT;>;"
    .local p1, "call":Lretrofit2/Call;, "Lretrofit2/Call<TT;>;"
    .local p2, "response":Lretrofit2/Response;, "Lretrofit2/Response<TT;>;"
    new-instance v0, Ljava/lang/Exception;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Network Error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lretrofit2/Response;->code()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1, v0}, Lcom/buzzfeed/toolkit/util/retrofit/RetryCallback;->handleRetry(Lretrofit2/Call;Ljava/lang/Throwable;)V

    .line 41
    return-void
.end method

.method public onResponse(Lretrofit2/Call;Lretrofit2/Response;)V
    .registers 3
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call",
            "<TT;>;",
            "Lretrofit2/Response",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 29
    .local p0, "this":Lcom/buzzfeed/toolkit/util/retrofit/RetryCallback;, "Lcom/buzzfeed/toolkit/util/retrofit/RetryCallback<TT;>;"
    .local p1, "call":Lretrofit2/Call;, "Lretrofit2/Call<TT;>;"
    .local p2, "response":Lretrofit2/Response;, "Lretrofit2/Response<TT;>;"
    invoke-super {p0, p1, p2}, Lcom/buzzfeed/toolkit/util/retrofit/SafeCallback;->onResponse(Lretrofit2/Call;Lretrofit2/Response;)V

    .line 30
    return-void
.end method

.method public setRetryCount(I)V
    .registers 2
    .param p1, "retryCount"    # I

    .prologue
    .line 65
    .local p0, "this":Lcom/buzzfeed/toolkit/util/retrofit/RetryCallback;, "Lcom/buzzfeed/toolkit/util/retrofit/RetryCallback<TT;>;"
    iput p1, p0, Lcom/buzzfeed/toolkit/util/retrofit/RetryCallback;->mRetryCount:I

    .line 66
    return-void
.end method
