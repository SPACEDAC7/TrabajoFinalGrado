.class final Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager$8;
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
    .line 896
    iput-object p1, p0, Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager$8;->val$activity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager$8;->val$changeListener:Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager$BookmarkChangeListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 899
    iget-object v0, p0, Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager$8;->val$activity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager$8;->val$changeListener:Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager$BookmarkChangeListener;

    invoke-static {v0, v1}, Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager;->showSaveYourBookmarksDialogLogIn(Landroid/app/Activity;Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager$BookmarkChangeListener;)V

    .line 900
    return-void
.end method
