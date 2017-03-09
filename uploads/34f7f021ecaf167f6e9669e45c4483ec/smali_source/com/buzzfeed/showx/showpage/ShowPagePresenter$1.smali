.class Lcom/buzzfeed/showx/showpage/ShowPagePresenter$1;
.super Lcom/buzzfeed/toolkit/util/PageErrorHandler;
.source "ShowPagePresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/buzzfeed/showx/showpage/ShowPagePresenter;->attachView(Lcom/buzzfeed/showx/showpage/ShowPageContract$UpdatableView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/buzzfeed/showx/showpage/ShowPagePresenter;


# direct methods
.method constructor <init>(Lcom/buzzfeed/showx/showpage/ShowPagePresenter;Landroid/view/View;Z)V
    .registers 4
    .param p1, "this$0"    # Lcom/buzzfeed/showx/showpage/ShowPagePresenter;
    .param p2, "arg0"    # Landroid/view/View;
    .param p3, "arg1"    # Z

    .prologue
    .line 89
    iput-object p1, p0, Lcom/buzzfeed/showx/showpage/ShowPagePresenter$1;->this$0:Lcom/buzzfeed/showx/showpage/ShowPagePresenter;

    invoke-direct {p0, p2, p3}, Lcom/buzzfeed/toolkit/util/PageErrorHandler;-><init>(Landroid/view/View;Z)V

    return-void
.end method


# virtual methods
.method public onGateWayTimeoutError()V
    .registers 2

    .prologue
    .line 92
    iget-object v0, p0, Lcom/buzzfeed/showx/showpage/ShowPagePresenter$1;->this$0:Lcom/buzzfeed/showx/showpage/ShowPagePresenter;

    # getter for: Lcom/buzzfeed/showx/showpage/ShowPagePresenter;->mAppContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/buzzfeed/showx/showpage/ShowPagePresenter;->access$000(Lcom/buzzfeed/showx/showpage/ShowPagePresenter;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/buzzfeed/toolkit/util/NetworkUtil;->isConnectedToNetwork(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 93
    invoke-virtual {p0}, Lcom/buzzfeed/showx/showpage/ShowPagePresenter$1;->onTimeoutError()V

    .line 97
    :goto_f
    return-void

    .line 95
    :cond_10
    invoke-virtual {p0}, Lcom/buzzfeed/showx/showpage/ShowPagePresenter$1;->onNoConnectionError()V

    goto :goto_f
.end method

.method public onTryAgainClicked()V
    .registers 2

    .prologue
    .line 101
    iget-object v0, p0, Lcom/buzzfeed/showx/showpage/ShowPagePresenter$1;->this$0:Lcom/buzzfeed/showx/showpage/ShowPagePresenter;

    # getter for: Lcom/buzzfeed/showx/showpage/ShowPagePresenter;->mIsFirstLoad:Z
    invoke-static {v0}, Lcom/buzzfeed/showx/showpage/ShowPagePresenter;->access$100(Lcom/buzzfeed/showx/showpage/ShowPagePresenter;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 102
    iget-object v0, p0, Lcom/buzzfeed/showx/showpage/ShowPagePresenter$1;->this$0:Lcom/buzzfeed/showx/showpage/ShowPagePresenter;

    # invokes: Lcom/buzzfeed/showx/showpage/ShowPagePresenter;->startInitialLoad()V
    invoke-static {v0}, Lcom/buzzfeed/showx/showpage/ShowPagePresenter;->access$200(Lcom/buzzfeed/showx/showpage/ShowPagePresenter;)V

    .line 106
    :goto_d
    return-void

    .line 104
    :cond_e
    iget-object v0, p0, Lcom/buzzfeed/showx/showpage/ShowPagePresenter$1;->this$0:Lcom/buzzfeed/showx/showpage/ShowPagePresenter;

    # invokes: Lcom/buzzfeed/showx/showpage/ShowPagePresenter;->requestNextPageLoad()V
    invoke-static {v0}, Lcom/buzzfeed/showx/showpage/ShowPagePresenter;->access$300(Lcom/buzzfeed/showx/showpage/ShowPagePresenter;)V

    goto :goto_d
.end method
