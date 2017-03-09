.class public Lcom/buzzfeed/android/activity/SettingsActivity;
.super Lcom/buzzfeed/android/activity/BaseActivity;
.source "SettingsActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/buzzfeed/android/activity/SettingsActivity$BFPreferenceFragment;
    }
.end annotation


# static fields
.field public static final PREFERENCE_FRAGMENT_REFERENCE:Ljava/lang/String;

.field public static final SAVE_STATE_TAG_RESET_APP:Ljava/lang/String; = "reset_app"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private preferenceFragment:Lcom/buzzfeed/android/activity/SettingsActivity$BFPreferenceFragment;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 54
    const-class v0, Lcom/buzzfeed/android/activity/SettingsActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/buzzfeed/android/activity/SettingsActivity;->TAG:Ljava/lang/String;

    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/buzzfeed/android/activity/SettingsActivity;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".preferenceFragment"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/buzzfeed/android/activity/SettingsActivity;->PREFERENCE_FRAGMENT_REFERENCE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/buzzfeed/android/activity/BaseActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/buzzfeed/android/activity/SettingsActivity;)V
    .registers 1
    .param p0, "x0"    # Lcom/buzzfeed/android/activity/SettingsActivity;

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/buzzfeed/android/activity/SettingsActivity;->trackBack()V

    return-void
.end method

.method static synthetic access$100(Lcom/buzzfeed/android/activity/SettingsActivity;)V
    .registers 1
    .param p0, "x0"    # Lcom/buzzfeed/android/activity/SettingsActivity;

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/buzzfeed/android/activity/SettingsActivity;->restartAppOrFinish()V

    return-void
.end method

.method private restartAppOrFinish()V
    .registers 2

    .prologue
    .line 119
    iget-object v0, p0, Lcom/buzzfeed/android/activity/SettingsActivity;->preferenceFragment:Lcom/buzzfeed/android/activity/SettingsActivity$BFPreferenceFragment;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/buzzfeed/android/activity/SettingsActivity;->preferenceFragment:Lcom/buzzfeed/android/activity/SettingsActivity$BFPreferenceFragment;

    invoke-virtual {v0}, Lcom/buzzfeed/android/activity/SettingsActivity$BFPreferenceFragment;->shouldAppReset()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 120
    invoke-static {p0}, Lcom/buzzfeed/toolkit/util/ProcessPhoenix;->triggerRebirth(Landroid/content/Context;)V

    .line 124
    :goto_f
    return-void

    .line 122
    :cond_10
    invoke-virtual {p0}, Lcom/buzzfeed/android/activity/SettingsActivity;->finish()V

    goto :goto_f
.end method

.method public static startIntent(Landroid/app/Activity;)V
    .registers 3
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 60
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/buzzfeed/android/activity/SettingsActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 61
    .local v0, "i":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 62
    return-void
.end method

.method private trackBack()V
    .registers 6

    .prologue
    .line 415
    invoke-static {}, Lcom/buzzfeed/analytics/client/DustbusterClient;->getInstance()Lcom/buzzfeed/analytics/client/DustbusterClient;

    move-result-object v0

    const-string v1, "/list/settings"

    const-string v2, "back"

    const-string v3, "settings_back"

    const-string v4, "header"

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/buzzfeed/analytics/client/DustbusterClient;->trackUiTapEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 416
    return-void
.end method

