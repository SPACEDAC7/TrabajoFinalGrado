.class Lcom/buzzfeed/android/activity/ContributionSubmitActivity$ContributeTask;
.super Landroid/os/AsyncTask;
.source "ContributionSubmitActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/buzzfeed/android/activity/ContributionSubmitActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ContributeTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private invalidSession:Z

.field private final text:Ljava/lang/String;

.field final synthetic this$0:Lcom/buzzfeed/android/activity/ContributionSubmitActivity;


# direct methods
.method public constructor <init>(Lcom/buzzfeed/android/activity/ContributionSubmitActivity;Ljava/lang/String;)V
    .registers 4
    .param p2, "text"    # Ljava/lang/String;

    .prologue
    .line 522
    iput-object p1, p0, Lcom/buzzfeed/android/activity/ContributionSubmitActivity$ContributeTask;->this$0:Lcom/buzzfeed/android/activity/ContributionSubmitActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 523
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/buzzfeed/android/activity/ContributionSubmitActivity$ContributeTask;->invalidSession:Z

    .line 524
    iput-object p2, p0, Lcom/buzzfeed/android/activity/ContributionSubmitActivity$ContributeTask;->text:Ljava/lang/String;

    .line 525
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 517
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/buzzfeed/android/activity/ContributionSubmitActivity$ContributeTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .registers 10
    .param p1, "arg0"    # [Ljava/lang/Void;

    .prologue
    .line 557
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    # getter for: Lcom/buzzfeed/android/activity/ContributionSubmitActivity;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/buzzfeed/android/activity/ContributionSubmitActivity;->access$500()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".ContributeTextTask.doInBackground"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 559
    .local v6, "TAG":Ljava/lang/String;
    :try_start_17
    iget-object v0, p0, Lcom/buzzfeed/android/activity/ContributionSubmitActivity$ContributeTask;->this$0:Lcom/buzzfeed/android/activity/ContributionSubmitActivity;

    iget-object v1, p0, Lcom/buzzfeed/android/activity/ContributionSubmitActivity$ContributeTask;->this$0:Lcom/buzzfeed/android/activity/ContributionSubmitActivity;

    iget-object v2, p0, Lcom/buzzfeed/android/activity/ContributionSubmitActivity$ContributeTask;->text:Ljava/lang/String;

    # invokes: Lcom/buzzfeed/android/activity/ContributionSubmitActivity;->makeCommentFromData(Ljava/lang/String;)Lcom/buzzfeed/android/data/comment/BuzzFeedComment;
    invoke-static {v1, v2}, Lcom/buzzfeed/android/activity/ContributionSubmitActivity;->access$700(Lcom/buzzfeed/android/activity/ContributionSubmitActivity;Ljava/lang/String;)Lcom/buzzfeed/android/data/comment/BuzzFeedComment;

    move-result-object v1

    # setter for: Lcom/buzzfeed/android/activity/ContributionSubmitActivity;->mNewComment:Lcom/buzzfeed/android/data/comment/BuzzFeedComment;
    invoke-static {v0, v1}, Lcom/buzzfeed/android/activity/ContributionSubmitActivity;->access$602(Lcom/buzzfeed/android/activity/ContributionSubmitActivity;Lcom/buzzfeed/android/data/comment/BuzzFeedComment;)Lcom/buzzfeed/android/data/comment/BuzzFeedComment;

    .line 560
    iget-object v0, p0, Lcom/buzzfeed/android/activity/ContributionSubmitActivity$ContributeTask;->this$0:Lcom/buzzfeed/android/activity/ContributionSubmitActivity;

    # getter for: Lcom/buzzfeed/android/activity/ContributionSubmitActivity;->hasImage:Z
    invoke-static {v0}, Lcom/buzzfeed/android/activity/ContributionSubmitActivity;->access$800(Lcom/buzzfeed/android/activity/ContributionSubmitActivity;)Z

    move-result v0

    if-eqz v0, :cond_69

    .line 561
    iget-object v0, p0, Lcom/buzzfeed/android/activity/ContributionSubmitActivity$ContributeTask;->this$0:Lcom/buzzfeed/android/activity/ContributionSubmitActivity;

    # invokes: Lcom/buzzfeed/android/activity/ContributionSubmitActivity;->postImage()V
    invoke-static {v0}, Lcom/buzzfeed/android/activity/ContributionSubmitActivity;->access$900(Lcom/buzzfeed/android/activity/ContributionSubmitActivity;)V

    .line 566
    :goto_31
    invoke-static {}, Lcom/buzzfeed/analytics/client/BuzzFeedTracker;->getInstance()Lcom/buzzfeed/analytics/client/BuzzFeedTracker;

    move-result-object v0

    iget-object v1, p0, Lcom/buzzfeed/android/activity/ContributionSubmitActivity$ContributeTask;->this$0:Lcom/buzzfeed/android/activity/ContributionSubmitActivity;

    const v2, 0x7f0901fd

    .line 567
    invoke-virtual {v1, v2}, Lcom/buzzfeed/android/activity/ContributionSubmitActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/buzzfeed/android/activity/ContributionSubmitActivity$ContributeTask;->this$0:Lcom/buzzfeed/android/activity/ContributionSubmitActivity;

    const v3, 0x7f0901d6

    invoke-virtual {v2, v3}, Lcom/buzzfeed/android/activity/ContributionSubmitActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/buzzfeed/android/activity/ContributionSubmitActivity$ContributeTask;->this$0:Lcom/buzzfeed/android/activity/ContributionSubmitActivity;

    .line 568
    # getter for: Lcom/buzzfeed/android/activity/ContributionSubmitActivity;->content:Lcom/buzzfeed/toolkit/content/PostContent;
    invoke-static {v3}, Lcom/buzzfeed/android/activity/ContributionSubmitActivity;->access$1000(Lcom/buzzfeed/android/activity/ContributionSubmitActivity;)Lcom/buzzfeed/toolkit/content/PostContent;

    move-result-object v3

    invoke-interface {v3}, Lcom/buzzfeed/toolkit/content/PostContent;->getUri()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/buzzfeed/android/util/BuzzUtils;->removeCacheBuster(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-wide/16 v4, 0x0

    .line 567
    invoke-virtual/range {v0 .. v5}, Lcom/buzzfeed/analytics/client/BuzzFeedTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 569
    invoke-static {}, Lcom/buzzfeed/analytics/client/DustbusterClient;->getInstance()Lcom/buzzfeed/analytics/client/DustbusterClient;

    move-result-object v0

    iget-object v1, p0, Lcom/buzzfeed/android/activity/ContributionSubmitActivity$ContributeTask;->this$0:Lcom/buzzfeed/android/activity/ContributionSubmitActivity;

    # getter for: Lcom/buzzfeed/android/activity/ContributionSubmitActivity;->content:Lcom/buzzfeed/toolkit/content/PostContent;
    invoke-static {v1}, Lcom/buzzfeed/android/activity/ContributionSubmitActivity;->access$1000(Lcom/buzzfeed/android/activity/ContributionSubmitActivity;)Lcom/buzzfeed/toolkit/content/PostContent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/buzzfeed/analytics/client/DustbusterClient;->trackBuzzFeedComment(Lcom/buzzfeed/toolkit/content/PostContent;)V

    .line 574
    :goto_67
    const/4 v0, 0x0

    return-object v0

    .line 563
    :cond_69
    iget-object v0, p0, Lcom/buzzfeed/android/activity/ContributionSubmitActivity$ContributeTask;->this$0:Lcom/buzzfeed/android/activity/ContributionSubmitActivity;

    invoke-virtual {v0}, Lcom/buzzfeed/android/activity/ContributionSubmitActivity;->postText()V
    :try_end_6e
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_6e} :catch_6f

    goto :goto_31

    .line 571
    :catch_6f
    move-exception v7

    .line 572
    .local v7, "e":Ljava/lang/Exception;
    const-string v0, "Error posting data"

    invoke-static {v6, v0, v7}, Lcom/buzzfeed/toolkit/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_67
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 517
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/buzzfeed/android/activity/ContributionSubmitActivity$ContributeTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .registers 7
    .param p1, "result"    # Ljava/lang/Void;

    .prologue
    const/4 v4, 0x0

    .line 539
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x9

    if-lt v1, v2, :cond_11

    .line 540
    iget-object v1, p0, Lcom/buzzfeed/android/activity/ContributionSubmitActivity$ContributeTask;->this$0:Lcom/buzzfeed/android/activity/ContributionSubmitActivity;

    # getter for: Lcom/buzzfeed/android/activity/ContributionSubmitActivity;->menuSend:Landroid/view/MenuItem;
    invoke-static {v1}, Lcom/buzzfeed/android/activity/ContributionSubmitActivity;->access$100(Lcom/buzzfeed/android/activity/ContributionSubmitActivity;)Landroid/view/MenuItem;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setActionView(Landroid/view/View;)Landroid/view/MenuItem;

    .line 542
    :cond_11
    iget-object v1, p0, Lcom/buzzfeed/android/activity/ContributionSubmitActivity$ContributeTask;->this$0:Lcom/buzzfeed/android/activity/ContributionSubmitActivity;

    # invokes: Lcom/buzzfeed/android/activity/ContributionSubmitActivity;->toggleOverlay(Z)V
    invoke-static {v1, v4}, Lcom/buzzfeed/android/activity/ContributionSubmitActivity;->access$200(Lcom/buzzfeed/android/activity/ContributionSubmitActivity;Z)V

    .line 543
    iget-boolean v1, p0, Lcom/buzzfeed/android/activity/ContributionSubmitActivity$ContributeTask;->invalidSession:Z

    if-nez v1, :cond_20

    .line 544
    iget-object v1, p0, Lcom/buzzfeed/android/activity/ContributionSubmitActivity$ContributeTask;->this$0:Lcom/buzzfeed/android/activity/ContributionSubmitActivity;

    # invokes: Lcom/buzzfeed/android/activity/ContributionSubmitActivity;->showResults()V
    invoke-static {v1}, Lcom/buzzfeed/android/activity/ContributionSubmitActivity;->access$300(Lcom/buzzfeed/android/activity/ContributionSubmitActivity;)V

    .line 553
    :goto_1f
    return-void

    .line 546
    :cond_20
    iget-object v1, p0, Lcom/buzzfeed/android/activity/ContributionSubmitActivity$ContributeTask;->this$0:Lcom/buzzfeed/android/activity/ContributionSubmitActivity;

    iget-object v2, p0, Lcom/buzzfeed/android/activity/ContributionSubmitActivity$ContributeTask;->this$0:Lcom/buzzfeed/android/activity/ContributionSubmitActivity;

    const v3, 0x7f090086

    invoke-virtual {v2, v3}, Lcom/buzzfeed/android/activity/ContributionSubmitActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v4}, Lcom/buzzfeed/android/util/BuzzUtils;->showToastNotification(Landroid/app/Activity;Ljava/lang/String;I)V

    .line 548
    iget-object v1, p0, Lcom/buzzfeed/android/activity/ContributionSubmitActivity$ContributeTask;->this$0:Lcom/buzzfeed/android/activity/ContributionSubmitActivity;

    # getter for: Lcom/buzzfeed/android/activity/ContributionSubmitActivity;->buzzUser:Lcom/buzzfeed/android/data/BuzzUser;
    invoke-static {v1}, Lcom/buzzfeed/android/activity/ContributionSubmitActivity;->access$400(Lcom/buzzfeed/android/activity/ContributionSubmitActivity;)Lcom/buzzfeed/android/data/BuzzUser;

    move-result-object v1

    iget-object v2, p0, Lcom/buzzfeed/android/activity/ContributionSubmitActivity$ContributeTask;->this$0:Lcom/buzzfeed/android/activity/ContributionSubmitActivity;

    invoke-virtual {v1, v2}, Lcom/buzzfeed/android/data/BuzzUser;->logout(Landroid/app/Activity;)V

    .line 549
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/buzzfeed/android/activity/ContributionSubmitActivity$ContributeTask;->this$0:Lcom/buzzfeed/android/activity/ContributionSubmitActivity;

    const-class v2, Lcom/buzzfeed/android/activity/BuzzLoginActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 551
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/buzzfeed/android/activity/ContributionSubmitActivity$ContributeTask;->this$0:Lcom/buzzfeed/android/activity/ContributionSubmitActivity;

    invoke-virtual {v1, v0}, Lcom/buzzfeed/android/activity/ContributionSubmitActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_1f
