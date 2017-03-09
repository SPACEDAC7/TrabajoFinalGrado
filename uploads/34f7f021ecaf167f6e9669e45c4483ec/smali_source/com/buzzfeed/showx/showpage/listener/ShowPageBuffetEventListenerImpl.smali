.class public abstract Lcom/buzzfeed/showx/showpage/listener/ShowPageBuffetEventListenerImpl;
.super Ljava/lang/Object;
.source "ShowPageBuffetEventListenerImpl.java"

# interfaces
.implements Lcom/buzzfeed/showx/showpage/listener/ShowPageBuffetEventListener;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isSubscribedToShow()Z
    .registers 2

    .prologue
    .line 55
    const/4 v0, 0x0

    return v0
.end method

.method public onBreakingNewsLinkClicked(Lcom/buzzfeed/toolkit/content/FlowItem;Ljava/lang/String;)V
    .registers 3
    .param p1, "flowItem"    # Lcom/buzzfeed/toolkit/content/FlowItem;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 36
    return-void
.end method

.method public onCellClicked(Lcom/buzzfeed/toolkit/content/FlowItem;ILandroid/widget/ImageView;Ljava/util/Stack;Z)V
    .registers 6
    .param p1, "flowItem"    # Lcom/buzzfeed/toolkit/content/FlowItem;
    .param p2, "position"    # I
    .param p3, "thumbnail"    # Landroid/widget/ImageView;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p5, "isTallImage"    # Z
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

    .prologue
    .line 21
    .local p4, "imageStack":Ljava/util/Stack;, "Ljava/util/Stack<Ljava/lang/String;>;"
    return-void
.end method

.method public onGetRecipeClicked(Ljava/lang/String;)V
    .registers 2
    .param p1, "uri"    # Ljava/lang/String;

    .prologue
    .line 31
    return-void
.end method

.method public onNewsPackageClicked(Lcom/buzzfeed/toolkit/content/PackageContent;Lcom/buzzfeed/toolkit/content/PostContent;IILandroid/widget/ImageView;Ljava/util/Stack;Z)V
    .registers 8
    .param p1, "parentPackage"    # Lcom/buzzfeed/toolkit/content/PackageContent;
    .param p2, "postContent"    # Lcom/buzzfeed/toolkit/content/PostContent;
    .param p3, "adapterPosition"    # I
    .param p4, "packagePosition"    # I
    .param p5, "thumbnail"    # Landroid/widget/ImageView;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p7, "isTallImage"    # Z
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

    .prologue
    .line 61
    .local p6, "imageStack":Ljava/util/Stack;, "Ljava/util/Stack<Ljava/lang/String;>;"
    return-void
.end method

.method public onShareClicked(Lcom/buzzfeed/toolkit/content/FlowItem;I)V
    .registers 3
    .param p1, "flowItem"    # Lcom/buzzfeed/toolkit/content/FlowItem;
    .param p2, "position"    # I

    .prologue
    .line 26
    return-void
.end method

.method public onShowImageClicked(Lcom/buzzfeed/toolkit/content/VideoContent;)V
    .registers 2
    .param p1, "content"    # Lcom/buzzfeed/toolkit/content/VideoContent;

    .prologue
    .line 41
    return-void
.end method

.method public onSubscribeButtonClicked()V
    .registers 1

    .prologue
    .line 51
    return-void
.end method

.method public onVideoReloadClicked()V
    .registers 1

    .prologue
    .line 46
    return-void
.end method
