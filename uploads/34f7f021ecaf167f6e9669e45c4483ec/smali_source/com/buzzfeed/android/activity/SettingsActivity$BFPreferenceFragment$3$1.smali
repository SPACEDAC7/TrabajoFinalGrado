.class Lcom/buzzfeed/android/activity/SettingsActivity$BFPreferenceFragment$3$1;
.super Ljava/lang/Object;
.source "SettingsActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/buzzfeed/android/activity/SettingsActivity$BFPreferenceFragment$3;->onPreferenceClick(Landroid/preference/Preference;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/buzzfeed/android/activity/SettingsActivity$BFPreferenceFragment$3;

.field final synthetic val$preference:Landroid/preference/Preference;


# direct methods
.method constructor <init>(Lcom/buzzfeed/android/activity/SettingsActivity$BFPreferenceFragment$3;Landroid/preference/Preference;)V
    .registers 3
    .param p1, "this$1"    # Lcom/buzzfeed/android/activity/SettingsActivity$BFPreferenceFragment$3;

    .prologue
    .line 296
    iput-object p1, p0, Lcom/buzzfeed/android/activity/SettingsActivity$BFPreferenceFragment$3$1;->this$1:Lcom/buzzfeed/android/activity/SettingsActivity$BFPreferenceFragment$3;

    iput-object p2, p0, Lcom/buzzfeed/android/activity/SettingsActivity$BFPreferenceFragment$3$1;->val$preference:Landroid/preference/Preference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 11
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
    .line 299
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v1, p0, Lcom/buzzfeed/android/activity/SettingsActivity$BFPreferenceFragment$3$1;->val$preference:Landroid/preference/Preference;

    iget-object v2, p0, Lcom/buzzfeed/android/activity/SettingsActivity$BFPreferenceFragment$3$1;->this$1:Lcom/buzzfeed/android/activity/SettingsActivity$BFPreferenceFragment$3;

    iget-object v2, v2, Lcom/buzzfeed/android/activity/SettingsActivity$BFPreferenceFragment$3;->val$autoplayModes:[Ljava/lang/String;

    aget-object v2, v2, p3

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 300
    iget-object v1, p0, Lcom/buzzfeed/android/activity/SettingsActivity$BFPreferenceFragment$3$1;->this$1:Lcom/buzzfeed/android/activity/SettingsActivity$BFPreferenceFragment$3;

    iget-object v1, v1, Lcom/buzzfeed/android/activity/SettingsActivity$BFPreferenceFragment$3;->val$autoplayModes:[Ljava/lang/String;

    aget-object v1, v1, p3

    iget-object v2, p0, Lcom/buzzfeed/android/activity/SettingsActivity$BFPreferenceFragment$3$1;->val$preference:Landroid/preference/Preference;

    invoke-virtual {v2}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/buzzfeed/toolkit/util/VideoSettings;->getAutoplaySetting(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 302
    .local v0, "autoplaySetting":Ljava/lang/String;
    iget-object v1, p0, Lcom/buzzfeed/android/activity/SettingsActivity$BFPreferenceFragment$3$1;->this$1:Lcom/buzzfeed/android/activity/SettingsActivity$BFPreferenceFragment$3;

    iget-object v1, v1, Lcom/buzzfeed/android/activity/SettingsActivity$BFPreferenceFragment$3;->this$0:Lcom/buzzfeed/android/activity/SettingsActivity$BFPreferenceFragment;

    # invokes: Lcom/buzzfeed/android/activity/SettingsActivity$BFPreferenceFragment;->setAutoplayMode(Ljava/lang/String;)V
    invoke-static {v1, v0}, Lcom/buzzfeed/android/activity/SettingsActivity$BFPreferenceFragment;->access$400(Lcom/buzzfeed/android/activity/SettingsActivity$BFPreferenceFragment;Ljava/lang/String;)V

    .line 303
    invoke-static {}, Lcom/buzzfeed/analytics/client/BuzzFeedTracker;->getInstance()Lcom/buzzfeed/analytics/client/BuzzFeedTracker;

    move-result-object v1

    iget-object v2, p0, Lcom/buzzfeed/android/activity/SettingsActivity$BFPreferenceFragment$3$1;->this$1:Lcom/buzzfeed/android/activity/SettingsActivity$BFPreferenceFragment$3;

    iget-object v2, v2, Lcom/buzzfeed/android/activity/SettingsActivity$BFPreferenceFragment$3;->this$0:Lcom/buzzfeed/android/activity/SettingsActivity$BFPreferenceFragment;

    const v3, 0x7f0901ff

    invoke-virtual {v2, v3}, Lcom/buzzfeed/android/activity/SettingsActivity$BFPreferenceFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/buzzfeed/android/activity/SettingsActivity$BFPreferenceFragment$3$1;->this$1:Lcom/buzzfeed/android/activity/SettingsActivity$BFPreferenceFragment$3;

    iget-object v3, v3, Lcom/buzzfeed/android/activity/SettingsActivity$BFPreferenceFragment$3;->this$0:Lcom/buzzfeed/android/activity/SettingsActivity$BFPreferenceFragment;

    const v4, 0x7f0901aa

    invoke-virtual {v3, v4}, Lcom/buzzfeed/android/activity/SettingsActivity$BFPreferenceFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/buzzfeed/android/activity/SettingsActivity$BFPreferenceFragment$3$1;->this$1:Lcom/buzzfeed/android/activity/SettingsActivity$BFPreferenceFragment$3;

    iget-object v4, v4, Lcom/buzzfeed/android/activity/SettingsActivity$BFPreferenceFragment$3;->val$autoplayLabels:[Ljava/lang/String;

    aget-object v4, v4, p3

    invoke-virtual {v1, v2, v3, v4}, Lcom/buzzfeed/analytics/client/BuzzFeedTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    iget-object v1, p0, Lcom/buzzfeed/android/activity/SettingsActivity$BFPreferenceFragment$3$1;->this$1:Lcom/buzzfeed/android/activity/SettingsActivity$BFPreferenceFragment$3;

    iget-object v1, v1, Lcom/buzzfeed/android/activity/SettingsActivity$BFPreferenceFragment$3;->this$0:Lcom/buzzfeed/android/activity/SettingsActivity$BFPreferenceFragment;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/buzzfeed/android/activity/SettingsActivity$BFPreferenceFragment;->setAppShouldReset(Z)V

    .line 305
    iget-object v1, p0, Lcom/buzzfeed/android/activity/SettingsActivity$BFPreferenceFragment$3$1;->this$1:Lcom/buzzfeed/android/activity/SettingsActivity$BFPreferenceFragment$3;

    iget-object v1, v1, Lcom/buzzfeed/android/activity/SettingsActivity$BFPreferenceFragment$3;->this$0:Lcom/buzzfeed/android/activity/SettingsActivity$BFPreferenceFragment;

    # getter for: Lcom/buzzfeed/android/activity/SettingsActivity$BFPreferenceFragment;->mAlertDialog:Landroid/support/v7/app/AlertDialog;
    invoke-static {v1}, Lcom/buzzfeed/android/activity/SettingsActivity$BFPreferenceFragment;->access$300(Lcom/buzzfeed/android/activity/SettingsActivity$BFPreferenceFragment;)Landroid/support/v7/app/AlertDialog;

    move-result-object v1

    if-eqz v1, :cond_6a

    .line 306
    iget-object v1, p0, Lcom/buzzfeed/android/activity/SettingsActivity$BFPreferenceFragment$3$1;->this$1:Lcom/buzzfeed/android/activity/SettingsActivity$BFPreferenceFragment$3;

    iget-object v1, v1, Lcom/buzzfeed/android/activity/SettingsActivity$BFPreferenceFragment$3;->this$0:Lcom/buzzfeed/android/activity/SettingsActivity$BFPreferenceFragment;

    # getter for: Lcom/buzzfeed/android/activity/SettingsActivity$BFPreferenceFragment;->mAlertDialog:Landroid/support/v7/app/AlertDialog;
    invoke-static {v1}, Lcom/buzzfeed/android/activity/SettingsActivity$BFPreferenceFragment;->access$300(Lcom/buzzfeed/android/activity/SettingsActivity$BFPreferenceFragment;)Landroid/support/v7/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/app/AlertDialog;->dismiss()V

    .line 307
    iget-object v1, p0, Lcom/buzzfeed/android/activity/SettingsActivity$BFPreferenceFragment$3$1;->this$1:Lcom/buzzfeed/android/activity/SettingsActivity$BFPreferenceFragment$3;

    iget-object v1, v1, Lcom/buzzfeed/android/activity/SettingsActivity$BFPreferenceFragment$3;->this$0:Lcom/buzzfeed/android/activity/SettingsActivity$BFPreferenceFragment;

    const/4 v2, 0x0

    # setter for: Lcom/buzzfeed/android/activity/SettingsActivity$BFPreferenceFragment;->mAlertDialog:Landroid/support/v7/app/AlertDialog;
    invoke-static {v1, v2}, Lcom/buzzfeed/android/activity/SettingsActivity$BFPreferenceFragment;->access$302(Lcom/buzzfeed/android/activity/SettingsActivity$BFPreferenceFragment;Landroid/support/v7/app/AlertDialog;)Landroid/support/v7/app/AlertDialog;

    .line 309
    :cond_6a
    return-void
.end method
