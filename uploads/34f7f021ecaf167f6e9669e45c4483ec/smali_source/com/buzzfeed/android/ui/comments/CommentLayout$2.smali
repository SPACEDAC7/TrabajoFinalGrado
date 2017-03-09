.class Lcom/buzzfeed/android/ui/comments/CommentLayout$2;
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
    .line 139
    iput-object p1, p0, Lcom/buzzfeed/android/ui/comments/CommentLayout$2;->this$0:Lcom/buzzfeed/android/ui/comments/CommentLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 142
    iget-object v0, p0, Lcom/buzzfeed/android/ui/comments/CommentLayout$2;->this$0:Lcom/buzzfeed/android/ui/comments/CommentLayout;

    # getter for: Lcom/buzzfeed/android/ui/comments/CommentLayout;->mCommentItemViewClickListener:Lcom/buzzfeed/android/ui/comments/CommentLayout$CommentViewOnClickListener;
    invoke-static {v0}, Lcom/buzzfeed/android/ui/comments/CommentLayout;->access$200(Lcom/buzzfeed/android/ui/comments/CommentLayout;)Lcom/buzzfeed/android/ui/comments/CommentLayout$CommentViewOnClickListener;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 143
    iget-object v0, p0, Lcom/buzzfeed/android/ui/comments/CommentLayout$2;->this$0:Lcom/buzzfeed/android/ui/comments/CommentLayout;

    # getter for: Lcom/buzzfeed/android/ui/comments/CommentLayout;->mCommentItemViewClickListener:Lcom/buzzfeed/android/ui/comments/CommentLayout$CommentViewOnClickListener;
    invoke-static {v0}, Lcom/buzzfeed/android/ui/comments/CommentLayout;->access$200(Lcom/buzzfeed/android/ui/comments/CommentLayout;)Lcom/buzzfeed/android/ui/comments/CommentLayout$CommentViewOnClickListener;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/buzzfeed/android/ui/comments/CommentLayout$CommentViewOnClickListener;->onClick(Landroid/view/View;Lcom/buzzfeed/android/data/comment/Comment;)V

    .line 145
    :cond_12
    return-void
.end method
