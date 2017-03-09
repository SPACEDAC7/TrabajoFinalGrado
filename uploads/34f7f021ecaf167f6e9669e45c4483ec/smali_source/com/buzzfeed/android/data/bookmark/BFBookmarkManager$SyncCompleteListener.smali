.class public interface abstract Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager$SyncCompleteListener;
.super Ljava/lang/Object;
.source "BFBookmarkManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "SyncCompleteListener"
.end annotation


# virtual methods
.method public abstract onBookmarkSyncCompleted()V
.end method

.method public abstract onBookmarkSyncError(Ljava/lang/Exception;)V
.end method
