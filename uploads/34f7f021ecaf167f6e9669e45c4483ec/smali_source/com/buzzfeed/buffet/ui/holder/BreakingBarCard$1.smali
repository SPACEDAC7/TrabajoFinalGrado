.class Lcom/buzzfeed/buffet/ui/holder/BreakingBarCard$1;
.super Ljava/lang/Object;
.source "BreakingBarCard.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/buzzfeed/buffet/ui/holder/BreakingBarCard;->setupClickListeners(Lcom/buzzfeed/toolkit/content/FlowItem;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/buzzfeed/buffet/ui/holder/BreakingBarCard;

.field final synthetic val$flowItem:Lcom/buzzfeed/toolkit/content/FlowItem;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/buzzfeed/buffet/ui/holder/BreakingBarCard;Lcom/buzzfeed/toolkit/content/FlowItem;Ljava/lang/String;)V
    .registers 4
    .param p1, "this$0"    # Lcom/buzzfeed/buffet/ui/holder/BreakingBarCard;

    .prologue
    .line 88
    iput-object p1, p0, Lcom/buzzfeed/buffet/ui/holder/BreakingBarCard$1;->this$0:Lcom/buzzfeed/buffet/ui/holder/BreakingBarCard;

    iput-object p2, p0, Lcom/buzzfeed/buffet/ui/holder/BreakingBarCard$1;->val$flowItem:Lcom/buzzfeed/toolkit/content/FlowItem;

    iput-object p3, p0, Lcom/buzzfeed/buffet/ui/holder/BreakingBarCard$1;->val$url:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 91
    iget-object v0, p0, Lcom/buzzfeed/buffet/ui/holder/BreakingBarCard$1;->this$0:Lcom/buzzfeed/buffet/ui/holder/BreakingBarCard;

    invoke-virtual {v0}, Lcom/buzzfeed/buffet/ui/holder/BreakingBarCard;->getBuffetEventListener()Lcom/buzzfeed/buffet/ui/listener/BuffetEventListener;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 92
    iget-object v0, p0, Lcom/buzzfeed/buffet/ui/holder/BreakingBarCard$1;->this$0:Lcom/buzzfeed/buffet/ui/holder/BreakingBarCard;

    invoke-virtual {v0}, Lcom/buzzfeed/buffet/ui/holder/BreakingBarCard;->getBuffetEventListener()Lcom/buzzfeed/buffet/ui/listener/BuffetEventListener;

    move-result-object v0

    iget-object v1, p0, Lcom/buzzfeed/buffet/ui/holder/BreakingBarCard$1;->val$flowItem:Lcom/buzzfeed/toolkit/content/FlowItem;

    iget-object v2, p0, Lcom/buzzfeed/buffet/ui/holder/BreakingBarCard$1;->val$url:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/buzzfeed/buffet/ui/listener/BuffetEventListener;->onBreakingNewsLinkClicked(Lcom/buzzfeed/toolkit/content/FlowItem;Ljava/lang/String;)V

    .line 94
    :cond_15
    return-void
.end method
