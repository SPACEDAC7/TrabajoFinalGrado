.class Lcom/buzzfeed/android/ui/comments/CommentViewOnClickListenerImpl$1;
.super Ljava/lang/Object;
.source "CommentViewOnClickListenerImpl.java"

# interfaces
.implements Lcom/buzzfeed/toolkit/sharmo/ShareManager$ShareActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/buzzfeed/android/ui/comments/CommentViewOnClickListenerImpl;->startShareIntent(Landroid/content/Context;Lcom/buzzfeed/android/data/comment/Comment;Lcom/buzzfeed/toolkit/content/PostContent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/buzzfeed/android/ui/comments/CommentViewOnClickListenerImpl;


# direct methods
.method constructor <init>(Lcom/buzzfeed/android/ui/comments/CommentViewOnClickListenerImpl;)V
    .registers 2
    .param p1, "this$0"    # Lcom/buzzfeed/android/ui/comments/CommentViewOnClickListenerImpl;

    .prologue
    .line 196
    iput-object p1, p0, Lcom/buzzfeed/android/ui/comments/CommentViewOnClickListenerImpl$1;->this$0:Lcom/buzzfeed/android/ui/comments/CommentViewOnClickListenerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShareAction(Ljava/lang/String;)V
    .registers 3
    .param p1, "shareApplication"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 199
    iget-object v0, p0, Lcom/buzzfeed/android/ui/comments/CommentViewOnClickListenerImpl$1;->this$0:Lcom/buzzfeed/android/ui/comments/CommentViewOnClickListenerImpl;

    # getter for: Lcom/buzzfeed/android/ui/comments/CommentViewOnClickListenerImpl;->mCommentTracker:Lcom/buzzfeed/android/data/tracking/CommentTracker;
    invoke-static {v0}, Lcom/buzzfeed/android/ui/comments/CommentViewOnClickListenerImpl;->access$000(Lcom/buzzfeed/android/ui/comments/CommentViewOnClickListenerImpl;)Lcom/buzzfeed/android/data/tracking/CommentTracker;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/buzzfeed/android/data/tracking/CommentTracker;->trackCommentShareActivityClicked(Ljava/lang/String;)V

    .line 200
    return-void
.end method
