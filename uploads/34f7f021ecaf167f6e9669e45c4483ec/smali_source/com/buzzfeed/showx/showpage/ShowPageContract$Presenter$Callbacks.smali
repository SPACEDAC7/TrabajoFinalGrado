.class public interface abstract Lcom/buzzfeed/showx/showpage/ShowPageContract$Presenter$Callbacks;
.super Ljava/lang/Object;
.source "ShowPageContract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/buzzfeed/showx/showpage/ShowPageContract$Presenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Callbacks"
.end annotation


# virtual methods
.method public abstract handleShowOpened()V
.end method

.method public abstract isShowSubscriptionsEnabled()Z
.end method

.method public abstract isSubscribedToShow()Z
.end method

.method public abstract onGetRecipeClicked(Ljava/lang/String;)V
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract onShareClicked(Lcom/buzzfeed/toolkit/content/FlowItem;I)V
.end method

.method public abstract onShowPageLoaded(Lcom/buzzfeed/showx/showpage/data/model/ShowPage;)V
.end method

.method public abstract onSubscribeButtonClicked()V
.end method

.method public abstract onVideoCellClicked(Lcom/buzzfeed/toolkit/content/VideoContent;Landroid/widget/ImageView;JIZ)V
    .param p1    # Lcom/buzzfeed/toolkit/content/VideoContent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/widget/ImageView;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
.end method
