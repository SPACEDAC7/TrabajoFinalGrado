.class Lcom/buzzfeed/android/vcr/toolbox/MaskItemDecoration$1;
.super Ljava/lang/Object;
.source "MaskItemDecoration.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/buzzfeed/android/vcr/toolbox/MaskItemDecoration;->initialize()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/buzzfeed/android/vcr/toolbox/MaskItemDecoration;


# direct methods
.method constructor <init>(Lcom/buzzfeed/android/vcr/toolbox/MaskItemDecoration;)V
    .registers 2
    .param p1, "this$0"    # Lcom/buzzfeed/android/vcr/toolbox/MaskItemDecoration;

    .prologue
    .line 58
    iput-object p1, p0, Lcom/buzzfeed/android/vcr/toolbox/MaskItemDecoration$1;->this$0:Lcom/buzzfeed/android/vcr/toolbox/MaskItemDecoration;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 4
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/buzzfeed/android/vcr/toolbox/MaskItemDecoration$1;->this$0:Lcom/buzzfeed/android/vcr/toolbox/MaskItemDecoration;

    iget-object v1, v0, Lcom/buzzfeed/android/vcr/toolbox/MaskItemDecoration;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 62
    iget-object v0, p0, Lcom/buzzfeed/android/vcr/toolbox/MaskItemDecoration$1;->this$0:Lcom/buzzfeed/android/vcr/toolbox/MaskItemDecoration;

    # getter for: Lcom/buzzfeed/android/vcr/toolbox/MaskItemDecoration;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;
    invoke-static {v0}, Lcom/buzzfeed/android/vcr/toolbox/MaskItemDecoration;->access$000(Lcom/buzzfeed/android/vcr/toolbox/MaskItemDecoration;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    if-eqz v0, :cond_22

    .line 63
    iget-object v0, p0, Lcom/buzzfeed/android/vcr/toolbox/MaskItemDecoration$1;->this$0:Lcom/buzzfeed/android/vcr/toolbox/MaskItemDecoration;

    # getter for: Lcom/buzzfeed/android/vcr/toolbox/MaskItemDecoration;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;
    invoke-static {v0}, Lcom/buzzfeed/android/vcr/toolbox/MaskItemDecoration;->access$000(Lcom/buzzfeed/android/vcr/toolbox/MaskItemDecoration;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->postInvalidateOnAnimation()V

    .line 65
    :cond_22
    return-void
.end method
