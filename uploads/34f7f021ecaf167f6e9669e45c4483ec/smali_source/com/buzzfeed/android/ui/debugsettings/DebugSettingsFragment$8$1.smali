.class Lcom/buzzfeed/android/ui/debugsettings/DebugSettingsFragment$8$1;
.super Ljava/lang/Object;
.source "DebugSettingsFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/buzzfeed/android/ui/debugsettings/DebugSettingsFragment$8;->onPreferenceClick(Landroid/preference/Preference;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/buzzfeed/android/ui/debugsettings/DebugSettingsFragment$8;

.field final synthetic val$preference:Landroid/preference/Preference;


# direct methods
.method constructor <init>(Lcom/buzzfeed/android/ui/debugsettings/DebugSettingsFragment$8;Landroid/preference/Preference;)V
    .registers 3
    .param p1, "this$1"    # Lcom/buzzfeed/android/ui/debugsettings/DebugSettingsFragment$8;

    .prologue
    .line 277
    iput-object p1, p0, Lcom/buzzfeed/android/ui/debugsettings/DebugSettingsFragment$8$1;->this$1:Lcom/buzzfeed/android/ui/debugsettings/DebugSettingsFragment$8;

    iput-object p2, p0, Lcom/buzzfeed/android/ui/debugsettings/DebugSettingsFragment$8$1;->val$preference:Landroid/preference/Preference;

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
    .line 280
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-static {p3}, Lcom/buzzfeed/ads/utils/AdConfig;->setTestAdType(I)V

    .line 281
    iget-object v0, p0, Lcom/buzzfeed/android/ui/debugsettings/DebugSettingsFragment$8$1;->this$1:Lcom/buzzfeed/android/ui/debugsettings/DebugSettingsFragment$8;

    iget-object v0, v0, Lcom/buzzfeed/android/ui/debugsettings/DebugSettingsFragment$8;->this$0:Lcom/buzzfeed/android/ui/debugsettings/DebugSettingsFragment;

    # invokes: Lcom/buzzfeed/android/ui/debugsettings/DebugSettingsFragment;->setAdTest(I)V
    invoke-static {v0, p3}, Lcom/buzzfeed/android/ui/debugsettings/DebugSettingsFragment;->access$100(Lcom/buzzfeed/android/ui/debugsettings/DebugSettingsFragment;I)V

    .line 282
    iget-object v0, p0, Lcom/buzzfeed/android/ui/debugsettings/DebugSettingsFragment$8$1;->val$preference:Landroid/preference/Preference;

    iget-object v1, p0, Lcom/buzzfeed/android/ui/debugsettings/DebugSettingsFragment$8$1;->this$1:Lcom/buzzfeed/android/ui/debugsettings/DebugSettingsFragment$8;

    iget-object v1, v1, Lcom/buzzfeed/android/ui/debugsettings/DebugSettingsFragment$8;->val$testAdTypes:[Ljava/lang/String;

    aget-object v1, v1, p3

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 283
    iget-object v0, p0, Lcom/buzzfeed/android/ui/debugsettings/DebugSettingsFragment$8$1;->this$1:Lcom/buzzfeed/android/ui/debugsettings/DebugSettingsFragment$8;

    iget-object v0, v0, Lcom/buzzfeed/android/ui/debugsettings/DebugSettingsFragment$8;->this$0:Lcom/buzzfeed/android/ui/debugsettings/DebugSettingsFragment;

    # getter for: Lcom/buzzfeed/android/ui/debugsettings/DebugSettingsFragment;->mAlertDialog:Landroid/support/v7/app/AlertDialog;
    invoke-static {v0}, Lcom/buzzfeed/android/ui/debugsettings/DebugSettingsFragment;->access$000(Lcom/buzzfeed/android/ui/debugsettings/DebugSettingsFragment;)Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    if-eqz v0, :cond_32

    .line 284
    iget-object v0, p0, Lcom/buzzfeed/android/ui/debugsettings/DebugSettingsFragment$8$1;->this$1:Lcom/buzzfeed/android/ui/debugsettings/DebugSettingsFragment$8;

    iget-object v0, v0, Lcom/buzzfeed/android/ui/debugsettings/DebugSettingsFragment$8;->this$0:Lcom/buzzfeed/android/ui/debugsettings/DebugSettingsFragment;

    # getter for: Lcom/buzzfeed/android/ui/debugsettings/DebugSettingsFragment;->mAlertDialog:Landroid/support/v7/app/AlertDialog;
    invoke-static {v0}, Lcom/buzzfeed/android/ui/debugsettings/DebugSettingsFragment;->access$000(Lcom/buzzfeed/android/ui/debugsettings/DebugSettingsFragment;)Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->dismiss()V

    .line 285
    iget-object v0, p0, Lcom/buzzfeed/android/ui/debugsettings/DebugSettingsFragment$8$1;->this$1:Lcom/buzzfeed/android/ui/debugsettings/DebugSettingsFragment$8;

    iget-object v0, v0, Lcom/buzzfeed/android/ui/debugsettings/DebugSettingsFragment$8;->this$0:Lcom/buzzfeed/android/ui/debugsettings/DebugSettingsFragment;

    const/4 v1, 0x0

    # setter for: Lcom/buzzfeed/android/ui/debugsettings/DebugSettingsFragment;->mAlertDialog:Landroid/support/v7/app/AlertDialog;
    invoke-static {v0, v1}, Lcom/buzzfeed/android/ui/debugsettings/DebugSettingsFragment;->access$002(Lcom/buzzfeed/android/ui/debugsettings/DebugSettingsFragment;Landroid/support/v7/app/AlertDialog;)Landroid/support/v7/app/AlertDialog;

    .line 287
    :cond_32
    return-void
.end method
