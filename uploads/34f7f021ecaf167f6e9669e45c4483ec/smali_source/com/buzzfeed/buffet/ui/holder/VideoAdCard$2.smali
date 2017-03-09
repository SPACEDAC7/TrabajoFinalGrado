.class Lcom/buzzfeed/buffet/ui/holder/VideoAdCard$2;
.super Ljava/lang/Object;
.source "VideoAdCard.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/buzzfeed/buffet/ui/holder/VideoAdCard;->setupClickListeners(Lcom/buzzfeed/toolkit/content/FlowItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/buzzfeed/buffet/ui/holder/VideoAdCard;

.field final synthetic val$flowItem:Lcom/buzzfeed/toolkit/content/FlowItem;


# direct methods
.method constructor <init>(Lcom/buzzfeed/buffet/ui/holder/VideoAdCard;Lcom/buzzfeed/toolkit/content/FlowItem;)V
    .registers 3
    .param p1, "this$0"    # Lcom/buzzfeed/buffet/ui/holder/VideoAdCard;

    .prologue
    .line 89
    iput-object p1, p0, Lcom/buzzfeed/buffet/ui/holder/VideoAdCard$2;->this$0:Lcom/buzzfeed/buffet/ui/holder/VideoAdCard;

    iput-object p2, p0, Lcom/buzzfeed/buffet/ui/holder/VideoAdCard$2;->val$flowItem:Lcom/buzzfeed/toolkit/content/FlowItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/buzzfeed/buffet/ui/holder/VideoAdCard$2;->this$0:Lcom/buzzfeed/buffet/ui/holder/VideoAdCard;

    invoke-virtual {v0}, Lcom/buzzfeed/buffet/ui/holder/VideoAdCard;->getBuffetEventListener()Lcom/buzzfeed/buffet/ui/listener/BuffetEventListener;

    move-result-object v0

    if-eqz v0, :cond_19

    .line 93
    iget-object v0, p0, Lcom/buzzfeed/buffet/ui/holder/VideoAdCard$2;->this$0:Lcom/buzzfeed/buffet/ui/holder/VideoAdCard;

    invoke-virtual {v0}, Lcom/buzzfeed/buffet/ui/holder/VideoAdCard;->getBuffetEventListener()Lcom/buzzfeed/buffet/ui/listener/BuffetEventListener;

    move-result-object v0

    iget-object v1, p0, Lcom/buzzfeed/buffet/ui/holder/VideoAdCard$2;->val$flowItem:Lcom/buzzfeed/toolkit/content/FlowItem;

    iget-object v2, p0, Lcom/buzzfeed/buffet/ui/holder/VideoAdCard$2;->this$0:Lcom/buzzfeed/buffet/ui/holder/VideoAdCard;

    invoke-virtual {v2}, Lcom/buzzfeed/buffet/ui/holder/VideoAdCard;->getAdapterPosition()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/buzzfeed/buffet/ui/listener/BuffetEventListener;->onShareClicked(Lcom/buzzfeed/toolkit/content/FlowItem;I)V

    .line 95
    :cond_19
    return-void
.end method
