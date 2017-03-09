.class Lcom/buzzfeed/android/ui/debugsettings/AbstractEnumDialogPreference$1;
.super Ljava/lang/Object;
.source "AbstractEnumDialogPreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/buzzfeed/android/ui/debugsettings/AbstractEnumDialogPreference;->showDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/buzzfeed/android/ui/debugsettings/AbstractEnumDialogPreference;


# direct methods
.method constructor <init>(Lcom/buzzfeed/android/ui/debugsettings/AbstractEnumDialogPreference;)V
    .registers 2
    .param p1, "this$0"    # Lcom/buzzfeed/android/ui/debugsettings/AbstractEnumDialogPreference;

    .prologue
    .line 98
    .local p0, "this":Lcom/buzzfeed/android/ui/debugsettings/AbstractEnumDialogPreference$1;, "Lcom/buzzfeed/android/ui/debugsettings/AbstractEnumDialogPreference$1;"
    iput-object p1, p0, Lcom/buzzfeed/android/ui/debugsettings/AbstractEnumDialogPreference$1;->this$0:Lcom/buzzfeed/android/ui/debugsettings/AbstractEnumDialogPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .registers 4
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;

    .prologue
    .line 102
    .local p0, "this":Lcom/buzzfeed/android/ui/debugsettings/AbstractEnumDialogPreference$1;, "Lcom/buzzfeed/android/ui/debugsettings/AbstractEnumDialogPreference$1;"
    iget-object v0, p0, Lcom/buzzfeed/android/ui/debugsettings/AbstractEnumDialogPreference$1;->this$0:Lcom/buzzfeed/android/ui/debugsettings/AbstractEnumDialogPreference;

    const/4 v1, 0x0

    # setter for: Lcom/buzzfeed/android/ui/debugsettings/AbstractEnumDialogPreference;->mAlertDialog:Landroid/support/v7/app/AlertDialog;
    invoke-static {v0, v1}, Lcom/buzzfeed/android/ui/debugsettings/AbstractEnumDialogPreference;->access$002(Lcom/buzzfeed/android/ui/debugsettings/AbstractEnumDialogPreference;Landroid/support/v7/app/AlertDialog;)Landroid/support/v7/app/AlertDialog;

    .line 103
    return-void
.end method
