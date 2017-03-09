.class final Lcom/buzzfeed/showx/showpage/ShowPagePresenter$InternalProgressiveLoadingListener;
.super Ljava/lang/Object;
.source "ShowPagePresenter.java"

# interfaces
.implements Lcom/buzzfeed/toolkit/util/ProgressiveLoadingManager$ProgressiveLoadingListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/buzzfeed/showx/showpage/ShowPagePresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "InternalProgressiveLoadingListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/buzzfeed/showx/showpage/ShowPagePresenter;


# direct methods
.method private constructor <init>(Lcom/buzzfeed/showx/showpage/ShowPagePresenter;)V
    .registers 2

    .prologue
    .line 273
    iput-object p1, p0, Lcom/buzzfeed/showx/showpage/ShowPagePresenter$InternalProgressiveLoadingListener;->this$0:Lcom/buzzfeed/showx/showpage/ShowPagePresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/buzzfeed/showx/showpage/ShowPagePresenter;Lcom/buzzfeed/showx/showpage/ShowPagePresenter$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/buzzfeed/showx/showpage/ShowPagePresenter;
    .param p2, "x1"    # Lcom/buzzfeed/showx/showpage/ShowPagePresenter$1;

    .prologue
    .line 273
    invoke-direct {p0, p1}, Lcom/buzzfeed/showx/showpage/ShowPagePresenter$InternalProgressiveLoadingListener;-><init>(Lcom/buzzfeed/showx/showpage/ShowPagePresenter;)V

    return-void
.end method


# virtual methods
.method public loadMore()V
    .registers 2

    .prologue
    .line 277
    iget-object v0, p0, Lcom/buzzfeed/showx/showpage/ShowPagePresenter$InternalProgressiveLoadingListener;->this$0:Lcom/buzzfeed/showx/showpage/ShowPagePresenter;

    # getter for: Lcom/buzzfeed/showx/showpage/ShowPagePresenter;->mAppContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/buzzfeed/showx/showpage/ShowPagePresenter;->access$000(Lcom/buzzfeed/showx/showpage/ShowPagePresenter;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/buzzfeed/toolkit/util/NetworkUtil;->isConnectedToNetwork(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 278
    iget-object v0, p0, Lcom/buzzfeed/showx/showpage/ShowPagePresenter$InternalProgressiveLoadingListener;->this$0:Lcom/buzzfeed/showx/showpage/ShowPagePresenter;

    # invokes: Lcom/buzzfeed/showx/showpage/ShowPagePresenter;->requestNextPageLoad()V
    invoke-static {v0}, Lcom/buzzfeed/showx/showpage/ShowPagePresenter;->access$300(Lcom/buzzfeed/showx/showpage/ShowPagePresenter;)V

    .line 282
    :goto_11
    return-void

    .line 280
    :cond_12
    iget-object v0, p0, Lcom/buzzfeed/showx/showpage/ShowPagePresenter$InternalProgressiveLoadingListener;->this$0:Lcom/buzzfeed/showx/showpage/ShowPagePresenter;

    # getter for: Lcom/buzzfeed/showx/showpage/ShowPagePresenter;->mProgressiveLoadingManager:Lcom/buzzfeed/toolkit/util/ProgressiveLoadingManager;
    invoke-static {v0}, Lcom/buzzfeed/showx/showpage/ShowPagePresenter;->access$1200(Lcom/buzzfeed/showx/showpage/ShowPagePresenter;)Lcom/buzzfeed/toolkit/util/ProgressiveLoadingManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/buzzfeed/toolkit/util/ProgressiveLoadingManager;->resetLoading()V

    goto :goto_11
.end method
