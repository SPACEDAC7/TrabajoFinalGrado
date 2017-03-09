.class Lcom/buzzfeed/android/ui/preference/NetworkLoggingDialogPreference$1;
.super Ljava/lang/Object;
.source "NetworkLoggingDialogPreference.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/buzzfeed/android/ui/preference/NetworkLoggingDialogPreference;->showDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/buzzfeed/android/ui/preference/NetworkLoggingDialogPreference;


# direct methods
.method constructor <init>(Lcom/buzzfeed/android/ui/preference/NetworkLoggingDialogPreference;)V
    .registers 2
    .param p1, "this$0"    # Lcom/buzzfeed/android/ui/preference/NetworkLoggingDialogPreference;

    .prologue
    .line 70
    iput-object p1, p0, Lcom/buzzfeed/android/ui/preference/NetworkLoggingDialogPreference$1;->this$0:Lcom/buzzfeed/android/ui/preference/NetworkLoggingDialogPreference;

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
    .line 73
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/buzzfeed/android/ui/preference/NetworkLoggingDialogPreference$1;->this$0:Lcom/buzzfeed/android/ui/preference/NetworkLoggingDialogPreference;

    # invokes: Lcom/buzzfeed/android/ui/preference/NetworkLoggingDialogPreference;->onClick(I)V
    invoke-static {v0, p3}, Lcom/buzzfeed/android/ui/preference/NetworkLoggingDialogPreference;->access$000(Lcom/buzzfeed/android/ui/preference/NetworkLoggingDialogPreference;I)V

    .line 74
    iget-object v0, p0, Lcom/buzzfeed/android/ui/preference/NetworkLoggingDialogPreference$1;->this$0:Lcom/buzzfeed/android/ui/preference/NetworkLoggingDialogPreference;

    # getter for: Lcom/buzzfeed/android/ui/preference/NetworkLoggingDialogPreference;->mCurDialog:Landroid/support/v7/app/AlertDialog;
    invoke-static {v0}, Lcom/buzzfeed/android/ui/preference/NetworkLoggingDialogPreference;->access$100(Lcom/buzzfeed/android/ui/preference/NetworkLoggingDialogPreference;)Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    if-eqz v0, :cond_16

    .line 75
    iget-object v0, p0, Lcom/buzzfeed/android/ui/preference/NetworkLoggingDialogPreference$1;->this$0:Lcom/buzzfeed/android/ui/preference/NetworkLoggingDialogPreference;

    # getter for: Lcom/buzzfeed/android/ui/preference/NetworkLoggingDialogPreference;->mCurDialog:Landroid/support/v7/app/AlertDialog;
    invoke-static {v0}, Lcom/buzzfeed/android/ui/preference/NetworkLoggingDialogPreference;->access$100(Lcom/buzzfeed/android/ui/preference/NetworkLoggingDialogPreference;)Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->dismiss()V

    .line 77
    :cond_16
    return-void
.end method
