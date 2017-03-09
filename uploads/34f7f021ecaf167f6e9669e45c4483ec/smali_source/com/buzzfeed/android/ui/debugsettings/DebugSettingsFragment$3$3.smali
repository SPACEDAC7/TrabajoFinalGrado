.class Lcom/buzzfeed/android/ui/debugsettings/DebugSettingsFragment$3$3;
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


# direct methods
.method constructor <init>(Lcom/buzzfeed/android/ui/debugsettings/DebugSettingsFragment$3;)V
    .registers 2
    .param p1, "this$1"    # Lcom/buzzfeed/android/ui/debugsettings/DebugSettingsFragment$3;

    .prologue
    .line 185
    iput-object p1, p0, Lcom/buzzfeed/android/ui/debugsettings/DebugSettingsFragment$3$3;->this$1:Lcom/buzzfeed/android/ui/debugsettings/DebugSettingsFragment$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 6
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 188
    iget-object v0, p0, Lcom/buzzfeed/android/ui/debugsettings/DebugSettingsFragment$3$3;->this$1:Lcom/buzzfeed/android/ui/debugsettings/DebugSettingsFragment$3;

    iget-object v0, v0, Lcom/buzzfeed/android/ui/debugsettings/DebugSettingsFragment$3;->this$0:Lcom/buzzfeed/android/ui/debugsettings/DebugSettingsFragment;

    invoke-virtual {v0}, Lcom/buzzfeed/android/ui/debugsettings/DebugSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/buzzfeed/android/ui/debugsettings/DebugSettingsFragment$3$3;->this$1:Lcom/buzzfeed/android/ui/debugsettings/DebugSettingsFragment$3;

    iget-object v1, v1, Lcom/buzzfeed/android/ui/debugsettings/DebugSettingsFragment$3;->this$0:Lcom/buzzfeed/android/ui/debugsettings/DebugSettingsFragment;

    const v2, 0x7f0902c9

    invoke-virtual {v1, v2}, Lcom/buzzfeed/android/ui/debugsettings/DebugSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/buzzfeed/android/util/BuzzUtils;->showToastNotification(Landroid/app/Activity;Ljava/lang/String;I)V

    .line 189
    invoke-static {}, Lcom/buzzfeed/analytics/client/BuzzFeedTracker;->clearTrackList()V

    .line 190
    return-void
.end method
