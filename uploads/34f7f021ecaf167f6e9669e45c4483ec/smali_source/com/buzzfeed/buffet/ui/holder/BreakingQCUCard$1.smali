.class Lcom/buzzfeed/buffet/ui/holder/BreakingQCUCard$1;
.super Ljava/lang/Object;
.source "BreakingQCUCard.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/buzzfeed/buffet/ui/holder/BreakingQCUCard;->populateFrom(Lcom/buzzfeed/toolkit/content/FlowItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/buzzfeed/buffet/ui/holder/BreakingQCUCard;

.field final synthetic val$primary:Lcom/buzzfeed/toolkit/content/PostContent;


# direct methods
.method constructor <init>(Lcom/buzzfeed/buffet/ui/holder/BreakingQCUCard;Lcom/buzzfeed/toolkit/content/PostContent;)V
    .registers 3
    .param p1, "this$0"    # Lcom/buzzfeed/buffet/ui/holder/BreakingQCUCard;

    .prologue
    .line 45
    iput-object p1, p0, Lcom/buzzfeed/buffet/ui/holder/BreakingQCUCard$1;->this$0:Lcom/buzzfeed/buffet/ui/holder/BreakingQCUCard;

    iput-object p2, p0, Lcom/buzzfeed/buffet/ui/holder/BreakingQCUCard$1;->val$primary:Lcom/buzzfeed/toolkit/content/PostContent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 10
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x0

    .line 48
    iget-object v0, p0, Lcom/buzzfeed/buffet/ui/holder/BreakingQCUCard$1;->this$0:Lcom/buzzfeed/buffet/ui/holder/BreakingQCUCard;

    invoke-virtual {v0}, Lcom/buzzfeed/buffet/ui/holder/BreakingQCUCard;->getBuffetEventListener()Lcom/buzzfeed/buffet/ui/listener/BuffetEventListener;

    move-result-object v0

    if-eqz v0, :cond_2d

    .line 49
    iget-object v0, p0, Lcom/buzzfeed/buffet/ui/holder/BreakingQCUCard$1;->this$0:Lcom/buzzfeed/buffet/ui/holder/BreakingQCUCard;

    invoke-virtual {v0}, Lcom/buzzfeed/buffet/ui/holder/BreakingQCUCard;->getBuffetEventListener()Lcom/buzzfeed/buffet/ui/listener/BuffetEventListener;

    move-result-object v0

    iget-object v1, p0, Lcom/buzzfeed/buffet/ui/holder/BreakingQCUCard$1;->this$0:Lcom/buzzfeed/buffet/ui/holder/BreakingQCUCard;

    # getter for: Lcom/buzzfeed/buffet/ui/holder/BreakingQCUCard;->mNewsPackageContent:Lcom/buzzfeed/toolkit/content/PackageContent;
    invoke-static {v1}, Lcom/buzzfeed/buffet/ui/holder/BreakingQCUCard;->access$000(Lcom/buzzfeed/buffet/ui/holder/BreakingQCUCard;)Lcom/buzzfeed/toolkit/content/PackageContent;

    move-result-object v1

    iget-object v2, p0, Lcom/buzzfeed/buffet/ui/holder/BreakingQCUCard$1;->val$primary:Lcom/buzzfeed/toolkit/content/PostContent;

    iget-object v3, p0, Lcom/buzzfeed/buffet/ui/holder/BreakingQCUCard$1;->this$0:Lcom/buzzfeed/buffet/ui/holder/BreakingQCUCard;

    .line 50
    invoke-virtual {v3}, Lcom/buzzfeed/buffet/ui/holder/BreakingQCUCard;->getAdapterPosition()I

    move-result v3

    iget-object v5, p0, Lcom/buzzfeed/buffet/ui/holder/BreakingQCUCard$1;->this$0:Lcom/buzzfeed/buffet/ui/holder/BreakingQCUCard;

    # getter for: Lcom/buzzfeed/buffet/ui/holder/BreakingQCUCard;->mHeaderImage:Landroid/widget/ImageView;
    invoke-static {v5}, Lcom/buzzfeed/buffet/ui/holder/BreakingQCUCard;->access$100(Lcom/buzzfeed/buffet/ui/holder/BreakingQCUCard;)Landroid/widget/ImageView;

    move-result-object v5

    iget-object v6, p0, Lcom/buzzfeed/buffet/ui/holder/BreakingQCUCard$1;->val$primary:Lcom/buzzfeed/toolkit/content/PostContent;

    invoke-interface {v6}, Lcom/buzzfeed/toolkit/content/PostContent;->getWideStack()Ljava/util/Stack;

    move-result-object v6

    move v7, v4

    .line 49
    invoke-interface/range {v0 .. v7}, Lcom/buzzfeed/buffet/ui/listener/BuffetEventListener;->onNewsPackageClicked(Lcom/buzzfeed/toolkit/content/PackageContent;Lcom/buzzfeed/toolkit/content/PostContent;IILandroid/widget/ImageView;Ljava/util/Stack;Z)V

    .line 52
    :cond_2d
    return-void
.end method
