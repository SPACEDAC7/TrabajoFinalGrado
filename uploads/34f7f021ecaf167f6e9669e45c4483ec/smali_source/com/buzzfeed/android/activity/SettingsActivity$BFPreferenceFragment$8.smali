.class Lcom/buzzfeed/android/activity/SettingsActivity$BFPreferenceFragment$8;
.super Ljava/lang/Object;
.source "SettingsActivity.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/buzzfeed/android/activity/SettingsActivity$BFPreferenceFragment;->initPreferences()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/buzzfeed/android/activity/SettingsActivity$BFPreferenceFragment;


# direct methods
.method constructor <init>(Lcom/buzzfeed/android/activity/SettingsActivity$BFPreferenceFragment;)V
    .registers 2
    .param p1, "this$0"    # Lcom/buzzfeed/android/activity/SettingsActivity$BFPreferenceFragment;

    .prologue
    .line 391
    iput-object p1, p0, Lcom/buzzfeed/android/activity/SettingsActivity$BFPreferenceFragment$8;->this$0:Lcom/buzzfeed/android/activity/SettingsActivity$BFPreferenceFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .registers 8
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 394
    iget-object v0, p0, Lcom/buzzfeed/android/activity/SettingsActivity$BFPreferenceFragment$8;->this$0:Lcom/buzzfeed/android/activity/SettingsActivity$BFPreferenceFragment;

    iget-object v1, p0, Lcom/buzzfeed/android/activity/SettingsActivity$BFPreferenceFragment$8;->this$0:Lcom/buzzfeed/android/activity/SettingsActivity$BFPreferenceFragment;

    invoke-virtual {v1}, Lcom/buzzfeed/android/activity/SettingsActivity$BFPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {}, Lcom/buzzfeed/android/data/EnvironmentConfig;->getAdChoicesUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/buzzfeed/android/activity/OptOutSettingsActivity;->getIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/buzzfeed/android/activity/SettingsActivity$BFPreferenceFragment;->startActivity(Landroid/content/Intent;)V

    .line 395
    invoke-static {}, Lcom/buzzfeed/analytics/client/BuzzFeedTracker;->getInstance()Lcom/buzzfeed/analytics/client/BuzzFeedTracker;

    move-result-object v0

    iget-object v1, p0, Lcom/buzzfeed/android/activity/SettingsActivity$BFPreferenceFragment$8;->this$0:Lcom/buzzfeed/android/activity/SettingsActivity$BFPreferenceFragment;

    const v2, 0x7f0901ff

    invoke-virtual {v1, v2}, Lcom/buzzfeed/android/activity/SettingsActivity$BFPreferenceFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/buzzfeed/android/activity/SettingsActivity$BFPreferenceFragment$8;->this$0:Lcom/buzzfeed/android/activity/SettingsActivity$BFPreferenceFragment;

    const v3, 0x7f0901a9

    invoke-virtual {v2, v3}, Lcom/buzzfeed/android/activity/SettingsActivity$BFPreferenceFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    const-wide/16 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/buzzfeed/analytics/client/BuzzFeedTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 396
    const/4 v0, 0x0

    return v0
.end method
