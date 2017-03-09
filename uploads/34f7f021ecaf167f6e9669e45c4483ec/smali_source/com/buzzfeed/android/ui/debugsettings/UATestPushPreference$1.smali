.class Lcom/buzzfeed/android/ui/debugsettings/UATestPushPreference$1;
.super Ljava/lang/Object;
.source "UATestPushPreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/buzzfeed/android/ui/debugsettings/UATestPushPreference;->showDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/buzzfeed/android/ui/debugsettings/UATestPushPreference;


# direct methods
.method constructor <init>(Lcom/buzzfeed/android/ui/debugsettings/UATestPushPreference;)V
    .registers 2
    .param p1, "this$0"    # Lcom/buzzfeed/android/ui/debugsettings/UATestPushPreference;

    .prologue
    .line 122
    iput-object p1, p0, Lcom/buzzfeed/android/ui/debugsettings/UATestPushPreference$1;->this$0:Lcom/buzzfeed/android/ui/debugsettings/UATestPushPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .registers 4
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;

    .prologue
    .line 126
    iget-object v0, p0, Lcom/buzzfeed/android/ui/debugsettings/UATestPushPreference$1;->this$0:Lcom/buzzfeed/android/ui/debugsettings/UATestPushPreference;

    const/4 v1, 0x0

    # setter for: Lcom/buzzfeed/android/ui/debugsettings/UATestPushPreference;->mAlertDialog:Landroid/support/v7/app/AlertDialog;
    invoke-static {v0, v1}, Lcom/buzzfeed/android/ui/debugsettings/UATestPushPreference;->access$002(Lcom/buzzfeed/android/ui/debugsettings/UATestPushPreference;Landroid/support/v7/app/AlertDialog;)Landroid/support/v7/app/AlertDialog;

    .line 127
    return-void
.end method
