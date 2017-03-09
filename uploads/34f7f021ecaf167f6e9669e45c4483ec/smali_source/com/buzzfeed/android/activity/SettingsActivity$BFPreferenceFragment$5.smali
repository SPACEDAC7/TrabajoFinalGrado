.class Lcom/buzzfeed/android/activity/SettingsActivity$BFPreferenceFragment$5;
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

.field final synthetic val$limitMobileDataUsageKey:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/buzzfeed/android/activity/SettingsActivity$BFPreferenceFragment;Ljava/lang/String;)V
    .registers 3
    .param p1, "this$0"    # Lcom/buzzfeed/android/activity/SettingsActivity$BFPreferenceFragment;

    .prologue
    .line 348
    iput-object p1, p0, Lcom/buzzfeed/android/activity/SettingsActivity$BFPreferenceFragment$5;->this$0:Lcom/buzzfeed/android/activity/SettingsActivity$BFPreferenceFragment;

    iput-object p2, p0, Lcom/buzzfeed/android/activity/SettingsActivity$BFPreferenceFragment$5;->val$limitMobileDataUsageKey:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .registers 7
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 351
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 352
    .local v1, "shouldLimit":Z
    invoke-virtual {p1}, Landroid/preference/Preference;->getEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    iget-object v3, p0, Lcom/buzzfeed/android/activity/SettingsActivity$BFPreferenceFragment$5;->val$limitMobileDataUsageKey:Ljava/lang/String;

    .line 353
    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 354
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 355
    invoke-static {}, Lcom/buzzfeed/android/vcr/VCRConfig;->getInstance()Lcom/buzzfeed/android/vcr/VCRConfig;

    move-result-object v0

    .line 356
    .local v0, "config":Lcom/buzzfeed/android/vcr/VCRConfig;
    iget-object v2, p0, Lcom/buzzfeed/android/activity/SettingsActivity$BFPreferenceFragment$5;->this$0:Lcom/buzzfeed/android/activity/SettingsActivity$BFPreferenceFragment;

    invoke-virtual {v2}, Lcom/buzzfeed/android/activity/SettingsActivity$BFPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/buzzfeed/android/vcr/VCRConfig;->setAdaptiveBitrateLimitingEnabled(Landroid/content/Context;Z)V

    .line 357
    const/4 v2, 0x1

    return v2
.end method
