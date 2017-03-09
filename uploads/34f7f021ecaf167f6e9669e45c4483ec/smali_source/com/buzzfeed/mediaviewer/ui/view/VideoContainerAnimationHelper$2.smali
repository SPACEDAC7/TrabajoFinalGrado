.class Lcom/buzzfeed/mediaviewer/ui/view/VideoContainerAnimationHelper$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "VideoContainerAnimationHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/buzzfeed/mediaviewer/ui/view/VideoContainerAnimationHelper;->showOverlay()V
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
    .line 133
    iput-object p1, p0, Lcom/buzzfeed/mediaviewer/ui/view/VideoContainerAnimationHelper$2;->this$0:Lcom/buzzfeed/mediaviewer/ui/view/VideoContainerAnimationHelper;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 4
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const/4 v1, 0x1

    .line 136
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationStart(Landroid/animation/Animator;)V

    .line 137
    iget-object v0, p0, Lcom/buzzfeed/mediaviewer/ui/view/VideoContainerAnimationHelper$2;->this$0:Lcom/buzzfeed/mediaviewer/ui/view/VideoContainerAnimationHelper;

    # setter for: Lcom/buzzfeed/mediaviewer/ui/view/VideoContainerAnimationHelper;->mIsShowing:Z
    invoke-static {v0, v1}, Lcom/buzzfeed/mediaviewer/ui/view/VideoContainerAnimationHelper;->access$502(Lcom/buzzfeed/mediaviewer/ui/view/VideoContainerAnimationHelper;Z)Z

    .line 138
    iget-object v0, p0, Lcom/buzzfeed/mediaviewer/ui/view/VideoContainerAnimationHelper$2;->this$0:Lcom/buzzfeed/mediaviewer/ui/view/VideoContainerAnimationHelper;

    # getter for: Lcom/buzzfeed/mediaviewer/ui/view/VideoContainerAnimationHelper;->mControllerView:Lcom/buzzfeed/mediaviewer/ui/view/PlayerControlFooterView;
    invoke-static {v0}, Lcom/buzzfeed/mediaviewer/ui/view/VideoContainerAnimationHelper;->access$300(Lcom/buzzfeed/mediaviewer/ui/view/VideoContainerAnimationHelper;)Lcom/buzzfeed/mediaviewer/ui/view/PlayerControlFooterView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/buzzfeed/mediaviewer/ui/view/PlayerControlFooterView;->setEnabled(Z)V

    .line 139
    return-void
.end method
