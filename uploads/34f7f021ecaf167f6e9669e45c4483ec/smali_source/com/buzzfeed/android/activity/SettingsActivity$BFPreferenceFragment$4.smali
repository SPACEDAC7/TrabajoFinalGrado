.class Lcom/buzzfeed/android/activity/SettingsActivity$BFPreferenceFragment$4;
.super Ljava/lang/Object;
.source "SettingsActivity.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


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
    .line 331
    iput-object p1, p0, Lcom/buzzfeed/android/activity/SettingsActivity$BFPreferenceFragment$4;->this$0:Lcom/buzzfeed/android/activity/SettingsActivity$BFPreferenceFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .registers 6
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 334
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 335
    .local v0, "optIn":Z
    iget-object v1, p0, Lcom/buzzfeed/android/activity/SettingsActivity$BFPreferenceFragment$4;->this$0:Lcom/buzzfeed/android/activity/SettingsActivity$BFPreferenceFragment;

    invoke-virtual {v1}, Lcom/buzzfeed/android/activity/SettingsActivity$BFPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/buzzfeed/android/pushnotifications/PushNotificationUtil;->notificationStatusChanged(Landroid/content/Context;Z)V

    .line 336
    if-nez v0, :cond_23

    .line 337
    new-instance v1, Lcom/buzzfeed/showx/showpage/data/ShowSubscriptionStorage;

    iget-object v2, p0, Lcom/buzzfeed/android/activity/SettingsActivity$BFPreferenceFragment$4;->this$0:Lcom/buzzfeed/android/activity/SettingsActivity$BFPreferenceFragment;

    invoke-virtual {v2}, Lcom/buzzfeed/android/activity/SettingsActivity$BFPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/buzzfeed/showx/showpage/data/ShowSubscriptionStorage;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/buzzfeed/showx/showpage/data/ShowSubscriptionStorage;->clearShowSubscriptions()V

    .line 339
    :cond_23
    const/4 v1, 0x1

    return v1
.end method
