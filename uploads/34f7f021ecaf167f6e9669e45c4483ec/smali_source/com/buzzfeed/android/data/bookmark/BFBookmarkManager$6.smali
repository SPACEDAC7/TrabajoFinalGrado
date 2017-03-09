.class final Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager$6;
.super Ljava/lang/Object;
.source "BFBookmarkManager.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager;->showNotSignedInDialog(Lcom/buzzfeed/android/activity/SpicyActivity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$activity:Lcom/buzzfeed/android/activity/SpicyActivity;


# direct methods
.method constructor <init>(Lcom/buzzfeed/android/activity/SpicyActivity;)V
    .registers 2

    .prologue
    .line 837
    iput-object p1, p0, Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager$6;->val$activity:Lcom/buzzfeed/android/activity/SpicyActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 7
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
    .line 840
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    packed-switch p3, :pswitch_data_18

    .line 847
    :goto_3
    # getter for: Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager;->mCurrentAlertDialog:Landroid/support/v7/app/AlertDialog;
    invoke-static {}, Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager;->access$800()Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    if-eqz v0, :cond_10

    .line 848
    # getter for: Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager;->mCurrentAlertDialog:Landroid/support/v7/app/AlertDialog;
    invoke-static {}, Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager;->access$800()Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->dismiss()V

    .line 850
    :cond_10
    return-void

    .line 842
    :pswitch_11
    iget-object v0, p0, Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager$6;->val$activity:Lcom/buzzfeed/android/activity/SpicyActivity;

    invoke-virtual {v0}, Lcom/buzzfeed/android/activity/SpicyActivity;->startLoginActivityForResult()V

    goto :goto_3

    .line 840
    nop

    :pswitch_data_18
    .packed-switch 0x0
        :pswitch_11
    .end packed-switch
.end method
