.class public Lcom/buzzfeed/android/data/comment/CommentListMapCache$CommentsCacheObservable;
.super Ljava/util/Observable;
.source "CommentListMapCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/buzzfeed/android/data/comment/CommentListMapCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CommentsCacheObservable"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 174
    invoke-direct {p0}, Ljava/util/Observable;-><init>()V

    return-void
.end method


# virtual methods
.method public setChangeFlag()V
    .registers 1

    .prologue
    .line 178
    invoke-virtual {p0}, Lcom/buzzfeed/android/data/comment/CommentListMapCache$CommentsCacheObservable;->setChanged()V

    .line 179
    return-void
.end method
