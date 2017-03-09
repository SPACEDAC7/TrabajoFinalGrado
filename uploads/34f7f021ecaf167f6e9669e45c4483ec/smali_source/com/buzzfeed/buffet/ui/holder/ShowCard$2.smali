.class Lcom/buzzfeed/buffet/ui/holder/ShowCard$2;
.super Ljava/lang/Object;
.source "ShowCard.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/buzzfeed/buffet/ui/holder/ShowCard;->populateFrom(Lcom/buzzfeed/toolkit/content/FlowItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/buzzfeed/buffet/ui/holder/ShowCard;

.field final synthetic val$flowItem:Lcom/buzzfeed/toolkit/content/FlowItem;


# direct methods
.method constructor <init>(Lcom/buzzfeed/buffet/ui/holder/ShowCard;Lcom/buzzfeed/toolkit/content/FlowItem;)V
    .registers 3
    .param p1, "this$0"    # Lcom/buzzfeed/buffet/ui/holder/ShowCard;

    .prologue
    .line 51
    iput-object p1, p0, Lcom/buzzfeed/buffet/ui/holder/ShowCard$2;->this$0:Lcom/buzzfeed/buffet/ui/holder/ShowCard;

    iput-object p2, p0, Lcom/buzzfeed/buffet/ui/holder/ShowCard$2;->val$flowItem:Lcom/buzzfeed/toolkit/content/FlowItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 9
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/buzzfeed/buffet/ui/holder/ShowCard$2;->this$0:Lcom/buzzfeed/buffet/ui/holder/ShowCard;

    invoke-virtual {v0}, Lcom/buzzfeed/buffet/ui/holder/ShowCard;->getBuffetEventListener()Lcom/buzzfeed/buffet/ui/listener/BuffetEventListener;

    move-result-object v0

    if-eqz v0, :cond_2d

    .line 55
    iget-object v0, p0, Lcom/buzzfeed/buffet/ui/holder/ShowCard$2;->val$flowItem:Lcom/buzzfeed/toolkit/content/FlowItem;

    invoke-virtual {v0}, Lcom/buzzfeed/toolkit/content/FlowItem;->getContent()Lcom/buzzfeed/toolkit/content/Content;

    move-result-object v6

    check-cast v6, Lcom/buzzfeed/toolkit/content/ShowListContent;

    .line 56
    .local v6, "content":Lcom/buzzfeed/toolkit/content/ShowListContent;
    new-instance v4, Lcom/buzzfeed/buffet/ui/holder/ShowCard$2$1;

    invoke-direct {v4, p0, v6}, Lcom/buzzfeed/buffet/ui/holder/ShowCard$2$1;-><init>(Lcom/buzzfeed/buffet/ui/holder/ShowCard$2;Lcom/buzzfeed/toolkit/content/ShowListContent;)V

    .line 59
    .local v4, "imageStack":Ljava/util/Stack;, "Ljava/util/Stack<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/buzzfeed/buffet/ui/holder/ShowCard$2;->this$0:Lcom/buzzfeed/buffet/ui/holder/ShowCard;

    invoke-virtual {v0}, Lcom/buzzfeed/buffet/ui/holder/ShowCard;->getBuffetEventListener()Lcom/buzzfeed/buffet/ui/listener/BuffetEventListener;

    move-result-object v0

    iget-object v1, p0, Lcom/buzzfeed/buffet/ui/holder/ShowCard$2;->val$flowItem:Lcom/buzzfeed/toolkit/content/FlowItem;

    iget-object v2, p0, Lcom/buzzfeed/buffet/ui/holder/ShowCard$2;->this$0:Lcom/buzzfeed/buffet/ui/holder/ShowCard;

    invoke-virtual {v2}, Lcom/buzzfeed/buffet/ui/holder/ShowCard;->getAdapterPosition()I

    move-result v2

    iget-object v3, p0, Lcom/buzzfeed/buffet/ui/holder/ShowCard$2;->this$0:Lcom/buzzfeed/buffet/ui/holder/ShowCard;

    # getter for: Lcom/buzzfeed/buffet/ui/holder/ShowCard;->mForceAspectImageView:Lcom/buzzfeed/toolkit/ui/view/ForceAspectImageView;
    invoke-static {v3}, Lcom/buzzfeed/buffet/ui/holder/ShowCard;->access$100(Lcom/buzzfeed/buffet/ui/holder/ShowCard;)Lcom/buzzfeed/toolkit/ui/view/ForceAspectImageView;

    move-result-object v3

    const/4 v5, 0x1

    invoke-interface/range {v0 .. v5}, Lcom/buzzfeed/buffet/ui/listener/BuffetEventListener;->onCellClicked(Lcom/buzzfeed/toolkit/content/FlowItem;ILandroid/widget/ImageView;Ljava/util/Stack;Z)V

    .line 61
    .end local v4    # "imageStack":Ljava/util/Stack;, "Ljava/util/Stack<Ljava/lang/String;>;"
    .end local v6    # "content":Lcom/buzzfeed/toolkit/content/ShowListContent;
    :cond_2d
    return-void
.end method
