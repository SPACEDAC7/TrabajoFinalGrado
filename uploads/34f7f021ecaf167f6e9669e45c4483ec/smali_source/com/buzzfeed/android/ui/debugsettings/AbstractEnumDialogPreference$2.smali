.class Lcom/buzzfeed/android/ui/debugsettings/AbstractEnumDialogPreference$2;
.super Ljava/lang/Object;
.source "AbstractEnumDialogPreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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
    .line 91
    .local p0, "this":Lcom/buzzfeed/android/ui/debugsettings/AbstractEnumDialogPreference$2;, "Lcom/buzzfeed/android/ui/debugsettings/AbstractEnumDialogPreference$2;"
    iput-object p1, p0, Lcom/buzzfeed/android/ui/debugsettings/AbstractEnumDialogPreference$2;->this$0:Lcom/buzzfeed/android/ui/debugsettings/AbstractEnumDialogPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 95
    .local p0, "this":Lcom/buzzfeed/android/ui/debugsettings/AbstractEnumDialogPreference$2;, "Lcom/buzzfeed/android/ui/debugsettings/AbstractEnumDialogPreference$2;"
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 96
    return-void
.end method
