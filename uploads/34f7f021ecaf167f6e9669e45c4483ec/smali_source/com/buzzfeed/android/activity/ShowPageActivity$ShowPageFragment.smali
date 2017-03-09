.class public Lcom/buzzfeed/android/activity/ShowPageActivity$ShowPageFragment;
.super Lcom/buzzfeed/showx/showpage/BaseShowPageFragment;
.source "ShowPageActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/buzzfeed/android/activity/ShowPageActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ShowPageFragment"
.end annotation


# instance fields
.field private mPushNotificationPreference:Lcom/buzzfeed/android/data/preferences/PushNotificationPreference;

.field private mShareActionListener:Lcom/buzzfeed/toolkit/sharmo/ShareManager$ShareActionListener;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 135
    invoke-direct {p0}, Lcom/buzzfeed/showx/showpage/BaseShowPageFragment;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lcom/buzzfeed/android/activity/ShowPageActivity$ShowPageFragment;)Lcom/buzzfeed/showx/showpage/data/tracker/ShowPageTracker;
    .registers 2
    .param p0, "x0"    # Lcom/buzzfeed/android/activity/ShowPageActivity$ShowPageFragment;

    .prologue
    .line 135
    iget-object v0, p0, Lcom/buzzfeed/android/activity/ShowPageActivity$ShowPageFragment;->mShowPageTracker:Lcom/buzzfeed/showx/showpage/data/tracker/ShowPageTracker;

    return-object v0
.end method


# virtual methods
.method public handleShowOpened()V
    .registers 3

    .prologue
    .line 298
    invoke-virtual {p0}, Lcom/buzzfeed/android/activity/ShowPageActivity$ShowPageFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/buzzfeed/android/activity/ShowPageActivity$ShowPageFragment;->mShowId:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/buzzfeed/android/pushnotifications/PushNotificationUtil;->handleShowPageOpened(Landroid/content/Context;Ljava/lang/String;)V

    .line 299
    return-void
.end method

