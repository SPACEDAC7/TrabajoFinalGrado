.class Lcom/buzzfeed/android/ui/debugsettings/DebugSettingsFragment$11$1;
.super Lcom/buzzfeed/androidabframework/ui/SettingsDialog;
.source "DebugSettingsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/buzzfeed/android/ui/debugsettings/DebugSettingsFragment$11;->onPreferenceClick(Landroid/preference/Preference;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/buzzfeed/android/ui/debugsettings/DebugSettingsFragment$11;


# direct methods
.method constructor <init>(Lcom/buzzfeed/android/ui/debugsettings/DebugSettingsFragment$11;)V
    .registers 2
    .param p1, "this$1"    # Lcom/buzzfeed/android/ui/debugsettings/DebugSettingsFragment$11;

    .prologue
    .line 332
    iput-object p1, p0, Lcom/buzzfeed/android/ui/debugsettings/DebugSettingsFragment$11$1;->this$1:Lcom/buzzfeed/android/ui/debugsettings/DebugSettingsFragment$11;

    invoke-direct {p0}, Lcom/buzzfeed/androidabframework/ui/SettingsDialog;-><init>()V

    return-void
.end method


# virtual methods
.method public onExperimentTemporarySettingsChanged(Ljava/lang/String;)V
    .registers 4
    .param p1, "experimentName"    # Ljava/lang/String;

    .prologue
    .line 335
    iget-object v0, p0, Lcom/buzzfeed/android/ui/debugsettings/DebugSettingsFragment$11$1;->this$1:Lcom/buzzfeed/android/ui/debugsettings/DebugSettingsFragment$11;

    iget-object v0, v0, Lcom/buzzfeed/android/ui/debugsettings/DebugSettingsFragment$11;->this$0:Lcom/buzzfeed/android/ui/debugsettings/DebugSettingsFragment;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/buzzfeed/android/ui/debugsettings/DebugSettingsFragment;->setAppShouldReset(Z)V

    .line 336
    return-void
.end method
