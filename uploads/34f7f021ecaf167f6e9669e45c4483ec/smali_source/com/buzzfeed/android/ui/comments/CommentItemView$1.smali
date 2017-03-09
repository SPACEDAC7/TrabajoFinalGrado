.class Lcom/buzzfeed/android/ui/comments/CommentItemView$1;
.super Ljava/lang/Object;
.source "CommentItemView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/buzzfeed/android/ui/comments/CommentItemView;->initViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/buzzfeed/android/ui/comments/CommentItemView;


# direct methods
.method constructor <init>(Lcom/buzzfeed/android/ui/comments/CommentItemView;)V
    .registers 2
    .param p1, "this$0"    # Lcom/buzzfeed/android/ui/comments/CommentItemView;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/buzzfeed/android/ui/comments/CommentItemView$1;->this$0:Lcom/buzzfeed/android/ui/comments/CommentItemView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/buzzfeed/android/ui/comments/CommentItemView$1;->this$0:Lcom/buzzfeed/android/ui/comments/CommentItemView;

    # invokes: Lcom/buzzfeed/android/ui/comments/CommentItemView;->getCommentItemViewClickListener()Lcom/buzzfeed/android/ui/comments/CommentLayout$CommentViewOnClickListener;
    invoke-static {v0}, Lcom/buzzfeed/android/ui/comments/CommentItemView;->access$000(Lcom/buzzfeed/android/ui/comments/CommentItemView;)Lcom/buzzfeed/android/ui/comments/CommentLayout$CommentViewOnClickListener;

    move-result-object v0

    if-eqz v0, :cond_17

    .line 53
    iget-object v0, p0, Lcom/buzzfeed/android/ui/comments/CommentItemView$1;->this$0:Lcom/buzzfeed/android/ui/comments/CommentItemView;

    # invokes: Lcom/buzzfeed/android/ui/comments/CommentItemView;->getCommentItemViewClickListener()Lcom/buzzfeed/android/ui/comments/CommentLayout$CommentViewOnClickListener;
    invoke-static {v0}, Lcom/buzzfeed/android/ui/comments/CommentItemView;->access$000(Lcom/buzzfeed/android/ui/comments/CommentItemView;)Lcom/buzzfeed/android/ui/comments/CommentLayout$CommentViewOnClickListener;

    move-result-object v0

    iget-object v1, p0, Lcom/buzzfeed/android/ui/comments/CommentItemView$1;->this$0:Lcom/buzzfeed/android/ui/comments/CommentItemView;

    invoke-virtual {v1}, Lcom/buzzfeed/android/ui/comments/CommentItemView;->getComment()Lcom/buzzfeed/android/data/comment/Comment;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/buzzfeed/android/ui/comments/CommentLayout$CommentViewOnClickListener;->onClick(Landroid/view/View;Lcom/buzzfeed/android/data/comment/Comment;)V

    .line 55
    :cond_17
    return-void
.end method
