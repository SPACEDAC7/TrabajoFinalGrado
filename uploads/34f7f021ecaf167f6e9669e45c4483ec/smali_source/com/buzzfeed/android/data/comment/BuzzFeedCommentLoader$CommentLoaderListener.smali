.class public interface abstract Lcom/buzzfeed/android/data/comment/BuzzFeedCommentLoader$CommentLoaderListener;
.super Ljava/lang/Object;
.source "BuzzFeedCommentLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/buzzfeed/android/data/comment/BuzzFeedCommentLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "CommentLoaderListener"
.end annotation


# virtual methods
.method public abstract onCommentLoadComplete(ZII)V
.end method

.method public abstract onFailure(Ljava/lang/String;Lcom/buzzfeed/android/data/comment/Comment;)V
.end method

.method public abstract onSuccess(Ljava/lang/String;Lcom/buzzfeed/android/data/comment/Comment;)V
.end method
