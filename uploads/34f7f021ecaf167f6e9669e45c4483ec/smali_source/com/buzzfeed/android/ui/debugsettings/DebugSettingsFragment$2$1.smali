.class Lcom/buzzfeed/android/ui/debugsettings/DebugSettingsFragment$2$1;
.super Ljava/lang/Object;
.source "DebugSettingsFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/buzzfeed/android/ui/debugsettings/DebugSettingsFragment$2;->onPreferenceClick(Landroid/preference/Preference;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/buzzfeed/android/ui/debugsettings/DebugSettingsFragment$2;

.field final synthetic val$preference:Landroid/preference/Preference;


# direct methods
.method constructor <init>(Lcom/buzzfeed/android/ui/debugsettings/DebugSettingsFragment$2;Landroid/preference/Preference;)V
    .registers 3
    .param p1, "this$1"    # Lcom/buzzfeed/android/ui/debugsettings/DebugSettingsFragment$2;

    .prologue
    .line 130
    iput-object p1, p0, Lcom/buzzfeed/android/ui/debugsettings/DebugSettingsFragment$2$1;->this$1:Lcom/buzzfeed/android/ui/debugsettings/DebugSettingsFragment$2;

    iput-object p2, p0, Lcom/buzzfeed/android/ui/debugsettings/DebugSettingsFragment$2$1;->val$preference:Landroid/preference/Preference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 8
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 133
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/buzzfeed/android/ui/debugsettings/DebugSettingsFragment$2$1;->val$preference:Landroid/preference/Preference;

    iget-object v1, p0, Lcom/buzzfeed/android/ui/debugsettings/DebugSettingsFragment$2$1;->this$1:Lcom/buzzfeed/android/ui/debugsettings/DebugSettingsFragment$2;

    iget-object v1, v1, Lcom/buzzfeed/android/ui/debugsettings/DebugSettingsFragment$2;->val$servers:[Ljava/lang/String;

    aget-object v1, v1, p3

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 134
    invoke-static {p3}, Lcom/buzzfeed/toolkit/networking/Environment;->getEnvironmentWithPosition(I)Lcom/buzzfeed/toolkit/networking/Environment;

    move-result-object v0

    invoke-static {v0}, Lcom/buzzfeed/android/data/EnvironmentConfig;->setEnvironment(Lcom/buzzfeed/toolkit/networking/Environment;)V

    .line 135
    iget-object v0, p0, Lcom/buzzfeed/android/ui/debugsettings/DebugSettingsFragment$2$1;->this$1:Lcom/buzzfeed/android/ui/debugsettings/DebugSettingsFragment$2;

    iget-object v0, v0, Lcom/buzzfeed/android/ui/debugsettings/DebugSettingsFragment$2;->this$0:Lcom/buzzfeed/android/ui/debugsettings/DebugSettingsFragment;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/buzzfeed/android/ui/debugsettings/DebugSettingsFragment;->setAppShouldReset(Z)V

    .line 136
    iget-object v0, p0, Lcom/buzzfeed/android/ui/debugsettings/DebugSettingsFragment$2$1;->this$1:Lcom/buzzfeed/android/ui/debugsettings/DebugSettingsFragment$2;

    iget-object v0, v0, Lcom/buzzfeed/android/ui/debugsettings/DebugSettingsFragment$2;->this$0:Lcom/buzzfeed/android/ui/debugsettings/DebugSettingsFragment;

    # getter for: Lcom/buzzfeed/android/ui/debugsettings/DebugSettingsFragment;->mAlertDialog:Landroid/support/v7/app/AlertDialog;
    invoke-static {v0}, Lcom/buzzfeed/android/ui/debugsettings/DebugSettingsFragment;->access$000(Lcom/buzzfeed/android/ui/debugsettings/DebugSettingsFragment;)Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    if-eqz v0, :cond_37

    .line 137
    iget-object v0, p0, Lcom/buzzfeed/android/ui/debugsettings/DebugSettingsFragment$2$1;->this$1:Lcom/buzzfeed/android/ui/debugsettings/DebugSettingsFragment$2;

    iget-object v0, v0, Lcom/buzzfeed/android/ui/debugsettings/DebugSettingsFragment$2;->this$0:Lcom/buzzfeed/android/ui/debugsettings/DebugSettingsFragment;

    # getter for: Lcom/buzzfeed/android/ui/debugsettings/DebugSettingsFragment;->mAlertDialog:Landroid/support/v7/app/AlertDialog;
    invoke-static {v0}, Lcom/buzzfeed/android/ui/debugsettings/DebugSettingsFragment;->access$000(Lcom/buzzfeed/android/ui/debugsettings/DebugSettingsFragment;)Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->dismiss()V

    .line 138
    iget-object v0, p0, Lcom/buzzfeed/android/ui/debugsettings/DebugSettingsFragment$2$1;->this$1:Lcom/buzzfeed/android/ui/debugsettings/DebugSettingsFragment$2;

    iget-object v0, v0, Lcom/buzzfeed/android/ui/debugsettings/DebugSettingsFragment$2;->this$0:Lcom/buzzfeed/android/ui/debugsettings/DebugSettingsFragment;

    const/4 v1, 0x0

    # setter for: Lcom/buzzfeed/android/ui/debugsettings/DebugSettingsFragment;->mAlertDialog:Landroid/support/v7/app/AlertDialog;
    invoke-static {v0, v1}, Lcom/buzzfeed/android/ui/debugsettings/DebugSettingsFragment;->access$002(Lcom/buzzfeed/android/ui/debugsettings/DebugSettingsFragment;Landroid/support/v7/app/AlertDialog;)Landroid/support/v7/app/AlertDialog;

    .line 140
    :cond_37
    return-void
.end method
