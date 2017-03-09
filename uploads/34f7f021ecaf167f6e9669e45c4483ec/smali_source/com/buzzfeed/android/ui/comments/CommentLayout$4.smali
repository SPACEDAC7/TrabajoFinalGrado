.class Lcom/buzzfeed/android/ui/comments/CommentLayout$4;
.super Ljava/lang/Object;
.source "CommentLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/buzzfeed/android/ui/comments/CommentLayout;->onSuccess(Ljava/lang/String;Lcom/buzzfeed/android/data/comment/Comment;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/buzzfeed/android/ui/comments/CommentLayout;

.field final synthetic val$comment:Lcom/buzzfeed/android/data/comment/Comment;

.field final synthetic val$type:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/buzzfeed/android/ui/comments/CommentLayout;Ljava/lang/String;Lcom/buzzfeed/android/data/comment/Comment;)V
    .registers 4
    .param p1, "this$0"    # Lcom/buzzfeed/android/ui/comments/CommentLayout;

    .prologue
    .line 341
    iput-object p1, p0, Lcom/buzzfeed/android/ui/comments/CommentLayout$4;->this$0:Lcom/buzzfeed/android/ui/comments/CommentLayout;

    iput-object p2, p0, Lcom/buzzfeed/android/ui/comments/CommentLayout$4;->val$type:Ljava/lang/String;

    iput-object p3, p0, Lcom/buzzfeed/android/ui/comments/CommentLayout$4;->val$comment:Lcom/buzzfeed/android/data/comment/Comment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    const/4 v5, 0x1

    .line 344
    # getter for: Lcom/buzzfeed/android/ui/comments/CommentLayout;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/buzzfeed/android/ui/comments/CommentLayout;->access$500()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Comment Action succeeded. Type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/buzzfeed/android/ui/comments/CommentLayout$4;->val$type:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/buzzfeed/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 345
    iget-object v2, p0, Lcom/buzzfeed/android/ui/comments/CommentLayout$4;->this$0:Lcom/buzzfeed/android/ui/comments/CommentLayout;

    iget-object v3, p0, Lcom/buzzfeed/android/ui/comments/CommentLayout$4;->val$comment:Lcom/buzzfeed/android/data/comment/Comment;

    # invokes: Lcom/buzzfeed/android/ui/comments/CommentLayout;->getChildViewForComment(Lcom/buzzfeed/android/data/comment/Comment;)Landroid/view/View;
    invoke-static {v2, v3}, Lcom/buzzfeed/android/ui/comments/CommentLayout;->access$600(Lcom/buzzfeed/android/ui/comments/CommentLayout;Lcom/buzzfeed/android/data/comment/Comment;)Landroid/view/View;

    move-result-object v0

    .line 347
    .local v0, "child":Landroid/view/View;
    instance-of v2, v0, Lcom/buzzfeed/android/ui/comments/CommentItemView;

    if-eqz v2, :cond_53

    move-object v1, v0

    .line 348
    check-cast v1, Lcom/buzzfeed/android/ui/comments/CommentItemView;

    .line 349
    .local v1, "item":Lcom/buzzfeed/android/ui/comments/CommentItemView;
    iget-object v2, p0, Lcom/buzzfeed/android/ui/comments/CommentLayout$4;->val$type:Ljava/lang/String;

    const-string v3, "heart_success"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4b

    .line 350
    invoke-virtual {v1}, Lcom/buzzfeed/android/ui/comments/CommentItemView;->getHeartButton()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/view/View;->setSelected(Z)V

    .line 354
    :goto_3d
    iget-object v2, p0, Lcom/buzzfeed/android/ui/comments/CommentLayout$4;->this$0:Lcom/buzzfeed/android/ui/comments/CommentLayout;

    # getter for: Lcom/buzzfeed/android/ui/comments/CommentLayout;->mCommentViewPresenter:Lcom/buzzfeed/android/ui/comments/CommentViewPresenter;
    invoke-static {v2}, Lcom/buzzfeed/android/ui/comments/CommentLayout;->access$700(Lcom/buzzfeed/android/ui/comments/CommentLayout;)Lcom/buzzfeed/android/ui/comments/CommentViewPresenter;

    move-result-object v2

    invoke-virtual {v1}, Lcom/buzzfeed/android/ui/comments/CommentItemView;->getComment()Lcom/buzzfeed/android/data/comment/Comment;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lcom/buzzfeed/android/ui/comments/CommentViewPresenter;->updateView(Landroid/view/View;Lcom/buzzfeed/android/data/comment/Comment;)V

    .line 358
    .end local v1    # "item":Lcom/buzzfeed/android/ui/comments/CommentItemView;
    :goto_4a
    return-void

    .line 352
    .restart local v1    # "item":Lcom/buzzfeed/android/ui/comments/CommentItemView;
    :cond_4b
    invoke-virtual {v1}, Lcom/buzzfeed/android/ui/comments/CommentItemView;->getHateButton()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/view/View;->setSelected(Z)V

    goto :goto_3d

    .line 356
    .end local v1    # "item":Lcom/buzzfeed/android/ui/comments/CommentItemView;
    :cond_53
    # getter for: Lcom/buzzfeed/android/ui/comments/CommentLayout;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/buzzfeed/android/ui/comments/CommentLayout;->access$500()Ljava/lang/String;

    move-result-object v2

    const-string v3, "children were added without updating addOffset()"

    invoke-static {v2, v3}, Lcom/buzzfeed/toolkit/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4a
.end method
