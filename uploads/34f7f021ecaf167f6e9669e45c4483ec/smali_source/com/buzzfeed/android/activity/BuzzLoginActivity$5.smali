.class Lcom/buzzfeed/android/activity/BuzzLoginActivity$5;
.super Lcom/buzzfeed/toolkit/util/retrofit/StringCallback;
.source "BuzzLoginActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/buzzfeed/android/activity/BuzzLoginActivity;->signupGoogleUser(Lorg/json/JSONObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/buzzfeed/android/activity/BuzzLoginActivity;

.field final synthetic val$TAG:Ljava/lang/String;

.field final synthetic val$bfUserInfo:Lorg/json/JSONObject;


# direct methods
.method constructor <init>(Lcom/buzzfeed/android/activity/BuzzLoginActivity;Lorg/json/JSONObject;Ljava/lang/String;)V
    .registers 4
    .param p1, "this$0"    # Lcom/buzzfeed/android/activity/BuzzLoginActivity;

    .prologue
    .line 555
    iput-object p1, p0, Lcom/buzzfeed/android/activity/BuzzLoginActivity$5;->this$0:Lcom/buzzfeed/android/activity/BuzzLoginActivity;

    iput-object p2, p0, Lcom/buzzfeed/android/activity/BuzzLoginActivity$5;->val$bfUserInfo:Lorg/json/JSONObject;

    iput-object p3, p0, Lcom/buzzfeed/android/activity/BuzzLoginActivity$5;->val$TAG:Ljava/lang/String;

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
    .line 587
    .local p1, "call":Lretrofit2/Call;, "Lretrofit2/Call<Lokhttp3/ResponseBody;>;"
    iget-object v0, p0, Lcom/buzzfeed/android/activity/BuzzLoginActivity$5;->this$0:Lcom/buzzfeed/android/activity/BuzzLoginActivity;

    # invokes: Lcom/buzzfeed/android/activity/BuzzLoginActivity;->showInvalidLoginDialog()V
    invoke-static {v0}, Lcom/buzzfeed/android/activity/BuzzLoginActivity;->access$100(Lcom/buzzfeed/android/activity/BuzzLoginActivity;)V

    .line 588
    iget-object v0, p0, Lcom/buzzfeed/android/activity/BuzzLoginActivity$5;->val$TAG:Ljava/lang/String;

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

    .line 589
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
    .line 580
    .local p1, "call":Lretrofit2/Call;, "Lretrofit2/Call<Lokhttp3/ResponseBody;>;"
    .local p2, "response":Lretrofit2/Response;, "Lretrofit2/Response<Lokhttp3/ResponseBody;>;"
    invoke-virtual {p2}, Lretrofit2/Response;->code()I

    move-result v1

    invoke-static {v1}, Lcom/buzzfeed/toolkit/util/HttpErrorParser;->createExceptionOnHttpError(I)Lcom/buzzfeed/toolkit/util/HttpException;

    move-result-object v0

    .line 581
    .local v0, "httpError":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/buzzfeed/android/activity/BuzzLoginActivity$5;->val$TAG:Ljava/lang/String;

    const-string v2, "Network Error"

    invoke-static {v1, v2, v0}, Lcom/buzzfeed/toolkit/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 582
    iget-object v1, p0, Lcom/buzzfeed/android/activity/BuzzLoginActivity$5;->this$0:Lcom/buzzfeed/android/activity/BuzzLoginActivity;

    # invokes: Lcom/buzzfeed/android/activity/BuzzLoginActivity;->showInvalidLoginDialog()V
    invoke-static {v1}, Lcom/buzzfeed/android/activity/BuzzLoginActivity;->access$100(Lcom/buzzfeed/android/activity/BuzzLoginActivity;)V

    .line 583
    return-void
.end method

