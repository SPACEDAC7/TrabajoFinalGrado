.class Lcom/buzzfeed/toolkit/util/retrofit/SafeCall$InternalWrappedCallbacks;
.super Ljava/lang/Object;
.source "SafeCall.java"

# interfaces
.implements Lretrofit2/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/buzzfeed/toolkit/util/retrofit/SafeCall;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InternalWrappedCallbacks"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lretrofit2/Callback",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private mSafeCallback:Lcom/buzzfeed/toolkit/util/retrofit/SafeCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/buzzfeed/toolkit/util/retrofit/SafeCallback",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/buzzfeed/toolkit/util/retrofit/SafeCallback;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/buzzfeed/toolkit/util/retrofit/SafeCallback",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 71
    .local p0, "this":Lcom/buzzfeed/toolkit/util/retrofit/SafeCall$InternalWrappedCallbacks;, "Lcom/buzzfeed/toolkit/util/retrofit/SafeCall$InternalWrappedCallbacks<TT;>;"
    .local p1, "callback":Lcom/buzzfeed/toolkit/util/retrofit/SafeCallback;, "Lcom/buzzfeed/toolkit/util/retrofit/SafeCallback<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput-object p1, p0, Lcom/buzzfeed/toolkit/util/retrofit/SafeCall$InternalWrappedCallbacks;->mSafeCallback:Lcom/buzzfeed/toolkit/util/retrofit/SafeCallback;

    .line 73
    return-void
.end method

.method private clearCallbacks()V
    .registers 2

    .prologue
    .line 93
    .local p0, "this":Lcom/buzzfeed/toolkit/util/retrofit/SafeCall$InternalWrappedCallbacks;, "Lcom/buzzfeed/toolkit/util/retrofit/SafeCall$InternalWrappedCallbacks<TT;>;"
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/buzzfeed/toolkit/util/retrofit/SafeCall$InternalWrappedCallbacks;->mSafeCallback:Lcom/buzzfeed/toolkit/util/retrofit/SafeCallback;

    .line 94
    return-void
.end method


# virtual methods
.method public onFailure(Lretrofit2/Call;Ljava/lang/Throwable;)V
    .registers 4
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
    .line 83
    .local p0, "this":Lcom/buzzfeed/toolkit/util/retrofit/SafeCall$InternalWrappedCallbacks;, "Lcom/buzzfeed/toolkit/util/retrofit/SafeCall$InternalWrappedCallbacks<TT;>;"
    .local p1, "call":Lretrofit2/Call;, "Lretrofit2/Call<TT;>;"
    invoke-interface {p1}, Lretrofit2/Call;->isCanceled()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 84
    iget-object v0, p0, Lcom/buzzfeed/toolkit/util/retrofit/SafeCall$InternalWrappedCallbacks;->mSafeCallback:Lcom/buzzfeed/toolkit/util/retrofit/SafeCallback;

    invoke-virtual {v0}, Lcom/buzzfeed/toolkit/util/retrofit/SafeCallback;->onCallCanceled()V

    .line 89
    :goto_b
    invoke-direct {p0}, Lcom/buzzfeed/toolkit/util/retrofit/SafeCall$InternalWrappedCallbacks;->clearCallbacks()V

    .line 90
    return-void

    .line 86
    :cond_f
    iget-object v0, p0, Lcom/buzzfeed/toolkit/util/retrofit/SafeCall$InternalWrappedCallbacks;->mSafeCallback:Lcom/buzzfeed/toolkit/util/retrofit/SafeCallback;

    invoke-virtual {v0, p1, p2}, Lcom/buzzfeed/toolkit/util/retrofit/SafeCallback;->onFailure(Lretrofit2/Call;Ljava/lang/Throwable;)V

    goto :goto_b
.end method

.method public onResponse(Lretrofit2/Call;Lretrofit2/Response;)V
    .registers 4
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
    .line 77
    .local p0, "this":Lcom/buzzfeed/toolkit/util/retrofit/SafeCall$InternalWrappedCallbacks;, "Lcom/buzzfeed/toolkit/util/retrofit/SafeCall$InternalWrappedCallbacks<TT;>;"
    .local p1, "call":Lretrofit2/Call;, "Lretrofit2/Call<TT;>;"
    .local p2, "response":Lretrofit2/Response;, "Lretrofit2/Response<TT;>;"
    iget-object v0, p0, Lcom/buzzfeed/toolkit/util/retrofit/SafeCall$InternalWrappedCallbacks;->mSafeCallback:Lcom/buzzfeed/toolkit/util/retrofit/SafeCallback;

    invoke-virtual {v0, p1, p2}, Lcom/buzzfeed/toolkit/util/retrofit/SafeCallback;->onResponse(Lretrofit2/Call;Lretrofit2/Response;)V

    .line 78
    invoke-direct {p0}, Lcom/buzzfeed/toolkit/util/retrofit/SafeCall$InternalWrappedCallbacks;->clearCallbacks()V

    .line 79
    return-void
.end method
