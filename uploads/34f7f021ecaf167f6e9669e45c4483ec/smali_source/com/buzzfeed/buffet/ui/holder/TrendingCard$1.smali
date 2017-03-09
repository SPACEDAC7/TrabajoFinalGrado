.class Lcom/buzzfeed/buffet/ui/holder/TrendingCard$1;
.super Ljava/lang/Object;
.source "TrendingCard.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/buzzfeed/buffet/ui/holder/TrendingCard;->setupClickListeners(Lcom/buzzfeed/toolkit/content/FlowItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/buzzfeed/buffet/ui/holder/TrendingCard;

.field final synthetic val$flowItem:Lcom/buzzfeed/toolkit/content/FlowItem;


# direct methods
.method constructor <init>(Lcom/buzzfeed/buffet/ui/holder/TrendingCard;Lcom/buzzfeed/toolkit/content/FlowItem;)V
    .registers 3
    .param p1, "this$0"    # Lcom/buzzfeed/buffet/ui/holder/TrendingCard;

    .prologue
    .line 52
    iput-object p1, p0, Lcom/buzzfeed/buffet/ui/holder/TrendingCard$1;->this$0:Lcom/buzzfeed/buffet/ui/holder/TrendingCard;

    iput-object p2, p0, Lcom/buzzfeed/buffet/ui/holder/TrendingCard$1;->val$flowItem:Lcom/buzzfeed/toolkit/content/FlowItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 8
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/buzzfeed/buffet/ui/holder/TrendingCard$1;->this$0:Lcom/buzzfeed/buffet/ui/holder/TrendingCard;

    invoke-virtual {v0}, Lcom/buzzfeed/buffet/ui/holder/TrendingCard;->getBuffetEventListener()Lcom/buzzfeed/buffet/ui/listener/BuffetEventListener;

    move-result-object v0

    if-eqz v0, :cond_2c

    .line 56
    iget-object v0, p0, Lcom/buzzfeed/buffet/ui/holder/TrendingCard$1;->this$0:Lcom/buzzfeed/buffet/ui/holder/TrendingCard;

    invoke-virtual {v0}, Lcom/buzzfeed/buffet/ui/holder/TrendingCard;->getBuffetEventListener()Lcom/buzzfeed/buffet/ui/listener/BuffetEventListener;

    move-result-object v0

    iget-object v1, p0, Lcom/buzzfeed/buffet/ui/holder/TrendingCard$1;->val$flowItem:Lcom/buzzfeed/toolkit/content/FlowItem;

    iget-object v2, p0, Lcom/buzzfeed/buffet/ui/holder/TrendingCard$1;->this$0:Lcom/buzzfeed/buffet/ui/holder/TrendingCard;

    invoke-virtual {v2}, Lcom/buzzfeed/buffet/ui/holder/TrendingCard;->getAdapterPosition()I

    move-result v2

    iget-object v3, p0, Lcom/buzzfeed/buffet/ui/holder/TrendingCard$1;->this$0:Lcom/buzzfeed/buffet/ui/holder/TrendingCard;

    # getter for: Lcom/buzzfeed/buffet/ui/holder/TrendingCard;->mImage:Landroid/widget/ImageView;
    invoke-static {v3}, Lcom/buzzfeed/buffet/ui/holder/TrendingCard;->access$000(Lcom/buzzfeed/buffet/ui/holder/TrendingCard;)Landroid/widget/ImageView;

    move-result-object v3

    iget-object v4, p0, Lcom/buzzfeed/buffet/ui/holder/TrendingCard$1;->val$flowItem:Lcom/buzzfeed/toolkit/content/FlowItem;

    invoke-virtual {v4}, Lcom/buzzfeed/toolkit/content/FlowItem;->getContent()Lcom/buzzfeed/toolkit/content/Content;

    move-result-object v4

    check-cast v4, Lcom/buzzfeed/toolkit/content/PostContent;

    invoke-interface {v4}, Lcom/buzzfeed/toolkit/content/PostContent;->getWideStack()Ljava/util/Stack;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface/range {v0 .. v5}, Lcom/buzzfeed/buffet/ui/listener/BuffetEventListener;->onCellClicked(Lcom/buzzfeed/toolkit/content/FlowItem;ILandroid/widget/ImageView;Ljava/util/Stack;Z)V

    .line 58
    :cond_2c
    return-void
.end method
