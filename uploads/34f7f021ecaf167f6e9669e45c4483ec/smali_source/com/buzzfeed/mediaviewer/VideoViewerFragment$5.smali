.class Lcom/buzzfeed/mediaviewer/VideoViewerFragment$5;
.super Landroid/app/SharedElementCallback;
.source "VideoViewerFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/buzzfeed/mediaviewer/VideoViewerFragment;->setSharedElementEnterTransition(Landroid/transition/Transition;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/buzzfeed/mediaviewer/VideoViewerFragment;


# direct methods
.method constructor <init>(Lcom/buzzfeed/mediaviewer/VideoViewerFragment;)V
    .registers 2
    .param p1, "this$0"    # Lcom/buzzfeed/mediaviewer/VideoViewerFragment;

    .prologue
    .line 191
    iput-object p1, p0, Lcom/buzzfeed/mediaviewer/VideoViewerFragment$5;->this$0:Lcom/buzzfeed/mediaviewer/VideoViewerFragment;

    invoke-direct {p0}, Landroid/app/SharedElementCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onSharedElementEnd(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 197
    .local p1, "sharedElementNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p2, "sharedElements":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    .local p3, "sharedElementSnapshots":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    invoke-super {p0, p1, p2, p3}, Landroid/app/SharedElementCallback;->onSharedElementEnd(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 198
    iget-object v0, p0, Lcom/buzzfeed/mediaviewer/VideoViewerFragment$5;->this$0:Lcom/buzzfeed/mediaviewer/VideoViewerFragment;

    iget-object v0, v0, Lcom/buzzfeed/mediaviewer/VideoViewerFragment;->mViewHelper:Lcom/buzzfeed/mediaviewer/ui/view/VideoContainerAnimationHelper;

    invoke-virtual {v0}, Lcom/buzzfeed/mediaviewer/ui/view/VideoContainerAnimationHelper;->startTransition()V

    .line 199
    iget-object v0, p0, Lcom/buzzfeed/mediaviewer/VideoViewerFragment$5;->this$0:Lcom/buzzfeed/mediaviewer/VideoViewerFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/buzzfeed/mediaviewer/VideoViewerFragment;->setEnterSharedElementCallback(Landroid/app/SharedElementCallback;)V

    .line 200
    return-void
.end method
