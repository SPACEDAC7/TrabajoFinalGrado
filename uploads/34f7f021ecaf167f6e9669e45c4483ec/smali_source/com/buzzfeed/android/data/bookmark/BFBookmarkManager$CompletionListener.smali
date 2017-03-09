.class public interface abstract Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager$CompletionListener;
.super Ljava/lang/Object;
.source "BFBookmarkManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "CompletionListener"
.end annotation


# virtual methods
.method public abstract onBookmarkSyncCompleted(ZLjava/lang/Throwable;)V
.end method

.method public abstract onUploadBookmarksCompleted(Z)V
.end method
