.class public Lcom/buzzfeed/android/activity/SplashActivity;
.super Lcom/buzzfeed/android/activity/BaseActivity;
.source "SplashActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/buzzfeed/android/activity/SplashActivity$SplashActivityBackgroundCallback;,
        Lcom/buzzfeed/android/activity/SplashActivity$BadgeBounceInterpolator;
    }
.end annotation


# static fields
.field private static final KEY_BADGES:Ljava/lang/String; = "badges"

.field private static final KEY_BUZZFEED:Ljava/lang/String; = "buzzfeed"

.field private static final KEY_BUZZFEED_DOT_COM:Ljava/lang/String; = "buzzfeed.com"

.field private static final KEY_DESTINATION:Ljava/lang/String; = "destination"

.field private static final KEY_HOME:Ljava/lang/String; = "home"

.field private static final KEY_HTTP:Ljava/lang/String; = "http"

.field private static final KEY_HTTPS:Ljava/lang/String; = "https"

.field private static final KEY_MESSAGE:Ljava/lang/String; = "message"

.field private static final KEY_NOTIFICATION:Ljava/lang/String; = "from_notification"

.field private static final KEY_NOTIFICATION_ID:Ljava/lang/String; = "notification_id"

.field private static final KEY_SHOW_ID:Ljava/lang/String; = "show_id"

.field private static final KEY_VALIDATE:Ljava/lang/String; = "validate"

.field private static final KEY_VERTICAL:Ljava/lang/String; = "vertical"

.field private static final KEY_VIDEO:Ljava/lang/String; = "videos"

.field public static final KEY_WIDGET_LANG:Ljava/lang/String; = "KEY_WIDGET_LANG"

.field private static final SPLASH_DISPLAY_LENGTH:I = 0x4bf


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private mRunnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/buzzfeed/android/activity/BaseActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/buzzfeed/android/activity/SplashActivity;Landroid/content/Intent;)V
    .registers 2
    .param p0, "x0"    # Lcom/buzzfeed/android/activity/SplashActivity;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/buzzfeed/android/activity/SplashActivity;->loadAndLaunchInitialIntent(Landroid/content/Intent;)V

    return-void
.end method

.method private dismissAndFinish()V
    .registers 2

    .prologue
    .line 224
    iget-object v0, p0, Lcom/buzzfeed/android/activity/SplashActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_9

    .line 225
    iget-object v0, p0, Lcom/buzzfeed/android/activity/SplashActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 227
    :cond_9
    invoke-virtual {p0}, Lcom/buzzfeed/android/activity/SplashActivity;->finish()V

    .line 228
    return-void
.end method

