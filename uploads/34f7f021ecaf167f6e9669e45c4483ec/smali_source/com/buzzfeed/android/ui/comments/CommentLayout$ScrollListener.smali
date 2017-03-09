.class Lcom/buzzfeed/android/ui/comments/CommentLayout$ScrollListener;
.super Ljava/lang/Object;
.source "CommentLayout.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnScrollChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/buzzfeed/android/ui/comments/CommentLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScrollListener"
.end annotation


# instance fields
.field private mShadowLinearLayout:Lcom/buzzfeed/android/ui/widget/DrawShadowLinearLayout;

.field final synthetic this$0:Lcom/buzzfeed/android/ui/comments/CommentLayout;


# direct methods
.method public constructor <init>(Lcom/buzzfeed/android/ui/comments/CommentLayout;)V
    .registers 3

    .prologue
    .line 420
    iput-object p1, p0, Lcom/buzzfeed/android/ui/comments/CommentLayout$ScrollListener;->this$0:Lcom/buzzfeed/android/ui/comments/CommentLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 421
    const v0, 0x7f110134

    invoke-virtual {p1, v0}, Lcom/buzzfeed/android/ui/comments/CommentLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/buzzfeed/android/ui/widget/DrawShadowLinearLayout;

    iput-object v0, p0, Lcom/buzzfeed/android/ui/comments/CommentLayout$ScrollListener;->mShadowLinearLayout:Lcom/buzzfeed/android/ui/widget/DrawShadowLinearLayout;

    .line 422
    return-void
.end method


# virtual methods
.method public onScrollChanged()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 426
    iget-object v0, p0, Lcom/buzzfeed/android/ui/comments/CommentLayout$ScrollListener;->this$0:Lcom/buzzfeed/android/ui/comments/CommentLayout;

    # getter for: Lcom/buzzfeed/android/ui/comments/CommentLayout;->mCommentScrollView:Landroid/widget/ScrollView;
    invoke-static {v0}, Lcom/buzzfeed/android/ui/comments/CommentLayout;->access$800(Lcom/buzzfeed/android/ui/comments/CommentLayout;)Landroid/widget/ScrollView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v0

    if-gtz v0, :cond_14

    .line 427
    iget-object v0, p0, Lcom/buzzfeed/android/ui/comments/CommentLayout$ScrollListener;->mShadowLinearLayout:Lcom/buzzfeed/android/ui/widget/DrawShadowLinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/buzzfeed/android/ui/widget/DrawShadowLinearLayout;->setShadowVisible(ZZ)V

    .line 434
    :cond_13
    :goto_13
    return-void

    .line 429
    :cond_14
    iget-object v0, p0, Lcom/buzzfeed/android/ui/comments/CommentLayout$ScrollListener;->mShadowLinearLayout:Lcom/buzzfeed/android/ui/widget/DrawShadowLinearLayout;

    invoke-virtual {v0}, Lcom/buzzfeed/android/ui/widget/DrawShadowLinearLayout;->isShadowVisible()Z

    move-result v0

    if-nez v0, :cond_13

    .line 430
    iget-object v0, p0, Lcom/buzzfeed/android/ui/comments/CommentLayout$ScrollListener;->mShadowLinearLayout:Lcom/buzzfeed/android/ui/widget/DrawShadowLinearLayout;

    invoke-virtual {v0, v2, v2}, Lcom/buzzfeed/android/ui/widget/DrawShadowLinearLayout;->setShadowVisible(ZZ)V

    goto :goto_13
.end method