.method protected isPushNotificationsEnabled()Z
    .registers 2

    .prologue
    .line 200
    iget-object v0, p0, Lcom/buzzfeed/android/activity/ShowPageActivity$ShowPageFragment;->mPushNotificationPreference:Lcom/buzzfeed/android/data/preferences/PushNotificationPreference;

    invoke-virtual {v0}, Lcom/buzzfeed/android/data/preferences/PushNotificationPreference;->getValue()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public isShowSubscriptionsEnabled()Z
    .registers 2

    .prologue
    .line 293
    invoke-virtual {p0}, Lcom/buzzfeed/android/activity/ShowPageActivity$ShowPageFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/buzzfeed/android/experiment/ShowSubscriptionsABTest;->shouldEnableShowSubscriptions(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 144
    invoke-super {p0, p1}, Lcom/buzzfeed/showx/showpage/BaseShowPageFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 145
    new-instance v0, Lcom/buzzfeed/android/data/preferences/PushNotificationPreference;

    invoke-virtual {p0}, Lcom/buzzfeed/android/activity/ShowPageActivity$ShowPageFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/buzzfeed/android/data/preferences/PushNotificationPreference;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/buzzfeed/android/activity/ShowPageActivity$ShowPageFragment;->mPushNotificationPreference:Lcom/buzzfeed/android/data/preferences/PushNotificationPreference;

    .line 146
    return-void
.end method

.method public onDestroy()V
    .registers 2

    .prologue
    .line 150
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/buzzfeed/android/activity/ShowPageActivity$ShowPageFragment;->mShareActionListener:Lcom/buzzfeed/toolkit/sharmo/ShareManager$ShareActionListener;

    .line 151
    invoke-super {p0}, Lcom/buzzfeed/showx/showpage/BaseShowPageFragment;->onDestroy()V

    .line 152
    return-void
.end method

.method public onGetRecipeClicked(Ljava/lang/String;)V
    .registers 4
    .param p1, "contentUri"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 288
    invoke-virtual {p0}, Lcom/buzzfeed/android/activity/ShowPageActivity$ShowPageFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/buzzfeed/android/activity/SpicyActivity;->startIntent(Landroid/app/Activity;Ljava/lang/String;Lcom/buzzfeed/android/data/Feed;)V

    .line 289
    return-void
.end method

.method public onInstantAppInstall()V
    .registers 1

    .prologue
    .line 304
    return-void
.end method

.method public onShareClicked(Lcom/buzzfeed/toolkit/content/FlowItem;I)V
    .registers 11
    .param p1, "flowItem"    # Lcom/buzzfeed/toolkit/content/FlowItem;
    .param p2, "positionInFeed"    # I

    .prologue
    .line 256
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    # getter for: Lcom/buzzfeed/android/activity/ShowPageActivity;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/buzzfeed/android/activity/ShowPageActivity;->access$000()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".onShareClicked"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 257
    .local v0, "TAG":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/buzzfeed/toolkit/content/FlowItem;->getContent()Lcom/buzzfeed/toolkit/content/Content;

    move-result-object v1

    check-cast v1, Lcom/buzzfeed/toolkit/content/VideoContent;

    .line 258
    .local v1, "content":Lcom/buzzfeed/toolkit/content/VideoContent;
    if-eqz v1, :cond_29

    invoke-interface {v1}, Lcom/buzzfeed/toolkit/content/VideoContent;->getShareUrl()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2f

    .line 259
    :cond_29
    const-string v5, "Unable to perform share action. Required content was not available."

    invoke-static {v0, v5}, Lcom/buzzfeed/toolkit/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    :goto_2e
    return-void

    .line 263
    :cond_2f
    invoke-static {v1}, Lcom/buzzfeed/toolkit/util/WeaverVideoUtils;->getFirstVideoFromVideoContent(Lcom/buzzfeed/toolkit/content/VideoContent;)Lcom/buzzfeed/toolkit/content/WeaverItem$Video;

    move-result-object v3

    .line 264
    .local v3, "video":Lcom/buzzfeed/toolkit/content/WeaverItem$Video;
    invoke-static {v3}, Lcom/buzzfeed/toolkit/util/WeaverVideoUtils;->getHlsVideoContentUri(Lcom/buzzfeed/toolkit/content/WeaverItem$Video;)Ljava/lang/String;

    move-result-object v4

    .line 265
    .local v4, "videoContentUri":Ljava/lang/String;
    invoke-interface {v1}, Lcom/buzzfeed/toolkit/content/VideoContent;->getUri()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/buzzfeed/android/data/EnvironmentConfig;->getUrlWithSSLBaseUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 267
    .local v2, "formattedShareUri":Ljava/lang/String;
    iget-object v5, p0, Lcom/buzzfeed/android/activity/ShowPageActivity$ShowPageFragment;->mShowPageTracker:Lcom/buzzfeed/showx/showpage/data/tracker/ShowPageTracker;

    invoke-virtual {v5}, Lcom/buzzfeed/showx/showpage/data/tracker/ShowPageTracker;->trackOpenShareSheet()V

    .line 268
    new-instance v5, Lcom/buzzfeed/android/activity/ShowPageActivity$ShowPageFragment$5;

    invoke-direct {v5, p0, v1, v4, p2}, Lcom/buzzfeed/android/activity/ShowPageActivity$ShowPageFragment$5;-><init>(Lcom/buzzfeed/android/activity/ShowPageActivity$ShowPageFragment;Lcom/buzzfeed/toolkit/content/VideoContent;Ljava/lang/String;I)V

    iput-object v5, p0, Lcom/buzzfeed/android/activity/ShowPageActivity$ShowPageFragment;->mShareActionListener:Lcom/buzzfeed/toolkit/sharmo/ShareManager$ShareActionListener;

    .line 280
    invoke-virtual {p0}, Lcom/buzzfeed/android/activity/ShowPageActivity$ShowPageFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    .line 281
    invoke-interface {v1}, Lcom/buzzfeed/toolkit/content/VideoContent;->getSubject()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/buzzfeed/android/activity/ShowPageActivity$ShowPageFragment;->mShareActionListener:Lcom/buzzfeed/toolkit/sharmo/ShareManager$ShareActionListener;

    .line 279
    invoke-static {v5, v6, v2, v7}, Lcom/buzzfeed/toolkit/sharmo/ShareManager;->shareWithListener(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/buzzfeed/toolkit/sharmo/ShareManager$ShareActionListener;)V

    goto :goto_2e
.end method

.method public onVideoCellClicked(Lcom/buzzfeed/toolkit/content/VideoContent;Landroid/widget/ImageView;JIZ)V
    .registers 20
    .param p1, "content"    # Lcom/buzzfeed/toolkit/content/VideoContent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "thumbnail"    # Landroid/widget/ImageView;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "positionInVideo"    # J
    .param p5, "positionInFeed"    # I
    .param p6, "isPlaying"    # Z

    .prologue
    .line 158
    iget-object v3, p0, Lcom/buzzfeed/android/activity/ShowPageActivity$ShowPageFragment;->mAutoFocusController:Lcom/buzzfeed/android/vcr/toolbox/AutoFocusController;

    invoke-virtual {v3}, Lcom/buzzfeed/android/vcr/toolbox/AutoFocusController;->getCurrentViewHolder()Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v2

    .line 159
    .local v2, "holder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    if-eqz v2, :cond_14

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v3

    move/from16 v0, p5

    if-eq v3, v0, :cond_14

    .line 161
    move/from16 v0, p5

    iput v0, p0, Lcom/buzzfeed/android/activity/ShowPageActivity$ShowPageFragment;->mFocusedAdapterPosition:I

    .line 164
    :cond_14
    iget-object v3, p0, Lcom/buzzfeed/android/activity/ShowPageActivity$ShowPageFragment;->mShowPageTracker:Lcom/buzzfeed/showx/showpage/data/tracker/ShowPageTracker;

    move-object v4, p1

    move/from16 v5, p5

    move-wide/from16 v6, p3

    move/from16 v8, p6

    invoke-virtual/range {v3 .. v8}, Lcom/buzzfeed/showx/showpage/data/tracker/ShowPageTracker;->trackVideoCellClicked(Lcom/buzzfeed/toolkit/content/VideoContent;IJZ)V

    .line 166
    new-instance v10, Lcom/buzzfeed/mediaviewer/VideoViewerFragmentActivity$IntentBuilder;

    invoke-direct {v10}, Lcom/buzzfeed/mediaviewer/VideoViewerFragmentActivity$IntentBuilder;-><init>()V

    .line 168
    .local v10, "intentBuilder":Lcom/buzzfeed/mediaviewer/VideoViewerFragmentActivity$IntentBuilder;
    invoke-virtual {v10, p1}, Lcom/buzzfeed/mediaviewer/VideoViewerFragmentActivity$IntentBuilder;->videoContent(Lcom/buzzfeed/toolkit/content/VideoContent;)Lcom/buzzfeed/mediaviewer/VideoViewerFragmentActivity$IntentBuilder;

    move-result-object v3

    .line 169
    move-wide/from16 v0, p3

    invoke-virtual {v3, v0, v1}, Lcom/buzzfeed/mediaviewer/VideoViewerFragmentActivity$IntentBuilder;->startPosition(J)Lcom/buzzfeed/mediaviewer/MediaViewerArgumentBuilder;

    move-result-object v3

    .line 170
    move/from16 v0, p5

    invoke-virtual {v3, v0}, Lcom/buzzfeed/mediaviewer/MediaViewerArgumentBuilder;->referrerFeedPosition(I)Lcom/buzzfeed/mediaviewer/MediaViewerArgumentBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/buzzfeed/android/activity/ShowPageActivity$ShowPageFragment;->mScreenName:Ljava/lang/String;

    .line 171
    invoke-virtual {v3, v4}, Lcom/buzzfeed/mediaviewer/MediaViewerArgumentBuilder;->referrerScreen(Ljava/lang/String;)Lcom/buzzfeed/mediaviewer/MediaViewerArgumentBuilder;

    move-result-object v3

    const-string/jumbo v4, "tap_to_play_auto"

    .line 172
    invoke-virtual {v3, v4}, Lcom/buzzfeed/mediaviewer/MediaViewerArgumentBuilder;->initialPlaybackReason(Ljava/lang/String;)Lcom/buzzfeed/mediaviewer/MediaViewerArgumentBuilder;

    .line 174
    invoke-interface {p1}, Lcom/buzzfeed/toolkit/content/VideoContent;->getShow()Lcom/buzzfeed/toolkit/content/WeaverEmbed$Show;

    move-result-object v3

    if-eqz v3, :cond_52

    .line 175
    invoke-interface {p1}, Lcom/buzzfeed/toolkit/content/VideoContent;->getShow()Lcom/buzzfeed/toolkit/content/WeaverEmbed$Show;

    move-result-object v3

    invoke-virtual {v3}, Lcom/buzzfeed/toolkit/content/WeaverEmbed$Show;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v10, v3}, Lcom/buzzfeed/mediaviewer/VideoViewerFragmentActivity$IntentBuilder;->showId(Ljava/lang/String;)Lcom/buzzfeed/mediaviewer/MediaViewerArgumentBuilder;

    .line 179
    :cond_52
    invoke-interface {p1}, Lcom/buzzfeed/toolkit/content/VideoContent;->getSourceUri()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_76

    invoke-interface {p1}, Lcom/buzzfeed/toolkit/content/VideoContent;->getShow()Lcom/buzzfeed/toolkit/content/WeaverEmbed$Show;

    move-result-object v3

    invoke-static {v3}, Lcom/buzzfeed/toolkit/util/WeaverVideoUtils;->hasTastySpecificShowContent(Lcom/buzzfeed/toolkit/content/WeaverEmbed$Show;)Z

    move-result v3

    if-eqz v3, :cond_76

    .line 180
    invoke-virtual {p0}, Lcom/buzzfeed/android/activity/ShowPageActivity$ShowPageFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-interface {p1}, Lcom/buzzfeed/toolkit/content/VideoContent;->getSourceUri()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Lcom/buzzfeed/android/activity/SpicyActivity;->getDeepLinkIntent(Landroid/app/Activity;Ljava/lang/String;Lcom/buzzfeed/android/data/Feed;)Landroid/content/Intent;

    move-result-object v12

    .line 181
    .local v12, "recipeClickIntent":Landroid/content/Intent;
    invoke-virtual {v10, v12}, Lcom/buzzfeed/mediaviewer/VideoViewerFragmentActivity$IntentBuilder;->recipeClickIntent(Landroid/content/Intent;)Lcom/buzzfeed/mediaviewer/MediaViewerArgumentBuilder;

    .line 185
    .end local v12    # "recipeClickIntent":Landroid/content/Intent;
    :cond_76
    invoke-static {}, Lcom/buzzfeed/toolkit/util/VersionUtil;->hasLollipop()Z

    move-result v3

    if-eqz v3, :cond_9b

    .line 186
    invoke-virtual {v10, p2}, Lcom/buzzfeed/mediaviewer/VideoViewerFragmentActivity$IntentBuilder;->withSharedElementCoverImage(Landroid/view/View;)Lcom/buzzfeed/mediaviewer/VideoViewerFragmentActivity$IntentBuilder;

    .line 188
    invoke-virtual {p0}, Lcom/buzzfeed/android/activity/ShowPageActivity$ShowPageFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    .line 190
    invoke-virtual {p2}, Landroid/widget/ImageView;->getTransitionName()Ljava/lang/String;

    move-result-object v4

    .line 187
    invoke-static {v3, p2, v4}, Landroid/support/v4/app/ActivityOptionsCompat;->makeSceneTransitionAnimation(Landroid/app/Activity;Landroid/view/View;Ljava/lang/String;)Landroid/support/v4/app/ActivityOptionsCompat;

    move-result-object v11

    .line 191
    .local v11, "optionsCompat":Landroid/support/v4/app/ActivityOptionsCompat;
    invoke-virtual {p0}, Lcom/buzzfeed/android/activity/ShowPageActivity$ShowPageFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v10, v3}, Lcom/buzzfeed/mediaviewer/VideoViewerFragmentActivity$IntentBuilder;->build(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v9

    .line 192
    .local v9, "intent":Landroid/content/Intent;
    invoke-virtual {v11}, Landroid/support/v4/app/ActivityOptionsCompat;->toBundle()Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {p0, v9, v3}, Lcom/buzzfeed/android/activity/ShowPageActivity$ShowPageFragment;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 196
    .end local v9    # "intent":Landroid/content/Intent;
    .end local v11    # "optionsCompat":Landroid/support/v4/app/ActivityOptionsCompat;
    :goto_9a
    return-void

    .line 194
    :cond_9b
    invoke-virtual {p0}, Lcom/buzzfeed/android/activity/ShowPageActivity$ShowPageFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v10, v3}, Lcom/buzzfeed/mediaviewer/VideoViewerFragmentActivity$IntentBuilder;->build(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/buzzfeed/android/activity/ShowPageActivity$ShowPageFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_9a
.end method

.method protected setPushNotificationsEnabled()V
    .registers 3

    .prologue
    .line 205
    invoke-virtual {p0}, Lcom/buzzfeed/android/activity/ShowPageActivity$ShowPageFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/buzzfeed/android/pushnotifications/PushNotificationUtil;->notificationStatusChanged(Landroid/content/Context;Z)V

    .line 206
    return-void
.end method

.method protected showDisableShowSubscriptionPrompt(Lcom/buzzfeed/showx/showpage/BaseShowPageFragment$PushNotificationPromptCallback;)V
    .registers 5
    .param p1, "callback"    # Lcom/buzzfeed/showx/showpage/BaseShowPageFragment$PushNotificationPromptCallback;

    .prologue
    .line 233
    new-instance v0, Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog$Builder;

    invoke-virtual {p0}, Lcom/buzzfeed/android/activity/ShowPageActivity$ShowPageFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0902b2

    .line 234
    invoke-virtual {v0, v1}, Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog$Builder;->setTitle(I)Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0902b1

    .line 235
    invoke-virtual {v0, v1}, Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog$Builder;->setMessage(I)Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0902b0

    .line 236
    invoke-virtual {p0, v1}, Lcom/buzzfeed/android/activity/ShowPageActivity$ShowPageFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/buzzfeed/android/activity/ShowPageActivity$ShowPageFragment$4;

    invoke-direct {v2, p0, p1}, Lcom/buzzfeed/android/activity/ShowPageActivity$ShowPageFragment$4;-><init>(Lcom/buzzfeed/android/activity/ShowPageActivity$ShowPageFragment;Lcom/buzzfeed/showx/showpage/BaseShowPageFragment$PushNotificationPromptCallback;)V

    invoke-virtual {v0, v1, v2}, Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x1040000

    .line 244
    invoke-virtual {p0, v1}, Lcom/buzzfeed/android/activity/ShowPageActivity$ShowPageFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/buzzfeed/android/activity/ShowPageActivity$ShowPageFragment$3;

    invoke-direct {v2, p0, p1}, Lcom/buzzfeed/android/activity/ShowPageActivity$ShowPageFragment$3;-><init>(Lcom/buzzfeed/android/activity/ShowPageActivity$ShowPageFragment;Lcom/buzzfeed/showx/showpage/BaseShowPageFragment$PushNotificationPromptCallback;)V

    invoke-virtual {v0, v1, v2}, Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog$Builder;

    move-result-object v0

    .line 251
    invoke-virtual {v0}, Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    .line 252
    return-void
.end method

.method protected showEnablePushNotificationPrompt(Lcom/buzzfeed/showx/showpage/BaseShowPageFragment$PushNotificationPromptCallback;)V
    .registers 5
    .param p1, "callback"    # Lcom/buzzfeed/showx/showpage/BaseShowPageFragment$PushNotificationPromptCallback;

    .prologue
    .line 210
    new-instance v0, Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog$Builder;

    invoke-virtual {p0}, Lcom/buzzfeed/android/activity/ShowPageActivity$ShowPageFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0902b5

    .line 211
    invoke-virtual {v0, v1}, Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog$Builder;->setTitle(I)Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0902b4

    .line 212
    invoke-virtual {v0, v1}, Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog$Builder;->setMessage(I)Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0902b3

    .line 213
    invoke-virtual {p0, v1}, Lcom/buzzfeed/android/activity/ShowPageActivity$ShowPageFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/buzzfeed/android/activity/ShowPageActivity$ShowPageFragment$2;

    invoke-direct {v2, p0, p1}, Lcom/buzzfeed/android/activity/ShowPageActivity$ShowPageFragment$2;-><init>(Lcom/buzzfeed/android/activity/ShowPageActivity$ShowPageFragment;Lcom/buzzfeed/showx/showpage/BaseShowPageFragment$PushNotificationPromptCallback;)V

    invoke-virtual {v0, v1, v2}, Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x1040000

    .line 221
    invoke-virtual {p0, v1}, Lcom/buzzfeed/android/activity/ShowPageActivity$ShowPageFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/buzzfeed/android/activity/ShowPageActivity$ShowPageFragment$1;

    invoke-direct {v2, p0, p1}, Lcom/buzzfeed/android/activity/ShowPageActivity$ShowPageFragment$1;-><init>(Lcom/buzzfeed/android/activity/ShowPageActivity$ShowPageFragment;Lcom/buzzfeed/showx/showpage/BaseShowPageFragment$PushNotificationPromptCallback;)V

    invoke-virtual {v0, v1, v2}, Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog$Builder;

    move-result-object v0

    .line 228
    invoke-virtual {v0}, Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    .line 229
    return-void
.end method