.method public static getNotificationIntent(ILjava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .registers 7
    .param p0, "notificationId"    # I
    .param p1, "buzzUrl"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 66
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 67
    .local v0, "buzzIntent":Landroid/content/Intent;
    const/high16 v2, 0x10000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 68
    const-string v2, "from_notification"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 69
    const-string v2, "message"

    invoke-virtual {v0, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 70
    const-string v2, "destination"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 71
    const-string v2, "notification_id"

    invoke-virtual {v0, v2, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 72
    invoke-static {p1}, Lcom/buzzfeed/android/util/BuzzUtils;->standardizeBuzzFeedUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 73
    .local v1, "buzzUri":Landroid/net/Uri;
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 74
    return-object v0
.end method

.method public static getShowNotificationIntent(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .registers 6
    .param p0, "notificationId"    # I
    .param p1, "buzzUrl"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "showId"    # Ljava/lang/String;

    .prologue
    .line 78
    invoke-static {p0, p1, p2}, Lcom/buzzfeed/android/activity/SplashActivity;->getNotificationIntent(ILjava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 79
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "show_id"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 80
    return-object v0
.end method

.method private handleDeepLink(Landroid/net/Uri;Landroid/content/Intent;)Z
    .registers 11
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v7, 0x0

    .line 176
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v4

    .line 177
    .local v4, "scheme":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    .line 179
    .local v0, "authority":Ljava/lang/String;
    invoke-static {p0}, Lcom/buzzfeed/android/data/EnvironmentConfig;->getEdition(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/buzzfeed/android/navigation/FeedListProvider;->getInstance(Ljava/lang/String;)Lcom/buzzfeed/android/navigation/FeedListProvider;

    move-result-object v2

    .line 181
    .local v2, "feedListProvider":Lcom/buzzfeed/android/navigation/FeedListProvider;
    const-string v5, "buzzfeed"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7e

    .line 182
    const-string v5, "badges"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2a

    const-string/jumbo v5, "vertical"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_57

    .line 184
    :cond_2a
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/buzzfeed/android/navigation/FeedListProvider;->getFeedForVertical(Ljava/lang/String;)Lcom/buzzfeed/android/data/Feed;

    move-result-object v1

    .line 185
    .local v1, "feed":Lcom/buzzfeed/android/data/Feed;
    invoke-virtual {v2, v1}, Lcom/buzzfeed/android/navigation/FeedListProvider;->isBottomNavFeed(Lcom/buzzfeed/android/data/Feed;)Z

    move-result v5

    if-eqz v5, :cond_53

    .line 186
    new-instance v3, Landroid/content/Intent;

    const-class v5, Lcom/buzzfeed/android/activity/PagerActivity;

    invoke-direct {v3, p0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 187
    .local v3, "homeIntent":Landroid/content/Intent;
    const/high16 v5, 0x10000000

    invoke-virtual {v3, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 188
    const/high16 v5, 0x4000000

    invoke-virtual {v3, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 189
    const-string v5, "KEY_FEED"

    invoke-virtual {v3, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 190
    invoke-virtual {p0, v3}, Lcom/buzzfeed/android/activity/SplashActivity;->startActivity(Landroid/content/Intent;)V

    .line 220
    .end local v1    # "feed":Lcom/buzzfeed/android/data/Feed;
    .end local v3    # "homeIntent":Landroid/content/Intent;
    :goto_51
    const/4 v5, 0x1

    return v5

    .line 192
    .restart local v1    # "feed":Lcom/buzzfeed/android/data/Feed;
    :cond_53
    invoke-static {p0, v1}, Lcom/buzzfeed/android/activity/BuffetActivity;->startIntentWithFeedNewTask(Landroid/app/Activity;Lcom/buzzfeed/android/data/Feed;)V

    goto :goto_51

    .line 194
    .end local v1    # "feed":Lcom/buzzfeed/android/data/Feed;
    :cond_57
    const-string v5, "home"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_63

    .line 195
    invoke-static {p0}, Lcom/buzzfeed/android/activity/PagerActivity;->startIntent(Landroid/app/Activity;)V

    goto :goto_51

    .line 196
    :cond_63
    const-string/jumbo v5, "videos"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_76

    .line 197
    const-string v5, "show_id"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5, v7, v7}, Lcom/buzzfeed/android/activity/ShowPageActivity;->startIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_51

    .line 201
    :cond_76
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5, v7}, Lcom/buzzfeed/android/activity/SpicyActivity;->startIntent(Landroid/app/Activity;Ljava/lang/String;Lcom/buzzfeed/android/data/Feed;)V

    goto :goto_51

    .line 203
    :cond_7e
    const-string v5, "http"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_8e

    const-string v5, "https"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b7

    .line 204
    :cond_8e
    const-string v5, "buzzfeed.com"

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_b3

    .line 205
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v5

    const-string/jumbo v6, "validate"

    invoke-interface {v5, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_ab

    .line 206
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/buzzfeed/android/util/chrometabs/CustomTabUtils;->openChromeTab(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_51

    .line 209
    :cond_ab
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5, v7}, Lcom/buzzfeed/android/activity/SpicyActivity;->startIntent(Landroid/app/Activity;Ljava/lang/String;Lcom/buzzfeed/android/data/Feed;)V

    goto :goto_51

    .line 213
    :cond_b3
    invoke-static {p0}, Lcom/buzzfeed/android/activity/PagerActivity;->startIntent(Landroid/app/Activity;)V

    goto :goto_51

    .line 217
    :cond_b7
    invoke-static {p0}, Lcom/buzzfeed/android/activity/PagerActivity;->startIntent(Landroid/app/Activity;)V

    goto :goto_51
.end method

.method private loadAndLaunchInitialIntent(Landroid/content/Intent;)V
    .registers 11
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 84
    const/4 v1, 0x1

    .line 85
    .local v1, "shouldFinish":Z
    const-string v6, "KEY_WIDGET_FEED_NAME"

    invoke-virtual {p1, v6}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_24

    .line 86
    const-string v6, "KEY_WIDGET_FEED_NAME"

    invoke-virtual {p1, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 87
    .local v4, "widgetFeedName":Ljava/lang/String;
    const-string v6, "KEY_WIDGET_BUZZ_URL"

    invoke-virtual {p1, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 88
    .local v3, "widgetBuzzUrl":Ljava/lang/String;
    const-string v6, "KEY_WIDGET_LANG"

    invoke-virtual {p1, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 89
    .local v5, "widgetLang":Ljava/lang/String;
    invoke-direct {p0, v4, v3, v5}, Lcom/buzzfeed/android/activity/SplashActivity;->startClickIntentFromWidget(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    .end local v3    # "widgetBuzzUrl":Ljava/lang/String;
    .end local v4    # "widgetFeedName":Ljava/lang/String;
    .end local v5    # "widgetLang":Ljava/lang/String;
    :cond_1e
    :goto_1e
    if-eqz v1, :cond_23

    invoke-virtual {p0}, Lcom/buzzfeed/android/activity/SplashActivity;->finish()V

    .line 111
    :cond_23
    return-void

    .line 90
    :cond_24
    const-string v6, "com.google.android.apps.plus.VIEW_DEEP_LINK"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_43

    .line 92
    invoke-static {p1}, Lcom/google/android/gms/plus/PlusShare;->getDeepLinkId(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    .line 93
    .local v0, "deepLinkId":Ljava/lang/String;
    if-eqz v0, :cond_3f

    .line 94
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 95
    .local v2, "uri":Landroid/net/Uri;
    invoke-direct {p0, v2, p1}, Lcom/buzzfeed/android/activity/SplashActivity;->handleDeepLink(Landroid/net/Uri;Landroid/content/Intent;)Z

    move-result v1

    .line 96
    goto :goto_1e

    .line 97
    .end local v2    # "uri":Landroid/net/Uri;
    :cond_3f
    invoke-static {p0}, Lcom/buzzfeed/android/activity/PagerActivity;->startIntent(Landroid/app/Activity;)V

    goto :goto_1e

    .line 99
    .end local v0    # "deepLinkId":Ljava/lang/String;
    :cond_43
    const-string v6, "android.intent.action.VIEW"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_74

    .line 101
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    .line 102
    .restart local v2    # "uri":Landroid/net/Uri;
    invoke-direct {p0, v2, p1}, Lcom/buzzfeed/android/activity/SplashActivity;->handleDeepLink(Landroid/net/Uri;Landroid/content/Intent;)Z

    move-result v1

    .line 103
    const-string v6, "from_notification"

    const/4 v7, 0x0

    invoke-virtual {p1, v6, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_1e

    .line 104
    invoke-static {}, Lcom/buzzfeed/analytics/client/DustbusterClient;->getInstance()Lcom/buzzfeed/analytics/client/DustbusterClient;

    move-result-object v6

    const-string v7, "message"

    invoke-virtual {p1, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "destination"

    invoke-virtual {p1, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/buzzfeed/analytics/client/DustbusterClient;->trackNotificationOpened(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1e

    .line 107
    .end local v2    # "uri":Landroid/net/Uri;
    :cond_74
    invoke-static {p0}, Lcom/buzzfeed/android/activity/PagerActivity;->startIntent(Landroid/app/Activity;)V

    goto :goto_1e
.end method

.method private loadAndPlayAnimation()V
    .registers 8

    .prologue
    const v6, 0x7f1100a8

    .line 150
    const v4, 0x7f1100a9

    const v5, 0x7f050002

    invoke-direct {p0, v4, v5}, Lcom/buzzfeed/android/activity/SplashActivity;->setUpAnimatorSet(II)Landroid/animation/AnimatorSet;

    move-result-object v3

    .line 151
    .local v3, "trendingArrowAnimatorSet":Landroid/animation/AnimatorSet;
    const v4, 0x7f050001

    invoke-direct {p0, v6, v4}, Lcom/buzzfeed/android/activity/SplashActivity;->setUpAnimatorSet(II)Landroid/animation/AnimatorSet;

    move-result-object v1

    .line 152
    .local v1, "badgeInAnimatorSet":Landroid/animation/AnimatorSet;
    new-instance v4, Lcom/buzzfeed/android/activity/SplashActivity$BadgeBounceInterpolator;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v5}, Lcom/buzzfeed/android/activity/SplashActivity$BadgeBounceInterpolator;-><init>(Lcom/buzzfeed/android/activity/SplashActivity;Lcom/buzzfeed/android/activity/SplashActivity$1;)V

    invoke-virtual {v1, v4}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 154
    invoke-virtual {p0, v6}, Lcom/buzzfeed/android/activity/SplashActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 155
    .local v0, "badgeImageView":Landroid/widget/ImageView;
    const v4, 0x7f04001e

    invoke-static {p0, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    .line 156
    .local v2, "badgeOutAnimatorSet":Landroid/view/animation/Animation;
    new-instance v4, Lcom/buzzfeed/android/activity/SplashActivity$2;

    invoke-direct {v4, p0, v0, v2}, Lcom/buzzfeed/android/activity/SplashActivity$2;-><init>(Lcom/buzzfeed/android/activity/SplashActivity;Landroid/widget/ImageView;Landroid/view/animation/Animation;)V

    invoke-virtual {v1, v4}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 163
    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->start()V

    .line 164
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    .line 165
    return-void
.end method

.method private setUpAnimatorSet(II)Landroid/animation/AnimatorSet;
    .registers 5
    .param p1, "imageViewResourceId"    # I
    .param p2, "animator"    # I

    .prologue
    .line 168
    invoke-virtual {p0, p1}, Lcom/buzzfeed/android/activity/SplashActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 169
    .local v1, "imageView":Landroid/widget/ImageView;
    invoke-virtual {v1}, Landroid/widget/ImageView;->clearAnimation()V

    .line 170
    invoke-static {p0, p2}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v0

    check-cast v0, Landroid/animation/AnimatorSet;

    .line 171
    .local v0, "animatorSet":Landroid/animation/AnimatorSet;
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->setTarget(Ljava/lang/Object;)V

    .line 172
    return-object v0
.end method

.method private shouldDisplaySplash()Z
    .registers 10

    .prologue
    const/4 v6, 0x0

    .line 274
    invoke-virtual {p0, v6}, Lcom/buzzfeed/android/activity/SplashActivity;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 275
    .local v3, "sharedPreferences":Landroid/content/SharedPreferences;
    invoke-virtual {p0}, Lcom/buzzfeed/android/activity/SplashActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0902bf

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 276
    .local v1, "defaultValue":I
    const v7, 0x7f09029b

    invoke-virtual {p0, v7}, Lcom/buzzfeed/android/activity/SplashActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 277
    .local v5, "storedVersionKey":Ljava/lang/String;
    invoke-interface {v3, v5, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 278
    .local v4, "storedVersion":I
    const v0, 0x7a8f2

    .line 279
    .local v0, "currentBuildNumber":I
    if-ge v4, v0, :cond_3f

    .line 280
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 281
    .local v2, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v2, v5, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 282
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 283
    # getter for: Lcom/buzzfeed/android/activity/SplashActivity$SplashActivityBackgroundCallback;->sIsFromBackground:Z
    invoke-static {}, Lcom/buzzfeed/android/activity/SplashActivity$SplashActivityBackgroundCallback;->access$200()Z

    move-result v7

    if-nez v7, :cond_3f

    invoke-static {p0}, Lcom/buzzfeed/android/experiment/SplashABTest;->shouldNotUseSplash(Landroid/content/Context;)Z

    move-result v7

    if-nez v7, :cond_3f

    const/4 v6, 0x1

    .line 285
    .end local v2    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_3f
    return v6
.end method

.method private startClickIntentFromWidget(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .param p1, "feedName"    # Ljava/lang/String;
    .param p2, "buzzUri"    # Ljava/lang/String;
    .param p3, "lang"    # Ljava/lang/String;

    .prologue
    .line 231
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    .line 232
    .local v1, "locale":Ljava/lang/String;
    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20

    if-eqz p1, :cond_20

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_20

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_20

    .line 233
    invoke-static {p0, p1, p2}, Lcom/buzzfeed/android/activity/SplashActivity;->startIntentFromWidget(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    :goto_1f
    return-void

    .line 235
    :cond_20
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-static {p2}, Lcom/buzzfeed/android/data/EnvironmentConfig;->getUrlWithSSLBaseUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 236
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v2, 0x10000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 237
    const/high16 v2, 0x4000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 238
    const-string v2, "android.intent.action.VIEW"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 239
    invoke-virtual {p0, v0}, Lcom/buzzfeed/android/activity/SplashActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_1f
.end method

.method public static startIntentFromWidget(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .registers 10
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "feedName"    # Ljava/lang/String;
    .param p2, "buzzUrl"    # Ljava/lang/String;

    .prologue
    .line 244
    invoke-static {p0}, Landroid/app/TaskStackBuilder;->create(Landroid/content/Context;)Landroid/app/TaskStackBuilder;

    move-result-object v4

    .line 245
    .local v4, "taskStackBuilder":Landroid/app/TaskStackBuilder;
    new-instance v0, Landroid/content/Intent;

    const-class v6, Lcom/buzzfeed/android/activity/SpicyActivity;

    invoke-direct {v0, p0, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 246
    .local v0, "bPageIntent":Landroid/content/Intent;
    const/high16 v6, 0x10000000

    invoke-virtual {v0, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 247
    const/high16 v6, 0x4000000

    invoke-virtual {v0, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 248
    const-string v6, "KEY_URL"

    invoke-virtual {v0, v6, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 251
    invoke-static {p0}, Lcom/buzzfeed/android/data/EnvironmentConfig;->getEdition(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/buzzfeed/android/navigation/FeedListProvider;->getInstance(Ljava/lang/String;)Lcom/buzzfeed/android/navigation/FeedListProvider;

    move-result-object v2

    .line 253
    .local v2, "feedListProvider":Lcom/buzzfeed/android/navigation/FeedListProvider;
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/buzzfeed/android/navigation/FeedListProvider;->getFeedForVertical(Ljava/lang/String;)Lcom/buzzfeed/android/data/Feed;

    move-result-object v1

    .line 254
    .local v1, "feedForWidget":Lcom/buzzfeed/android/data/Feed;
    const-string v6, "KEY_FEED"

    invoke-virtual {v0, v6, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 257
    invoke-virtual {v2, v1}, Lcom/buzzfeed/android/navigation/FeedListProvider;->isBottomNavFeed(Lcom/buzzfeed/android/data/Feed;)Z

    move-result v6

    if-eqz v6, :cond_4a

    .line 258
    invoke-virtual {v4, v0}, Landroid/app/TaskStackBuilder;->addNextIntentWithParentStack(Landroid/content/Intent;)Landroid/app/TaskStackBuilder;

    .line 260
    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Landroid/app/TaskStackBuilder;->editIntentAt(I)Landroid/content/Intent;

    move-result-object v5

    .line 261
    .local v5, "upIntent":Landroid/content/Intent;
    const-string v6, "KEY_FEED"

    invoke-virtual {v5, v6, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 269
    .end local v5    # "upIntent":Landroid/content/Intent;
    :goto_42
    invoke-virtual {v4, v0}, Landroid/app/TaskStackBuilder;->addNextIntent(Landroid/content/Intent;)Landroid/app/TaskStackBuilder;

    move-result-object v6

    .line 270
    invoke-virtual {v6}, Landroid/app/TaskStackBuilder;->startActivities()V

    .line 271
    return-void

    .line 263
    :cond_4a
    const-class v6, Lcom/buzzfeed/android/activity/BuffetActivity;

    invoke-virtual {v4, v6}, Landroid/app/TaskStackBuilder;->addParentStack(Ljava/lang/Class;)Landroid/app/TaskStackBuilder;

    .line 264
    new-instance v3, Landroid/content/Intent;

    const-class v6, Lcom/buzzfeed/android/activity/BuffetActivity;

    invoke-direct {v3, p0, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 265
    .local v3, "nextIntent":Landroid/content/Intent;
    const-string v6, "KEY_FEED"

    invoke-virtual {v3, v6, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 266
    invoke-virtual {v4, v3}, Landroid/app/TaskStackBuilder;->addNextIntent(Landroid/content/Intent;)Landroid/app/TaskStackBuilder;

    goto :goto_42
.end method

.method private startSplashAnimation()V
    .registers 5

    .prologue
    .line 132
    invoke-direct {p0}, Lcom/buzzfeed/android/activity/SplashActivity;->shouldDisplaySplash()Z

    move-result v0

    if-eqz v0, :cond_27

    .line 133
    const v0, 0x7f030027

    invoke-virtual {p0, v0}, Lcom/buzzfeed/android/activity/SplashActivity;->setContentView(I)V

    .line 134
    invoke-direct {p0}, Lcom/buzzfeed/android/activity/SplashActivity;->loadAndPlayAnimation()V

    .line 135
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/buzzfeed/android/activity/SplashActivity;->mHandler:Landroid/os/Handler;

    .line 136
    new-instance v0, Lcom/buzzfeed/android/activity/SplashActivity$1;

    invoke-direct {v0, p0}, Lcom/buzzfeed/android/activity/SplashActivity$1;-><init>(Lcom/buzzfeed/android/activity/SplashActivity;)V

    iput-object v0, p0, Lcom/buzzfeed/android/activity/SplashActivity;->mRunnable:Ljava/lang/Runnable;

    .line 143
    iget-object v0, p0, Lcom/buzzfeed/android/activity/SplashActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/buzzfeed/android/activity/SplashActivity;->mRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x4bf

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 147
    :goto_26
    return-void

    .line 145
    :cond_27
    invoke-virtual {p0}, Lcom/buzzfeed/android/activity/SplashActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/buzzfeed/android/activity/SplashActivity;->loadAndLaunchInitialIntent(Landroid/content/Intent;)V

    goto :goto_26
.end method


# virtual methods
.method protected onNewIntent(Landroid/content/Intent;)V
    .registers 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 127
    invoke-super {p0, p1}, Lcom/buzzfeed/android/activity/BaseActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 128
    invoke-direct {p0, p1}, Lcom/buzzfeed/android/activity/SplashActivity;->loadAndLaunchInitialIntent(Landroid/content/Intent;)V

    .line 129
    return-void
.end method

.method protected onPause()V
    .registers 3

    .prologue
    .line 115
    invoke-super {p0}, Lcom/buzzfeed/android/activity/BaseActivity;->onPause()V

    .line 116
    iget-object v0, p0, Lcom/buzzfeed/android/activity/SplashActivity;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/buzzfeed/android/activity/SplashActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/buzzfeed/android/activity/SplashActivity;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 117
    :cond_e
    return-void
.end method

.method protected onResume()V
    .registers 1

    .prologue
    .line 121
    invoke-super {p0}, Lcom/buzzfeed/android/activity/BaseActivity;->onResume()V

    .line 122
    invoke-direct {p0}, Lcom/buzzfeed/android/activity/SplashActivity;->startSplashAnimation()V

    .line 123
    return-void
.end method
