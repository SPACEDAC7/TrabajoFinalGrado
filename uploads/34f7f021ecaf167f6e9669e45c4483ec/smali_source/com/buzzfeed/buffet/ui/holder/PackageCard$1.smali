.class Lcom/buzzfeed/buffet/ui/holder/PackageCard$1;
.super Landroid/support/v7/widget/RecyclerView$ItemDecoration;
.source "PackageCard.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/buzzfeed/buffet/ui/holder/PackageCard;-><init>(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/buzzfeed/buffet/ui/holder/PackageCard;


# direct methods
.method constructor <init>(Lcom/buzzfeed/buffet/ui/holder/PackageCard;)V
    .registers 2
    .param p1, "this$0"    # Lcom/buzzfeed/buffet/ui/holder/PackageCard;

    .prologue
    .line 66
    iput-object p1, p0, Lcom/buzzfeed/buffet/ui/holder/PackageCard$1;->this$0:Lcom/buzzfeed/buffet/ui/holder/PackageCard;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$ItemDecoration;-><init>()V

    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;)V
    .registers 9
    .param p1, "outRect"    # Landroid/graphics/Rect;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/support/v7/widget/RecyclerView;
    .param p4, "state"    # Landroid/support/v7/widget/RecyclerView$State;

    .prologue
    .line 69
    invoke-virtual {p3, p2}, Landroid/support/v7/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v0

    .line 70
    .local v0, "index":I
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/buzzfeed/buffet/R$dimen;->padding_large:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 71
    .local v1, "largePadding":I
    if-nez v0, :cond_16

    .line 72
    iput v1, p1, Landroid/graphics/Rect;->left:I

    .line 75
    :cond_16
    iput v1, p1, Landroid/graphics/Rect;->right:I

    .line 76
    iput v1, p1, Landroid/graphics/Rect;->bottom:I

    .line 78
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/buzzfeed/buffet/R$dimen;->padding_micro:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p1, Landroid/graphics/Rect;->top:I

    .line 79
    return-void
.end method
