.class Lcom/buzzfeed/android/ui/debugsettings/DebugSettingsFragment$1;
.super Ljava/lang/Object;
.source "DebugSettingsFragment.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/buzzfeed/android/ui/debugsettings/DebugSettingsFragment;
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
    .line 49
    iput-object p1, p0, Lcom/buzzfeed/android/ui/debugsettings/DebugSettingsFragment$1;->this$0:Lcom/buzzfeed/android/ui/debugsettings/DebugSettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .registers 5
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    .line 52
    iget-object v0, p0, Lcom/buzzfeed/android/ui/debugsettings/DebugSettingsFragment$1;->this$0:Lcom/buzzfeed/android/ui/debugsettings/DebugSettingsFragment;

    invoke-virtual {v0, v1}, Lcom/buzzfeed/android/ui/debugsettings/DebugSettingsFragment;->setAppShouldReset(Z)V

    .line 53
    return v1
.end method
