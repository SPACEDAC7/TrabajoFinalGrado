.class Lcom/buzzfeed/mediaviewer/ui/view/VideoContainerView$1;
.super Ljava/lang/Object;
.source "VideoContainerView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/buzzfeed/mediaviewer/ui/view/VideoContainerView;->anchorFooterToBottom()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/buzzfeed/mediaviewer/ui/view/VideoContainerView;

.field final synthetic val$scrimHeight:I

.field final synthetic val$scrimView:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/buzzfeed/mediaviewer/ui/view/VideoContainerView;Landroid/view/View;I)V
    .registers 4
    .param p1, "this$0"    # Lcom/buzzfeed/mediaviewer/ui/view/VideoContainerView;

    .prologue
    .line 302
    iput-object p1, p0, Lcom/buzzfeed/mediaviewer/ui/view/VideoContainerView$1;->this$0:Lcom/buzzfeed/mediaviewer/ui/view/VideoContainerView;

    iput-object p2, p0, Lcom/buzzfeed/mediaviewer/ui/view/VideoContainerView$1;->val$scrimView:Landroid/view/View;

    iput p3, p0, Lcom/buzzfeed/mediaviewer/ui/view/VideoContainerView$1;->val$scrimHeight:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    .line 305
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 306
    .local v2, "rootRect":Landroid/graphics/Rect;
    iget-object v4, p0, Lcom/buzzfeed/mediaviewer/ui/view/VideoContainerView$1;->val$scrimView:Landroid/view/View;

    invoke-virtual {v4, v2}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 307
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 308
    .local v0, "fitRect":Landroid/graphics/Rect;
    iget-object v4, p0, Lcom/buzzfeed/mediaviewer/ui/view/VideoContainerView$1;->this$0:Lcom/buzzfeed/mediaviewer/ui/view/VideoContainerView;

    iget-object v4, v4, Lcom/buzzfeed/mediaviewer/ui/view/VideoContainerView;->mVideoFooterView:Lcom/buzzfeed/mediaviewer/ui/view/VideoFooterView;

    invoke-virtual {v4, v0}, Lcom/buzzfeed/mediaviewer/ui/view/VideoFooterView;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 309
    iget v4, v2, Landroid/graphics/Rect;->bottom:I

    iget v5, v0, Landroid/graphics/Rect;->bottom:I

    sub-int v3, v4, v5

    .line 310
    .local v3, "windowInset":I
    if-lez v3, :cond_31

    .line 311
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v4, -0x1

    iget v5, p0, Lcom/buzzfeed/mediaviewer/ui/view/VideoContainerView$1;->val$scrimHeight:I

    add-int/2addr v5, v3

    invoke-direct {v1, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 313
    .local v1, "params":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v4, 0xc

    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 314
    iget-object v4, p0, Lcom/buzzfeed/mediaviewer/ui/view/VideoContainerView$1;->val$scrimView:Landroid/view/View;

    invoke-virtual {v4, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 316
    .end local v1    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_31
    return-void
.end method
