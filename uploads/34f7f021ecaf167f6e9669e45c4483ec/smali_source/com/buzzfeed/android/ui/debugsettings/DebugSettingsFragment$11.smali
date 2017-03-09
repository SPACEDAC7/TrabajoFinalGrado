.class Lcom/buzzfeed/android/ui/debugsettings/DebugSettingsFragment$11;
.super Ljava/lang/Object;
.source "DebugSettingsFragment.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/buzzfeed/android/ui/debugsettings/DebugSettingsFragment;->initPreferences()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/buzzfeed/android/ui/debugsettings/DebugSettingsFragment;


# direct methods
.method constructor <init>(Lcom/buzzfeed/android/ui/debugsettings/DebugSettingsFragment;)V
    .registers 2
    .param p1, "this$0"    # Lcom/buzzfeed/android/ui/debugsettings/DebugSettingsFragment;

    .prologue
    .line 329
    iput-object p1, p0, Lcom/buzzfeed/android/ui/debugsettings/DebugSettingsFragment$11;->this$0:Lcom/buzzfeed/android/ui/debugsettings/DebugSettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .registers 4
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 332
    new-instance v0, Lcom/buzzfeed/android/ui/debugsettings/DebugSettingsFragment$11$1;

    invoke-direct {v0, p0}, Lcom/buzzfeed/android/ui/debugsettings/DebugSettingsFragment$11$1;-><init>(Lcom/buzzfeed/android/ui/debugsettings/DebugSettingsFragment$11;)V

    .line 338
    .local v0, "settingsDialog":Lcom/buzzfeed/androidabframework/ui/SettingsDialog;
    iget-object v1, p0, Lcom/buzzfeed/android/ui/debugsettings/DebugSettingsFragment$11;->this$0:Lcom/buzzfeed/android/ui/debugsettings/DebugSettingsFragment;

    invoke-virtual {v1}, Lcom/buzzfeed/android/ui/debugsettings/DebugSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/buzzfeed/androidabframework/ui/SettingsDialog;->create(Landroid/content/Context;)Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 339
    const/4 v1, 0x1

    return v1
.end method
