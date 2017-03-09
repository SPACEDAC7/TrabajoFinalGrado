.class Lcom/buzzfeed/android/ui/preference/NetworkLoggingDialogPreference$2;
.super Ljava/lang/Object;
.source "NetworkLoggingDialogPreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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
    .line 81
    iput-object p1, p0, Lcom/buzzfeed/android/ui/preference/NetworkLoggingDialogPreference$2;->this$0:Lcom/buzzfeed/android/ui/preference/NetworkLoggingDialogPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 84
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 85
    return-void
.end method
