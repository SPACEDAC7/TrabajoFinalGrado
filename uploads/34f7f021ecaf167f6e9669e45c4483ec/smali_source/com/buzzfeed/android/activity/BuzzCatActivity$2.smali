.class Lcom/buzzfeed/android/activity/BuzzCatActivity$2;
.super Ljava/lang/Object;
.source "BuzzCatActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/buzzfeed/android/activity/BuzzCatActivity;->showListDialog(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/widget/AdapterView$OnItemClickListener;Landroid/content/DialogInterface$OnCancelListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/buzzfeed/android/activity/BuzzCatActivity;

.field final synthetic val$callback:Landroid/widget/AdapterView$OnItemClickListener;

.field final synthetic val$type:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/buzzfeed/android/activity/BuzzCatActivity;Ljava/lang/String;Landroid/widget/AdapterView$OnItemClickListener;)V
    .registers 4
    .param p1, "this$0"    # Lcom/buzzfeed/android/activity/BuzzCatActivity;

    .prologue
    .line 64
    iput-object p1, p0, Lcom/buzzfeed/android/activity/BuzzCatActivity$2;->this$0:Lcom/buzzfeed/android/activity/BuzzCatActivity;

    iput-object p2, p0, Lcom/buzzfeed/android/activity/BuzzCatActivity$2;->val$type:Ljava/lang/String;

    iput-object p3, p0, Lcom/buzzfeed/android/activity/BuzzCatActivity$2;->val$callback:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 12
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
    .line 67
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/buzzfeed/android/activity/BuzzCatActivity$2;->this$0:Lcom/buzzfeed/android/activity/BuzzCatActivity;

    # getter for: Lcom/buzzfeed/android/activity/BuzzCatActivity;->mStartDialog:Landroid/support/v7/app/AlertDialog;
    invoke-static {v0}, Lcom/buzzfeed/android/activity/BuzzCatActivity;->access$000(Lcom/buzzfeed/android/activity/BuzzCatActivity;)Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/buzzfeed/android/activity/BuzzCatActivity$2;->val$type:Ljava/lang/String;

    const-string v1, "game_over"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    if-eqz p3, :cond_1d

    .line 68
    :cond_14
    iget-object v0, p0, Lcom/buzzfeed/android/activity/BuzzCatActivity$2;->this$0:Lcom/buzzfeed/android/activity/BuzzCatActivity;

    # getter for: Lcom/buzzfeed/android/activity/BuzzCatActivity;->mStartDialog:Landroid/support/v7/app/AlertDialog;
    invoke-static {v0}, Lcom/buzzfeed/android/activity/BuzzCatActivity;->access$000(Lcom/buzzfeed/android/activity/BuzzCatActivity;)Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->dismiss()V

    .line 70
    :cond_1d
    iget-object v0, p0, Lcom/buzzfeed/android/activity/BuzzCatActivity$2;->val$callback:Landroid/widget/AdapterView$OnItemClickListener;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemClickListener;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    .line 71
    return-void
.end method
