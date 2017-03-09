.class public interface abstract Lcom/buzzfeed/android/data/comment/CommentListCache;
.super Ljava/lang/Object;
.source "CommentListCache.java"


# virtual methods
.method public abstract addComment(Lcom/buzzfeed/android/data/comment/Comment;Ljava/lang/String;)V
.end method

.method public abstract addObserver(Ljava/util/Observer;)V
.end method

.method public abstract deleteAllObservers()V
.end method

.method public abstract deleteObserver(Ljava/util/Observer;)V
.end method

.method public abstract getComment(Ljava/lang/String;Ljava/lang/String;)Lcom/buzzfeed/android/data/comment/Comment;
.end method

.method public abstract getCommentList(Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/buzzfeed/android/data/comment/Comment;",
            ">;"
        }
    .end annotation
.end method

.method public abstract putCommentList(Ljava/lang/String;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/buzzfeed/android/data/comment/Comment;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract removeCommentList(Ljava/lang/String;)V
.end method

.method public abstract replaceComment(Lcom/buzzfeed/android/data/comment/Comment;Ljava/lang/String;)V
.end method