.end method

.method protected onPreExecute()V
    .registers 4

    .prologue
    .line 529
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x9

    if-lt v1, v2, :cond_12

    .line 530
    iget-object v1, p0, Lcom/buzzfeed/android/activity/ContributionSubmitActivity$ContributeTask;->this$0:Lcom/buzzfeed/android/activity/ContributionSubmitActivity;

    # getter for: Lcom/buzzfeed/android/activity/ContributionSubmitActivity;->menuSend:Landroid/view/MenuItem;
    invoke-static {v1}, Lcom/buzzfeed/android/activity/ContributionSubmitActivity;->access$100(Lcom/buzzfeed/android/activity/ContributionSubmitActivity;)Landroid/view/MenuItem;

    move-result-object v1

    const v2, 0x7f03001b

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setActionView(I)Landroid/view/MenuItem;

    .line 532
    :cond_12
    iget-object v1, p0, Lcom/buzzfeed/android/activity/ContributionSubmitActivity$ContributeTask;->this$0:Lcom/buzzfeed/android/activity/ContributionSubmitActivity;

    const/4 v2, 0x1

    # invokes: Lcom/buzzfeed/android/activity/ContributionSubmitActivity;->toggleOverlay(Z)V
    invoke-static {v1, v2}, Lcom/buzzfeed/android/activity/ContributionSubmitActivity;->access$200(Lcom/buzzfeed/android/activity/ContributionSubmitActivity;Z)V

    .line 533
    iget-object v1, p0, Lcom/buzzfeed/android/activity/ContributionSubmitActivity$ContributeTask;->this$0:Lcom/buzzfeed/android/activity/ContributionSubmitActivity;

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Lcom/buzzfeed/android/activity/ContributionSubmitActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 534
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lcom/buzzfeed/android/activity/ContributionSubmitActivity$ContributeTask;->this$0:Lcom/buzzfeed/android/activity/ContributionSubmitActivity;

    # getter for: Lcom/buzzfeed/android/activity/ContributionSubmitActivity;->responseTextView:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/buzzfeed/android/activity/ContributionSubmitActivity;->access$000(Lcom/buzzfeed/android/activity/ContributionSubmitActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 535
    return-void
.end method
