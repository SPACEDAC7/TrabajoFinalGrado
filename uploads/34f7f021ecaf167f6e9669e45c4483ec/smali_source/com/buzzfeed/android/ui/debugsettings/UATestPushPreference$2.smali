.class Lcom/buzzfeed/android/ui/debugsettings/UATestPushPreference$2;
.super Ljava/lang/Object;
.source "UATestPushPreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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
    .line 115
    iput-object p1, p0, Lcom/buzzfeed/android/ui/debugsettings/UATestPushPreference$2;->this$0:Lcom/buzzfeed/android/ui/debugsettings/UATestPushPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 119
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 120
    return-void
.end method
