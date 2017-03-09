.class Lcom/buzzfeed/buffet/ui/holder/BreakingCard$1;
.super Ljava/lang/Object;
.source "BreakingCard.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/buzzfeed/buffet/ui/holder/BreakingCard;->setUpClickListeners(Lcom/buzzfeed/toolkit/content/FlowItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/buzzfeed/buffet/ui/holder/BreakingCard;

.field final synthetic val$flowItem:Lcom/buzzfeed/toolkit/content/FlowItem;


# direct methods
.method constructor <init>(Lcom/buzzfeed/buffet/ui/holder/BreakingCard;Lcom/buzzfeed/toolkit/content/FlowItem;)V
    .registers 3
    .param p1, "this$0"    # Lcom/buzzfeed/buffet/ui/holder/BreakingCard;

    .prologue
    .line 56
    iput-object p1, p0, Lcom/buzzfeed/buffet/ui/holder/BreakingCard$1;->this$0:Lcom/buzzfeed/buffet/ui/holder/BreakingCard;

    iput-object p2, p0, Lcom/buzzfeed/buffet/ui/holder/BreakingCard$1;->val$flowItem:Lcom/buzzfeed/toolkit/content/FlowItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 8
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/buzzfeed/buffet/ui/holder/BreakingCard$1;->this$0:Lcom/buzzfeed/buffet/ui/holder/BreakingCard;

    invoke-virtual {v0}, Lcom/buzzfeed/buffet/ui/holder/BreakingCard;->getBuffetEventListener()Lcom/buzzfeed/buffet/ui/listener/BuffetEventListener;

    move-result-object v0

    if-eqz v0, :cond_2c

    .line 60
    iget-object v0, p0, Lcom/buzzfeed/buffet/ui/holder/BreakingCard$1;->this$0:Lcom/buzzfeed/buffet/ui/holder/BreakingCard;

    invoke-virtual {v0}, Lcom/buzzfeed/buffet/ui/holder/BreakingCard;->getBuffetEventListener()Lcom/buzzfeed/buffet/ui/listener/BuffetEventListener;

    move-result-object v0

    iget-object v1, p0, Lcom/buzzfeed/buffet/ui/holder/BreakingCard$1;->val$flowItem:Lcom/buzzfeed/toolkit/content/FlowItem;

    iget-object v2, p0, Lcom/buzzfeed/buffet/ui/holder/BreakingCard$1;->this$0:Lcom/buzzfeed/buffet/ui/holder/BreakingCard;

    invoke-virtual {v2}, Lcom/buzzfeed/buffet/ui/holder/BreakingCard;->getAdapterPosition()I

    move-result v2

    iget-object v3, p0, Lcom/buzzfeed/buffet/ui/holder/BreakingCard$1;->this$0:Lcom/buzzfeed/buffet/ui/holder/BreakingCard;

    .line 61
    # getter for: Lcom/buzzfeed/buffet/ui/holder/BreakingCard;->mBreakingImageView:Landroid/widget/ImageView;
    invoke-static {v3}, Lcom/buzzfeed/buffet/ui/holder/BreakingCard;->access$000(Lcom/buzzfeed/buffet/ui/holder/BreakingCard;)Landroid/widget/ImageView;

    move-result-object v3

    iget-object v4, p0, Lcom/buzzfeed/buffet/ui/holder/BreakingCard$1;->val$flowItem:Lcom/buzzfeed/toolkit/content/FlowItem;

    invoke-virtual {v4}, Lcom/buzzfeed/toolkit/content/FlowItem;->getContent()Lcom/buzzfeed/toolkit/content/Content;

    move-result-object v4

    check-cast v4, Lcom/buzzfeed/toolkit/content/PostContent;

    invoke-interface {v4}, Lcom/buzzfeed/toolkit/content/PostContent;->getWideStack()Ljava/util/Stack;

    move-result-object v4

    const/4 v5, 0x0

    .line 60
    invoke-interface/range {v0 .. v5}, Lcom/buzzfeed/buffet/ui/listener/BuffetEventListener;->onCellClicked(Lcom/buzzfeed/toolkit/content/FlowItem;ILandroid/widget/ImageView;Ljava/util/Stack;Z)V

    .line 63
    :cond_2c
    return-void
.end method
