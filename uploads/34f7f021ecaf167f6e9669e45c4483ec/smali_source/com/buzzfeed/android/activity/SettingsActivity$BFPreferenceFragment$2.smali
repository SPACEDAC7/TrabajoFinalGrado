.class Lcom/buzzfeed/android/activity/SettingsActivity$BFPreferenceFragment$2;
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

.field final synthetic val$editionKey:Ljava/lang/String;

.field final synthetic val$editionPreference:Landroid/preference/Preference;

.field final synthetic val$editionValues:[Ljava/lang/String;

.field final synthetic val$editions:[Ljava/lang/String;

.field final synthetic val$preferences:Landroid/content/SharedPreferences;


# direct methods
.method constructor <init>(Lcom/buzzfeed/android/activity/SettingsActivity$BFPreferenceFragment;Landroid/preference/Preference;[Ljava/lang/String;[Ljava/lang/String;Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .registers 7
    .param p1, "this$0"    # Lcom/buzzfeed/android/activity/SettingsActivity$BFPreferenceFragment;

    .prologue
    .line 249
    iput-object p1, p0, Lcom/buzzfeed/android/activity/SettingsActivity$BFPreferenceFragment$2;->this$0:Lcom/buzzfeed/android/activity/SettingsActivity$BFPreferenceFragment;

    iput-object p2, p0, Lcom/buzzfeed/android/activity/SettingsActivity$BFPreferenceFragment$2;->val$editionPreference:Landroid/preference/Preference;

    iput-object p3, p0, Lcom/buzzfeed/android/activity/SettingsActivity$BFPreferenceFragment$2;->val$editions:[Ljava/lang/String;

    iput-object p4, p0, Lcom/buzzfeed/android/activity/SettingsActivity$BFPreferenceFragment$2;->val$editionValues:[Ljava/lang/String;

    iput-object p5, p0, Lcom/buzzfeed/android/activity/SettingsActivity$BFPreferenceFragment$2;->val$preferences:Landroid/content/SharedPreferences;

    iput-object p6, p0, Lcom/buzzfeed/android/activity/SettingsActivity$BFPreferenceFragment$2;->val$editionKey:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .registers 9
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 252
    new-instance v0, Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog$Builder;

    iget-object v1, p0, Lcom/buzzfeed/android/activity/SettingsActivity$BFPreferenceFragment$2;->this$0:Lcom/buzzfeed/android/activity/SettingsActivity$BFPreferenceFragment;

    invoke-virtual {v1}, Lcom/buzzfeed/android/activity/SettingsActivity$BFPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 253
    .local v0, "builder":Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog$Builder;
    iget-object v1, p0, Lcom/buzzfeed/android/activity/SettingsActivity$BFPreferenceFragment$2;->val$editionPreference:Landroid/preference/Preference;

    invoke-virtual {v1}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog$Builder;

    .line 254
    iget-object v1, p0, Lcom/buzzfeed/android/activity/SettingsActivity$BFPreferenceFragment$2;->val$editions:[Ljava/lang/String;

    iget-object v2, p0, Lcom/buzzfeed/android/activity/SettingsActivity$BFPreferenceFragment$2;->val$editionValues:[Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/buzzfeed/android/activity/SettingsActivity$BFPreferenceFragment$2;->val$preferences:Landroid/content/SharedPreferences;

    iget-object v4, p0, Lcom/buzzfeed/android/activity/SettingsActivity$BFPreferenceFragment$2;->val$editionKey:Ljava/lang/String;

    iget-object v5, p0, Lcom/buzzfeed/android/activity/SettingsActivity$BFPreferenceFragment$2;->this$0:Lcom/buzzfeed/android/activity/SettingsActivity$BFPreferenceFragment;

    const v6, 0x7f09023d

    invoke-virtual {v5, v6}, Lcom/buzzfeed/android/activity/SettingsActivity$BFPreferenceFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v2

    new-instance v3, Lcom/buzzfeed/android/activity/SettingsActivity$BFPreferenceFragment$2$1;

    invoke-direct {v3, p0, p1}, Lcom/buzzfeed/android/activity/SettingsActivity$BFPreferenceFragment$2$1;-><init>(Lcom/buzzfeed/android/activity/SettingsActivity$BFPreferenceFragment$2;Landroid/preference/Preference;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/String;ILandroid/widget/AdapterView$OnItemClickListener;)Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog$Builder;

    .line 267
    iget-object v1, p0, Lcom/buzzfeed/android/activity/SettingsActivity$BFPreferenceFragment$2;->this$0:Lcom/buzzfeed/android/activity/SettingsActivity$BFPreferenceFragment;

    const/high16 v2, 0x1040000

    invoke-virtual {v1, v2}, Lcom/buzzfeed/android/activity/SettingsActivity$BFPreferenceFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/buzzfeed/android/activity/SettingsActivity$BFPreferenceFragment$2$2;

    invoke-direct {v2, p0}, Lcom/buzzfeed/android/activity/SettingsActivity$BFPreferenceFragment$2$2;-><init>(Lcom/buzzfeed/android/activity/SettingsActivity$BFPreferenceFragment$2;)V

    invoke-virtual {v0, v1, v2}, Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog$Builder;

    .line 273
    iget-object v1, p0, Lcom/buzzfeed/android/activity/SettingsActivity$BFPreferenceFragment$2;->this$0:Lcom/buzzfeed/android/activity/SettingsActivity$BFPreferenceFragment;

    invoke-virtual {v0}, Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v2

    # setter for: Lcom/buzzfeed/android/activity/SettingsActivity$BFPreferenceFragment;->mAlertDialog:Landroid/support/v7/app/AlertDialog;
    invoke-static {v1, v2}, Lcom/buzzfeed/android/activity/SettingsActivity$BFPreferenceFragment;->access$302(Lcom/buzzfeed/android/activity/SettingsActivity$BFPreferenceFragment;Landroid/support/v7/app/AlertDialog;)Landroid/support/v7/app/AlertDialog;

    .line 274
    iget-object v1, p0, Lcom/buzzfeed/android/activity/SettingsActivity$BFPreferenceFragment$2;->this$0:Lcom/buzzfeed/android/activity/SettingsActivity$BFPreferenceFragment;

    # getter for: Lcom/buzzfeed/android/activity/SettingsActivity$BFPreferenceFragment;->mAlertDialog:Landroid/support/v7/app/AlertDialog;
    invoke-static {v1}, Lcom/buzzfeed/android/activity/SettingsActivity$BFPreferenceFragment;->access$300(Lcom/buzzfeed/android/activity/SettingsActivity$BFPreferenceFragment;)Landroid/support/v7/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/app/AlertDialog;->show()V

    .line 275
    const/4 v1, 0x1

    return v1
.end method