.class final Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager$7;
.super Ljava/lang/Object;
.source "BFBookmarkManager.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager;->showSaveYourBookmarksDialogLogIn(Landroid/app/Activity;Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager$BookmarkChangeListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$changeListener:Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager$BookmarkChangeListener;


# direct methods
.method constructor <init>(Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager$BookmarkChangeListener;Landroid/app/Activity;)V
    .registers 3

    .prologue
    .line 867
    iput-object p1, p0, Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager$7;->val$changeListener:Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager$BookmarkChangeListener;

    iput-object p2, p0, Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager$7;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
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
    .line 870
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    packed-switch p3, :pswitch_data_20

    .line 878
    :goto_3
    # getter for: Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager;->mCurrentAlertDialog:Landroid/support/v7/app/AlertDialog;
    invoke-static {}, Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager;->access$800()Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    if-eqz v0, :cond_10

    .line 879
    # getter for: Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager;->mCurrentAlertDialog:Landroid/support/v7/app/AlertDialog;
    invoke-static {}, Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager;->access$800()Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->dismiss()V

    .line 881
    :cond_10
    return-void

    .line 872
    :pswitch_11
    iget-object v0, p0, Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager$7;->val$changeListener:Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager$BookmarkChangeListener;

    invoke-interface {v0}, Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager$BookmarkChangeListener;->onLoginRequest()V

    goto :goto_3

    .line 875
    :pswitch_17
    iget-object v0, p0, Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager$7;->val$activity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager$7;->val$changeListener:Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager$BookmarkChangeListener;

    # invokes: Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager;->showSecondWarningBookmarkDialog(Landroid/app/Activity;Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager$BookmarkChangeListener;)V
    invoke-static {v0, v1}, Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager;->access$900(Landroid/app/Activity;Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager$BookmarkChangeListener;)V

    goto :goto_3

    .line 870
    nop

    :pswitch_data_20
    .packed-switch 0x0
        :pswitch_11
        :pswitch_17
    .end packed-switch
.end method
