.class final Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager$9;
.super Ljava/lang/Object;
.source "BFBookmarkManager.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager;->showSecondWarningBookmarkDialog(Landroid/app/Activity;Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager$BookmarkChangeListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$changeListener:Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager$BookmarkChangeListener;


# direct methods
.method constructor <init>(Landroid/app/Activity;Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager$BookmarkChangeListener;)V
    .registers 3

    .prologue
    .line 902
    iput-object p1, p0, Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager$9;->val$activity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager$9;->val$changeListener:Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager$BookmarkChangeListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 6
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 905
    # getter for: Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager;->bookmarkManager:Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager;
    invoke-static {}, Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager;->access$1000()Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager;->resetBookmarks()V

    .line 906
    iget-object v1, p0, Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager$9;->val$activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    .line 907
    .local v0, "rootView":Landroid/view/View;
    iget-object v1, p0, Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager$9;->val$activity:Landroid/app/Activity;

    const v2, 0x7f090077

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/buzzfeed/android/util/BuzzUtils;->showSnackBarNotification(Landroid/view/View;Ljava/lang/String;I)V

    .line 908
    iget-object v1, p0, Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager$9;->val$changeListener:Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager$BookmarkChangeListener;

    if-eqz v1, :cond_2b

    .line 909
    iget-object v1, p0, Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager$9;->val$changeListener:Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager$BookmarkChangeListener;

    invoke-interface {v1}, Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager$BookmarkChangeListener;->onBookmarksChanged()V

    .line 911
    :cond_2b
    return-void
.end method
