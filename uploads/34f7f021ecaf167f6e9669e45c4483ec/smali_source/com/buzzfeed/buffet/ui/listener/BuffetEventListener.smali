.class public interface abstract Lcom/buzzfeed/buffet/ui/listener/BuffetEventListener;
.super Ljava/lang/Object;
.source "BuffetEventListener.java"


# virtual methods
.method public abstract onBreakingNewsLinkClicked(Lcom/buzzfeed/toolkit/content/FlowItem;Ljava/lang/String;)V
.end method

.method public abstract onCellClicked(Lcom/buzzfeed/toolkit/content/FlowItem;ILandroid/widget/ImageView;Ljava/util/Stack;Z)V
    .param p3    # Landroid/widget/ImageView;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/buzzfeed/toolkit/content/FlowItem;",
            "I",
            "Landroid/widget/ImageView;",
            "Ljava/util/Stack",
            "<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation
.end method

.method public abstract onGetRecipeClicked(Ljava/lang/String;)V
.end method

.method public abstract onNewsPackageClicked(Lcom/buzzfeed/toolkit/content/PackageContent;Lcom/buzzfeed/toolkit/content/PostContent;IILandroid/widget/ImageView;Ljava/util/Stack;Z)V
    .param p5    # Landroid/widget/ImageView;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/buzzfeed/toolkit/content/PackageContent;",
            "Lcom/buzzfeed/toolkit/content/PostContent;",
            "II",
            "Landroid/widget/ImageView;",
            "Ljava/util/Stack",
            "<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation
.end method

.method public abstract onShareClicked(Lcom/buzzfeed/toolkit/content/FlowItem;I)V
.end method

.method public abstract onShowImageClicked(Lcom/buzzfeed/toolkit/content/VideoContent;)V
.end method

.method public abstract onVideoReloadClicked()V
.end method
