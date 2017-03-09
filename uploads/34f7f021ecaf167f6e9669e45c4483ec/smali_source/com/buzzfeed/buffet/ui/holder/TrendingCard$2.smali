.class Lcom/buzzfeed/buffet/ui/holder/TrendingCard$2;
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

.field final synthetic val$pos:I


# direct methods
.method constructor <init>(Lcom/buzzfeed/buffet/ui/holder/TrendingCard;Lcom/buzzfeed/toolkit/content/FlowItem;I)V
    .registers 4
    .param p1, "this$0"    # Lcom/buzzfeed/buffet/ui/holder/TrendingCard;

    .prologue
    .line 62
    iput-object p1, p0, Lcom/buzzfeed/buffet/ui/holder/TrendingCard$2;->this$0:Lcom/buzzfeed/buffet/ui/holder/TrendingCard;

    iput-object p2, p0, Lcom/buzzfeed/buffet/ui/holder/TrendingCard$2;->val$flowItem:Lcom/buzzfeed/toolkit/content/FlowItem;

    iput p3, p0, Lcom/buzzfeed/buffet/ui/holder/TrendingCard$2;->val$pos:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/buzzfeed/buffet/ui/holder/TrendingCard$2;->this$0:Lcom/buzzfeed/buffet/ui/holder/TrendingCard;

    invoke-virtual {v0}, Lcom/buzzfeed/buffet/ui/holder/TrendingCard;->getBuffetEventListener()Lcom/buzzfeed/buffet/ui/listener/BuffetEventListener;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 66
    iget-object v0, p0, Lcom/buzzfeed/buffet/ui/holder/TrendingCard$2;->this$0:Lcom/buzzfeed/buffet/ui/holder/TrendingCard;

    invoke-virtual {v0}, Lcom/buzzfeed/buffet/ui/holder/TrendingCard;->getBuffetEventListener()Lcom/buzzfeed/buffet/ui/listener/BuffetEventListener;

    move-result-object v0

    iget-object v1, p0, Lcom/buzzfeed/buffet/ui/holder/TrendingCard$2;->val$flowItem:Lcom/buzzfeed/toolkit/content/FlowItem;

    iget v2, p0, Lcom/buzzfeed/buffet/ui/holder/TrendingCard$2;->val$pos:I

    invoke-interface {v0, v1, v2}, Lcom/buzzfeed/buffet/ui/listener/BuffetEventListener;->onShareClicked(Lcom/buzzfeed/toolkit/content/FlowItem;I)V

    .line 68
    :cond_15
    return-void
.end method
