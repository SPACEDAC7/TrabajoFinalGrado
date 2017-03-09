.class Lcom/buzzfeed/buffet/ui/holder/VideoCard$1;
.super Ljava/lang/Object;
.source "VideoCard.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 138
    iput-object p1, p0, Lcom/buzzfeed/buffet/ui/holder/VideoCard$1;->this$0:Lcom/buzzfeed/buffet/ui/holder/VideoCard;

    iput-object p2, p0, Lcom/buzzfeed/buffet/ui/holder/VideoCard$1;->val$flowItem:Lcom/buzzfeed/toolkit/content/FlowItem;

    iput p3, p0, Lcom/buzzfeed/buffet/ui/holder/VideoCard$1;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 8
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 141
    iget-object v0, p0, Lcom/buzzfeed/buffet/ui/holder/VideoCard$1;->this$0:Lcom/buzzfeed/buffet/ui/holder/VideoCard;

    invoke-virtual {v0}, Lcom/buzzfeed/buffet/ui/holder/VideoCard;->getBuffetEventListener()Lcom/buzzfeed/buffet/ui/listener/BuffetEventListener;

    move-result-object v0

    if-eqz v0, :cond_1b

    .line 142
    iget-object v0, p0, Lcom/buzzfeed/buffet/ui/holder/VideoCard$1;->this$0:Lcom/buzzfeed/buffet/ui/holder/VideoCard;

    invoke-virtual {v0}, Lcom/buzzfeed/buffet/ui/holder/VideoCard;->getBuffetEventListener()Lcom/buzzfeed/buffet/ui/listener/BuffetEventListener;

    move-result-object v0

    iget-object v1, p0, Lcom/buzzfeed/buffet/ui/holder/VideoCard$1;->val$flowItem:Lcom/buzzfeed/toolkit/content/FlowItem;

    iget v2, p0, Lcom/buzzfeed/buffet/ui/holder/VideoCard$1;->val$position:I

    iget-object v3, p0, Lcom/buzzfeed/buffet/ui/holder/VideoCard$1;->this$0:Lcom/buzzfeed/buffet/ui/holder/VideoCard;

    iget-object v3, v3, Lcom/buzzfeed/buffet/ui/holder/VideoCard;->mCoverImageView:Lcom/buzzfeed/toolkit/ui/view/ForceAspectImageView;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-interface/range {v0 .. v5}, Lcom/buzzfeed/buffet/ui/listener/BuffetEventListener;->onCellClicked(Lcom/buzzfeed/toolkit/content/FlowItem;ILandroid/widget/ImageView;Ljava/util/Stack;Z)V

    .line 144
    :cond_1b
    return-void
.end method
