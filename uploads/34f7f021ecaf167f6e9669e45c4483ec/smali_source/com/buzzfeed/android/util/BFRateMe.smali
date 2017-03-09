.class public Lcom/buzzfeed/android/util/BFRateMe;
.super Ljava/lang/Object;
.source "BFRateMe.java"

# interfaces
.implements Lcom/buzzfeed/android/ui/dialog/BuzzDialogFragment$BuzzDialogFragmentListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/buzzfeed/android/util/BFRateMe$Pref;
    }
.end annotation


# static fields
.field public static final HATE_OPTION:I = 0x6

.field public static final HEART_OPTION:I = 0x5

.field private static final MILLIS_IN_A_DAY:J = 0x36ee800L

.field public static final RATE_ME_MAYBE:I = 0x4

.field private static final TAG:Ljava/lang/String;

.field private static instance:Lcom/buzzfeed/android/util/BFRateMe;


# instance fields
.field private isDisabled:Z

.field private mActivity:Lcom/buzzfeed/android/activity/BaseActivity;

.field private mPreferences:Landroid/content/SharedPreferences;

.field private mTracker:Lcom/buzzfeed/analytics/client/BuzzFeedTracker;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 19
    const-class v0, Lcom/buzzfeed/android/util/BFRateMe;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/buzzfeed/android/util/BFRateMe;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/buzzfeed/android/util/BFRateMe;->isDisabled:Z

    .line 99
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/buzzfeed/android/util/BFRateMe;->mPreferences:Landroid/content/SharedPreferences;

    .line 100
    return-void
.end method

.method private disableRateMeDialog()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 182
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/buzzfeed/android/util/BFRateMe;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".disableRateMeDialog"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 183
    .local v0, "TAG":Ljava/lang/String;
    iget-object v1, p0, Lcom/buzzfeed/android/util/BFRateMe;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "rate_me_dont_show_again"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 184
    iput-boolean v3, p0, Lcom/buzzfeed/android/util/BFRateMe;->isDisabled:Z

    .line 185
    const-string v1, "Disabled RateMe dialog"

    invoke-static {v0, v1}, Lcom/buzzfeed/toolkit/util/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/buzzfeed/android/util/BFRateMe;
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 92
    sget-object v0, Lcom/buzzfeed/android/util/BFRateMe;->instance:Lcom/buzzfeed/android/util/BFRateMe;

    if-nez v0, :cond_b

    .line 93
    new-instance v0, Lcom/buzzfeed/android/util/BFRateMe;

    invoke-direct {v0, p0}, Lcom/buzzfeed/android/util/BFRateMe;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/buzzfeed/android/util/BFRateMe;->instance:Lcom/buzzfeed/android/util/BFRateMe;

    .line 95
    :cond_b
    sget-object v0, Lcom/buzzfeed/android/util/BFRateMe;->instance:Lcom/buzzfeed/android/util/BFRateMe;

    return-object v0
.end method

.method private incrementDaysSinceLastPrompt()V
    .registers 12

    .prologue
    const/4 v10, 0x0

    .line 157
    iget-object v3, p0, Lcom/buzzfeed/android/util/BFRateMe;->mPreferences:Landroid/content/SharedPreferences;

    const-string v6, "rate_me_time_of_days_app_used_since_last_prompt_increment"

    const-wide/16 v8, 0x0

    invoke-interface {v3, v6, v8, v9}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    .line 158
    .local v4, "timeOfLastDayIncrement":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v4

    const-wide/32 v8, 0x36ee800

    cmp-long v3, v6, v8

    if-ltz v3, :cond_6f

    .line 160
    iget-object v3, p0, Lcom/buzzfeed/android/util/BFRateMe;->mPreferences:Landroid/content/SharedPreferences;

    const-string v6, "rate_me_days_app_used_count"

    invoke-interface {v3, v6, v10}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    add-int/lit8 v1, v3, 0x1

    .line 161
    .local v1, "daysUsed":I
    iget-object v3, p0, Lcom/buzzfeed/android/util/BFRateMe;->mPreferences:Landroid/content/SharedPreferences;

    const-string v6, "rate_me_days_app_used_since_last_prompt_count"

    invoke-interface {v3, v6, v10}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    add-int/lit8 v0, v3, 0x1

    .line 162
    .local v0, "daysSinceLastPrompt":I
    iget-object v3, p0, Lcom/buzzfeed/android/util/BFRateMe;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 163
    .local v2, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v3, "rate_me_days_app_used_count"

    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 164
    const-string v3, "rate_me_days_app_used_since_last_prompt_count"

    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 165
    const-string v3, "rate_me_time_of_days_app_used_since_last_prompt_increment"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-interface {v2, v3, v6, v7}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 166
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 167
    sget-object v3, Lcom/buzzfeed/android/util/BFRateMe;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "User has used the app for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " days and "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " days since last prompt"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/buzzfeed/toolkit/util/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    .end local v0    # "daysSinceLastPrompt":I
    .end local v1    # "daysUsed":I
    .end local v2    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_6f
    return-void
