.class Lcom/buzzfeed/showx/showpage/ShowPagePresenter$3;
.super Ljava/lang/Object;
.source "ShowPagePresenter.java"

# interfaces
.implements Lcom/buzzfeed/showx/showpage/data/loader/ShowPageLoader$Callbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/buzzfeed/showx/showpage/ShowPagePresenter;->requestNextPageLoad()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/buzzfeed/showx/showpage/ShowPagePresenter;

.field final synthetic val$TAG:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/buzzfeed/showx/showpage/ShowPagePresenter;Ljava/lang/String;)V
    .registers 3
    .param p1, "this$0"    # Lcom/buzzfeed/showx/showpage/ShowPagePresenter;

    .prologue
    .line 201
    iput-object p1, p0, Lcom/buzzfeed/showx/showpage/ShowPagePresenter$3;->this$0:Lcom/buzzfeed/showx/showpage/ShowPagePresenter;

    iput-object p2, p0, Lcom/buzzfeed/showx/showpage/ShowPagePresenter$3;->val$TAG:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadComplete(Lcom/buzzfeed/showx/showpage/data/model/ShowPage;)V
    .registers 4
    .param p1, "data"    # Lcom/buzzfeed/showx/showpage/data/model/ShowPage;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 204
    iget-object v0, p0, Lcom/buzzfeed/showx/showpage/ShowPagePresenter$3;->this$0:Lcom/buzzfeed/showx/showpage/ShowPagePresenter;

    # getter for: Lcom/buzzfeed/showx/showpage/ShowPagePresenter;->mData:Ljava/util/List;
    invoke-static {v0}, Lcom/buzzfeed/showx/showpage/ShowPagePresenter;->access$600(Lcom/buzzfeed/showx/showpage/ShowPagePresenter;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p1, Lcom/buzzfeed/showx/showpage/data/model/ShowPage;->flowList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 205
    iget-object v0, p0, Lcom/buzzfeed/showx/showpage/ShowPagePresenter$3;->this$0:Lcom/buzzfeed/showx/showpage/ShowPagePresenter;

    # setter for: Lcom/buzzfeed/showx/showpage/ShowPagePresenter;->mCurrentShowPage:Lcom/buzzfeed/showx/showpage/data/model/ShowPage;
    invoke-static {v0, p1}, Lcom/buzzfeed/showx/showpage/ShowPagePresenter;->access$702(Lcom/buzzfeed/showx/showpage/ShowPagePresenter;Lcom/buzzfeed/showx/showpage/data/model/ShowPage;)Lcom/buzzfeed/showx/showpage/data/model/ShowPage;

    .line 206
    iget-object v0, p0, Lcom/buzzfeed/showx/showpage/ShowPagePresenter$3;->this$0:Lcom/buzzfeed/showx/showpage/ShowPagePresenter;

    # getter for: Lcom/buzzfeed/showx/showpage/ShowPagePresenter;->mUpdatableView:Lcom/buzzfeed/showx/showpage/ShowPageContract$UpdatableView;
    invoke-static {v0}, Lcom/buzzfeed/showx/showpage/ShowPagePresenter;->access$800(Lcom/buzzfeed/showx/showpage/ShowPagePresenter;)Lcom/buzzfeed/showx/showpage/ShowPageContract$UpdatableView;

    move-result-object v0

    iget-object v1, p1, Lcom/buzzfeed/showx/showpage/data/model/ShowPage;->flowList:Ljava/util/List;

    invoke-interface {v0, v1}, Lcom/buzzfeed/showx/showpage/ShowPageContract$UpdatableView;->appendItems(Ljava/util/List;)V

    .line 207
    iget-object v0, p0, Lcom/buzzfeed/showx/showpage/ShowPagePresenter$3;->this$0:Lcom/buzzfeed/showx/showpage/ShowPagePresenter;

    # getter for: Lcom/buzzfeed/showx/showpage/ShowPagePresenter;->mUpdatableView:Lcom/buzzfeed/showx/showpage/ShowPageContract$UpdatableView;
    invoke-static {v0}, Lcom/buzzfeed/showx/showpage/ShowPagePresenter;->access$800(Lcom/buzzfeed/showx/showpage/ShowPagePresenter;)Lcom/buzzfeed/showx/showpage/ShowPageContract$UpdatableView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/buzzfeed/showx/showpage/ShowPageContract$UpdatableView;->setFooterProgressVisibility(Z)V

    .line 208
    iget-object v0, p0, Lcom/buzzfeed/showx/showpage/ShowPagePresenter$3;->this$0:Lcom/buzzfeed/showx/showpage/ShowPagePresenter;

    # getter for: Lcom/buzzfeed/showx/showpage/ShowPagePresenter;->mProgressiveLoadingManager:Lcom/buzzfeed/toolkit/util/ProgressiveLoadingManager;
    invoke-static {v0}, Lcom/buzzfeed/showx/showpage/ShowPagePresenter;->access$1200(Lcom/buzzfeed/showx/showpage/ShowPagePresenter;)Lcom/buzzfeed/toolkit/util/ProgressiveLoadingManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/buzzfeed/toolkit/util/ProgressiveLoadingManager;->resetLoading()V

    .line 210
    iget-object v0, p0, Lcom/buzzfeed/showx/showpage/ShowPagePresenter$3;->this$0:Lcom/buzzfeed/showx/showpage/ShowPagePresenter;

    # getter for: Lcom/buzzfeed/showx/showpage/ShowPagePresenter;->mCallbacks:Lcom/buzzfeed/showx/showpage/ShowPageContract$Presenter$Callbacks;
    invoke-static {v0}, Lcom/buzzfeed/showx/showpage/ShowPagePresenter;->access$1000(Lcom/buzzfeed/showx/showpage/ShowPagePresenter;)Lcom/buzzfeed/showx/showpage/ShowPageContract$Presenter$Callbacks;

    move-result-object v0

    if-eqz v0, :cond_3f

    .line 211
    iget-object v0, p0, Lcom/buzzfeed/showx/showpage/ShowPagePresenter$3;->this$0:Lcom/buzzfeed/showx/showpage/ShowPagePresenter;

    # getter for: Lcom/buzzfeed/showx/showpage/ShowPagePresenter;->mCallbacks:Lcom/buzzfeed/showx/showpage/ShowPageContract$Presenter$Callbacks;
    invoke-static {v0}, Lcom/buzzfeed/showx/showpage/ShowPagePresenter;->access$1000(Lcom/buzzfeed/showx/showpage/ShowPagePresenter;)Lcom/buzzfeed/showx/showpage/ShowPageContract$Presenter$Callbacks;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/buzzfeed/showx/showpage/ShowPageContract$Presenter$Callbacks;->onShowPageLoaded(Lcom/buzzfeed/showx/showpage/data/model/ShowPage;)V

    .line 213
    :cond_3f
    return-void
.end method

.method public onLoadError(Ljava/lang/Exception;)V
    .registers 4
    .param p1, "exception"    # Ljava/lang/Exception;

    .prologue
    .line 217
    iget-object v0, p0, Lcom/buzzfeed/showx/showpage/ShowPagePresenter$3;->val$TAG:Ljava/lang/String;

    const-string v1, "An error occurred loading next page."

    invoke-static {v0, v1, p1}, Lcom/buzzfeed/toolkit/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 218
    iget-object v0, p0, Lcom/buzzfeed/showx/showpage/ShowPagePresenter$3;->this$0:Lcom/buzzfeed/showx/showpage/ShowPagePresenter;

    # getter for: Lcom/buzzfeed/showx/showpage/ShowPagePresenter;->mErrorHandler:Lcom/buzzfeed/toolkit/util/PageErrorHandler;
    invoke-static {v0}, Lcom/buzzfeed/showx/showpage/ShowPagePresenter;->access$1100(Lcom/buzzfeed/showx/showpage/ShowPagePresenter;)Lcom/buzzfeed/toolkit/util/PageErrorHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/buzzfeed/toolkit/util/PageErrorHandler;->onUnknownError()V

    .line 219
    iget-object v0, p0, Lcom/buzzfeed/showx/showpage/ShowPagePresenter$3;->this$0:Lcom/buzzfeed/showx/showpage/ShowPagePresenter;

    # getter for: Lcom/buzzfeed/showx/showpage/ShowPagePresenter;->mUpdatableView:Lcom/buzzfeed/showx/showpage/ShowPageContract$UpdatableView;
    invoke-static {v0}, Lcom/buzzfeed/showx/showpage/ShowPagePresenter;->access$800(Lcom/buzzfeed/showx/showpage/ShowPagePresenter;)Lcom/buzzfeed/showx/showpage/ShowPageContract$UpdatableView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/buzzfeed/showx/showpage/ShowPageContract$UpdatableView;->setFooterProgressVisibility(Z)V

    .line 220
    iget-object v0, p0, Lcom/buzzfeed/showx/showpage/ShowPagePresenter$3;->this$0:Lcom/buzzfeed/showx/showpage/ShowPagePresenter;

    # getter for: Lcom/buzzfeed/showx/showpage/ShowPagePresenter;->mProgressiveLoadingManager:Lcom/buzzfeed/toolkit/util/ProgressiveLoadingManager;
    invoke-static {v0}, Lcom/buzzfeed/showx/showpage/ShowPagePresenter;->access$1200(Lcom/buzzfeed/showx/showpage/ShowPagePresenter;)Lcom/buzzfeed/toolkit/util/ProgressiveLoadingManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/buzzfeed/toolkit/util/ProgressiveLoadingManager;->resetLoading()V

    .line 221
    return-void
.end method
