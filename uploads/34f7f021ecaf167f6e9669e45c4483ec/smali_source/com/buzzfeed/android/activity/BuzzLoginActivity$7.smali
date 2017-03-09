.class Lcom/buzzfeed/android/activity/BuzzLoginActivity$7;
.super Ljava/lang/Object;
.source "BuzzLoginActivity.java"

# interfaces
.implements Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager$SyncCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/buzzfeed/android/activity/BuzzLoginActivity;->onPostLogin(Lcom/buzzfeed/android/data/BuzzUser;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/buzzfeed/android/activity/BuzzLoginActivity;


# direct methods
.method constructor <init>(Lcom/buzzfeed/android/activity/BuzzLoginActivity;)V
    .registers 2
    .param p1, "this$0"    # Lcom/buzzfeed/android/activity/BuzzLoginActivity;

    .prologue
    .line 706
    iput-object p1, p0, Lcom/buzzfeed/android/activity/BuzzLoginActivity$7;->this$0:Lcom/buzzfeed/android/activity/BuzzLoginActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBookmarkSyncCompleted()V
    .registers 4

    .prologue
    .line 709
    iget-object v0, p0, Lcom/buzzfeed/android/activity/BuzzLoginActivity$7;->this$0:Lcom/buzzfeed/android/activity/BuzzLoginActivity;

    invoke-virtual {v0}, Lcom/buzzfeed/android/activity/BuzzLoginActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_d

    .line 710
    iget-object v0, p0, Lcom/buzzfeed/android/activity/BuzzLoginActivity$7;->this$0:Lcom/buzzfeed/android/activity/BuzzLoginActivity;

    # invokes: Lcom/buzzfeed/android/activity/BuzzLoginActivity;->dismissCurrentDialog()V
    invoke-static {v0}, Lcom/buzzfeed/android/activity/BuzzLoginActivity;->access$900(Lcom/buzzfeed/android/activity/BuzzLoginActivity;)V

    .line 712
    :cond_d
    iget-object v0, p0, Lcom/buzzfeed/android/activity/BuzzLoginActivity$7;->this$0:Lcom/buzzfeed/android/activity/BuzzLoginActivity;

    const/4 v1, -0x1

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/buzzfeed/android/activity/BuzzLoginActivity;->setResult(ILandroid/content/Intent;)V

    .line 713
    iget-object v0, p0, Lcom/buzzfeed/android/activity/BuzzLoginActivity$7;->this$0:Lcom/buzzfeed/android/activity/BuzzLoginActivity;

    invoke-virtual {v0}, Lcom/buzzfeed/android/activity/BuzzLoginActivity;->finish()V

    .line 714
    return-void
.end method

.method public onBookmarkSyncError(Ljava/lang/Exception;)V
    .registers 2
    .param p1, "e"    # Ljava/lang/Exception;

    .prologue
    .line 719
    return-void
.end method
