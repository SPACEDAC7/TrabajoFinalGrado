.class Lcom/buzzfeed/buffet/ui/holder/PackageCard$3;
.super Ljava/lang/Object;
.source "PackageCard.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/buzzfeed/buffet/ui/holder/PackageCard;->populateFrom(Lcom/buzzfeed/toolkit/content/FlowItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/buzzfeed/buffet/ui/holder/PackageCard;

.field final synthetic val$secondary:Lcom/buzzfeed/toolkit/content/PostContent;


# direct methods
.method constructor <init>(Lcom/buzzfeed/buffet/ui/holder/PackageCard;Lcom/buzzfeed/toolkit/content/PostContent;)V
    .registers 3
    .param p1, "this$0"    # Lcom/buzzfeed/buffet/ui/holder/PackageCard;

    .prologue
    .line 125
    iput-object p1, p0, Lcom/buzzfeed/buffet/ui/holder/PackageCard$3;->this$0:Lcom/buzzfeed/buffet/ui/holder/PackageCard;

    iput-object p2, p0, Lcom/buzzfeed/buffet/ui/holder/PackageCard$3;->val$secondary:Lcom/buzzfeed/toolkit/content/PostContent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 10
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x1

    .line 128
    iget-object v0, p0, Lcom/buzzfeed/buffet/ui/holder/PackageCard$3;->this$0:Lcom/buzzfeed/buffet/ui/holder/PackageCard;

    invoke-virtual {v0}, Lcom/buzzfeed/buffet/ui/holder/PackageCard;->getBuffetEventListener()Lcom/buzzfeed/buffet/ui/listener/BuffetEventListener;

    move-result-object v0

    if-eqz v0, :cond_2c

    .line 129
    iget-object v0, p0, Lcom/buzzfeed/buffet/ui/holder/PackageCard$3;->this$0:Lcom/buzzfeed/buffet/ui/holder/PackageCard;

    invoke-virtual {v0}, Lcom/buzzfeed/buffet/ui/holder/PackageCard;->getBuffetEventListener()Lcom/buzzfeed/buffet/ui/listener/BuffetEventListener;

    move-result-object v0

    iget-object v1, p0, Lcom/buzzfeed/buffet/ui/holder/PackageCard$3;->this$0:Lcom/buzzfeed/buffet/ui/holder/PackageCard;

    # getter for: Lcom/buzzfeed/buffet/ui/holder/PackageCard;->mNewsPackageContent:Lcom/buzzfeed/toolkit/content/PackageContent;
    invoke-static {v1}, Lcom/buzzfeed/buffet/ui/holder/PackageCard;->access$000(Lcom/buzzfeed/buffet/ui/holder/PackageCard;)Lcom/buzzfeed/toolkit/content/PackageContent;

    move-result-object v1

    iget-object v2, p0, Lcom/buzzfeed/buffet/ui/holder/PackageCard$3;->val$secondary:Lcom/buzzfeed/toolkit/content/PostContent;

    iget-object v3, p0, Lcom/buzzfeed/buffet/ui/holder/PackageCard$3;->this$0:Lcom/buzzfeed/buffet/ui/holder/PackageCard;

    .line 130
    invoke-virtual {v3}, Lcom/buzzfeed/buffet/ui/holder/PackageCard;->getAdapterPosition()I

    move-result v3

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/buzzfeed/buffet/ui/holder/PackageCard$3;->val$secondary:Lcom/buzzfeed/toolkit/content/PostContent;

    invoke-static {}, Lcom/buzzfeed/toolkit/util/UIUtil;->getScreenDensityDpi()F

    move-result v7

    invoke-interface {v6, v7}, Lcom/buzzfeed/toolkit/content/PostContent;->getImageStack(F)Ljava/util/Stack;

    move-result-object v6

    move v7, v4

    .line 129
    invoke-interface/range {v0 .. v7}, Lcom/buzzfeed/buffet/ui/listener/BuffetEventListener;->onNewsPackageClicked(Lcom/buzzfeed/toolkit/content/PackageContent;Lcom/buzzfeed/toolkit/content/PostContent;IILandroid/widget/ImageView;Ljava/util/Stack;Z)V

    .line 132
    :cond_2c
    return-void
.end method
