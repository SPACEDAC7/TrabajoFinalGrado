.class Lcom/buzzfeed/spicerack/ui/view/SpicyView$3;
.super Landroid/support/v7/widget/RecyclerView$ItemDecoration;
.source "SpicyView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/buzzfeed/spicerack/ui/view/SpicyView;->setHeaderImageInfo(Ljava/util/Stack;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/buzzfeed/spicerack/ui/view/SpicyView;

.field final synthetic val$isTallHeader:Z


# direct methods
.method constructor <init>(Lcom/buzzfeed/spicerack/ui/view/SpicyView;Z)V
    .registers 3
    .param p1, "this$0"    # Lcom/buzzfeed/spicerack/ui/view/SpicyView;

    .prologue
    .line 207
    iput-object p1, p0, Lcom/buzzfeed/spicerack/ui/view/SpicyView$3;->this$0:Lcom/buzzfeed/spicerack/ui/view/SpicyView;

    iput-boolean p2, p0, Lcom/buzzfeed/spicerack/ui/view/SpicyView$3;->val$isTallHeader:Z

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
    .line 210
    invoke-virtual {p3, p2}, Landroid/support/v7/widget/RecyclerView;->getChildLayoutPosition(Landroid/view/View;)I

    move-result v1

    .line 212
    .local v1, "position":I
    if-nez v1, :cond_28

    .line 213
    invoke-static {}, Lcom/buzzfeed/toolkit/util/UIUtil;->getScreenWidth()I

    move-result v2

    int-to-float v0, v2

    .line 214
    .local v0, "offset":F
    iget-boolean v2, p0, Lcom/buzzfeed/spicerack/ui/view/SpicyView$3;->val$isTallHeader:Z

    if-eqz v2, :cond_29

    const v2, 0x3f2a7efa

    :goto_12
    mul-float/2addr v0, v2

    .line 217
    invoke-static {}, Lcom/buzzfeed/toolkit/util/VersionUtil;->hasLollipop()Z

    move-result v2

    if-eqz v2, :cond_25

    .line 218
    iget-object v2, p0, Lcom/buzzfeed/spicerack/ui/view/SpicyView$3;->this$0:Lcom/buzzfeed/spicerack/ui/view/SpicyView;

    invoke-virtual {v2}, Lcom/buzzfeed/spicerack/ui/view/SpicyView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/buzzfeed/toolkit/util/UIUtil;->getStatusBarHeight(Landroid/content/Context;)I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v0, v2

    .line 220
    :cond_25
    float-to-int v2, v0

    iput v2, p1, Landroid/graphics/Rect;->top:I

    .line 222
    .end local v0    # "offset":F
    :cond_28
    return-void

    .line 214
    .restart local v0    # "offset":F
    :cond_29
    const v2, 0x3eb33333

    goto :goto_12
.end method