.end method

.method private isDisabled()Z
    .registers 4

    .prologue
    .line 172
    iget-boolean v0, p0, Lcom/buzzfeed/android/util/BFRateMe;->isDisabled:Z

    if-nez v0, :cond_1a

    .line 173
    iget-object v0, p0, Lcom/buzzfeed/android/util/BFRateMe;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "rate_me_dont_show_again"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/buzzfeed/android/util/BFRateMe;->isDisabled:Z

    .line 174
    iget-boolean v0, p0, Lcom/buzzfeed/android/util/BFRateMe;->isDisabled:Z

    if-eqz v0, :cond_1a

    .line 175
    sget-object v0, Lcom/buzzfeed/android/util/BFRateMe;->TAG:Ljava/lang/String;

    const-string v1, "RateMe has been disabled, most user usage tracking will be skipped"

    invoke-static {v0, v1}, Lcom/buzzfeed/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    :cond_1a
    iget-boolean v0, p0, Lcom/buzzfeed/android/util/BFRateMe;->isDisabled:Z

    return v0
.end method


# virtual methods
.method public buildDialogFragment(I)V
    .registers 7
    .param p1, "dialogFragmentId"    # I

    .prologue
    const v4, 0x7f0900e5

    const v3, 0x7f0201f9

    .line 103
    const/4 v0, 0x0

    .line 104
    .local v0, "frag":Lcom/buzzfeed/android/ui/dialog/BuzzDialogFragment;
    iget-object v1, p0, Lcom/buzzfeed/android/util/BFRateMe;->mActivity:Lcom/buzzfeed/android/activity/BaseActivity;

    invoke-static {v1}, Lcom/buzzfeed/android/ui/dialog/BuzzDialogFragment;->removeDialogFragment(Landroid/support/v4/app/FragmentActivity;)V

    .line 105
    packed-switch p1, :pswitch_data_86

    .line 130
    :goto_f
    if-eqz v0, :cond_24

    .line 131
    invoke-virtual {v0, p1}, Lcom/buzzfeed/android/ui/dialog/BuzzDialogFragment;->setReferenceId(I)Lcom/buzzfeed/android/ui/dialog/BuzzDialogFragment;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/buzzfeed/android/ui/dialog/BuzzDialogFragment;->setListener(Lcom/buzzfeed/android/ui/dialog/BuzzDialogFragment$BuzzDialogFragmentListener;)Lcom/buzzfeed/android/ui/dialog/BuzzDialogFragment;

    move-result-object v1

    iget-object v2, p0, Lcom/buzzfeed/android/util/BFRateMe;->mActivity:Lcom/buzzfeed/android/activity/BaseActivity;

    invoke-virtual {v2}, Lcom/buzzfeed/android/activity/BaseActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    const-string v3, "dialogFragmentTag"

    invoke-virtual {v1, v2, v3}, Lcom/buzzfeed/android/ui/dialog/BuzzDialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 133
    :cond_24
    return-void

    .line 107
    :pswitch_25
    const v1, 0x7f0900dd

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/buzzfeed/android/ui/dialog/BuzzDialogFragment;->newInstance(IZ)Lcom/buzzfeed/android/ui/dialog/BuzzDialogFragment;

    move-result-object v1

    .line 108
    invoke-virtual {v1, v3}, Lcom/buzzfeed/android/ui/dialog/BuzzDialogFragment;->setIcon(I)Lcom/buzzfeed/android/ui/dialog/BuzzDialogFragment;

    move-result-object v1

    const v2, 0x7f0900e0

    .line 109
    invoke-virtual {v1, v2}, Lcom/buzzfeed/android/ui/dialog/BuzzDialogFragment;->setMessage(I)Lcom/buzzfeed/android/ui/dialog/BuzzDialogFragment;

    move-result-object v1

    .line 110
    invoke-virtual {v1, v4}, Lcom/buzzfeed/android/ui/dialog/BuzzDialogFragment;->setPositiveButton(I)Lcom/buzzfeed/android/ui/dialog/BuzzDialogFragment;

    move-result-object v0

    .line 111
    goto :goto_f

    .line 113
    :pswitch_3d
    const v1, 0x7f0900e7

    invoke-static {v1}, Lcom/buzzfeed/android/ui/dialog/BuzzDialogFragment;->newInstance(I)Lcom/buzzfeed/android/ui/dialog/BuzzDialogFragment;

    move-result-object v1

    .line 114
    invoke-virtual {v1, v3}, Lcom/buzzfeed/android/ui/dialog/BuzzDialogFragment;->setIcon(I)Lcom/buzzfeed/android/ui/dialog/BuzzDialogFragment;

    move-result-object v1

    const v2, 0x7f0900e6

    .line 115
    invoke-virtual {v1, v2}, Lcom/buzzfeed/android/ui/dialog/BuzzDialogFragment;->setMessage(I)Lcom/buzzfeed/android/ui/dialog/BuzzDialogFragment;

    move-result-object v1

    const v2, 0x7f0900df

    .line 116
    invoke-virtual {v1, v2}, Lcom/buzzfeed/android/ui/dialog/BuzzDialogFragment;->setPositiveButton(I)Lcom/buzzfeed/android/ui/dialog/BuzzDialogFragment;

    move-result-object v1

    .line 117
    invoke-virtual {v1, v4}, Lcom/buzzfeed/android/ui/dialog/BuzzDialogFragment;->setExtraButton(I)Lcom/buzzfeed/android/ui/dialog/BuzzDialogFragment;

    move-result-object v1

    const v2, 0x7f0900de

    .line 118
    invoke-virtual {v1, v2}, Lcom/buzzfeed/android/ui/dialog/BuzzDialogFragment;->setNegativeButton(I)Lcom/buzzfeed/android/ui/dialog/BuzzDialogFragment;

    move-result-object v0

    .line 119
    goto :goto_f

    .line 121
    :pswitch_62
    const v1, 0x7f0900e4

    invoke-static {v1}, Lcom/buzzfeed/android/ui/dialog/BuzzDialogFragment;->newInstance(I)Lcom/buzzfeed/android/ui/dialog/BuzzDialogFragment;

    move-result-object v1

    const v2, 0x7f02016c

    .line 122
    invoke-virtual {v1, v2}, Lcom/buzzfeed/android/ui/dialog/BuzzDialogFragment;->setIcon(I)Lcom/buzzfeed/android/ui/dialog/BuzzDialogFragment;

    move-result-object v1

    const v2, 0x7f0900e3

    .line 123
    invoke-virtual {v1, v2}, Lcom/buzzfeed/android/ui/dialog/BuzzDialogFragment;->setMessage(I)Lcom/buzzfeed/android/ui/dialog/BuzzDialogFragment;

    move-result-object v1

    const v2, 0x7f0900e1

    .line 124
    invoke-virtual {v1, v2}, Lcom/buzzfeed/android/ui/dialog/BuzzDialogFragment;->setPositiveButton(I)Lcom/buzzfeed/android/ui/dialog/BuzzDialogFragment;

    move-result-object v1

    const v2, 0x7f0900e2

    .line 125
    invoke-virtual {v1, v2}, Lcom/buzzfeed/android/ui/dialog/BuzzDialogFragment;->setNegativeButton(I)Lcom/buzzfeed/android/ui/dialog/BuzzDialogFragment;

    move-result-object v0

    goto :goto_f

    .line 105
    :pswitch_data_86
    .packed-switch 0x4
        :pswitch_25
        :pswitch_3d
        :pswitch_62
    .end packed-switch
