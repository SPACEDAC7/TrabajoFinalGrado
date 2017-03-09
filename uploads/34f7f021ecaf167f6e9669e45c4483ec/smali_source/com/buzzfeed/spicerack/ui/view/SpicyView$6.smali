.class Lcom/buzzfeed/spicerack/ui/view/SpicyView$6;
.super Ljava/lang/Object;
.source "SpicyView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/buzzfeed/spicerack/ui/view/SpicyView;->runTransition()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/buzzfeed/spicerack/ui/view/SpicyView;

.field final synthetic val$sharedElement:Lcom/buzzfeed/toolkit/ui/sharedelementtransition/SharedTransitionElement;


# direct methods
.method constructor <init>(Lcom/buzzfeed/spicerack/ui/view/SpicyView;Lcom/buzzfeed/toolkit/ui/sharedelementtransition/SharedTransitionElement;)V
    .registers 3
    .param p1, "this$0"    # Lcom/buzzfeed/spicerack/ui/view/SpicyView;

    .prologue
    .line 557
    iput-object p1, p0, Lcom/buzzfeed/spicerack/ui/view/SpicyView$6;->this$0:Lcom/buzzfeed/spicerack/ui/view/SpicyView;

    iput-object p2, p0, Lcom/buzzfeed/spicerack/ui/view/SpicyView$6;->val$sharedElement:Lcom/buzzfeed/toolkit/ui/sharedelementtransition/SharedTransitionElement;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 560
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 561
    .local v1, "animatorSetTrans":Landroid/animation/AnimatorSet;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 562
    .local v0, "all":Ljava/util/List;, "Ljava/util/List<Landroid/animation/Animator;>;"
    iget-object v2, p0, Lcom/buzzfeed/spicerack/ui/view/SpicyView$6;->val$sharedElement:Lcom/buzzfeed/toolkit/ui/sharedelementtransition/SharedTransitionElement;

    iget-object v3, p0, Lcom/buzzfeed/spicerack/ui/view/SpicyView$6;->this$0:Lcom/buzzfeed/spicerack/ui/view/SpicyView;

    iget-object v3, v3, Lcom/buzzfeed/spicerack/ui/view/SpicyView;->mSpicyHeaderFakeImageView:Landroid/widget/ImageView;

    invoke-static {v2, v3}, Lcom/buzzfeed/toolkit/ui/sharedelementtransition/SharedElementUtils;->prepareViewForAnimation(Lcom/buzzfeed/toolkit/ui/sharedelementtransition/SharedTransitionElement;Landroid/view/View;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 563
    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 564
    const-wide/16 v2, 0x15e

    invoke-virtual {v1, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 565
    new-instance v2, Lcom/buzzfeed/spicerack/ui/view/SpicyView$6$1;

    invoke-direct {v2, p0}, Lcom/buzzfeed/spicerack/ui/view/SpicyView$6$1;-><init>(Lcom/buzzfeed/spicerack/ui/view/SpicyView$6;)V

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 571
    iget-object v2, p0, Lcom/buzzfeed/spicerack/ui/view/SpicyView$6;->this$0:Lcom/buzzfeed/spicerack/ui/view/SpicyView;

    # getter for: Lcom/buzzfeed/spicerack/ui/view/SpicyView;->mInterpolator:Landroid/view/animation/Interpolator;
    invoke-static {v2}, Lcom/buzzfeed/spicerack/ui/view/SpicyView;->access$500(Lcom/buzzfeed/spicerack/ui/view/SpicyView;)Landroid/view/animation/Interpolator;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 572
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    .line 573
    return-void
.end method
