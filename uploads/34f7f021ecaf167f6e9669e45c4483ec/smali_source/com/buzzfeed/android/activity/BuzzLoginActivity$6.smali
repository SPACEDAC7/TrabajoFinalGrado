.class Lcom/buzzfeed/android/activity/BuzzLoginActivity$6;
.super Lcom/buzzfeed/toolkit/util/retrofit/StringCallback;
.source "BuzzLoginActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/buzzfeed/android/activity/BuzzLoginActivity;->loginToBuzzFeedWithAccount(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/buzzfeed/android/activity/BuzzLoginActivity;

.field final synthetic val$TAG:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/buzzfeed/android/activity/BuzzLoginActivity;Ljava/lang/String;)V
    .registers 3
    .param p1, "this$0"    # Lcom/buzzfeed/android/activity/BuzzLoginActivity;

    .prologue
    .line 644
    iput-object p1, p0, Lcom/buzzfeed/android/activity/BuzzLoginActivity$6;->this$0:Lcom/buzzfeed/android/activity/BuzzLoginActivity;

    iput-object p2, p0, Lcom/buzzfeed/android/activity/BuzzLoginActivity$6;->val$TAG:Ljava/lang/String;

    invoke-direct {p0}, Lcom/buzzfeed/toolkit/util/retrofit/StringCallback;-><init>()V

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
            "Lokhttp3/ResponseBody;",
            ">;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .prologue
    .line 659
    .local p1, "call":Lretrofit2/Call;, "Lretrofit2/Call<Lokhttp3/ResponseBody;>;"
    iget-object v0, p0, Lcom/buzzfeed/android/activity/BuzzLoginActivity$6;->this$0:Lcom/buzzfeed/android/activity/BuzzLoginActivity;

    # invokes: Lcom/buzzfeed/android/activity/BuzzLoginActivity;->showInvalidLoginDialog()V
    invoke-static {v0}, Lcom/buzzfeed/android/activity/BuzzLoginActivity;->access$100(Lcom/buzzfeed/android/activity/BuzzLoginActivity;)V

    .line 660
    iget-object v0, p0, Lcom/buzzfeed/android/activity/BuzzLoginActivity$6;->val$TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Lcom/buzzfeed/toolkit/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 661
    return-void
.end method

.method protected onNetworkError(Lretrofit2/Call;Lretrofit2/Response;)V
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
    .line 652
    .local p1, "call":Lretrofit2/Call;, "Lretrofit2/Call<Lokhttp3/ResponseBody;>;"
    .local p2, "response":Lretrofit2/Response;, "Lretrofit2/Response<Lokhttp3/ResponseBody;>;"
    invoke-virtual {p2}, Lretrofit2/Response;->code()I

    move-result v1

    invoke-static {v1}, Lcom/buzzfeed/toolkit/util/HttpErrorParser;->createExceptionOnHttpError(I)Lcom/buzzfeed/toolkit/util/HttpException;

    move-result-object v0

    .line 653
    .local v0, "httpError":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/buzzfeed/android/activity/BuzzLoginActivity$6;->val$TAG:Ljava/lang/String;

    const-string v2, "Network Error"

    invoke-static {v1, v2, v0}, Lcom/buzzfeed/toolkit/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 654
    iget-object v1, p0, Lcom/buzzfeed/android/activity/BuzzLoginActivity$6;->this$0:Lcom/buzzfeed/android/activity/BuzzLoginActivity;

    # invokes: Lcom/buzzfeed/android/activity/BuzzLoginActivity;->showInvalidLoginDialog()V
    invoke-static {v1}, Lcom/buzzfeed/android/activity/BuzzLoginActivity;->access$100(Lcom/buzzfeed/android/activity/BuzzLoginActivity;)V

    .line 655
    return-void
.end method

.method public onStringResponse(Ljava/lang/String;)V
    .registers 3
    .param p1, "response"    # Ljava/lang/String;

    .prologue
    .line 647
    iget-object v0, p0, Lcom/buzzfeed/android/activity/BuzzLoginActivity$6;->this$0:Lcom/buzzfeed/android/activity/BuzzLoginActivity;

    # invokes: Lcom/buzzfeed/android/activity/BuzzLoginActivity;->onBuzzFeedLoginCompletedWithAccount(Ljava/lang/String;)V
    invoke-static {v0, p1}, Lcom/buzzfeed/android/activity/BuzzLoginActivity;->access$800(Lcom/buzzfeed/android/activity/BuzzLoginActivity;Ljava/lang/String;)V

    .line 648
    return-void
.end method
