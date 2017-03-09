.class Lcom/buzzfeed/spicerack/ui/view/SpicyView$6$1;
.super Lcom/buzzfeed/toolkit/util/AnimatorListener;
.source "SpicyView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/buzzfeed/spicerack/ui/view/SpicyView$6;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/buzzfeed/spicerack/ui/view/SpicyView$6;


# direct methods
.method constructor <init>(Lcom/buzzfeed/spicerack/ui/view/SpicyView$6;)V
    .registers 2
    .param p1, "this$1"    # Lcom/buzzfeed/spicerack/ui/view/SpicyView$6;

    .prologue
    .line 565
    iput-object p1, p0, Lcom/buzzfeed/spicerack/ui/view/SpicyView$6$1;->this$1:Lcom/buzzfeed/spicerack/ui/view/SpicyView$6;

    invoke-direct {p0}, Lcom/buzzfeed/toolkit/util/AnimatorListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 3
    .param p1, "mAnimator"    # Landroid/animation/Animator;

    .prologue
    .line 568
    iget-object v0, p0, Lcom/buzzfeed/spicerack/ui/view/SpicyView$6$1;->this$1:Lcom/buzzfeed/spicerack/ui/view/SpicyView$6;

    iget-object v0, v0, Lcom/buzzfeed/spicerack/ui/view/SpicyView$6;->this$0:Lcom/buzzfeed/spicerack/ui/view/SpicyView;

    invoke-virtual {v0}, Lcom/buzzfeed/spicerack/ui/view/SpicyView;->onSharedElementTransitionEnd()V

    .line 569
    return-void
.end method
