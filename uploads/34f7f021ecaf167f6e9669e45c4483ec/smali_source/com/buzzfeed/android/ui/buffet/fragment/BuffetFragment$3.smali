.class Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment$3;
.super Ljava/lang/Object;
.source "BuffetFragment.java"

# interfaces
.implements Lcom/buzzfeed/toolkit/content/BaseLoader$LoaderCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->loadFeedAfterRefresh(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;

.field final synthetic val$currentFeedWasRefreshed:Z


# direct methods
.method constructor <init>(Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;Z)V
    .registers 3
    .param p1, "this$0"    # Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;

    .prologue
    .line 546
    iput-object p1, p0, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment$3;->this$0:Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;

    iput-boolean p2, p0, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment$3;->val$currentFeedWasRefreshed:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Exception;)V
    .registers 4
    .param p1, "e"    # Ljava/lang/Exception;

    .prologue
    .line 561
    iget-object v0, p0, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment$3;->this$0:Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;

    invoke-virtual {v0}, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_28

    iget-object v0, p0, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment$3;->this$0:Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;

    invoke-virtual {v0}, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_28

    .line 562
    iget-object v0, p0, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment$3;->this$0:Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;

    iget-object v1, p0, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment$3;->this$0:Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;

    invoke-virtual {v1}, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->createErrorHandler(Landroid/view/View;)Lcom/buzzfeed/toolkit/util/PageErrorHandler;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/buzzfeed/toolkit/util/PageErrorHandler;->handleErrorResponse(Ljava/lang/Exception;)V

    .line 565
    iget-boolean v0, p0, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment$3;->val$currentFeedWasRefreshed:Z

    if-nez v0, :cond_28

    iget-object v0, p0, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment$3;->this$0:Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;

    invoke-virtual {v0}, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->showError()V

    .line 568
    :cond_28
    iget-object v0, p0, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment$3;->this$0:Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;

    # invokes: Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->hideLoading()V
    invoke-static {v0}, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->access$400(Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;)V

    .line 569
    iget-object v0, p0, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment$3;->this$0:Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;

    # getter for: Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->mProgressiveLoadingManager:Lcom/buzzfeed/toolkit/util/ProgressiveLoadingManager;
    invoke-static {v0}, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->access$500(Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;)Lcom/buzzfeed/toolkit/util/ProgressiveLoadingManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/buzzfeed/toolkit/util/ProgressiveLoadingManager;->resetLoading()V

    .line 570
    return-void
.end method

.method public onLoadComplete()V
    .registers 3

    .prologue
    .line 549
    iget-object v0, p0, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment$3;->this$0:Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;

    invoke-virtual {v0}, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_3b

    iget-object v0, p0, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment$3;->this$0:Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;

    invoke-virtual {v0}, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_3b

    iget-object v0, p0, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment$3;->this$0:Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;

    invoke-virtual {v0}, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_3b

    .line 550
    iget-object v0, p0, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment$3;->this$0:Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;

    iget-object v0, v0, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->mErrorHandler:Lcom/buzzfeed/toolkit/util/PageErrorHandler;

    if-eqz v0, :cond_31

    .line 551
    iget-object v0, p0, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment$3;->this$0:Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;

    iget-object v0, v0, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->mErrorHandler:Lcom/buzzfeed/toolkit/util/PageErrorHandler;

    invoke-virtual {v0}, Lcom/buzzfeed/toolkit/util/PageErrorHandler;->dismissSnackbarIfVisible()V

    .line 552
    iget-object v0, p0, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment$3;->this$0:Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;

    iget-object v0, v0, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->mErrorHandler:Lcom/buzzfeed/toolkit/util/PageErrorHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/buzzfeed/toolkit/util/PageErrorHandler;->setErrorOccurred(Z)Z

    .line 554
    :cond_31
    iget-object v0, p0, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment$3;->this$0:Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;

    # invokes: Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->onInitialLoadFeedComplete()V
    invoke-static {v0}, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->access$200(Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;)V

    .line 555
    iget-object v0, p0, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment$3;->this$0:Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;

    # invokes: Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->displayConnectionNoticeIfOffline()V
    invoke-static {v0}, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->access$300(Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;)V

    .line 557
    :cond_3b
    return-void
.end method
