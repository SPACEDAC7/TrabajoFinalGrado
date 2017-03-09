.class public Lcom/buzzfeed/android/activity/DebugSettingsActivity;
.super Lcom/buzzfeed/android/activity/BaseActivity;
.source "DebugSettingsActivity.java"


# static fields
.field private static final PREFERENCE_FRAGMENT_TAG:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String;

.field private static final TITLE:Ljava/lang/String; = "Debug Settings"


# instance fields
.field private mDebugSettingsFragment:Lcom/buzzfeed/android/ui/debugsettings/DebugSettingsFragment;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 19
    const-class v0, Lcom/buzzfeed/android/activity/DebugSettingsActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/buzzfeed/android/activity/DebugSettingsActivity;->TAG:Ljava/lang/String;

    .line 21
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/buzzfeed/android/activity/DebugSettingsActivity;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".PREFERENCE_FRAGMENT_TAG"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/buzzfeed/android/activity/DebugSettingsActivity;->PREFERENCE_FRAGMENT_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/buzzfeed/android/activity/BaseActivity;-><init>()V

    return-void
.end method

.method public static startIntent(Landroid/app/Activity;)V
    .registers 3
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 26
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/buzzfeed/android/activity/DebugSettingsActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 27
    .local v0, "i":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 28
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
    .line 59
    invoke-super {p0, p1}, Lcom/buzzfeed/android/activity/BaseActivity;->configureToolbar(Landroid/support/v7/widget/Toolbar;)V

    .line 60
    invoke-virtual {p0}, Lcom/buzzfeed/android/activity/DebugSettingsActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/support/v7/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 61
    invoke-virtual {p0}, Lcom/buzzfeed/android/activity/DebugSettingsActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/support/v7/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 62
    invoke-virtual {p0}, Lcom/buzzfeed/android/activity/DebugSettingsActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v1

    const v2, 0x7f03001c

    invoke-virtual {v1, v2}, Landroid/support/v7/app/ActionBar;->setCustomView(I)V

    .line 63
    invoke-virtual {p0}, Lcom/buzzfeed/android/activity/DebugSettingsActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f11008b

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 64
    .local v0, "textView":Landroid/widget/TextView;
    const-string v1, "Debug Settings"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 65
    return-void
.end method

.method public onBackPressed()V
    .registers 2

    .prologue
    .line 69
    iget-object v0, p0, Lcom/buzzfeed/android/activity/DebugSettingsActivity;->mDebugSettingsFragment:Lcom/buzzfeed/android/ui/debugsettings/DebugSettingsFragment;

    invoke-virtual {v0}, Lcom/buzzfeed/android/ui/debugsettings/DebugSettingsFragment;->onBackPressed()V

    .line 70
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 32
    invoke-super {p0, p1}, Lcom/buzzfeed/android/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 33
    const v1, 0x7f030024

    invoke-virtual {p0, v1}, Lcom/buzzfeed/android/activity/DebugSettingsActivity;->setContentView(I)V

    .line 34
    new-instance v1, Lcom/buzzfeed/android/activity/DebugSettingsActivity$1;

    invoke-direct {v1, p0}, Lcom/buzzfeed/android/activity/DebugSettingsActivity$1;-><init>(Lcom/buzzfeed/android/activity/DebugSettingsActivity;)V

    invoke-virtual {p0, v1}, Lcom/buzzfeed/android/activity/DebugSettingsActivity;->setToolBarAsUp(Landroid/view/View$OnClickListener;)V

    .line 41
    invoke-virtual {p0}, Lcom/buzzfeed/android/activity/DebugSettingsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 44
    .local v0, "manager":Landroid/app/FragmentManager;
    if-eqz p1, :cond_21

    .line 45
    sget-object v1, Lcom/buzzfeed/android/activity/DebugSettingsActivity;->PREFERENCE_FRAGMENT_TAG:Ljava/lang/String;

    .line 46
    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/buzzfeed/android/ui/debugsettings/DebugSettingsFragment;

    iput-object v1, p0, Lcom/buzzfeed/android/activity/DebugSettingsActivity;->mDebugSettingsFragment:Lcom/buzzfeed/android/ui/debugsettings/DebugSettingsFragment;

    .line 49
    :cond_21
    iget-object v1, p0, Lcom/buzzfeed/android/activity/DebugSettingsActivity;->mDebugSettingsFragment:Lcom/buzzfeed/android/ui/debugsettings/DebugSettingsFragment;

    if-nez v1, :cond_3e

    .line 50
    new-instance v1, Lcom/buzzfeed/android/ui/debugsettings/DebugSettingsFragment;

    invoke-direct {v1}, Lcom/buzzfeed/android/ui/debugsettings/DebugSettingsFragment;-><init>()V

    iput-object v1, p0, Lcom/buzzfeed/android/activity/DebugSettingsActivity;->mDebugSettingsFragment:Lcom/buzzfeed/android/ui/debugsettings/DebugSettingsFragment;

    .line 51
    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    const v2, 0x7f1100a2

    iget-object v3, p0, Lcom/buzzfeed/android/activity/DebugSettingsActivity;->mDebugSettingsFragment:Lcom/buzzfeed/android/ui/debugsettings/DebugSettingsFragment;

    sget-object v4, Lcom/buzzfeed/android/activity/DebugSettingsActivity;->PREFERENCE_FRAGMENT_TAG:Ljava/lang/String;

    .line 52
    invoke-virtual {v1, v2, v3, v4}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 53
    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commit()I

    .line 55
    :cond_3e
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 4
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 74
    const/4 v0, 0x4

    if-ne p1, v0, :cond_e

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_e

    .line 75
    iget-object v0, p0, Lcom/buzzfeed/android/activity/DebugSettingsActivity;->mDebugSettingsFragment:Lcom/buzzfeed/android/ui/debugsettings/DebugSettingsFragment;

    invoke-virtual {v0}, Lcom/buzzfeed/android/ui/debugsettings/DebugSettingsFragment;->onBackPressed()V

    .line 77
    :cond_e
    invoke-super {p0, p1, p2}, Lcom/buzzfeed/android/activity/BaseActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method
