.class Lcom/buzzfeed/android/ui/debugsettings/DebugSettingsFragment$2;
.super Ljava/lang/Object;
.source "DebugSettingsFragment.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/buzzfeed/android/ui/debugsettings/DebugSettingsFragment;->initPreferences()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/buzzfeed/android/ui/debugsettings/DebugSettingsFragment;

.field final synthetic val$preferences:Landroid/content/SharedPreferences;

.field final synthetic val$serverKey:Ljava/lang/String;

.field final synthetic val$serverPreference:Landroid/preference/Preference;

.field final synthetic val$serverValues:[Ljava/lang/String;

.field final synthetic val$servers:[Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/buzzfeed/android/ui/debugsettings/DebugSettingsFragment;Landroid/preference/Preference;[Ljava/lang/String;[Ljava/lang/String;Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .registers 7
    .param p1, "this$0"    # Lcom/buzzfeed/android/ui/debugsettings/DebugSettingsFragment;

    .prologue
    .line 126
    iput-object p1, p0, Lcom/buzzfeed/android/ui/debugsettings/DebugSettingsFragment$2;->this$0:Lcom/buzzfeed/android/ui/debugsettings/DebugSettingsFragment;

    iput-object p2, p0, Lcom/buzzfeed/android/ui/debugsettings/DebugSettingsFragment$2;->val$serverPreference:Landroid/preference/Preference;

    iput-object p3, p0, Lcom/buzzfeed/android/ui/debugsettings/DebugSettingsFragment$2;->val$servers:[Ljava/lang/String;

    iput-object p4, p0, Lcom/buzzfeed/android/ui/debugsettings/DebugSettingsFragment$2;->val$serverValues:[Ljava/lang/String;

    iput-object p5, p0, Lcom/buzzfeed/android/ui/debugsettings/DebugSettingsFragment$2;->val$preferences:Landroid/content/SharedPreferences;

    iput-object p6, p0, Lcom/buzzfeed/android/ui/debugsettings/DebugSettingsFragment$2;->val$serverKey:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .registers 9
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 128
    new-instance v0, Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog$Builder;

    iget-object v1, p0, Lcom/buzzfeed/android/ui/debugsettings/DebugSettingsFragment$2;->this$0:Lcom/buzzfeed/android/ui/debugsettings/DebugSettingsFragment;

    invoke-virtual {v1}, Lcom/buzzfeed/android/ui/debugsettings/DebugSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 129
    .local v0, "builder":Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog$Builder;
    iget-object v1, p0, Lcom/buzzfeed/android/ui/debugsettings/DebugSettingsFragment$2;->val$serverPreference:Landroid/preference/Preference;

    invoke-virtual {v1}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog$Builder;

    .line 130
    iget-object v1, p0, Lcom/buzzfeed/android/ui/debugsettings/DebugSettingsFragment$2;->val$servers:[Ljava/lang/String;

    iget-object v2, p0, Lcom/buzzfeed/android/ui/debugsettings/DebugSettingsFragment$2;->val$serverValues:[Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/buzzfeed/android/ui/debugsettings/DebugSettingsFragment$2;->val$preferences:Landroid/content/SharedPreferences;

    iget-object v4, p0, Lcom/buzzfeed/android/ui/debugsettings/DebugSettingsFragment$2;->val$serverKey:Ljava/lang/String;

    iget-object v5, p0, Lcom/buzzfeed/android/ui/debugsettings/DebugSettingsFragment$2;->this$0:Lcom/buzzfeed/android/ui/debugsettings/DebugSettingsFragment;

    const v6, 0x7f0901a3

    invoke-virtual {v5, v6}, Lcom/buzzfeed/android/ui/debugsettings/DebugSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v2

    new-instance v3, Lcom/buzzfeed/android/ui/debugsettings/DebugSettingsFragment$2$1;

    invoke-direct {v3, p0, p1}, Lcom/buzzfeed/android/ui/debugsettings/DebugSettingsFragment$2$1;-><init>(Lcom/buzzfeed/android/ui/debugsettings/DebugSettingsFragment$2;Landroid/preference/Preference;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/String;ILandroid/widget/AdapterView$OnItemClickListener;)Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog$Builder;

    .line 142
    const/high16 v1, 0x1040000

    new-instance v2, Lcom/buzzfeed/android/ui/debugsettings/DebugSettingsFragment$2$2;

    invoke-direct {v2, p0}, Lcom/buzzfeed/android/ui/debugsettings/DebugSettingsFragment$2$2;-><init>(Lcom/buzzfeed/android/ui/debugsettings/DebugSettingsFragment$2;)V

    invoke-virtual {v0, v1, v2}, Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog$Builder;

    .line 148
    iget-object v1, p0, Lcom/buzzfeed/android/ui/debugsettings/DebugSettingsFragment$2;->this$0:Lcom/buzzfeed/android/ui/debugsettings/DebugSettingsFragment;

    invoke-virtual {v0}, Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v2

    # setter for: Lcom/buzzfeed/android/ui/debugsettings/DebugSettingsFragment;->mAlertDialog:Landroid/support/v7/app/AlertDialog;
    invoke-static {v1, v2}, Lcom/buzzfeed/android/ui/debugsettings/DebugSettingsFragment;->access$002(Lcom/buzzfeed/android/ui/debugsettings/DebugSettingsFragment;Landroid/support/v7/app/AlertDialog;)Landroid/support/v7/app/AlertDialog;

    .line 149
    iget-object v1, p0, Lcom/buzzfeed/android/ui/debugsettings/DebugSettingsFragment$2;->this$0:Lcom/buzzfeed/android/ui/debugsettings/DebugSettingsFragment;

    # getter for: Lcom/buzzfeed/android/ui/debugsettings/DebugSettingsFragment;->mAlertDialog:Landroid/support/v7/app/AlertDialog;
    invoke-static {v1}, Lcom/buzzfeed/android/ui/debugsettings/DebugSettingsFragment;->access$000(Lcom/buzzfeed/android/ui/debugsettings/DebugSettingsFragment;)Landroid/support/v7/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/app/AlertDialog;->show()V

    .line 150
    const/4 v1, 0x1

    return v1
.end method
