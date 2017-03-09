.class Lcom/buzzfeed/spicerack/ui/holder/HeaderSpiceViewHolder$5;
.super Lcom/buzzfeed/toolkit/util/AnimationListener;
.source "HeaderSpiceViewHolder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/buzzfeed/spicerack/ui/holder/HeaderSpiceViewHolder;->onMoreAuthorsClicked(Lcom/buzzfeed/toolkit/content/PostContent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/buzzfeed/spicerack/ui/holder/HeaderSpiceViewHolder;

.field final synthetic val$finalI:I


# direct methods
.method constructor <init>(Lcom/buzzfeed/spicerack/ui/holder/HeaderSpiceViewHolder;I)V
    .registers 3
    .param p1, "this$0"    # Lcom/buzzfeed/spicerack/ui/holder/HeaderSpiceViewHolder;

    .prologue
    .line 181
    iput-object p1, p0, Lcom/buzzfeed/spicerack/ui/holder/HeaderSpiceViewHolder$5;->this$0:Lcom/buzzfeed/spicerack/ui/holder/HeaderSpiceViewHolder;

    iput p2, p0, Lcom/buzzfeed/spicerack/ui/holder/HeaderSpiceViewHolder$5;->val$finalI:I

    invoke-direct {p0}, Lcom/buzzfeed/toolkit/util/AnimationListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .registers 4
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 189
    iget-object v0, p0, Lcom/buzzfeed/spicerack/ui/holder/HeaderSpiceViewHolder$5;->this$0:Lcom/buzzfeed/spicerack/ui/holder/HeaderSpiceViewHolder;

    # getter for: Lcom/buzzfeed/spicerack/ui/holder/HeaderSpiceViewHolder;->mBylineContainer:Landroid/view/ViewGroup;
    invoke-static {v0}, Lcom/buzzfeed/spicerack/ui/holder/HeaderSpiceViewHolder;->access$200(Lcom/buzzfeed/spicerack/ui/holder/HeaderSpiceViewHolder;)Landroid/view/ViewGroup;

    move-result-object v0

    iget v1, p0, Lcom/buzzfeed/spicerack/ui/holder/HeaderSpiceViewHolder$5;->val$finalI:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 190
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .registers 4
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 184
    iget-object v0, p0, Lcom/buzzfeed/spicerack/ui/holder/HeaderSpiceViewHolder$5;->this$0:Lcom/buzzfeed/spicerack/ui/holder/HeaderSpiceViewHolder;

    # getter for: Lcom/buzzfeed/spicerack/ui/holder/HeaderSpiceViewHolder;->mBylineContainer:Landroid/view/ViewGroup;
    invoke-static {v0}, Lcom/buzzfeed/spicerack/ui/holder/HeaderSpiceViewHolder;->access$200(Lcom/buzzfeed/spicerack/ui/holder/HeaderSpiceViewHolder;)Landroid/view/ViewGroup;

    move-result-object v0

    iget v1, p0, Lcom/buzzfeed/spicerack/ui/holder/HeaderSpiceViewHolder$5;->val$finalI:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 185
    return-void
.end method
