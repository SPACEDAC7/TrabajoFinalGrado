.class public Lcom/buzzfeed/android/ui/comments/CommentsChangeObserver;
.super Ljava/lang/Object;
.source "CommentsChangeObserver.java"

# interfaces
.implements Ljava/util/Observer;


# instance fields
.field private mCommentLayout:Lcom/buzzfeed/android/ui/comments/CommentLayout;

.field private mListId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/buzzfeed/android/ui/comments/CommentLayout;)V
    .registers 5
    .param p1, "listId"    # Ljava/lang/String;
    .param p2, "commentLayout"    # Lcom/buzzfeed/android/ui/comments/CommentLayout;

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    if-nez p1, :cond_d

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "list id can\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 16
    :cond_d
    if-nez p2, :cond_17

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "commentlayout can\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 18
    :cond_17
    iput-object p1, p0, Lcom/buzzfeed/android/ui/comments/CommentsChangeObserver;->mListId:Ljava/lang/String;

    .line 19
    iput-object p2, p0, Lcom/buzzfeed/android/ui/comments/CommentsChangeObserver;->mCommentLayout:Lcom/buzzfeed/android/ui/comments/CommentLayout;

    .line 20
    return-void
.end method


# virtual methods
.method public update(Ljava/util/Observable;Ljava/lang/Object;)V
    .registers 5
    .param p1, "observable"    # Ljava/util/Observable;
    .param p2, "data"    # Ljava/lang/Object;

    .prologue
    .line 24
    instance-of v1, p2, Ljava/lang/String;

    if-eqz v1, :cond_14

    move-object v0, p2

    .line 25
    check-cast v0, Ljava/lang/String;

    .line 26
    .local v0, "id":Ljava/lang/String;
    iget-object v1, p0, Lcom/buzzfeed/android/ui/comments/CommentsChangeObserver;->mListId:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 27
    iget-object v1, p0, Lcom/buzzfeed/android/ui/comments/CommentsChangeObserver;->mCommentLayout:Lcom/buzzfeed/android/ui/comments/CommentLayout;

    invoke-virtual {v1}, Lcom/buzzfeed/android/ui/comments/CommentLayout;->reloadBuzzFeedComments()V

    .line 30
    .end local v0    # "id":Ljava/lang/String;
    :cond_14
    return-void
.end method
