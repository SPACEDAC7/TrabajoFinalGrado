.class Lcom/buzzfeed/android/activity/BuzzLoginActivity$4;
.super Lcom/buzzfeed/toolkit/util/retrofit/StringCallback;
.source "BuzzLoginActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/buzzfeed/android/activity/BuzzLoginActivity;->loginToBuzzFeedWithGoogle(Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/buzzfeed/android/activity/BuzzLoginActivity;

.field final synthetic val$TAG:Ljava/lang/String;

.field final synthetic val$account:Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;


# direct methods
.method constructor <init>(Lcom/buzzfeed/android/activity/BuzzLoginActivity;Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;Ljava/lang/String;)V
    .registers 4
    .param p1, "this$0"    # Lcom/buzzfeed/android/activity/BuzzLoginActivity;

    .prologue
    .line 494
    iput-object p1, p0, Lcom/buzzfeed/android/activity/BuzzLoginActivity$4;->this$0:Lcom/buzzfeed/android/activity/BuzzLoginActivity;

    iput-object p2, p0, Lcom/buzzfeed/android/activity/BuzzLoginActivity$4;->val$account:Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    iput-object p3, p0, Lcom/buzzfeed/android/activity/BuzzLoginActivity$4;->val$TAG:Ljava/lang/String;

    invoke-direct {p0}, Lcom/buzzfeed/toolkit/util/retrofit/StringCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lretrofit2/Call;Ljava/lang/Throwable;)V
    .registers 7
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
    .line 541
    .local p1, "call":Lretrofit2/Call;, "Lretrofit2/Call<Lokhttp3/ResponseBody;>;"
    iget-object v0, p0, Lcom/buzzfeed/android/activity/BuzzLoginActivity$4;->val$TAG:Ljava/lang/String;

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

    .line 542
    iget-object v0, p0, Lcom/buzzfeed/android/activity/BuzzLoginActivity$4;->this$0:Lcom/buzzfeed/android/activity/BuzzLoginActivity;

    invoke-virtual {v0}, Lcom/buzzfeed/android/activity/BuzzLoginActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_41

    .line 543
    iget-object v0, p0, Lcom/buzzfeed/android/activity/BuzzLoginActivity$4;->this$0:Lcom/buzzfeed/android/activity/BuzzLoginActivity;

    iget-object v1, p0, Lcom/buzzfeed/android/activity/BuzzLoginActivity$4;->this$0:Lcom/buzzfeed/android/activity/BuzzLoginActivity;

    const v2, 0x7f090097

    const v3, 0x7f0900a9

    # invokes: Lcom/buzzfeed/android/activity/BuzzLoginActivity;->assembleDefaultAlertDialog(II)Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog$Builder;
    invoke-static {v1, v2, v3}, Lcom/buzzfeed/android/activity/BuzzLoginActivity;->access$200(Lcom/buzzfeed/android/activity/BuzzLoginActivity;II)Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0900cd

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v1

    # invokes: Lcom/buzzfeed/android/activity/BuzzLoginActivity;->showAlertDialog(Landroid/support/v7/app/AlertDialog;)V
    invoke-static {v0, v1}, Lcom/buzzfeed/android/activity/BuzzLoginActivity;->access$300(Lcom/buzzfeed/android/activity/BuzzLoginActivity;Landroid/support/v7/app/AlertDialog;)V

    .line 545
    :cond_41
    return-void
.end method

.method protected onNetworkError(Lretrofit2/Call;Lretrofit2/Response;)V
    .registers 8
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
    .line 534
    .local p1, "call":Lretrofit2/Call;, "Lretrofit2/Call<Lokhttp3/ResponseBody;>;"
    .local p2, "response":Lretrofit2/Response;, "Lretrofit2/Response<Lokhttp3/ResponseBody;>;"
    invoke-virtual {p2}, Lretrofit2/Response;->code()I

    move-result v1

    invoke-static {v1}, Lcom/buzzfeed/toolkit/util/HttpErrorParser;->createExceptionOnHttpError(I)Lcom/buzzfeed/toolkit/util/HttpException;

    move-result-object v0

    .line 535
    .local v0, "httpError":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/buzzfeed/android/activity/BuzzLoginActivity$4;->val$TAG:Ljava/lang/String;

    const-string v2, "Network Error"

    invoke-static {v1, v2, v0}, Lcom/buzzfeed/toolkit/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 536
    iget-object v1, p0, Lcom/buzzfeed/android/activity/BuzzLoginActivity$4;->this$0:Lcom/buzzfeed/android/activity/BuzzLoginActivity;

    iget-object v2, p0, Lcom/buzzfeed/android/activity/BuzzLoginActivity$4;->this$0:Lcom/buzzfeed/android/activity/BuzzLoginActivity;

    const v3, 0x7f090097

    const v4, 0x7f0900a9

    # invokes: Lcom/buzzfeed/android/activity/BuzzLoginActivity;->assembleDefaultAlertDialog(II)Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog$Builder;
    invoke-static {v2, v3, v4}, Lcom/buzzfeed/android/activity/BuzzLoginActivity;->access$200(Lcom/buzzfeed/android/activity/BuzzLoginActivity;II)Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0900cd

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v2

    # invokes: Lcom/buzzfeed/android/activity/BuzzLoginActivity;->showAlertDialog(Landroid/support/v7/app/AlertDialog;)V
    invoke-static {v1, v2}, Lcom/buzzfeed/android/activity/BuzzLoginActivity;->access$300(Lcom/buzzfeed/android/activity/BuzzLoginActivity;Landroid/support/v7/app/AlertDialog;)V

    .line 537
    return-void
