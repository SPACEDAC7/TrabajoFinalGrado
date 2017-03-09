.class Lcom/buzzfeed/buffet/ui/holder/VideoAdCard$1;
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
    .line 78
    iput-object p1, p0, Lcom/buzzfeed/buffet/ui/holder/VideoAdCard$1;->this$0:Lcom/buzzfeed/buffet/ui/holder/VideoAdCard;

    iput-object p2, p0, Lcom/buzzfeed/buffet/ui/holder/VideoAdCard$1;->val$flowItem:Lcom/buzzfeed/toolkit/content/FlowItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 8
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 81
    iget-object v0, p0, Lcom/buzzfeed/buffet/ui/holder/VideoAdCard$1;->this$0:Lcom/buzzfeed/buffet/ui/holder/VideoAdCard;

    invoke-virtual {v0}, Lcom/buzzfeed/buffet/ui/holder/VideoAdCard;->getBuffetEventListener()Lcom/buzzfeed/buffet/ui/listener/BuffetEventListener;

    move-result-object v0

    if-eqz v0, :cond_1f

    .line 82
    iget-object v0, p0, Lcom/buzzfeed/buffet/ui/holder/VideoAdCard$1;->this$0:Lcom/buzzfeed/buffet/ui/holder/VideoAdCard;

    invoke-virtual {v0}, Lcom/buzzfeed/buffet/ui/holder/VideoAdCard;->getBuffetEventListener()Lcom/buzzfeed/buffet/ui/listener/BuffetEventListener;

    move-result-object v0

    iget-object v1, p0, Lcom/buzzfeed/buffet/ui/holder/VideoAdCard$1;->val$flowItem:Lcom/buzzfeed/toolkit/content/FlowItem;

    iget-object v2, p0, Lcom/buzzfeed/buffet/ui/holder/VideoAdCard$1;->this$0:Lcom/buzzfeed/buffet/ui/holder/VideoAdCard;

    invoke-virtual {v2}, Lcom/buzzfeed/buffet/ui/holder/VideoAdCard;->getAdapterPosition()I

    move-result v2

    iget-object v3, p0, Lcom/buzzfeed/buffet/ui/holder/VideoAdCard$1;->this$0:Lcom/buzzfeed/buffet/ui/holder/VideoAdCard;

    iget-object v3, v3, Lcom/buzzfeed/buffet/ui/holder/VideoAdCard;->mCoverImageView:Lcom/buzzfeed/toolkit/ui/view/ForceAspectImageView;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-interface/range {v0 .. v5}, Lcom/buzzfeed/buffet/ui/listener/BuffetEventListener;->onCellClicked(Lcom/buzzfeed/toolkit/content/FlowItem;ILandroid/widget/ImageView;Ljava/util/Stack;Z)V

    .line 84
    :cond_1f
    return-void
.end method
