.class Lcom/buzzfeed/android/ui/comments/CommentLayout$3;
.super Ljava/lang/Object;
.source "CommentLayout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/buzzfeed/android/ui/comments/CommentLayout;->initialize()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/buzzfeed/android/ui/comments/CommentLayout;


# direct methods
.method constructor <init>(Lcom/buzzfeed/android/ui/comments/CommentLayout;)V
    .registers 2
    .param p1, "this$0"    # Lcom/buzzfeed/android/ui/comments/CommentLayout;

    .prologue
    .line 149
    iput-object p1, p0, Lcom/buzzfeed/android/ui/comments/CommentLayout$3;->this$0:Lcom/buzzfeed/android/ui/comments/CommentLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 152
    iget-object v0, p0, Lcom/buzzfeed/android/ui/comments/CommentLayout$3;->this$0:Lcom/buzzfeed/android/ui/comments/CommentLayout;

    # getter for: Lcom/buzzfeed/android/ui/comments/CommentLayout;->mLoadMore:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/buzzfeed/android/ui/comments/CommentLayout;->access$300(Lcom/buzzfeed/android/ui/comments/CommentLayout;)Landroid/widget/TextView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 153
    iget-object v0, p0, Lcom/buzzfeed/android/ui/comments/CommentLayout$3;->this$0:Lcom/buzzfeed/android/ui/comments/CommentLayout;

    iget-object v1, p0, Lcom/buzzfeed/android/ui/comments/CommentLayout$3;->this$0:Lcom/buzzfeed/android/ui/comments/CommentLayout;

    # getter for: Lcom/buzzfeed/android/ui/comments/CommentLayout;->mCommentTypeSpinner:Landroid/widget/Spinner;
    invoke-static {v1}, Lcom/buzzfeed/android/ui/comments/CommentLayout;->access$400(Lcom/buzzfeed/android/ui/comments/CommentLayout;)Landroid/widget/Spinner;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/buzzfeed/android/ui/comments/CommentLayout;->beginLoad(IZ)V

    .line 154
    return-void
.end method
