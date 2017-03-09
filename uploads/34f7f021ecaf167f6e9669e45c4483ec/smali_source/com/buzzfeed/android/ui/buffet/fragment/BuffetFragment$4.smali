.class Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment$4;
.super Ljava/lang/Object;
.source "BuffetFragment.java"

# interfaces
.implements Lcom/buzzfeed/toolkit/content/BaseLoader$LoaderCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->onLoadNextPage()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;


# direct methods
.method constructor <init>(Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;)V
    .registers 2
    .param p1, "this$0"    # Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;

    .prologue
    .line 637
    iput-object p1, p0, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment$4;->this$0:Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Exception;)V
    .registers 4
    .param p1, "e"    # Ljava/lang/Exception;

    .prologue
    .line 661
    # getter for: Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->access$700()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/buzzfeed/toolkit/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 662
    iget-object v0, p0, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment$4;->this$0:Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;

    invoke-virtual {v0}, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_2a

    iget-object v0, p0, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment$4;->this$0:Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;

    invoke-virtual {v0}, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2a

    .line 663
    iget-object v0, p0, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment$4;->this$0:Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;

    iget-object v1, p0, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment$4;->this$0:Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;

    invoke-virtual {v1}, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->createErrorHandler(Landroid/view/View;)Lcom/buzzfeed/toolkit/util/PageErrorHandler;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/buzzfeed/toolkit/util/PageErrorHandler;->handleErrorResponse(Ljava/lang/Exception;)V

    .line 665
    :cond_2a
    iget-object v0, p0, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment$4;->this$0:Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;

    # getter for: Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->mProgressiveLoadingManager:Lcom/buzzfeed/toolkit/util/ProgressiveLoadingManager;
    invoke-static {v0}, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->access$500(Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;)Lcom/buzzfeed/toolkit/util/ProgressiveLoadingManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/buzzfeed/toolkit/util/ProgressiveLoadingManager;->resetLoading()V

    .line 666
    iget-object v0, p0, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment$4;->this$0:Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;

    # getter for: Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->mProgressiveLoadingManager:Lcom/buzzfeed/toolkit/util/ProgressiveLoadingManager;
    invoke-static {v0}, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->access$500(Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;)Lcom/buzzfeed/toolkit/util/ProgressiveLoadingManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/buzzfeed/toolkit/util/ProgressiveLoadingManager;->setNeedReload()V

    .line 667
    iget-object v0, p0, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment$4;->this$0:Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;

    # invokes: Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->hideLoading()V
    invoke-static {v0}, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->access$400(Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;)V

    .line 668
    return-void
.end method

