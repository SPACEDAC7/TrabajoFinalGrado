.class Lcom/buzzfeed/android/ui/debugsettings/DebugSettingsFragment$10;
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
    .line 317
    iput-object p1, p0, Lcom/buzzfeed/android/ui/debugsettings/DebugSettingsFragment$10;->this$0:Lcom/buzzfeed/android/ui/debugsettings/DebugSettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .registers 4
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 320
    iget-object v0, p0, Lcom/buzzfeed/android/ui/debugsettings/DebugSettingsFragment$10;->this$0:Lcom/buzzfeed/android/ui/debugsettings/DebugSettingsFragment;

    invoke-virtual {v0}, Lcom/buzzfeed/android/ui/debugsettings/DebugSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/buzzfeed/android/util/BFRateMe;->getInstance(Landroid/content/Context;)Lcom/buzzfeed/android/util/BFRateMe;

    move-result-object v1

    iget-object v0, p0, Lcom/buzzfeed/android/ui/debugsettings/DebugSettingsFragment$10;->this$0:Lcom/buzzfeed/android/ui/debugsettings/DebugSettingsFragment;

    invoke-virtual {v0}, Lcom/buzzfeed/android/ui/debugsettings/DebugSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/buzzfeed/android/activity/BaseActivity;

    invoke-virtual {v1, v0}, Lcom/buzzfeed/android/util/BFRateMe;->forceShowRateMeDialog(Lcom/buzzfeed/android/activity/BaseActivity;)V

    .line 321
    const/4 v0, 0x0

    return v0
.end method
