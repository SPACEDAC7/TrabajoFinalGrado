.class Lcom/buzzfeed/android/activity/SettingsActivity$BFPreferenceFragment$6;
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
    .line 365
    iput-object p1, p0, Lcom/buzzfeed/android/activity/SettingsActivity$BFPreferenceFragment$6;->this$0:Lcom/buzzfeed/android/activity/SettingsActivity$BFPreferenceFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .registers 8
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 368
    iget-object v0, p0, Lcom/buzzfeed/android/activity/SettingsActivity$BFPreferenceFragment$6;->this$0:Lcom/buzzfeed/android/activity/SettingsActivity$BFPreferenceFragment;

    invoke-virtual {v0}, Lcom/buzzfeed/android/activity/SettingsActivity$BFPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/buzzfeed/android/activity/SettingsActivity$BFPreferenceFragment$6;->this$0:Lcom/buzzfeed/android/activity/SettingsActivity$BFPreferenceFragment;

    invoke-virtual {v1}, Lcom/buzzfeed/android/activity/SettingsActivity$BFPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/buzzfeed/android/data/EnvironmentConfig;->getUserAgreementUrl(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/buzzfeed/android/util/chrometabs/CustomTabUtils;->openChromeTab(Landroid/app/Activity;Ljava/lang/String;)V

    .line 369
    invoke-static {}, Lcom/buzzfeed/analytics/client/BuzzFeedTracker;->getInstance()Lcom/buzzfeed/analytics/client/BuzzFeedTracker;

    move-result-object v0

    iget-object v1, p0, Lcom/buzzfeed/android/activity/SettingsActivity$BFPreferenceFragment$6;->this$0:Lcom/buzzfeed/android/activity/SettingsActivity$BFPreferenceFragment;

    const v2, 0x7f0901ff

    invoke-virtual {v1, v2}, Lcom/buzzfeed/android/activity/SettingsActivity$BFPreferenceFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/buzzfeed/android/activity/SettingsActivity$BFPreferenceFragment$6;->this$0:Lcom/buzzfeed/android/activity/SettingsActivity$BFPreferenceFragment;

    const v3, 0x7f0901e5

    invoke-virtual {v2, v3}, Lcom/buzzfeed/android/activity/SettingsActivity$BFPreferenceFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    const-wide/16 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/buzzfeed/analytics/client/BuzzFeedTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 370
    const/4 v0, 0x0

    return v0
.end method
