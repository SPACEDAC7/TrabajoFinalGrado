.class public Lcom/buzzfeed/android/ui/comments/CommentReplyView;
.super Lcom/buzzfeed/android/ui/comments/CommentItemView;
.source "CommentReplyView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 11
    invoke-direct {p0, p1}, Lcom/buzzfeed/android/ui/comments/CommentItemView;-><init>(Landroid/content/Context;)V

    .line 12
    return-void
.end method


# virtual methods
.method protected getLayoutResourceId()I
    .registers 2

    .prologue
    .line 16
    const v0, 0x7f030053

    return v0
.end method
