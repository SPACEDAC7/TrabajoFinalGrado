.class public interface abstract Lcom/buzzfeed/showx/showpage/ShowPageContract$UpdatableView;
.super Ljava/lang/Object;
.source "ShowPageContract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/buzzfeed/showx/showpage/ShowPageContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "UpdatableView"
.end annotation


# virtual methods
.method public abstract appendItems(Ljava/util/List;)V
    .param p1    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/buzzfeed/toolkit/content/FlowItem;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract getPlayer()Lcom/buzzfeed/android/vcr/player/VCRDefaultVideoPlayerPresenter;
.end method

.method public abstract getRecyclerView()Landroid/support/v7/widget/RecyclerView;
.end method

.method public abstract setAdapter(Lcom/buzzfeed/buffet/ui/adapter/CardAdapter;)V
    .param p1    # Lcom/buzzfeed/buffet/ui/adapter/CardAdapter;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public abstract setCoverImage(Ljava/lang/String;)V
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public abstract setFooterProgressVisibility(Z)V
.end method

.method public abstract setHeaderProgressVisibility(Z)V
.end method

.method public abstract setPresenter(Lcom/buzzfeed/showx/showpage/ShowPagePresenter;)V
.end method

.method public abstract setShowPageModel(Lcom/buzzfeed/showx/showpage/data/model/ShowPage;)V
    .param p1    # Lcom/buzzfeed/showx/showpage/data/model/ShowPage;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract toggleAutoPlay(Z)V
.end method

.method public abstract updateItem(I)V
.end method
