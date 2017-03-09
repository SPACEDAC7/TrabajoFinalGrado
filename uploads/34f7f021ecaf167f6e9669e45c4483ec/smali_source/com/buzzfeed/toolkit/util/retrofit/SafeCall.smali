.class public final Lcom/buzzfeed/toolkit/util/retrofit/SafeCall;
.super Ljava/lang/Object;
.source "SafeCall.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/buzzfeed/toolkit/util/retrofit/SafeCall$InternalWrappedCallbacks;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final CANCELED:Ljava/lang/String; = "Canceled"


# instance fields
.field private final mDelegate:Lretrofit2/Call;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lretrofit2/Call",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lretrofit2/Call;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 23
    .local p0, "this":Lcom/buzzfeed/toolkit/util/retrofit/SafeCall;, "Lcom/buzzfeed/toolkit/util/retrofit/SafeCall<TT;>;"
    .local p1, "delegate":Lretrofit2/Call;, "Lretrofit2/Call<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/buzzfeed/toolkit/util/retrofit/SafeCall;->mDelegate:Lretrofit2/Call;

    .line 25
    return-void
.end method

.method private enqueue(Lretrofit2/Callback;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Callback",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 41
    .local p0, "this":Lcom/buzzfeed/toolkit/util/retrofit/SafeCall;, "Lcom/buzzfeed/toolkit/util/retrofit/SafeCall<TT;>;"
    .local p1, "callback":Lretrofit2/Callback;, "Lretrofit2/Callback<TT;>;"
    iget-object v0, p0, Lcom/buzzfeed/toolkit/util/retrofit/SafeCall;->mDelegate:Lretrofit2/Call;

    invoke-interface {v0, p1}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    .line 42
    return-void
.end method


# virtual methods
.method public cancel()V
    .registers 2

    .prologue
    .line 49
    .local p0, "this":Lcom/buzzfeed/toolkit/util/retrofit/SafeCall;, "Lcom/buzzfeed/toolkit/util/retrofit/SafeCall<TT;>;"
    iget-object v0, p0, Lcom/buzzfeed/toolkit/util/retrofit/SafeCall;->mDelegate:Lretrofit2/Call;

    invoke-interface {v0}, Lretrofit2/Call;->cancel()V

    .line 50
    return-void
.end method

.method public clone()Lcom/buzzfeed/toolkit/util/retrofit/SafeCall;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/buzzfeed/toolkit/util/retrofit/SafeCall",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 57
    .local p0, "this":Lcom/buzzfeed/toolkit/util/retrofit/SafeCall;, "Lcom/buzzfeed/toolkit/util/retrofit/SafeCall<TT;>;"
    new-instance v0, Lcom/buzzfeed/toolkit/util/retrofit/SafeCall;

    iget-object v1, p0, Lcom/buzzfeed/toolkit/util/retrofit/SafeCall;->mDelegate:Lretrofit2/Call;

    invoke-interface {v1}, Lretrofit2/Call;->clone()Lretrofit2/Call;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/buzzfeed/toolkit/util/retrofit/SafeCall;-><init>(Lretrofit2/Call;)V

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 18
    .local p0, "this":Lcom/buzzfeed/toolkit/util/retrofit/SafeCall;, "Lcom/buzzfeed/toolkit/util/retrofit/SafeCall<TT;>;"
    invoke-virtual {p0}, Lcom/buzzfeed/toolkit/util/retrofit/SafeCall;->clone()Lcom/buzzfeed/toolkit/util/retrofit/SafeCall;

    move-result-object v0

    return-object v0
.end method

.method public execute()Lretrofit2/Response;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lretrofit2/Response",
            "<TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/buzzfeed/toolkit/util/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 32
    .local p0, "this":Lcom/buzzfeed/toolkit/util/retrofit/SafeCall;, "Lcom/buzzfeed/toolkit/util/retrofit/SafeCall<TT;>;"
    iget-object v1, p0, Lcom/buzzfeed/toolkit/util/retrofit/SafeCall;->mDelegate:Lretrofit2/Call;

    invoke-interface {v1}, Lretrofit2/Call;->execute()Lretrofit2/Response;

    move-result-object v0

    .line 33
    .local v0, "response":Lretrofit2/Response;, "Lretrofit2/Response<TT;>;"
    invoke-virtual {v0}, Lretrofit2/Response;->isSuccessful()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 34
    return-object v0

    .line 36
    :cond_d
    invoke-virtual {v0}, Lretrofit2/Response;->code()I

    move-result v1

    invoke-static {v1}, Lcom/buzzfeed/toolkit/util/HttpErrorParser;->createExceptionOnHttpError(I)Lcom/buzzfeed/toolkit/util/HttpException;

    move-result-object v1

    throw v1
.end method

.method public isCanceled()Z
    .registers 2

    .prologue
    .line 53
    .local p0, "this":Lcom/buzzfeed/toolkit/util/retrofit/SafeCall;, "Lcom/buzzfeed/toolkit/util/retrofit/SafeCall<TT;>;"
    iget-object v0, p0, Lcom/buzzfeed/toolkit/util/retrofit/SafeCall;->mDelegate:Lretrofit2/Call;

    invoke-interface {v0}, Lretrofit2/Call;->isCanceled()Z

    move-result v0

    return v0
.end method

.method public isExecuted()Z
    .registers 2

    .prologue
    .line 45
    .local p0, "this":Lcom/buzzfeed/toolkit/util/retrofit/SafeCall;, "Lcom/buzzfeed/toolkit/util/retrofit/SafeCall<TT;>;"
    iget-object v0, p0, Lcom/buzzfeed/toolkit/util/retrofit/SafeCall;->mDelegate:Lretrofit2/Call;

    invoke-interface {v0}, Lretrofit2/Call;->isExecuted()Z

    move-result v0

    return v0
.end method

.method public request()Lokhttp3/Request;
    .registers 2

    .prologue
    .line 61
    .local p0, "this":Lcom/buzzfeed/toolkit/util/retrofit/SafeCall;, "Lcom/buzzfeed/toolkit/util/retrofit/SafeCall<TT;>;"
    iget-object v0, p0, Lcom/buzzfeed/toolkit/util/retrofit/SafeCall;->mDelegate:Lretrofit2/Call;

    invoke-interface {v0}, Lretrofit2/Call;->request()Lokhttp3/Request;

    move-result-object v0

    return-object v0
.end method

.method public safeEnqueue(Lcom/buzzfeed/toolkit/util/retrofit/SafeCallback;)V
    .registers 3
    .param p1    # Lcom/buzzfeed/toolkit/util/retrofit/SafeCallback;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/buzzfeed/toolkit/util/retrofit/SafeCallback",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 28
    .local p0, "this":Lcom/buzzfeed/toolkit/util/retrofit/SafeCall;, "Lcom/buzzfeed/toolkit/util/retrofit/SafeCall<TT;>;"
    .local p1, "safeCallback":Lcom/buzzfeed/toolkit/util/retrofit/SafeCallback;, "Lcom/buzzfeed/toolkit/util/retrofit/SafeCallback<TT;>;"
    new-instance v0, Lcom/buzzfeed/toolkit/util/retrofit/SafeCall$InternalWrappedCallbacks;

    invoke-direct {v0, p1}, Lcom/buzzfeed/toolkit/util/retrofit/SafeCall$InternalWrappedCallbacks;-><init>(Lcom/buzzfeed/toolkit/util/retrofit/SafeCallback;)V

    invoke-direct {p0, v0}, Lcom/buzzfeed/toolkit/util/retrofit/SafeCall;->enqueue(Lretrofit2/Callback;)V

    .line 29
    return-void
.end method