.method public onStringResponse(Ljava/lang/String;)V
    .registers 12
    .param p1, "response"    # Ljava/lang/String;

    .prologue
    .line 559
    :try_start_0
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 561
    .local v6, "bfSignUpInfo":Lorg/json/JSONObject;
    const-string/jumbo v0, "user_validated"

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4b

    .line 563
    iget-object v0, p0, Lcom/buzzfeed/android/activity/BuzzLoginActivity$5;->val$bfUserInfo:Lorg/json/JSONObject;

    const-string/jumbo v1, "username"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 564
    .local v9, "username":Ljava/lang/String;
    iget-object v0, p0, Lcom/buzzfeed/android/activity/BuzzLoginActivity$5;->val$bfUserInfo:Lorg/json/JSONObject;

    const-string v1, "password"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 565
    .local v8, "password":Ljava/lang/String;
    iget-object v0, p0, Lcom/buzzfeed/android/activity/BuzzLoginActivity$5;->this$0:Lcom/buzzfeed/android/activity/BuzzLoginActivity;

    # getter for: Lcom/buzzfeed/android/activity/BuzzLoginActivity;->mTracker:Lcom/buzzfeed/analytics/client/BuzzFeedTracker;
    invoke-static {v0}, Lcom/buzzfeed/android/activity/BuzzLoginActivity;->access$600(Lcom/buzzfeed/android/activity/BuzzLoginActivity;)Lcom/buzzfeed/analytics/client/BuzzFeedTracker;

    move-result-object v0

    iget-object v1, p0, Lcom/buzzfeed/android/activity/BuzzLoginActivity$5;->this$0:Lcom/buzzfeed/android/activity/BuzzLoginActivity;

    const v2, 0x7f090203

    invoke-virtual {v1, v2}, Lcom/buzzfeed/android/activity/BuzzLoginActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/buzzfeed/android/activity/BuzzLoginActivity$5;->this$0:Lcom/buzzfeed/android/activity/BuzzLoginActivity;

    const v3, 0x7f0901df

    invoke-virtual {v2, v3}, Lcom/buzzfeed/android/activity/BuzzLoginActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    const-wide/16 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/buzzfeed/analytics/client/BuzzFeedTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 566
    iget-object v0, p0, Lcom/buzzfeed/android/activity/BuzzLoginActivity$5;->this$0:Lcom/buzzfeed/android/activity/BuzzLoginActivity;

    # invokes: Lcom/buzzfeed/android/activity/BuzzLoginActivity;->loginToBuzzFeedWithAccount(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v9, v8}, Lcom/buzzfeed/android/activity/BuzzLoginActivity;->access$700(Lcom/buzzfeed/android/activity/BuzzLoginActivity;Ljava/lang/String;Ljava/lang/String;)V

    .line 576
    .end local v6    # "bfSignUpInfo":Lorg/json/JSONObject;
    .end local v8    # "password":Ljava/lang/String;
    .end local v9    # "username":Ljava/lang/String;
    :goto_4a
    return-void

    .line 568
    .restart local v6    # "bfSignUpInfo":Lorg/json/JSONObject;
    :cond_4b
    iget-object v0, p0, Lcom/buzzfeed/android/activity/BuzzLoginActivity$5;->val$TAG:Ljava/lang/String;

    const-string v1, "Error: user has not been validated"

    invoke-static {v0, v1}, Lcom/buzzfeed/toolkit/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 569
    iget-object v0, p0, Lcom/buzzfeed/android/activity/BuzzLoginActivity$5;->this$0:Lcom/buzzfeed/android/activity/BuzzLoginActivity;

    # invokes: Lcom/buzzfeed/android/activity/BuzzLoginActivity;->showInvalidLoginDialog()V
    invoke-static {v0}, Lcom/buzzfeed/android/activity/BuzzLoginActivity;->access$100(Lcom/buzzfeed/android/activity/BuzzLoginActivity;)V
    :try_end_57
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_57} :catch_58

    goto :goto_4a

    .line 572
    .end local v6    # "bfSignUpInfo":Lorg/json/JSONObject;
    :catch_58
    move-exception v7

    .line 573
    .local v7, "e":Lorg/json/JSONException;
    iget-object v0, p0, Lcom/buzzfeed/android/activity/BuzzLoginActivity$5;->val$TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v7}, Lorg/json/JSONException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v7}, Lcom/buzzfeed/toolkit/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 574
    iget-object v0, p0, Lcom/buzzfeed/android/activity/BuzzLoginActivity$5;->this$0:Lcom/buzzfeed/android/activity/BuzzLoginActivity;

    # invokes: Lcom/buzzfeed/android/activity/BuzzLoginActivity;->showInvalidLoginDialog()V
    invoke-static {v0}, Lcom/buzzfeed/android/activity/BuzzLoginActivity;->access$100(Lcom/buzzfeed/android/activity/BuzzLoginActivity;)V

    goto :goto_4a
.end method
