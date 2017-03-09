.class Lcom/buzzfeed/android/activity/BuzzLoginActivity$1$1;
.super Lcom/buzzfeed/toolkit/util/retrofit/StringCallback;
.source "BuzzLoginActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/buzzfeed/android/activity/BuzzLoginActivity$1;->onCurrentProfileChanged(Lcom/facebook/Profile;Lcom/facebook/Profile;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/buzzfeed/android/activity/BuzzLoginActivity$1;


# direct methods
.method constructor <init>(Lcom/buzzfeed/android/activity/BuzzLoginActivity$1;)V
    .registers 2
    .param p1, "this$1"    # Lcom/buzzfeed/android/activity/BuzzLoginActivity$1;

    .prologue
    .line 138
    iput-object p1, p0, Lcom/buzzfeed/android/activity/BuzzLoginActivity$1$1;->this$1:Lcom/buzzfeed/android/activity/BuzzLoginActivity$1;

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
    .line 154
    .local p1, "call":Lretrofit2/Call;, "Lretrofit2/Call<Lokhttp3/ResponseBody;>;"
    iget-object v0, p0, Lcom/buzzfeed/android/activity/BuzzLoginActivity$1$1;->this$1:Lcom/buzzfeed/android/activity/BuzzLoginActivity$1;

    iget-object v0, v0, Lcom/buzzfeed/android/activity/BuzzLoginActivity$1;->this$0:Lcom/buzzfeed/android/activity/BuzzLoginActivity;

    # invokes: Lcom/buzzfeed/android/activity/BuzzLoginActivity;->showInvalidLoginDialog()V
    invoke-static {v0}, Lcom/buzzfeed/android/activity/BuzzLoginActivity;->access$100(Lcom/buzzfeed/android/activity/BuzzLoginActivity;)V

    .line 155
    iget-object v0, p0, Lcom/buzzfeed/android/activity/BuzzLoginActivity$1$1;->this$1:Lcom/buzzfeed/android/activity/BuzzLoginActivity$1;

    iget-object v0, v0, Lcom/buzzfeed/android/activity/BuzzLoginActivity$1;->val$TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error with buzzfeed login using Facebook info: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Lcom/buzzfeed/toolkit/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 156
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
    .line 146
    .local p1, "call":Lretrofit2/Call;, "Lretrofit2/Call<Lokhttp3/ResponseBody;>;"
    .local p2, "response":Lretrofit2/Response;, "Lretrofit2/Response<Lokhttp3/ResponseBody;>;"
    invoke-virtual {p2}, Lretrofit2/Response;->code()I

    move-result v1

    invoke-static {v1}, Lcom/buzzfeed/toolkit/util/HttpErrorParser;->createExceptionOnHttpError(I)Lcom/buzzfeed/toolkit/util/HttpException;

    move-result-object v0

    .line 147
    .local v0, "httpError":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/buzzfeed/android/activity/BuzzLoginActivity$1$1;->this$1:Lcom/buzzfeed/android/activity/BuzzLoginActivity$1;

    iget-object v1, v1, Lcom/buzzfeed/android/activity/BuzzLoginActivity$1;->val$TAG:Ljava/lang/String;

    const-string v2, "Network Error"

    invoke-static {v1, v2, v0}, Lcom/buzzfeed/toolkit/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 148
    iget-object v1, p0, Lcom/buzzfeed/android/activity/BuzzLoginActivity$1$1;->this$1:Lcom/buzzfeed/android/activity/BuzzLoginActivity$1;

    iget-object v1, v1, Lcom/buzzfeed/android/activity/BuzzLoginActivity$1;->this$0:Lcom/buzzfeed/android/activity/BuzzLoginActivity;

    # invokes: Lcom/buzzfeed/android/activity/BuzzLoginActivity;->showInvalidLoginDialog()V
    invoke-static {v1}, Lcom/buzzfeed/android/activity/BuzzLoginActivity;->access$100(Lcom/buzzfeed/android/activity/BuzzLoginActivity;)V

    .line 150
    return-void
.end method

.method public onStringResponse(Ljava/lang/String;)V
    .registers 3
    .param p1, "stringResponse"    # Ljava/lang/String;

    .prologue
    .line 141
    iget-object v0, p0, Lcom/buzzfeed/android/activity/BuzzLoginActivity$1$1;->this$1:Lcom/buzzfeed/android/activity/BuzzLoginActivity$1;

    iget-object v0, v0, Lcom/buzzfeed/android/activity/BuzzLoginActivity$1;->this$0:Lcom/buzzfeed/android/activity/BuzzLoginActivity;

    # invokes: Lcom/buzzfeed/android/activity/BuzzLoginActivity;->onBuzzFeedLoginCompletedWithFacebook(Ljava/lang/String;)V
    invoke-static {v0, p1}, Lcom/buzzfeed/android/activity/BuzzLoginActivity;->access$000(Lcom/buzzfeed/android/activity/BuzzLoginActivity;Ljava/lang/String;)V

    .line 142
    return-void
.end method