.end method

.method public onStringResponse(Ljava/lang/String;)V
    .registers 12
    .param p1, "stringResponse"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x0

    const v8, 0x7f0900cd

    const v7, 0x7f0900a9

    const v6, 0x7f090097

    .line 498
    iget-object v2, p0, Lcom/buzzfeed/android/activity/BuzzLoginActivity$4;->this$0:Lcom/buzzfeed/android/activity/BuzzLoginActivity;

    invoke-virtual {v2}, Lcom/buzzfeed/android/activity/BuzzLoginActivity;->isFinishing()Z

    move-result v2

    if-nez v2, :cond_2c

    .line 499
    iget-object v2, p0, Lcom/buzzfeed/android/activity/BuzzLoginActivity$4;->this$0:Lcom/buzzfeed/android/activity/BuzzLoginActivity;

    iget-object v3, p0, Lcom/buzzfeed/android/activity/BuzzLoginActivity$4;->this$0:Lcom/buzzfeed/android/activity/BuzzLoginActivity;

    const v4, 0x7f090082

    const v5, 0x7f090087

    # invokes: Lcom/buzzfeed/android/activity/BuzzLoginActivity;->assembleDefaultAlertDialog(II)Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog$Builder;
    invoke-static {v3, v4, v5}, Lcom/buzzfeed/android/activity/BuzzLoginActivity;->access$200(Lcom/buzzfeed/android/activity/BuzzLoginActivity;II)Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog$Builder;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog$Builder;->setProgressBarVisiblilty(Z)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v3

    # invokes: Lcom/buzzfeed/android/activity/BuzzLoginActivity;->showAlertDialog(Landroid/support/v7/app/AlertDialog;)V
    invoke-static {v2, v3}, Lcom/buzzfeed/android/activity/BuzzLoginActivity;->access$300(Lcom/buzzfeed/android/activity/BuzzLoginActivity;Landroid/support/v7/app/AlertDialog;)V

    .line 502
    :cond_2c
    :try_start_2c
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 503
    .local v0, "bfInfo":Lorg/json/JSONObject;
    const-string v2, "login"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "false"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_af

    .line 507
    const-string v2, "googleplus_uid"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_58

    .line 508
    iget-object v2, p0, Lcom/buzzfeed/android/activity/BuzzLoginActivity$4;->this$0:Lcom/buzzfeed/android/activity/BuzzLoginActivity;

    # invokes: Lcom/buzzfeed/android/activity/BuzzLoginActivity;->signupGoogleUser(Lorg/json/JSONObject;)V
    invoke-static {v2, v0}, Lcom/buzzfeed/android/activity/BuzzLoginActivity;->access$400(Lcom/buzzfeed/android/activity/BuzzLoginActivity;Lorg/json/JSONObject;)V
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_4c} :catch_7e

    .line 525
    .end local v0    # "bfInfo":Lorg/json/JSONObject;
    :cond_4c
    :goto_4c
    :try_start_4c
    iget-object v2, p0, Lcom/buzzfeed/android/activity/BuzzLoginActivity$4;->this$0:Lcom/buzzfeed/android/activity/BuzzLoginActivity;

    iget-object v3, p0, Lcom/buzzfeed/android/activity/BuzzLoginActivity$4;->val$account:Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    invoke-virtual {v3}, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->getServerAuthCode()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/auth/GoogleAuthUtil;->invalidateToken(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_57
    .catch Ljava/lang/Exception; {:try_start_4c .. :try_end_57} :catch_b7

    .line 530
    :goto_57
    return-void

    .line 510
    .restart local v0    # "bfInfo":Lorg/json/JSONObject;
    :cond_58
    :try_start_58
    iget-object v2, p0, Lcom/buzzfeed/android/activity/BuzzLoginActivity$4;->this$0:Lcom/buzzfeed/android/activity/BuzzLoginActivity;

    invoke-virtual {v2}, Lcom/buzzfeed/android/activity/BuzzLoginActivity;->isFinishing()Z

    move-result v2

    if-nez v2, :cond_4c

    .line 511
    iget-object v2, p0, Lcom/buzzfeed/android/activity/BuzzLoginActivity$4;->this$0:Lcom/buzzfeed/android/activity/BuzzLoginActivity;

    iget-object v3, p0, Lcom/buzzfeed/android/activity/BuzzLoginActivity$4;->this$0:Lcom/buzzfeed/android/activity/BuzzLoginActivity;

    const v4, 0x7f090097

    const v5, 0x7f0900a9

    # invokes: Lcom/buzzfeed/android/activity/BuzzLoginActivity;->assembleDefaultAlertDialog(II)Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog$Builder;
    invoke-static {v3, v4, v5}, Lcom/buzzfeed/android/activity/BuzzLoginActivity;->access$200(Lcom/buzzfeed/android/activity/BuzzLoginActivity;II)Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f0900cd

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v3

    # invokes: Lcom/buzzfeed/android/activity/BuzzLoginActivity;->showAlertDialog(Landroid/support/v7/app/AlertDialog;)V
    invoke-static {v2, v3}, Lcom/buzzfeed/android/activity/BuzzLoginActivity;->access$300(Lcom/buzzfeed/android/activity/BuzzLoginActivity;Landroid/support/v7/app/AlertDialog;)V
    :try_end_7d
    .catch Ljava/lang/Exception; {:try_start_58 .. :try_end_7d} :catch_7e

    goto :goto_4c

    .line 518
    .end local v0    # "bfInfo":Lorg/json/JSONObject;
    :catch_7e
    move-exception v1

    .line 519
    .local v1, "ex":Ljava/lang/Exception;
    iget-object v2, p0, Lcom/buzzfeed/android/activity/BuzzLoginActivity$4;->val$TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lcom/buzzfeed/toolkit/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 520
    iget-object v2, p0, Lcom/buzzfeed/android/activity/BuzzLoginActivity$4;->this$0:Lcom/buzzfeed/android/activity/BuzzLoginActivity;

    iget-object v3, p0, Lcom/buzzfeed/android/activity/BuzzLoginActivity$4;->this$0:Lcom/buzzfeed/android/activity/BuzzLoginActivity;

    # invokes: Lcom/buzzfeed/android/activity/BuzzLoginActivity;->assembleDefaultAlertDialog(II)Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog$Builder;
    invoke-static {v3, v6, v7}, Lcom/buzzfeed/android/activity/BuzzLoginActivity;->access$200(Lcom/buzzfeed/android/activity/BuzzLoginActivity;II)Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v8, v9}, Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v3

    # invokes: Lcom/buzzfeed/android/activity/BuzzLoginActivity;->showAlertDialog(Landroid/support/v7/app/AlertDialog;)V
    invoke-static {v2, v3}, Lcom/buzzfeed/android/activity/BuzzLoginActivity;->access$300(Lcom/buzzfeed/android/activity/BuzzLoginActivity;Landroid/support/v7/app/AlertDialog;)V

    goto :goto_4c

    .line 516
    .end local v1    # "ex":Ljava/lang/Exception;
    .restart local v0    # "bfInfo":Lorg/json/JSONObject;
    :cond_af
    :try_start_af
    iget-object v2, p0, Lcom/buzzfeed/android/activity/BuzzLoginActivity$4;->this$0:Lcom/buzzfeed/android/activity/BuzzLoginActivity;

    iget-object v3, p0, Lcom/buzzfeed/android/activity/BuzzLoginActivity$4;->val$account:Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    # invokes: Lcom/buzzfeed/android/activity/BuzzLoginActivity;->onLoginToBuzzFeedWithGooglePlusCompleted(Lorg/json/JSONObject;Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)V
    invoke-static {v2, v0, v3}, Lcom/buzzfeed/android/activity/BuzzLoginActivity;->access$500(Lcom/buzzfeed/android/activity/BuzzLoginActivity;Lorg/json/JSONObject;Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)V
    :try_end_b6
    .catch Ljava/lang/Exception; {:try_start_af .. :try_end_b6} :catch_7e

    goto :goto_4c

    .line 526
    .end local v0    # "bfInfo":Lorg/json/JSONObject;
    :catch_b7
    move-exception v1

    .line 527
    .restart local v1    # "ex":Ljava/lang/Exception;
    iget-object v2, p0, Lcom/buzzfeed/android/activity/BuzzLoginActivity$4;->val$TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lcom/buzzfeed/toolkit/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 528
    iget-object v2, p0, Lcom/buzzfeed/android/activity/BuzzLoginActivity$4;->this$0:Lcom/buzzfeed/android/activity/BuzzLoginActivity;

    iget-object v3, p0, Lcom/buzzfeed/android/activity/BuzzLoginActivity$4;->this$0:Lcom/buzzfeed/android/activity/BuzzLoginActivity;

    # invokes: Lcom/buzzfeed/android/activity/BuzzLoginActivity;->assembleDefaultAlertDialog(II)Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog$Builder;
    invoke-static {v3, v6, v7}, Lcom/buzzfeed/android/activity/BuzzLoginActivity;->access$200(Lcom/buzzfeed/android/activity/BuzzLoginActivity;II)Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v8, v9}, Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v3

    # invokes: Lcom/buzzfeed/android/activity/BuzzLoginActivity;->showAlertDialog(Landroid/support/v7/app/AlertDialog;)V
    invoke-static {v2, v3}, Lcom/buzzfeed/android/activity/BuzzLoginActivity;->access$300(Lcom/buzzfeed/android/activity/BuzzLoginActivity;Landroid/support/v7/app/AlertDialog;)V

    goto/16 :goto_57
.end method
