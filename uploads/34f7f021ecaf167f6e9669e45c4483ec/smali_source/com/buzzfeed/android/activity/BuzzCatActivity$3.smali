.class Lcom/buzzfeed/android/activity/BuzzCatActivity$3;
.super Ljava/lang/Object;
.source "BuzzCatActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/buzzfeed/android/activity/BuzzCatActivity;->showSingleButtonDialog(Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/buzzfeed/android/activity/BuzzCatActivity;

.field final synthetic val$callback:Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method constructor <init>(Lcom/buzzfeed/android/activity/BuzzCatActivity;Landroid/content/DialogInterface$OnClickListener;)V
    .registers 3
    .param p1, "this$0"    # Lcom/buzzfeed/android/activity/BuzzCatActivity;

    .prologue
    .line 84
    iput-object p1, p0, Lcom/buzzfeed/android/activity/BuzzCatActivity$3;->this$0:Lcom/buzzfeed/android/activity/BuzzCatActivity;

    iput-object p2, p0, Lcom/buzzfeed/android/activity/BuzzCatActivity$3;->val$callback:Landroid/content/DialogInterface$OnClickListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 87
    iget-object v0, p0, Lcom/buzzfeed/android/activity/BuzzCatActivity$3;->val$callback:Landroid/content/DialogInterface$OnClickListener;

    invoke-interface {v0, p1, p2}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    .line 88
    iget-object v0, p0, Lcom/buzzfeed/android/activity/BuzzCatActivity$3;->this$0:Lcom/buzzfeed/android/activity/BuzzCatActivity;

    # getter for: Lcom/buzzfeed/android/activity/BuzzCatActivity;->mResumeGameAlertDialog:Landroid/support/v7/app/AlertDialog;
    invoke-static {v0}, Lcom/buzzfeed/android/activity/BuzzCatActivity;->access$100(Lcom/buzzfeed/android/activity/BuzzCatActivity;)Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    if-eqz v0, :cond_16

    .line 89
    iget-object v0, p0, Lcom/buzzfeed/android/activity/BuzzCatActivity$3;->this$0:Lcom/buzzfeed/android/activity/BuzzCatActivity;

    # getter for: Lcom/buzzfeed/android/activity/BuzzCatActivity;->mResumeGameAlertDialog:Landroid/support/v7/app/AlertDialog;
    invoke-static {v0}, Lcom/buzzfeed/android/activity/BuzzCatActivity;->access$100(Lcom/buzzfeed/android/activity/BuzzCatActivity;)Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->dismiss()V

    .line 91
    :cond_16
    return-void
.end method
