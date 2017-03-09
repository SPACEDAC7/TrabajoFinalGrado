.class Lcom/buzzfeed/android/ui/reactions/ReactionsView$ReactionVotingTask;
.super Landroid/os/AsyncTask;
.source "ReactionsView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/buzzfeed/android/ui/reactions/ReactionsView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ReactionVotingTask"
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
.field private badgeId:Ljava/lang/String;

.field private badgeInfo:Lcom/buzzfeed/android/ui/reactions/ReactionsView$BadgeInfo;

.field private invalidSession:Z

.field private loveOrHate:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private successfulPost:Z

.field final synthetic this$0:Lcom/buzzfeed/android/ui/reactions/ReactionsView;

.field private view:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/buzzfeed/android/ui/reactions/ReactionsView;Landroid/view/View;Lcom/buzzfeed/android/ui/reactions/ReactionsView$BadgeInfo;)V
    .registers 5
    .param p2, "view"    # Landroid/view/View;
    .param p3, "badgeInfo"    # Lcom/buzzfeed/android/ui/reactions/ReactionsView$BadgeInfo;

    .prologue
    .line 497
    iput-object p1, p0, Lcom/buzzfeed/android/ui/reactions/ReactionsView$ReactionVotingTask;->this$0:Lcom/buzzfeed/android/ui/reactions/ReactionsView;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 498
    iput-object p2, p0, Lcom/buzzfeed/android/ui/reactions/ReactionsView$ReactionVotingTask;->view:Landroid/view/View;

    .line 499
    iput-object p3, p0, Lcom/buzzfeed/android/ui/reactions/ReactionsView$ReactionVotingTask;->badgeInfo:Lcom/buzzfeed/android/ui/reactions/ReactionsView$BadgeInfo;

    .line 500
    iget-object v0, p3, Lcom/buzzfeed/android/ui/reactions/ReactionsView$BadgeInfo;->loveHateId:Ljava/lang/Integer;

    if-eqz v0, :cond_15

    .line 501
    iget-object v0, p3, Lcom/buzzfeed/android/ui/reactions/ReactionsView$BadgeInfo;->loveHateId:Ljava/lang/Integer;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/buzzfeed/android/ui/reactions/ReactionsView$ReactionVotingTask;->loveOrHate:Ljava/lang/String;

    .line 502
    :cond_15
    iget-object v0, p3, Lcom/buzzfeed/android/ui/reactions/ReactionsView$BadgeInfo;->submitId:Ljava/lang/Integer;

    if-eqz v0, :cond_21

    iget-object v0, p3, Lcom/buzzfeed/android/ui/reactions/ReactionsView$BadgeInfo;->submitId:Ljava/lang/Integer;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/buzzfeed/android/ui/reactions/ReactionsView$ReactionVotingTask;->badgeId:Ljava/lang/String;

    .line 503
    :cond_21
    iget-object v0, p3, Lcom/buzzfeed/android/ui/reactions/ReactionsView$BadgeInfo;->name:Ljava/lang/String;

    iput-object v0, p0, Lcom/buzzfeed/android/ui/reactions/ReactionsView$ReactionVotingTask;->name:Ljava/lang/String;

    .line 504
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/buzzfeed/android/ui/reactions/ReactionsView$ReactionVotingTask;->invalidSession:Z

    .line 505
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 487
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/buzzfeed/android/ui/reactions/ReactionsView$ReactionVotingTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .registers 6
    .param p1, "arg0"    # [Ljava/lang/Void;

    .prologue
    .line 533
    iget-object v1, p0, Lcom/buzzfeed/android/ui/reactions/ReactionsView$ReactionVotingTask;->this$0:Lcom/buzzfeed/android/ui/reactions/ReactionsView;

    # getter for: Lcom/buzzfeed/android/ui/reactions/ReactionsView;->mBuzzUser:Lcom/buzzfeed/android/data/BuzzUser;
    invoke-static {v1}, Lcom/buzzfeed/android/ui/reactions/ReactionsView;->access$000(Lcom/buzzfeed/android/ui/reactions/ReactionsView;)Lcom/buzzfeed/android/data/BuzzUser;

    move-result-object v1

    iget-object v2, p0, Lcom/buzzfeed/android/ui/reactions/ReactionsView$ReactionVotingTask;->this$0:Lcom/buzzfeed/android/ui/reactions/ReactionsView;

    # getter for: Lcom/buzzfeed/android/ui/reactions/ReactionsView;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/buzzfeed/android/ui/reactions/ReactionsView;->access$200(Lcom/buzzfeed/android/ui/reactions/ReactionsView;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/buzzfeed/android/util/BuzzUtils;->getCsrfTokenOrInvalidSession(Lcom/buzzfeed/android/data/BuzzUser;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 534
    .local v0, "csrfToken":Ljava/lang/String;
    if-nez v0, :cond_17

    .line 535
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/buzzfeed/android/ui/reactions/ReactionsView$ReactionVotingTask;->successfulPost:Z

    .line 542
    :goto_15
    const/4 v1, 0x0

    return-object v1

    .line 536
    :cond_17
    const-string v1, "invalid_session"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_23

    .line 537
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/buzzfeed/android/ui/reactions/ReactionsView$ReactionVotingTask;->invalidSession:Z

    goto :goto_15

    .line 540
    :cond_23
    iget-object v1, p0, Lcom/buzzfeed/android/ui/reactions/ReactionsView$ReactionVotingTask;->this$0:Lcom/buzzfeed/android/ui/reactions/ReactionsView;

    iget-object v2, p0, Lcom/buzzfeed/android/ui/reactions/ReactionsView$ReactionVotingTask;->loveOrHate:Ljava/lang/String;

    iget-object v3, p0, Lcom/buzzfeed/android/ui/reactions/ReactionsView$ReactionVotingTask;->badgeId:Ljava/lang/String;

    # invokes: Lcom/buzzfeed/android/ui/reactions/ReactionsView;->submitToServer(Ljava/lang/String;Ljava/lang/String;)Z
    invoke-static {v1, v2, v3}, Lcom/buzzfeed/android/ui/reactions/ReactionsView;->access$1100(Lcom/buzzfeed/android/ui/reactions/ReactionsView;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/buzzfeed/android/ui/reactions/ReactionsView$ReactionVotingTask;->successfulPost:Z

    goto :goto_15
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 487
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/buzzfeed/android/ui/reactions/ReactionsView$ReactionVotingTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .registers 8
    .param p1, "result"    # Ljava/lang/Void;

    .prologue
    const/4 v5, 0x0

    .line 513
    iget-object v2, p0, Lcom/buzzfeed/android/ui/reactions/ReactionsView$ReactionVotingTask;->this$0:Lcom/buzzfeed/android/ui/reactions/ReactionsView;

    invoke-virtual {v2}, Lcom/buzzfeed/android/ui/reactions/ReactionsView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 514
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_55

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v2

    if-nez v2, :cond_55

    .line 515
    iget-boolean v2, p0, Lcom/buzzfeed/android/ui/reactions/ReactionsView$ReactionVotingTask;->invalidSession:Z

    if-nez v2, :cond_56

    .line 516
    iget-object v2, p0, Lcom/buzzfeed/android/ui/reactions/ReactionsView$ReactionVotingTask;->this$0:Lcom/buzzfeed/android/ui/reactions/ReactionsView;

    iget-boolean v3, p0, Lcom/buzzfeed/android/ui/reactions/ReactionsView$ReactionVotingTask;->successfulPost:Z

    iget-object v4, p0, Lcom/buzzfeed/android/ui/reactions/ReactionsView$ReactionVotingTask;->name:Ljava/lang/String;

    # invokes: Lcom/buzzfeed/android/ui/reactions/ReactionsView;->showResults(ZLjava/lang/String;)V
    invoke-static {v2, v3, v4}, Lcom/buzzfeed/android/ui/reactions/ReactionsView;->access$900(Lcom/buzzfeed/android/ui/reactions/ReactionsView;ZLjava/lang/String;)V

    .line 517
    iget-boolean v2, p0, Lcom/buzzfeed/android/ui/reactions/ReactionsView$ReactionVotingTask;->successfulPost:Z

    if-eqz v2, :cond_55

    .line 518
    iget-object v2, p0, Lcom/buzzfeed/android/ui/reactions/ReactionsView$ReactionVotingTask;->this$0:Lcom/buzzfeed/android/ui/reactions/ReactionsView;

    invoke-virtual {v2}, Lcom/buzzfeed/android/ui/reactions/ReactionsView;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/buzzfeed/android/ui/reactions/ReactionsView$ReactionVotingTask;->this$0:Lcom/buzzfeed/android/ui/reactions/ReactionsView;

    invoke-virtual {v3}, Lcom/buzzfeed/android/ui/reactions/ReactionsView;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0900eb

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 519
    iget-object v2, p0, Lcom/buzzfeed/android/ui/reactions/ReactionsView$ReactionVotingTask;->view:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 520
    iget-object v2, p0, Lcom/buzzfeed/android/ui/reactions/ReactionsView$ReactionVotingTask;->this$0:Lcom/buzzfeed/android/ui/reactions/ReactionsView;

    iget-object v3, p0, Lcom/buzzfeed/android/ui/reactions/ReactionsView$ReactionVotingTask;->this$0:Lcom/buzzfeed/android/ui/reactions/ReactionsView;

    # getter for: Lcom/buzzfeed/android/ui/reactions/ReactionsView;->mContent:Lcom/buzzfeed/toolkit/content/PostContent;
    invoke-static {v3}, Lcom/buzzfeed/android/ui/reactions/ReactionsView;->access$500(Lcom/buzzfeed/android/ui/reactions/ReactionsView;)Lcom/buzzfeed/toolkit/content/PostContent;

    move-result-object v3

    invoke-interface {v3}, Lcom/buzzfeed/toolkit/content/PostContent;->getId()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/buzzfeed/android/ui/reactions/ReactionsView$ReactionVotingTask;->badgeInfo:Lcom/buzzfeed/android/ui/reactions/ReactionsView$BadgeInfo;

    iget-object v4, v4, Lcom/buzzfeed/android/ui/reactions/ReactionsView$BadgeInfo;->badge:Lcom/buzzfeed/android/ui/reactions/ReactionsView$Badge;

    # invokes: Lcom/buzzfeed/android/ui/reactions/ReactionsView;->addBadge(Ljava/lang/String;Lcom/buzzfeed/android/ui/reactions/ReactionsView$Badge;)V
    invoke-static {v2, v3, v4}, Lcom/buzzfeed/android/ui/reactions/ReactionsView;->access$1000(Lcom/buzzfeed/android/ui/reactions/ReactionsView;Ljava/lang/String;Lcom/buzzfeed/android/ui/reactions/ReactionsView$Badge;)V

    .line 529
    :cond_55
    :goto_55
    return-void

    .line 523
    :cond_56
    const v2, 0x7f090086

    invoke-virtual {v0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v5}, Lcom/buzzfeed/android/util/BuzzUtils;->showToastNotification(Landroid/app/Activity;Ljava/lang/String;I)V

    .line 524
    iget-object v2, p0, Lcom/buzzfeed/android/ui/reactions/ReactionsView$ReactionVotingTask;->this$0:Lcom/buzzfeed/android/ui/reactions/ReactionsView;

    # getter for: Lcom/buzzfeed/android/ui/reactions/ReactionsView;->mBuzzUser:Lcom/buzzfeed/android/data/BuzzUser;
    invoke-static {v2}, Lcom/buzzfeed/android/ui/reactions/ReactionsView;->access$000(Lcom/buzzfeed/android/ui/reactions/ReactionsView;)Lcom/buzzfeed/android/data/BuzzUser;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/buzzfeed/android/data/BuzzUser;->logout(Landroid/app/Activity;)V

    .line 525
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/buzzfeed/android/activity/BuzzLoginActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 526
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {v0, v1, v5}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_55
.end method

.method protected onPreExecute()V
    .registers 1

    .prologue
    .line 509
    return-void
.end method
