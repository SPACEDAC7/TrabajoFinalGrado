.class Lcom/buzzfeed/toolkit/util/retrofit/RetryCallback$1;
.super Ljava/lang/Object;
.source "RetryCallback.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/buzzfeed/toolkit/util/retrofit/RetryCallback;->handleRetry(Lretrofit2/Call;Ljava/lang/Throwable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/buzzfeed/toolkit/util/retrofit/RetryCallback;

.field final synthetic val$call:Lretrofit2/Call;


# direct methods
.method constructor <init>(Lcom/buzzfeed/toolkit/util/retrofit/RetryCallback;Lretrofit2/Call;)V
    .registers 3
    .param p1, "this$0"    # Lcom/buzzfeed/toolkit/util/retrofit/RetryCallback;

    .prologue
    .line 47
    .local p0, "this":Lcom/buzzfeed/toolkit/util/retrofit/RetryCallback$1;, "Lcom/buzzfeed/toolkit/util/retrofit/RetryCallback$1;"
    iput-object p1, p0, Lcom/buzzfeed/toolkit/util/retrofit/RetryCallback$1;->this$0:Lcom/buzzfeed/toolkit/util/retrofit/RetryCallback;

    iput-object p2, p0, Lcom/buzzfeed/toolkit/util/retrofit/RetryCallback$1;->val$call:Lretrofit2/Call;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 50
    .local p0, "this":Lcom/buzzfeed/toolkit/util/retrofit/RetryCallback$1;, "Lcom/buzzfeed/toolkit/util/retrofit/RetryCallback$1;"
    iget-object v0, p0, Lcom/buzzfeed/toolkit/util/retrofit/RetryCallback$1;->this$0:Lcom/buzzfeed/toolkit/util/retrofit/RetryCallback;

    iget-object v1, p0, Lcom/buzzfeed/toolkit/util/retrofit/RetryCallback$1;->val$call:Lretrofit2/Call;

    # invokes: Lcom/buzzfeed/toolkit/util/retrofit/RetryCallback;->retry(Lretrofit2/Call;)V
    invoke-static {v0, v1}, Lcom/buzzfeed/toolkit/util/retrofit/RetryCallback;->access$000(Lcom/buzzfeed/toolkit/util/retrofit/RetryCallback;Lretrofit2/Call;)V

    .line 51
    return-void
.end method