.method public onLoadComplete()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 640
    iget-object v0, p0, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment$4;->this$0:Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;

    invoke-virtual {v0}, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_8c

    iget-object v0, p0, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment$4;->this$0:Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;

    invoke-virtual {v0}, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_8c

    iget-object v0, p0, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment$4;->this$0:Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;

    invoke-virtual {v0}, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_8c

    .line 643
    iget-object v0, p0, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment$4;->this$0:Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;

    iget-object v1, p0, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment$4;->this$0:Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;

    iget-object v1, v1, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->mCurrentFeed:Lcom/buzzfeed/android/data/Feed;

    iget-object v2, p0, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment$4;->this$0:Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;

    iget-object v2, v2, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->mBuffetLoader:Lcom/buzzfeed/android/data/loader/BuffetLoader;

    invoke-virtual {v0, v1, v2}, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->isBookmarkFeedEmpty(Lcom/buzzfeed/android/data/Feed;Lcom/buzzfeed/android/data/loader/BuffetLoader;)Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 644
    iget-object v0, p0, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment$4;->this$0:Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;

    iget-object v1, p0, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment$4;->this$0:Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;

    iget-object v1, v1, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->mErrorView:Lcom/buzzfeed/android/ui/buffet/view/BuffetErrorView;

    iget-object v2, p0, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment$4;->this$0:Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;

    iget-object v2, v2, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->mCurrentFeed:Lcom/buzzfeed/android/data/Feed;

    invoke-virtual {v0, v1, v2, v3}, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->setErrorViewType(Lcom/buzzfeed/android/ui/buffet/view/BuffetErrorView;Lcom/buzzfeed/android/data/Feed;Z)V

    .line 646
    :cond_3a
    iget-object v0, p0, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment$4;->this$0:Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;

    iget-object v0, v0, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->mErrorHandler:Lcom/buzzfeed/toolkit/util/PageErrorHandler;

    if-eqz v0, :cond_4e

    .line 647
    iget-object v0, p0, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment$4;->this$0:Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;

    iget-object v0, v0, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->mErrorHandler:Lcom/buzzfeed/toolkit/util/PageErrorHandler;

    invoke-virtual {v0}, Lcom/buzzfeed/toolkit/util/PageErrorHandler;->dismissSnackbarIfVisible()V

    .line 648
    iget-object v0, p0, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment$4;->this$0:Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;

    iget-object v0, v0, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->mErrorHandler:Lcom/buzzfeed/toolkit/util/PageErrorHandler;

    invoke-virtual {v0, v3}, Lcom/buzzfeed/toolkit/util/PageErrorHandler;->setErrorOccurred(Z)Z

    .line 650
    :cond_4e
    iget-object v0, p0, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment$4;->this$0:Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;

    # getter for: Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->mProgressiveLoadingManager:Lcom/buzzfeed/toolkit/util/ProgressiveLoadingManager;
    invoke-static {v0}, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->access$500(Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;)Lcom/buzzfeed/toolkit/util/ProgressiveLoadingManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/buzzfeed/toolkit/util/ProgressiveLoadingManager;->resetLoading()V

    .line 651
    iget-object v0, p0, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment$4;->this$0:Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;

    iget-object v1, p0, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment$4;->this$0:Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;

    iget-object v1, v1, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->mBuffetView:Lcom/buzzfeed/buffet/ui/view/BuffetView;

    invoke-virtual {v1}, Lcom/buzzfeed/buffet/ui/view/BuffetView;->getItemCount()I

    move-result v1

    iget-object v2, p0, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment$4;->this$0:Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;

    iget-object v2, v2, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->mBuffetLoader:Lcom/buzzfeed/android/data/loader/BuffetLoader;

    invoke-virtual {v2}, Lcom/buzzfeed/android/data/loader/BuffetLoader;->getFlowList()Lcom/buzzfeed/toolkit/content/FlowList;

    move-result-object v2

    # invokes: Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->prepareAds(ILcom/buzzfeed/toolkit/content/FlowList;)V
    invoke-static {v0, v1, v2}, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->access$600(Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;ILcom/buzzfeed/toolkit/content/FlowList;)V

    .line 652
    iget-object v0, p0, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment$4;->this$0:Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;

    iget-object v0, v0, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->mBuffetView:Lcom/buzzfeed/buffet/ui/view/BuffetView;

    iget-object v1, p0, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment$4;->this$0:Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;

    iget-object v1, v1, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->mBuffetLoader:Lcom/buzzfeed/android/data/loader/BuffetLoader;

    invoke-virtual {v1}, Lcom/buzzfeed/android/data/loader/BuffetLoader;->getFlowList()Lcom/buzzfeed/toolkit/content/FlowList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/buzzfeed/buffet/ui/view/BuffetView;->appendItems(Ljava/util/List;)V

    .line 653
    iget-object v0, p0, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment$4;->this$0:Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;

    iget-object v0, v0, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->mBuffetView:Lcom/buzzfeed/buffet/ui/view/BuffetView;

    invoke-virtual {v0, v3}, Lcom/buzzfeed/buffet/ui/view/BuffetView;->setSpinnerVisible(Z)V

    .line 654
    iget-object v0, p0, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment$4;->this$0:Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;

    invoke-virtual {v0}, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->trackScreenView()V

    .line 655
    iget-object v0, p0, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment$4;->this$0:Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;

    # invokes: Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->displayConnectionNoticeIfOffline()V
    invoke-static {v0}, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;->access$300(Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;)V

    .line 657
    :cond_8c
    return-void
.end method
