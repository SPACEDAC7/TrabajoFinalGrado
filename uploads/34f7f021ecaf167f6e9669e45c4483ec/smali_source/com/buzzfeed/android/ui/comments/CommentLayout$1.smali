.class Lcom/buzzfeed/android/ui/comments/CommentLayout$1;
.super Ljava/lang/Object;
.source "CommentLayout.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/buzzfeed/android/ui/comments/CommentLayout;->initialize()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/buzzfeed/android/ui/comments/CommentLayout;


# direct methods
.method constructor <init>(Lcom/buzzfeed/android/ui/comments/CommentLayout;)V
    .registers 2
    .param p1, "this$0"    # Lcom/buzzfeed/android/ui/comments/CommentLayout;

    .prologue
    .line 125
    iput-object p1, p0, Lcom/buzzfeed/android/ui/comments/CommentLayout$1;->this$0:Lcom/buzzfeed/android/ui/comments/CommentLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 8
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 128
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/buzzfeed/android/ui/comments/CommentLayout$1;->this$0:Lcom/buzzfeed/android/ui/comments/CommentLayout;

    const/4 v1, 0x1

    # setter for: Lcom/buzzfeed/android/ui/comments/CommentLayout;->mIsShowingComments:Z
    invoke-static {v0, v1}, Lcom/buzzfeed/android/ui/comments/CommentLayout;->access$002(Lcom/buzzfeed/android/ui/comments/CommentLayout;Z)Z

    .line 129
    iget-object v0, p0, Lcom/buzzfeed/android/ui/comments/CommentLayout$1;->this$0:Lcom/buzzfeed/android/ui/comments/CommentLayout;

    # invokes: Lcom/buzzfeed/android/ui/comments/CommentLayout;->onSwitchCommentType(I)V
    invoke-static {v0, p3}, Lcom/buzzfeed/android/ui/comments/CommentLayout;->access$100(Lcom/buzzfeed/android/ui/comments/CommentLayout;I)V

    .line 130
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 135
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    return-void
.end method