.end method

.method public forceShowRateMeDialog(Lcom/buzzfeed/android/activity/BaseActivity;)V
    .registers 5
    .param p1, "activity"    # Lcom/buzzfeed/android/activity/BaseActivity;

    .prologue
    .line 189
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/buzzfeed/android/util/BFRateMe;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".forceShowRateMeDialog"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 190
    .local v0, "TAG":Ljava/lang/String;
    const-string v1, "Showing forced rating prompt"

    invoke-static {v0, v1}, Lcom/buzzfeed/toolkit/util/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    iput-object p1, p0, Lcom/buzzfeed/android/util/BFRateMe;->mActivity:Lcom/buzzfeed/android/activity/BaseActivity;

    .line 192
    invoke-static {}, Lcom/buzzfeed/analytics/client/BuzzFeedTracker;->getInstance()Lcom/buzzfeed/analytics/client/BuzzFeedTracker;

    move-result-object v1

    iput-object v1, p0, Lcom/buzzfeed/android/util/BFRateMe;->mTracker:Lcom/buzzfeed/analytics/client/BuzzFeedTracker;

    .line 193
    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Lcom/buzzfeed/android/util/BFRateMe;->buildDialogFragment(I)V

    .line 194
    return-void
.end method

.method public onBuzzDialogClick(Lcom/buzzfeed/android/ui/dialog/BuzzDialogFragment;Landroid/widget/Button;)V
    .registers 15
    .param p1, "fragment"    # Lcom/buzzfeed/android/ui/dialog/BuzzDialogFragment;
    .param p2, "button"    # Landroid/widget/Button;

    .prologue
    const v3, 0x7f0901bb

    const/4 v11, 0x6

    const/4 v10, 0x5

    const-wide/16 v4, 0x0

    const v9, 0x7f0901fb

    .line 36
    invoke-virtual {p2}, Landroid/widget/Button;->getId()I

    move-result v6

    .line 37
    .local v6, "bid":I
    invoke-virtual {p1}, Lcom/buzzfeed/android/ui/dialog/BuzzDialogFragment;->getReferenceId()I

    move-result v7

    .line 40
    .local v7, "fid":I
    if-eqz v7, :cond_1a

    .line 41
    const/4 v0, 0x4

    if-ne v7, v0, :cond_74

    .line 42
    packed-switch v6, :pswitch_data_1aa

    .line 88
    :cond_1a
    :goto_1a
    :pswitch_1a
    if-eqz p1, :cond_1f

    invoke-virtual {p1}, Lcom/buzzfeed/android/ui/dialog/BuzzDialogFragment;->dismiss()V

    .line 89
    :cond_1f
    return-void

    .line 44
    :pswitch_20
    iget-object v0, p0, Lcom/buzzfeed/android/util/BFRateMe;->mTracker:Lcom/buzzfeed/analytics/client/BuzzFeedTracker;

    iget-object v1, p0, Lcom/buzzfeed/android/util/BFRateMe;->mActivity:Lcom/buzzfeed/android/activity/BaseActivity;

    invoke-virtual {v1, v9}, Lcom/buzzfeed/android/activity/BaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/buzzfeed/android/util/BFRateMe;->mActivity:Lcom/buzzfeed/android/activity/BaseActivity;

    const v3, 0x7f0901d2

    invoke-virtual {v2, v3}, Lcom/buzzfeed/android/activity/BaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual/range {v0 .. v5}, Lcom/buzzfeed/analytics/client/BuzzFeedTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 45
    invoke-virtual {p0, v10}, Lcom/buzzfeed/android/util/BFRateMe;->buildDialogFragment(I)V

    goto :goto_1a

    .line 48
    :pswitch_3a
    iget-object v0, p0, Lcom/buzzfeed/android/util/BFRateMe;->mTracker:Lcom/buzzfeed/analytics/client/BuzzFeedTracker;

    iget-object v1, p0, Lcom/buzzfeed/android/util/BFRateMe;->mActivity:Lcom/buzzfeed/android/activity/BaseActivity;

    invoke-virtual {v1, v9}, Lcom/buzzfeed/android/activity/BaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/buzzfeed/android/util/BFRateMe;->mActivity:Lcom/buzzfeed/android/activity/BaseActivity;

    const v3, 0x7f0901d1

    invoke-virtual {v2, v3}, Lcom/buzzfeed/android/activity/BaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual/range {v0 .. v5}, Lcom/buzzfeed/analytics/client/BuzzFeedTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 49
    invoke-virtual {p0, v11}, Lcom/buzzfeed/android/util/BFRateMe;->buildDialogFragment(I)V

    goto :goto_1a

    .line 52
    :pswitch_54
    iget-object v0, p0, Lcom/buzzfeed/android/util/BFRateMe;->mActivity:Lcom/buzzfeed/android/activity/BaseActivity;

    invoke-static {v0}, Lcom/buzzfeed/android/util/BFRateMe;->getInstance(Landroid/content/Context;)Lcom/buzzfeed/android/util/BFRateMe;

    move-result-object v0

    invoke-direct {v0}, Lcom/buzzfeed/android/util/BFRateMe;->disableRateMeDialog()V

    .line 53
    iget-object v0, p0, Lcom/buzzfeed/android/util/BFRateMe;->mTracker:Lcom/buzzfeed/analytics/client/BuzzFeedTracker;

    iget-object v1, p0, Lcom/buzzfeed/android/util/BFRateMe;->mActivity:Lcom/buzzfeed/android/activity/BaseActivity;

    invoke-virtual {v1, v9}, Lcom/buzzfeed/android/activity/BaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/buzzfeed/android/util/BFRateMe;->mActivity:Lcom/buzzfeed/android/activity/BaseActivity;

    const v3, 0x7f0901c1

    invoke-virtual {v2, v3}, Lcom/buzzfeed/android/activity/BaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual/range {v0 .. v5}, Lcom/buzzfeed/analytics/client/BuzzFeedTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    goto :goto_1a

    .line 56
    :cond_74
    if-ne v7, v10, :cond_138

    .line 57
    packed-switch v6, :pswitch_data_1b6

    goto :goto_1a

    .line 59
    :pswitch_7a
    new-instance v8, Landroid/content/Intent;

    const-string v0, "android.intent.action.VIEW"

    iget-object v1, p0, Lcom/buzzfeed/android/util/BFRateMe;->mActivity:Lcom/buzzfeed/android/activity/BaseActivity;

    invoke-static {v1}, Lcom/buzzfeed/android/util/BFRateMeUtils;->getMarketUri(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {v8, v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 60
    .local v8, "marketIntent":Landroid/content/Intent;
    const/high16 v0, 0x10000000

    invoke-virtual {v8, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 61
    iget-object v0, p0, Lcom/buzzfeed/android/util/BFRateMe;->mActivity:Lcom/buzzfeed/android/activity/BaseActivity;

    invoke-virtual {v0, v8}, Lcom/buzzfeed/android/activity/BaseActivity;->startActivity(Landroid/content/Intent;)V

    .line 62
    iget-object v0, p0, Lcom/buzzfeed/android/util/BFRateMe;->mActivity:Lcom/buzzfeed/android/activity/BaseActivity;

    invoke-static {v0}, Lcom/buzzfeed/android/util/BFRateMe;->getInstance(Landroid/content/Context;)Lcom/buzzfeed/android/util/BFRateMe;

    move-result-object v0

    invoke-direct {v0}, Lcom/buzzfeed/android/util/BFRateMe;->disableRateMeDialog()V

    .line 63
    iget-object v0, p0, Lcom/buzzfeed/android/util/BFRateMe;->mTracker:Lcom/buzzfeed/analytics/client/BuzzFeedTracker;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/buzzfeed/android/util/BFRateMe;->mActivity:Lcom/buzzfeed/android/activity/BaseActivity;

    invoke-virtual {v2, v9}, Lcom/buzzfeed/android/activity/BaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "positive"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/buzzfeed/android/util/BFRateMe;->mActivity:Lcom/buzzfeed/android/activity/BaseActivity;

    const v3, 0x7f0901bc

    invoke-virtual {v2, v3}, Lcom/buzzfeed/android/activity/BaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual/range {v0 .. v5}, Lcom/buzzfeed/analytics/client/BuzzFeedTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    goto/16 :goto_1a

    .line 66
    .end local v8    # "marketIntent":Landroid/content/Intent;
    :pswitch_c9
    iget-object v0, p0, Lcom/buzzfeed/android/util/BFRateMe;->mActivity:Lcom/buzzfeed/android/activity/BaseActivity;

    invoke-static {v0}, Lcom/buzzfeed/android/util/BFRateMe;->getInstance(Landroid/content/Context;)Lcom/buzzfeed/android/util/BFRateMe;

    move-result-object v0

    invoke-direct {v0}, Lcom/buzzfeed/android/util/BFRateMe;->disableRateMeDialog()V

    .line 67
    iget-object v0, p0, Lcom/buzzfeed/android/util/BFRateMe;->mTracker:Lcom/buzzfeed/analytics/client/BuzzFeedTracker;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/buzzfeed/android/util/BFRateMe;->mActivity:Lcom/buzzfeed/android/activity/BaseActivity;

    invoke-virtual {v2, v9}, Lcom/buzzfeed/android/activity/BaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "positive"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/buzzfeed/android/util/BFRateMe;->mActivity:Lcom/buzzfeed/android/activity/BaseActivity;

    invoke-virtual {v2, v3}, Lcom/buzzfeed/android/activity/BaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual/range {v0 .. v5}, Lcom/buzzfeed/analytics/client/BuzzFeedTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    goto/16 :goto_1a

    .line 70
    :pswitch_fa
    iget-object v0, p0, Lcom/buzzfeed/android/util/BFRateMe;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "rate_me_time_of_last_prompt"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 71
    iget-object v0, p0, Lcom/buzzfeed/android/util/BFRateMe;->mTracker:Lcom/buzzfeed/analytics/client/BuzzFeedTracker;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/buzzfeed/android/util/BFRateMe;->mActivity:Lcom/buzzfeed/android/activity/BaseActivity;

    invoke-virtual {v2, v9}, Lcom/buzzfeed/android/activity/BaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "positive"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/buzzfeed/android/util/BFRateMe;->mActivity:Lcom/buzzfeed/android/activity/BaseActivity;

    const v3, 0x7f0901ba

    invoke-virtual {v2, v3}, Lcom/buzzfeed/android/activity/BaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual/range {v0 .. v5}, Lcom/buzzfeed/analytics/client/BuzzFeedTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    goto/16 :goto_1a

    .line 74
    :cond_138
    if-ne v7, v11, :cond_1a

    .line 75
    packed-switch v6, :pswitch_data_1c0

    goto/16 :goto_1a

    .line 77
    :pswitch_13f
    iget-object v0, p0, Lcom/buzzfeed/android/util/BFRateMe;->mActivity:Lcom/buzzfeed/android/activity/BaseActivity;

    invoke-static {v0}, Lcom/buzzfeed/android/util/BFRateMe;->getInstance(Landroid/content/Context;)Lcom/buzzfeed/android/util/BFRateMe;

    move-result-object v0

    invoke-direct {v0}, Lcom/buzzfeed/android/util/BFRateMe;->disableRateMeDialog()V

    .line 78
    iget-object v0, p0, Lcom/buzzfeed/android/util/BFRateMe;->mTracker:Lcom/buzzfeed/analytics/client/BuzzFeedTracker;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/buzzfeed/android/util/BFRateMe;->mActivity:Lcom/buzzfeed/android/activity/BaseActivity;

    invoke-virtual {v2, v9}, Lcom/buzzfeed/android/activity/BaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "negative"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/buzzfeed/android/util/BFRateMe;->mActivity:Lcom/buzzfeed/android/activity/BaseActivity;

    const v3, 0x7f0901da

    invoke-virtual {v2, v3}, Lcom/buzzfeed/android/activity/BaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual/range {v0 .. v5}, Lcom/buzzfeed/analytics/client/BuzzFeedTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 79
    iget-object v0, p0, Lcom/buzzfeed/android/util/BFRateMe;->mActivity:Lcom/buzzfeed/android/activity/BaseActivity;

    invoke-static {v0}, Lcom/buzzfeed/android/util/BuzzUtils;->openFeedback(Landroid/app/Activity;)V

    goto/16 :goto_1a

    .line 82
    :pswitch_178
    iget-object v0, p0, Lcom/buzzfeed/android/util/BFRateMe;->mActivity:Lcom/buzzfeed/android/activity/BaseActivity;

    invoke-static {v0}, Lcom/buzzfeed/android/util/BFRateMe;->getInstance(Landroid/content/Context;)Lcom/buzzfeed/android/util/BFRateMe;

    move-result-object v0

    invoke-direct {v0}, Lcom/buzzfeed/android/util/BFRateMe;->disableRateMeDialog()V

    .line 83
    iget-object v0, p0, Lcom/buzzfeed/android/util/BFRateMe;->mTracker:Lcom/buzzfeed/analytics/client/BuzzFeedTracker;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/buzzfeed/android/util/BFRateMe;->mActivity:Lcom/buzzfeed/android/activity/BaseActivity;

    invoke-virtual {v2, v9}, Lcom/buzzfeed/android/activity/BaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "negative"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/buzzfeed/android/util/BFRateMe;->mActivity:Lcom/buzzfeed/android/activity/BaseActivity;

    invoke-virtual {v2, v3}, Lcom/buzzfeed/android/activity/BaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual/range {v0 .. v5}, Lcom/buzzfeed/analytics/client/BuzzFeedTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    goto/16 :goto_1a

    .line 42
    nop

    :pswitch_data_1aa
    .packed-switch 0x7f1100d2
        :pswitch_20
        :pswitch_1a
        :pswitch_3a
        :pswitch_54
    .end packed-switch

    .line 57
    :pswitch_data_1b6
    .packed-switch 0x7f1100d5
        :pswitch_7a
        :pswitch_fa
        :pswitch_c9
    .end packed-switch

    .line 75
    :pswitch_data_1c0
    .packed-switch 0x7f1100d5
        :pswitch_13f
        :pswitch_178
    .end packed-switch
.end method

.method public onLaunch()V
    .registers 10

    .prologue
    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    .line 137
    iget-object v4, p0, Lcom/buzzfeed/android/util/BFRateMe;->mPreferences:Landroid/content/SharedPreferences;

    const-string v5, "rate_me_time_of_first_launch"

    invoke-interface {v4, v5, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    .line 138
    .local v2, "timeOfFirstLaunch":J
    cmp-long v4, v2, v6

    if-nez v4, :cond_29

    .line 139
    iget-object v4, p0, Lcom/buzzfeed/android/util/BFRateMe;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v5, "rate_me_time_of_first_launch"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-interface {v4, v5, v6, v7}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 140
    sget-object v4, Lcom/buzzfeed/android/util/BFRateMe;->TAG:Ljava/lang/String;

    const-string v5, "Recorded the time of the first app launch"

    invoke-static {v4, v5}, Lcom/buzzfeed/toolkit/util/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    :cond_29
    invoke-direct {p0}, Lcom/buzzfeed/android/util/BFRateMe;->isDisabled()Z

    move-result v4

    if-nez v4, :cond_a0

    .line 144
    iget-object v4, p0, Lcom/buzzfeed/android/util/BFRateMe;->mPreferences:Landroid/content/SharedPreferences;

    const-string v5, "rate_me_launch_count"

    invoke-interface {v4, v5, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    add-int/lit8 v0, v4, 0x1

    .line 145
    .local v0, "launchCount":I
    iget-object v4, p0, Lcom/buzzfeed/android/util/BFRateMe;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v5, "rate_me_launch_count"

    invoke-interface {v4, v5, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 146
    sget-object v4, Lcom/buzzfeed/android/util/BFRateMe;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "App has been launched "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " times"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/buzzfeed/toolkit/util/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    iget-object v4, p0, Lcom/buzzfeed/android/util/BFRateMe;->mPreferences:Landroid/content/SharedPreferences;

    const-string v5, "rate_me_launches_since_last_prompt_count"

    invoke-interface {v4, v5, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    add-int/lit8 v1, v4, 0x1

    .line 149
    .local v1, "launchesSinceLastPrompt":I
    iget-object v4, p0, Lcom/buzzfeed/android/util/BFRateMe;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v5, "rate_me_launches_since_last_prompt_count"

    invoke-interface {v4, v5, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 150
    sget-object v4, Lcom/buzzfeed/android/util/BFRateMe;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "App has been launched "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " times since last prompt"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/buzzfeed/toolkit/util/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    invoke-direct {p0}, Lcom/buzzfeed/android/util/BFRateMe;->incrementDaysSinceLastPrompt()V

    .line 154
    .end local v0    # "launchCount":I
    .end local v1    # "launchesSinceLastPrompt":I
    :cond_a0
    return-void
.end method
