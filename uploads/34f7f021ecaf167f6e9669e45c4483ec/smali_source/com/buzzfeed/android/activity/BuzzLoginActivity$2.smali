.class Lcom/buzzfeed/android/activity/BuzzLoginActivity$2;
.super Ljava/lang/Object;
.source "BuzzLoginActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/buzzfeed/android/activity/BuzzLoginActivity;->showInvalidLoginDialog()V
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
    .line 282
    iput-object p1, p0, Lcom/buzzfeed/android/activity/BuzzLoginActivity$2;->this$0:Lcom/buzzfeed/android/activity/BuzzLoginActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 284
    iget-object v0, p0, Lcom/buzzfeed/android/activity/BuzzLoginActivity$2;->this$0:Lcom/buzzfeed/android/activity/BuzzLoginActivity;

    invoke-virtual {v0}, Lcom/buzzfeed/android/activity/BuzzLoginActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_25

    .line 285
    iget-object v0, p0, Lcom/buzzfeed/android/activity/BuzzLoginActivity$2;->this$0:Lcom/buzzfeed/android/activity/BuzzLoginActivity;

    iget-object v1, p0, Lcom/buzzfeed/android/activity/BuzzLoginActivity$2;->this$0:Lcom/buzzfeed/android/activity/BuzzLoginActivity;

    const v2, 0x7f090091

    const v3, 0x7f090085

    # invokes: Lcom/buzzfeed/android/activity/BuzzLoginActivity;->assembleDefaultAlertDialog(II)Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog$Builder;
    invoke-static {v1, v2, v3}, Lcom/buzzfeed/android/activity/BuzzLoginActivity;->access$200(Lcom/buzzfeed/android/activity/BuzzLoginActivity;II)Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0900cd

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v1

    # invokes: Lcom/buzzfeed/android/activity/BuzzLoginActivity;->showAlertDialog(Landroid/support/v7/app/AlertDialog;)V
    invoke-static {v0, v1}, Lcom/buzzfeed/android/activity/BuzzLoginActivity;->access$300(Lcom/buzzfeed/android/activity/BuzzLoginActivity;Landroid/support/v7/app/AlertDialog;)V

    .line 287
    :cond_25
    return-void
.end method
