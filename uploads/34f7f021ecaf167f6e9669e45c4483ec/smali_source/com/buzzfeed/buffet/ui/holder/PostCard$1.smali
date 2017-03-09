.class Lcom/buzzfeed/buffet/ui/holder/PostCard$1;
.super Ljava/lang/Object;
.source "PostCard.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/buzzfeed/buffet/ui/holder/PostCard;->setupClickListeners(Lcom/buzzfeed/toolkit/content/FlowItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/buzzfeed/buffet/ui/holder/PostCard;

.field final synthetic val$flowItem:Lcom/buzzfeed/toolkit/content/FlowItem;


# direct methods
.method constructor <init>(Lcom/buzzfeed/buffet/ui/holder/PostCard;Lcom/buzzfeed/toolkit/content/FlowItem;)V
    .registers 3
    .param p1, "this$0"    # Lcom/buzzfeed/buffet/ui/holder/PostCard;

    .prologue
    .line 68
    iput-object p1, p0, Lcom/buzzfeed/buffet/ui/holder/PostCard$1;->this$0:Lcom/buzzfeed/buffet/ui/holder/PostCard;

    iput-object p2, p0, Lcom/buzzfeed/buffet/ui/holder/PostCard$1;->val$flowItem:Lcom/buzzfeed/toolkit/content/FlowItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 9
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/buzzfeed/buffet/ui/holder/PostCard$1;->this$0:Lcom/buzzfeed/buffet/ui/holder/PostCard;

    invoke-virtual {v0}, Lcom/buzzfeed/buffet/ui/holder/PostCard;->getBuffetEventListener()Lcom/buzzfeed/buffet/ui/listener/BuffetEventListener;

    move-result-object v0

    if-eqz v0, :cond_46

    .line 72
    iget-object v0, p0, Lcom/buzzfeed/buffet/ui/holder/PostCard$1;->val$flowItem:Lcom/buzzfeed/toolkit/content/FlowItem;

    invoke-virtual {v0}, Lcom/buzzfeed/toolkit/content/FlowItem;->getContent()Lcom/buzzfeed/toolkit/content/Content;

    move-result-object v6

    check-cast v6, Lcom/buzzfeed/toolkit/content/PostContent;

    .line 73
    .local v6, "content":Lcom/buzzfeed/toolkit/content/PostContent;
    iget-object v0, p0, Lcom/buzzfeed/buffet/ui/holder/PostCard$1;->this$0:Lcom/buzzfeed/buffet/ui/holder/PostCard;

    invoke-virtual {v0}, Lcom/buzzfeed/buffet/ui/holder/PostCard;->getBuffetEventListener()Lcom/buzzfeed/buffet/ui/listener/BuffetEventListener;

    move-result-object v0

    iget-object v1, p0, Lcom/buzzfeed/buffet/ui/holder/PostCard$1;->val$flowItem:Lcom/buzzfeed/toolkit/content/FlowItem;

    iget-object v2, p0, Lcom/buzzfeed/buffet/ui/holder/PostCard$1;->this$0:Lcom/buzzfeed/buffet/ui/holder/PostCard;

    invoke-virtual {v2}, Lcom/buzzfeed/buffet/ui/holder/PostCard;->getAdapterPosition()I

    move-result v2

    iget-object v3, p0, Lcom/buzzfeed/buffet/ui/holder/PostCard$1;->this$0:Lcom/buzzfeed/buffet/ui/holder/PostCard;

    iget-object v3, v3, Lcom/buzzfeed/buffet/ui/holder/PostCard;->mImage:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/buzzfeed/buffet/ui/holder/PostCard$1;->this$0:Lcom/buzzfeed/buffet/ui/holder/PostCard;

    iget-object v4, v4, Lcom/buzzfeed/buffet/ui/holder/PostCard;->itemView:Landroid/view/View;

    .line 74
    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/buzzfeed/toolkit/util/DeviceUtil;->isTablet(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_47

    invoke-interface {v6}, Lcom/buzzfeed/toolkit/content/PostContent;->getWideStack()Ljava/util/Stack;

    move-result-object v4

    :goto_34
    iget-object v5, p0, Lcom/buzzfeed/buffet/ui/holder/PostCard$1;->this$0:Lcom/buzzfeed/buffet/ui/holder/PostCard;

    iget-object v5, v5, Lcom/buzzfeed/buffet/ui/holder/PostCard;->itemView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/buzzfeed/toolkit/util/DeviceUtil;->isTablet(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_4c

    const/4 v5, 0x1

    .line 73
    :goto_43
    invoke-interface/range {v0 .. v5}, Lcom/buzzfeed/buffet/ui/listener/BuffetEventListener;->onCellClicked(Lcom/buzzfeed/toolkit/content/FlowItem;ILandroid/widget/ImageView;Ljava/util/Stack;Z)V

    .line 76
    .end local v6    # "content":Lcom/buzzfeed/toolkit/content/PostContent;
    :cond_46
    return-void

    .line 74
    .restart local v6    # "content":Lcom/buzzfeed/toolkit/content/PostContent;
    :cond_47
    invoke-interface {v6}, Lcom/buzzfeed/toolkit/content/PostContent;->getThumbnailStack()Ljava/util/Stack;

    move-result-object v4

    goto :goto_34

    :cond_4c
    const/4 v5, 0x0

    goto :goto_43
.end method
