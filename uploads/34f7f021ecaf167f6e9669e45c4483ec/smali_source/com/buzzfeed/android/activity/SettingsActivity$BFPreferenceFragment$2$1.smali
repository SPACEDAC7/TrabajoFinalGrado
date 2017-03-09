.class Lcom/buzzfeed/android/activity/SettingsActivity$BFPreferenceFragment$2$1;
.super Ljava/lang/Object;
.source "SettingsActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/buzzfeed/android/activity/SettingsActivity$BFPreferenceFragment$2;->onPreferenceClick(Landroid/preference/Preference;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/buzzfeed/android/activity/SettingsActivity$BFPreferenceFragment$2;

.field final synthetic val$preference:Landroid/preference/Preference;


# direct methods
.method constructor <init>(Lcom/buzzfeed/android/activity/SettingsActivity$BFPreferenceFragment$2;Landroid/preference/Preference;)V
    .registers 3
    .param p1, "this$1"    # Lcom/buzzfeed/android/activity/SettingsActivity$BFPreferenceFragment$2;

    .prologue
    .line 254
    iput-object p1, p0, Lcom/buzzfeed/android/activity/SettingsActivity$BFPreferenceFragment$2$1;->this$1:Lcom/buzzfeed/android/activity/SettingsActivity$BFPreferenceFragment$2;

    iput-object p2, p0, Lcom/buzzfeed/android/activity/SettingsActivity$BFPreferenceFragment$2$1;->val$preference:Landroid/preference/Preference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 12
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
    .line 257
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/buzzfeed/android/activity/SettingsActivity$BFPreferenceFragment$2$1;->val$preference:Landroid/preference/Preference;

    iget-object v1, p0, Lcom/buzzfeed/android/activity/SettingsActivity$BFPreferenceFragment$2$1;->this$1:Lcom/buzzfeed/android/activity/SettingsActivity$BFPreferenceFragment$2;

    iget-object v1, v1, Lcom/buzzfeed/android/activity/SettingsActivity$BFPreferenceFragment$2;->val$editions:[Ljava/lang/String;

    aget-object v1, v1, p3

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 258
    iget-object v0, p0, Lcom/buzzfeed/android/activity/SettingsActivity$BFPreferenceFragment$2$1;->this$1:Lcom/buzzfeed/android/activity/SettingsActivity$BFPreferenceFragment$2;

    iget-object v0, v0, Lcom/buzzfeed/android/activity/SettingsActivity$BFPreferenceFragment$2;->this$0:Lcom/buzzfeed/android/activity/SettingsActivity$BFPreferenceFragment;

    iget-object v1, p0, Lcom/buzzfeed/android/activity/SettingsActivity$BFPreferenceFragment$2$1;->this$1:Lcom/buzzfeed/android/activity/SettingsActivity$BFPreferenceFragment$2;

    iget-object v1, v1, Lcom/buzzfeed/android/activity/SettingsActivity$BFPreferenceFragment$2;->val$editionValues:[Ljava/lang/String;

    aget-object v1, v1, p3

    # invokes: Lcom/buzzfeed/android/activity/SettingsActivity$BFPreferenceFragment;->setEdition(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/buzzfeed/android/activity/SettingsActivity$BFPreferenceFragment;->access$200(Lcom/buzzfeed/android/activity/SettingsActivity$BFPreferenceFragment;Ljava/lang/String;)V

    .line 259
    invoke-static {}, Lcom/buzzfeed/analytics/client/BuzzFeedTracker;->getInstance()Lcom/buzzfeed/analytics/client/BuzzFeedTracker;

    move-result-object v0

    iget-object v1, p0, Lcom/buzzfeed/android/activity/SettingsActivity$BFPreferenceFragment$2$1;->this$1:Lcom/buzzfeed/android/activity/SettingsActivity$BFPreferenceFragment$2;

    iget-object v1, v1, Lcom/buzzfeed/android/activity/SettingsActivity$BFPreferenceFragment$2;->this$0:Lcom/buzzfeed/android/activity/SettingsActivity$BFPreferenceFragment;

    const v2, 0x7f0901ff

    invoke-virtual {v1, v2}, Lcom/buzzfeed/android/activity/SettingsActivity$BFPreferenceFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/buzzfeed/android/activity/SettingsActivity$BFPreferenceFragment$2$1;->this$1:Lcom/buzzfeed/android/activity/SettingsActivity$BFPreferenceFragment$2;

    iget-object v2, v2, Lcom/buzzfeed/android/activity/SettingsActivity$BFPreferenceFragment$2;->this$0:Lcom/buzzfeed/android/activity/SettingsActivity$BFPreferenceFragment;

    const v3, 0x7f0901c0

    invoke-virtual {v2, v3}, Lcom/buzzfeed/android/activity/SettingsActivity$BFPreferenceFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/buzzfeed/android/activity/SettingsActivity$BFPreferenceFragment$2$1;->this$1:Lcom/buzzfeed/android/activity/SettingsActivity$BFPreferenceFragment$2;

    iget-object v3, v3, Lcom/buzzfeed/android/activity/SettingsActivity$BFPreferenceFragment$2;->val$editions:[Ljava/lang/String;

    aget-object v3, v3, p3

    const-wide/16 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/buzzfeed/analytics/client/BuzzFeedTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 260
    iget-object v0, p0, Lcom/buzzfeed/android/activity/SettingsActivity$BFPreferenceFragment$2$1;->this$1:Lcom/buzzfeed/android/activity/SettingsActivity$BFPreferenceFragment$2;

    iget-object v0, v0, Lcom/buzzfeed/android/activity/SettingsActivity$BFPreferenceFragment$2;->this$0:Lcom/buzzfeed/android/activity/SettingsActivity$BFPreferenceFragment;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/buzzfeed/android/activity/SettingsActivity$BFPreferenceFragment;->setAppShouldReset(Z)V

    .line 261
    iget-object v0, p0, Lcom/buzzfeed/android/activity/SettingsActivity$BFPreferenceFragment$2$1;->this$1:Lcom/buzzfeed/android/activity/SettingsActivity$BFPreferenceFragment$2;

    iget-object v0, v0, Lcom/buzzfeed/android/activity/SettingsActivity$BFPreferenceFragment$2;->this$0:Lcom/buzzfeed/android/activity/SettingsActivity$BFPreferenceFragment;

    # getter for: Lcom/buzzfeed/android/activity/SettingsActivity$BFPreferenceFragment;->mAlertDialog:Landroid/support/v7/app/AlertDialog;
    invoke-static {v0}, Lcom/buzzfeed/android/activity/SettingsActivity$BFPreferenceFragment;->access$300(Lcom/buzzfeed/android/activity/SettingsActivity$BFPreferenceFragment;)Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    if-eqz v0, :cond_62

    .line 262
    iget-object v0, p0, Lcom/buzzfeed/android/activity/SettingsActivity$BFPreferenceFragment$2$1;->this$1:Lcom/buzzfeed/android/activity/SettingsActivity$BFPreferenceFragment$2;

    iget-object v0, v0, Lcom/buzzfeed/android/activity/SettingsActivity$BFPreferenceFragment$2;->this$0:Lcom/buzzfeed/android/activity/SettingsActivity$BFPreferenceFragment;

    # getter for: Lcom/buzzfeed/android/activity/SettingsActivity$BFPreferenceFragment;->mAlertDialog:Landroid/support/v7/app/AlertDialog;
    invoke-static {v0}, Lcom/buzzfeed/android/activity/SettingsActivity$BFPreferenceFragment;->access$300(Lcom/buzzfeed/android/activity/SettingsActivity$BFPreferenceFragment;)Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->dismiss()V

    .line 263
    iget-object v0, p0, Lcom/buzzfeed/android/activity/SettingsActivity$BFPreferenceFragment$2$1;->this$1:Lcom/buzzfeed/android/activity/SettingsActivity$BFPreferenceFragment$2;

    iget-object v0, v0, Lcom/buzzfeed/android/activity/SettingsActivity$BFPreferenceFragment$2;->this$0:Lcom/buzzfeed/android/activity/SettingsActivity$BFPreferenceFragment;

    const/4 v1, 0x0

    # setter for: Lcom/buzzfeed/android/activity/SettingsActivity$BFPreferenceFragment;->mAlertDialog:Landroid/support/v7/app/AlertDialog;
    invoke-static {v0, v1}, Lcom/buzzfeed/android/activity/SettingsActivity$BFPreferenceFragment;->access$302(Lcom/buzzfeed/android/activity/SettingsActivity$BFPreferenceFragment;Landroid/support/v7/app/AlertDialog;)Landroid/support/v7/app/AlertDialog;

    .line 265
    :cond_62
    return-void
.end method
