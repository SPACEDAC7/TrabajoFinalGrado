.class Lcom/buzzfeed/buffet/ui/holder/VideoCard$5;
.super Lcom/buzzfeed/toolkit/ui/DebouncingOnClickListener;
.source "VideoCard.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/buzzfeed/buffet/ui/holder/VideoCard;->setupClickListeners(Lcom/buzzfeed/toolkit/content/FlowItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/buzzfeed/buffet/ui/holder/VideoCard;

.field final synthetic val$flowItem:Lcom/buzzfeed/toolkit/content/FlowItem;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/buzzfeed/buffet/ui/holder/VideoCard;Lcom/buzzfeed/toolkit/content/FlowItem;I)V
    .registers 4
    .param p1, "this$0"    # Lcom/buzzfeed/buffet/ui/holder/VideoCard;

    .prologue
    .line 172
    iput-object p1, p0, Lcom/buzzfeed/buffet/ui/holder/VideoCard$5;->this$0:Lcom/buzzfeed/buffet/ui/holder/VideoCard;

    iput-object p2, p0, Lcom/buzzfeed/buffet/ui/holder/VideoCard$5;->val$flowItem:Lcom/buzzfeed/toolkit/content/FlowItem;

    iput p3, p0, Lcom/buzzfeed/buffet/ui/holder/VideoCard$5;->val$position:I

    invoke-direct {p0}, Lcom/buzzfeed/toolkit/ui/DebouncingOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public doClick(Landroid/view/View;)V
    .registers 5
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 175
    iget-object v0, p0, Lcom/buzzfeed/buffet/ui/holder/VideoCard$5;->this$0:Lcom/buzzfeed/buffet/ui/holder/VideoCard;

    invoke-virtual {v0}, Lcom/buzzfeed/buffet/ui/holder/VideoCard;->getBuffetEventListener()Lcom/buzzfeed/buffet/ui/listener/BuffetEventListener;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 176
    iget-object v0, p0, Lcom/buzzfeed/buffet/ui/holder/VideoCard$5;->this$0:Lcom/buzzfeed/buffet/ui/holder/VideoCard;

    invoke-virtual {v0}, Lcom/buzzfeed/buffet/ui/holder/VideoCard;->getBuffetEventListener()Lcom/buzzfeed/buffet/ui/listener/BuffetEventListener;

    move-result-object v0

    iget-object v1, p0, Lcom/buzzfeed/buffet/ui/holder/VideoCard$5;->val$flowItem:Lcom/buzzfeed/toolkit/content/FlowItem;

    iget v2, p0, Lcom/buzzfeed/buffet/ui/holder/VideoCard$5;->val$position:I

    invoke-interface {v0, v1, v2}, Lcom/buzzfeed/buffet/ui/listener/BuffetEventListener;->onShareClicked(Lcom/buzzfeed/toolkit/content/FlowItem;I)V

    .line 178
    :cond_15
    return-void
.end method
