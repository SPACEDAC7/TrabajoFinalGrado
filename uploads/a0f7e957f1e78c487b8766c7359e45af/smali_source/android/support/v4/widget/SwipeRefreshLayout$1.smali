.class Landroid/support/v4/widget/SwipeRefreshLayout$1;
.super Landroid/view/animation/Animation;
.source "SwipeRefreshLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/widget/SwipeRefreshLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v4/widget/SwipeRefreshLayout;


# direct methods
.method constructor <init>(Landroid/support/v4/widget/SwipeRefreshLayout;)V
    .registers 2

    .prologue
    .line 99
    iput-object p1, p0, Landroid/support/v4/widget/SwipeRefreshLayout$1;->this$0:Landroid/support/v4/widget/SwipeRefreshLayout;

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    return-void
.end method


# virtual methods
.method public applyTransformation(FLandroid/view/animation/Transformation;)V
    .registers 9
    .param p1, "interpolatedTime"    # F
    .param p2, "t"    # Landroid/view/animation/Transformation;

    .prologue
    .line 102
    const/4 v2, 0x0

    .line 103
    .local v2, "targetTop":I
    iget-object v3, p0, Landroid/support/v4/widget/SwipeRefreshLayout$1;->this$0:Landroid/support/v4/widget/SwipeRefreshLayout;

    # getter for: Landroid/support/v4/widget/SwipeRefreshLayout;->mFrom:I
    invoke-static {v3}, Landroid/support/v4/widget/SwipeRefreshLayout;->access$000(Landroid/support/v4/widget/SwipeRefreshLayout;)I

    move-result v3

    iget-object v4, p0, Landroid/support/v4/widget/SwipeRefreshLayout$1;->this$0:Landroid/support/v4/widget/SwipeRefreshLayout;

    # getter for: Landroid/support/v4/widget/SwipeRefreshLayout;->mOriginalOffsetTop:I
    invoke-static {v4}, Landroid/support/v4/widget/SwipeRefreshLayout;->access$100(Landroid/support/v4/widget/SwipeRefreshLayout;)I

    move-result v4

    if-eq v3, v4, :cond_27

    .line 104
    iget-object v3, p0, Landroid/support/v4/widget/SwipeRefreshLayout$1;->this$0:Landroid/support/v4/widget/SwipeRefreshLayout;

    # getter for: Landroid/support/v4/widget/SwipeRefreshLayout;->mFrom:I
    invoke-static {v3}, Landroid/support/v4/widget/SwipeRefreshLayout;->access$000(Landroid/support/v4/widget/SwipeRefreshLayout;)I

    move-result v3

    iget-object v4, p0, Landroid/support/v4/widget/SwipeRefreshLayout$1;->this$0:Landroid/support/v4/widget/SwipeRefreshLayout;

    # getter for: Landroid/support/v4/widget/SwipeRefreshLayout;->mOriginalOffsetTop:I
    invoke-static {v4}, Landroid/support/v4/widget/SwipeRefreshLayout;->access$100(Landroid/support/v4/widget/SwipeRefreshLayout;)I

    move-result v4

    iget-object v5, p0, Landroid/support/v4/widget/SwipeRefreshLayout$1;->this$0:Landroid/support/v4/widget/SwipeRefreshLayout;

    # getter for: Landroid/support/v4/widget/SwipeRefreshLayout;->mFrom:I
    invoke-static {v5}, Landroid/support/v4/widget/SwipeRefreshLayout;->access$000(Landroid/support/v4/widget/SwipeRefreshLayout;)I

    move-result v5

    sub-int/2addr v4, v5

    int-to-float v4, v4

    mul-float/2addr v4, p1

    float-to-int v4, v4

    add-int v2, v3, v4

    .line 106
    :cond_27
    iget-object v3, p0, Landroid/support/v4/widget/SwipeRefreshLayout$1;->this$0:Landroid/support/v4/widget/SwipeRefreshLayout;

    # getter for: Landroid/support/v4/widget/SwipeRefreshLayout;->mTarget:Landroid/view/View;
    invoke-static {v3}, Landroid/support/v4/widget/SwipeRefreshLayout;->access$200(Landroid/support/v4/widget/SwipeRefreshLayout;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    sub-int v1, v2, v3

    .line 107
    .local v1, "offset":I
    iget-object v3, p0, Landroid/support/v4/widget/SwipeRefreshLayout$1;->this$0:Landroid/support/v4/widget/SwipeRefreshLayout;

    # getter for: Landroid/support/v4/widget/SwipeRefreshLayout;->mTarget:Landroid/view/View;
    invoke-static {v3}, Landroid/support/v4/widget/SwipeRefreshLayout;->access$200(Landroid/support/v4/widget/SwipeRefreshLayout;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v0

    .line 108
    .local v0, "currentTop":I
    add-int v3, v1, v0

    if-gez v3, :cond_43

    .line 109
    rsub-int/lit8 v1, v0, 0x0

    .line 111
    :cond_43
    iget-object v3, p0, Landroid/support/v4/widget/SwipeRefreshLayout$1;->this$0:Landroid/support/v4/widget/SwipeRefreshLayout;

    # invokes: Landroid/support/v4/widget/SwipeRefreshLayout;->setTargetOffsetTopAndBottom(I)V
    invoke-static {v3, v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->access$300(Landroid/support/v4/widget/SwipeRefreshLayout;I)V

    .line 112
    return-void
.end method
