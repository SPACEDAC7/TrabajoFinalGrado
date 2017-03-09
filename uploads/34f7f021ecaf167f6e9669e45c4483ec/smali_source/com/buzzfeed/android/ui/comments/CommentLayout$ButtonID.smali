.class public final Lcom/buzzfeed/android/ui/comments/CommentLayout$ButtonID;
.super Ljava/lang/Object;
.source "CommentLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/buzzfeed/android/ui/comments/CommentLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ButtonID"
.end annotation


# static fields
.field public static final ADD_RESPONSE:I = 0x7f110133

.field public static final HATE:I = 0x7f110125

.field public static final HEART:I = 0x7f110123

.field public static final REPLY:I = 0x7f110121

.field public static final SHARE:I = 0x7f1100a6

.field public static final THUMBS_UP:I = 0x7f11012e


# instance fields
.field final synthetic this$0:Lcom/buzzfeed/android/ui/comments/CommentLayout;


# direct methods
.method public constructor <init>(Lcom/buzzfeed/android/ui/comments/CommentLayout;)V
    .registers 2
    .param p1, "this$0"    # Lcom/buzzfeed/android/ui/comments/CommentLayout;

    .prologue
    .line 44
    iput-object p1, p0, Lcom/buzzfeed/android/ui/comments/CommentLayout$ButtonID;->this$0:Lcom/buzzfeed/android/ui/comments/CommentLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
