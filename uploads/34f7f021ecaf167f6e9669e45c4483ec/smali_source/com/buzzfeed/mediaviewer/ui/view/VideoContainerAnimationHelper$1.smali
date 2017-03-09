.class Lcom/buzzfeed/mediaviewer/ui/view/VideoContainerAnimationHelper$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "VideoContainerAnimationHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/buzzfeed/mediaviewer/ui/view/VideoContainerAnimationHelper;->startTransition()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/buzzfeed/mediaviewer/ui/view/VideoContainerAnimationHelper;


# direct methods
.method constructor <init>(Lcom/buzzfeed/mediaviewer/ui/view/VideoContainerAnimationHelper;)V
    .registers 2
    .param p1, "this$0"    # Lcom/buzzfeed/mediaviewer/ui/view/VideoContainerAnimationHelper;

    .prologue
    .line 99
    iput-object p1, p0, Lcom/buzzfeed/mediaviewer/ui/view/VideoContainerAnimationHelper$1;->this$0:Lcom/buzzfeed/mediaviewer/ui/view/VideoContainerAnimationHelper;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 5
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 102
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 103
    iget-object v0, p0, Lcom/buzzfeed/mediaviewer/ui/view/VideoContainerAnimationHelper$1;->this$0:Lcom/buzzfeed/mediaviewer/ui/view/VideoContainerAnimationHelper;

    # getter for: Lcom/buzzfeed/mediaviewer/ui/view/VideoContainerAnimationHelper;->mCloseButton:Landroid/view/View;
    invoke-static {v0}, Lcom/buzzfeed/mediaviewer/ui/view/VideoContainerAnimationHelper;->access$000(Lcom/buzzfeed/mediaviewer/ui/view/VideoContainerAnimationHelper;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_16

    .line 104
    iget-object v0, p0, Lcom/buzzfeed/mediaviewer/ui/view/VideoContainerAnimationHelper$1;->this$0:Lcom/buzzfeed/mediaviewer/ui/view/VideoContainerAnimationHelper;

    # getter for: Lcom/buzzfeed/mediaviewer/ui/view/VideoContainerAnimationHelper;->mCloseButton:Landroid/view/View;
    invoke-static {v0}, Lcom/buzzfeed/mediaviewer/ui/view/VideoContainerAnimationHelper;->access$000(Lcom/buzzfeed/mediaviewer/ui/view/VideoContainerAnimationHelper;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 106
    :cond_16
    iget-object v0, p0, Lcom/buzzfeed/mediaviewer/ui/view/VideoContainerAnimationHelper$1;->this$0:Lcom/buzzfeed/mediaviewer/ui/view/VideoContainerAnimationHelper;

    # getter for: Lcom/buzzfeed/mediaviewer/ui/view/VideoContainerAnimationHelper;->mHeaderView:Lcom/buzzfeed/mediaviewer/ui/view/VideoHeaderView;
    invoke-static {v0}, Lcom/buzzfeed/mediaviewer/ui/view/VideoContainerAnimationHelper;->access$100(Lcom/buzzfeed/mediaviewer/ui/view/VideoContainerAnimationHelper;)Lcom/buzzfeed/mediaviewer/ui/view/VideoHeaderView;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Lcom/buzzfeed/mediaviewer/ui/view/VideoHeaderView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 107
    iget-object v0, p0, Lcom/buzzfeed/mediaviewer/ui/view/VideoContainerAnimationHelper$1;->this$0:Lcom/buzzfeed/mediaviewer/ui/view/VideoContainerAnimationHelper;

    # getter for: Lcom/buzzfeed/mediaviewer/ui/view/VideoContainerAnimationHelper;->mVideoFooterView:Lcom/buzzfeed/mediaviewer/ui/view/VideoFooterView;
    invoke-static {v0}, Lcom/buzzfeed/mediaviewer/ui/view/VideoContainerAnimationHelper;->access$200(Lcom/buzzfeed/mediaviewer/ui/view/VideoContainerAnimationHelper;)Lcom/buzzfeed/mediaviewer/ui/view/VideoFooterView;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Lcom/buzzfeed/mediaviewer/ui/view/VideoFooterView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 108
    iget-object v0, p0, Lcom/buzzfeed/mediaviewer/ui/view/VideoContainerAnimationHelper$1;->this$0:Lcom/buzzfeed/mediaviewer/ui/view/VideoContainerAnimationHelper;

    # getter for: Lcom/buzzfeed/mediaviewer/ui/view/VideoContainerAnimationHelper;->mControllerView:Lcom/buzzfeed/mediaviewer/ui/view/PlayerControlFooterView;
    invoke-static {v0}, Lcom/buzzfeed/mediaviewer/ui/view/VideoContainerAnimationHelper;->access$300(Lcom/buzzfeed/mediaviewer/ui/view/VideoContainerAnimationHelper;)Lcom/buzzfeed/mediaviewer/ui/view/PlayerControlFooterView;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Lcom/buzzfeed/mediaviewer/ui/view/PlayerControlFooterView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 109
    iget-object v0, p0, Lcom/buzzfeed/mediaviewer/ui/view/VideoContainerAnimationHelper$1;->this$0:Lcom/buzzfeed/mediaviewer/ui/view/VideoContainerAnimationHelper;

    # getter for: Lcom/buzzfeed/mediaviewer/ui/view/VideoContainerAnimationHelper;->mVideoOverlayContainer:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lcom/buzzfeed/mediaviewer/ui/view/VideoContainerAnimationHelper;->access$400(Lcom/buzzfeed/mediaviewer/ui/view/VideoContainerAnimationHelper;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->setLayerType(ILandroid/graphics/Paint;)V

    .line 110
    return-void
.end method
