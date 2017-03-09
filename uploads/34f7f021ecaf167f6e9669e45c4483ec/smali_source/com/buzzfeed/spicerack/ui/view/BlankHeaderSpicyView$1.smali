.class Lcom/buzzfeed/spicerack/ui/view/BlankHeaderSpicyView$1;
.super Landroid/support/v7/widget/RecyclerView$ItemDecoration;
.source "BlankHeaderSpicyView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/buzzfeed/spicerack/ui/view/BlankHeaderSpicyView;->setupHeader()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/buzzfeed/spicerack/ui/view/BlankHeaderSpicyView;


# direct methods
.method constructor <init>(Lcom/buzzfeed/spicerack/ui/view/BlankHeaderSpicyView;)V
    .registers 2
    .param p1, "this$0"    # Lcom/buzzfeed/spicerack/ui/view/BlankHeaderSpicyView;

    .prologue
    .line 33
    iput-object p1, p0, Lcom/buzzfeed/spicerack/ui/view/BlankHeaderSpicyView$1;->this$0:Lcom/buzzfeed/spicerack/ui/view/BlankHeaderSpicyView;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$ItemDecoration;-><init>()V

    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;)V
    .registers 8
    .param p1, "outRect"    # Landroid/graphics/Rect;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/support/v7/widget/RecyclerView;
    .param p4, "state"    # Landroid/support/v7/widget/RecyclerView$State;

    .prologue
    .line 36
    invoke-virtual {p3, p2}, Landroid/support/v7/widget/RecyclerView;->getChildLayoutPosition(Landroid/view/View;)I

    move-result v1

    .line 38
    .local v1, "position":I
    if-nez v1, :cond_14

    .line 39
    iget-object v2, p0, Lcom/buzzfeed/spicerack/ui/view/BlankHeaderSpicyView$1;->this$0:Lcom/buzzfeed/spicerack/ui/view/BlankHeaderSpicyView;

    invoke-virtual {v2}, Lcom/buzzfeed/spicerack/ui/view/BlankHeaderSpicyView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/buzzfeed/toolkit/util/UIUtil;->getActionBarHeight(Landroid/content/Context;)I

    move-result v2

    int-to-float v0, v2

    .line 40
    .local v0, "offset":F
    float-to-int v2, v0

    iput v2, p1, Landroid/graphics/Rect;->top:I

    .line 42
    .end local v0    # "offset":F
    :cond_14
    return-void
.end method
