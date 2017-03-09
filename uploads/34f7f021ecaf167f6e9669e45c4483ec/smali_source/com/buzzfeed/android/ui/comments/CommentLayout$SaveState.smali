.class Lcom/buzzfeed/android/ui/comments/CommentLayout$SaveState;
.super Landroid/view/View$BaseSavedState;
.source "CommentLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/buzzfeed/android/ui/comments/CommentLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SaveState"
.end annotation


# static fields
.field protected static final STATE:Ljava/lang/String; = "SaveState.STATE"


# instance fields
.field public isShowingComments:Z

.field public selectedCommentTypePosition:I


# direct methods
.method public constructor <init>(Landroid/os/Parcelable;)V
    .registers 2
    .param p1, "superState"    # Landroid/os/Parcelable;

    .prologue
    .line 476
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 477
    return-void
.end method
