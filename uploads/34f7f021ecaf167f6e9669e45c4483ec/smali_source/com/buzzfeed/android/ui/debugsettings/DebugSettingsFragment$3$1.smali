.class Lcom/buzzfeed/android/ui/debugsettings/DebugSettingsFragment$3$1;
.super Ljava/lang/Object;
.source "DebugSettingsFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/buzzfeed/android/ui/debugsettings/DebugSettingsFragment$3;->onPreferenceClick(Landroid/preference/Preference;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/buzzfeed/android/ui/debugsettings/DebugSettingsFragment$3;

.field final synthetic val$trackingData:Ljava/lang/StringBuilder;


# direct methods
.method constructor <init>(Lcom/buzzfeed/android/ui/debugsettings/DebugSettingsFragment$3;Ljava/lang/StringBuilder;)V
    .registers 3
    .param p1, "this$1"    # Lcom/buzzfeed/android/ui/debugsettings/DebugSettingsFragment$3;

    .prologue
    .line 196
    iput-object p1, p0, Lcom/buzzfeed/android/ui/debugsettings/DebugSettingsFragment$3$1;->this$1:Lcom/buzzfeed/android/ui/debugsettings/DebugSettingsFragment$3;

    iput-object p2, p0, Lcom/buzzfeed/android/ui/debugsettings/DebugSettingsFragment$3$1;->val$trackingData:Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 10
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 199
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.SEND"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 200
    .local v2, "sharingIntent":Landroid/content/Intent;
    const-string/jumbo v3, "text/plain"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 201
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 202
    .local v0, "now":Ljava/util/Calendar;
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v3, "HH:mm:ss"

    invoke-direct {v1, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 203
    .local v1, "sdf":Ljava/text/SimpleDateFormat;
    const-string v3, "android.intent.extra.SUBJECT"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/buzzfeed/android/ui/debugsettings/DebugSettingsFragment$3$1;->this$1:Lcom/buzzfeed/android/ui/debugsettings/DebugSettingsFragment$3;

    iget-object v5, v5, Lcom/buzzfeed/android/ui/debugsettings/DebugSettingsFragment$3;->this$0:Lcom/buzzfeed/android/ui/debugsettings/DebugSettingsFragment;

    const v6, 0x7f0902c5

    invoke-virtual {v5, v6}, Lcom/buzzfeed/android/ui/debugsettings/DebugSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 204
    const-string v3, "android.intent.extra.TEXT"

    iget-object v4, p0, Lcom/buzzfeed/android/ui/debugsettings/DebugSettingsFragment$3$1;->val$trackingData:Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 205
    iget-object v3, p0, Lcom/buzzfeed/android/ui/debugsettings/DebugSettingsFragment$3$1;->this$1:Lcom/buzzfeed/android/ui/debugsettings/DebugSettingsFragment$3;

    iget-object v3, v3, Lcom/buzzfeed/android/ui/debugsettings/DebugSettingsFragment$3;->this$0:Lcom/buzzfeed/android/ui/debugsettings/DebugSettingsFragment;

    iget-object v4, p0, Lcom/buzzfeed/android/ui/debugsettings/DebugSettingsFragment$3$1;->this$1:Lcom/buzzfeed/android/ui/debugsettings/DebugSettingsFragment$3;

    iget-object v4, v4, Lcom/buzzfeed/android/ui/debugsettings/DebugSettingsFragment$3;->this$0:Lcom/buzzfeed/android/ui/debugsettings/DebugSettingsFragment;

    const v5, 0x7f0900ec

    invoke-virtual {v4, v5}, Lcom/buzzfeed/android/ui/debugsettings/DebugSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/buzzfeed/android/ui/debugsettings/DebugSettingsFragment;->startActivity(Landroid/content/Intent;)V

    .line 206
    return-void
.end method
