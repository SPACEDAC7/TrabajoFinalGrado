.class Lcom/buzzfeed/android/activity/CommentsActivity$1;
.super Ljava/lang/Object;
.source "CommentsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/buzzfeed/android/activity/CommentsActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/buzzfeed/android/activity/CommentsActivity;


# direct methods
.method constructor <init>(Lcom/buzzfeed/android/activity/CommentsActivity;)V
    .registers 2
    .param p1, "this$0"    # Lcom/buzzfeed/android/activity/CommentsActivity;

    .prologue
    .line 50
    iput-object p1, p0, Lcom/buzzfeed/android/activity/CommentsActivity$1;->this$0:Lcom/buzzfeed/android/activity/CommentsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/buzzfeed/android/activity/CommentsActivity$1;->this$0:Lcom/buzzfeed/android/activity/CommentsActivity;

    invoke-virtual {v0}, Lcom/buzzfeed/android/activity/CommentsActivity;->onBackPressed()V

    .line 54
    iget-object v0, p0, Lcom/buzzfeed/android/activity/CommentsActivity$1;->this$0:Lcom/buzzfeed/android/activity/CommentsActivity;

    const v1, 0x7f040018

    const v2, 0x7f04001b

    invoke-virtual {v0, v1, v2}, Lcom/buzzfeed/android/activity/CommentsActivity;->overridePendingTransition(II)V

    .line 55
    return-void
.end method