.method private trackSettingsScreenView()V
    .registers 12

    .prologue
    const/4 v3, 0x0

    .line 127
    invoke-static {}, Lcom/buzzfeed/analytics/client/DustbusterClient;->getInstance()Lcom/buzzfeed/analytics/client/DustbusterClient;

    move-result-object v0

    const-string v1, "/list/settings"

    const-string v2, "settings"

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    move-object v8, v3

    move-object v9, v3

    move-object v10, v3

    invoke-virtual/range {v0 .. v10}, Lcom/buzzfeed/analytics/client/DustbusterClient;->trackScreenView(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    .line 128
    invoke-static {}, Lcom/buzzfeed/analytics/client/BuzzFeedTracker;->getInstance()Lcom/buzzfeed/analytics/client/BuzzFeedTracker;

    move-result-object v0

    const-string v1, "/list/settings"

    invoke-virtual {v0, v1, v3}, Lcom/buzzfeed/analytics/client/BuzzFeedTracker;->trackPageView(Ljava/lang/String;Ljava/util/Map;)V

    .line 129
    return-void
.end method


# virtual methods
.method protected configureToolbar(Landroid/support/v7/widget/Toolbar;)V
    .registers 5
    .param p1, "toolbar"    # Landroid/support/v7/widget/Toolbar;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 96
    invoke-super {p0, p1}, Lcom/buzzfeed/android/activity/BaseActivity;->configureToolbar(Landroid/support/v7/widget/Toolbar;)V

    .line 97
    invoke-virtual {p0}, Lcom/buzzfeed/android/activity/SettingsActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/support/v7/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 98
    invoke-virtual {p0}, Lcom/buzzfeed/android/activity/SettingsActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/support/v7/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 99
    invoke-virtual {p0}, Lcom/buzzfeed/android/activity/SettingsActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v1

    const v2, 0x7f03001c

    invoke-virtual {v1, v2}, Landroid/support/v7/app/ActionBar;->setCustomView(I)V

    .line 100
    invoke-virtual {p0}, Lcom/buzzfeed/android/activity/SettingsActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f11008b

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 101
    .local v0, "textView":Landroid/widget/TextView;
    const v1, 0x7f0900c3

    invoke-virtual {p0, v1}, Lcom/buzzfeed/android/activity/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 102
    return-void
.end method

.method public onBackPressed()V
    .registers 1

    .prologue
    .line 106
    invoke-direct {p0}, Lcom/buzzfeed/android/activity/SettingsActivity;->trackBack()V

    .line 107
    invoke-super {p0}, Lcom/buzzfeed/android/activity/BaseActivity;->onBackPressed()V

    .line 108
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 66
    invoke-super {p0, p1}, Lcom/buzzfeed/android/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 67
    const v1, 0x7f030024

    invoke-virtual {p0, v1}, Lcom/buzzfeed/android/activity/SettingsActivity;->setContentView(I)V

    .line 68
    new-instance v1, Lcom/buzzfeed/android/activity/SettingsActivity$1;

    invoke-direct {v1, p0}, Lcom/buzzfeed/android/activity/SettingsActivity$1;-><init>(Lcom/buzzfeed/android/activity/SettingsActivity;)V

    invoke-virtual {p0, v1}, Lcom/buzzfeed/android/activity/SettingsActivity;->setToolBarAsUp(Landroid/view/View$OnClickListener;)V

    .line 76
    invoke-virtual {p0}, Lcom/buzzfeed/android/activity/SettingsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 79
    .local v0, "manager":Landroid/app/FragmentManager;
    if-eqz p1, :cond_21

    .line 80
    sget-object v1, Lcom/buzzfeed/android/activity/SettingsActivity;->PREFERENCE_FRAGMENT_REFERENCE:Ljava/lang/String;

    .line 81
    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/buzzfeed/android/activity/SettingsActivity$BFPreferenceFragment;

    iput-object v1, p0, Lcom/buzzfeed/android/activity/SettingsActivity;->preferenceFragment:Lcom/buzzfeed/android/activity/SettingsActivity$BFPreferenceFragment;

    .line 84
    :cond_21
    iget-object v1, p0, Lcom/buzzfeed/android/activity/SettingsActivity;->preferenceFragment:Lcom/buzzfeed/android/activity/SettingsActivity$BFPreferenceFragment;

    if-nez v1, :cond_3e

    .line 85
    new-instance v1, Lcom/buzzfeed/android/activity/SettingsActivity$BFPreferenceFragment;

    invoke-direct {v1}, Lcom/buzzfeed/android/activity/SettingsActivity$BFPreferenceFragment;-><init>()V

    iput-object v1, p0, Lcom/buzzfeed/android/activity/SettingsActivity;->preferenceFragment:Lcom/buzzfeed/android/activity/SettingsActivity$BFPreferenceFragment;

    .line 86
    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    const v2, 0x7f1100a2

    iget-object v3, p0, Lcom/buzzfeed/android/activity/SettingsActivity;->preferenceFragment:Lcom/buzzfeed/android/activity/SettingsActivity$BFPreferenceFragment;

    sget-object v4, Lcom/buzzfeed/android/activity/SettingsActivity;->PREFERENCE_FRAGMENT_REFERENCE:Ljava/lang/String;

    .line 87
    invoke-virtual {v1, v2, v3, v4}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 88
    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commit()I

    .line 91
    :cond_3e
    invoke-direct {p0}, Lcom/buzzfeed/android/activity/SettingsActivity;->trackSettingsScreenView()V

    .line 92
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 4
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 112
    const/4 v0, 0x4

    if-ne p1, v0, :cond_c

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_c

    .line 113
    invoke-direct {p0}, Lcom/buzzfeed/android/activity/SettingsActivity;->restartAppOrFinish()V

    .line 115
    :cond_c
    invoke-super {p0, p1, p2}, Lcom/buzzfeed/android/activity/BaseActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method
