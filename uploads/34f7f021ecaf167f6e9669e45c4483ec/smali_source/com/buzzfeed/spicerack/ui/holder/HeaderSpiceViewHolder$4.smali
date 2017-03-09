.class Lcom/buzzfeed/spicerack/ui/holder/HeaderSpiceViewHolder$4;
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


# direct methods
.method constructor <init>(Lcom/buzzfeed/spicerack/ui/holder/HeaderSpiceViewHolder;)V
    .registers 2
    .param p1, "this$0"    # Lcom/buzzfeed/spicerack/ui/holder/HeaderSpiceViewHolder;

    .prologue
    .line 167
    iput-object p1, p0, Lcom/buzzfeed/spicerack/ui/holder/HeaderSpiceViewHolder$4;->this$0:Lcom/buzzfeed/spicerack/ui/holder/HeaderSpiceViewHolder;

    invoke-direct {p0}, Lcom/buzzfeed/toolkit/util/AnimationListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .registers 4
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 171
    iget-object v0, p0, Lcom/buzzfeed/spicerack/ui/holder/HeaderSpiceViewHolder$4;->this$0:Lcom/buzzfeed/spicerack/ui/holder/HeaderSpiceViewHolder;

    # getter for: Lcom/buzzfeed/spicerack/ui/holder/HeaderSpiceViewHolder;->mBylineMoreContainer:Landroid/view/ViewGroup;
    invoke-static {v0}, Lcom/buzzfeed/spicerack/ui/holder/HeaderSpiceViewHolder;->access$100(Lcom/buzzfeed/spicerack/ui/holder/HeaderSpiceViewHolder;)Landroid/view/ViewGroup;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 172
    return-void
.end method
