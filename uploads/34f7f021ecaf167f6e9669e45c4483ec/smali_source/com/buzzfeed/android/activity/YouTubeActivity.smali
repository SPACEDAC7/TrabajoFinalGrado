.class public Lcom/buzzfeed/android/activity/YouTubeActivity;
.super Lcom/buzzfeed/android/activity/BaseActivity;
.source "YouTubeActivity.java"

# interfaces
.implements Lcom/google/android/youtube/player/YouTubePlayer$OnInitializedListener;


# static fields
.field private static final KEY_VIDEO_ID:Ljava/lang/String; = "video_id"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private videoId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 19
    const-class v0, Lcom/buzzfeed/android/activity/YouTubeActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/buzzfeed/android/activity/YouTubeActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/buzzfeed/android/activity/BaseActivity;-><init>()V

    .line 20
    const-string v0, ""

    iput-object v0, p0, Lcom/buzzfeed/android/activity/YouTubeActivity;->videoId:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/buzzfeed/android/activity/YouTubeActivity;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/buzzfeed/android/activity/YouTubeActivity;

    .prologue
    .line 17
    iget-object v0, p0, Lcom/buzzfeed/android/activity/YouTubeActivity;->videoId:Ljava/lang/String;

    return-object v0
.end method

.method public static getStartIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "videoId"    # Ljava/lang/String;

    .prologue
    .line 24
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/buzzfeed/android/activity/YouTubeActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 25
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "video_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 26
    return-object v0
.end method

.method public static playYoutubeOnExternalPlayer(Landroid/content/Context;Ljava/lang/String;)V
    .registers 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "videoId"    # Ljava/lang/String;

    .prologue
    .line 81
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/buzzfeed/android/activity/YouTubeActivity;->TAG:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".playYoutubeOnExternalPlayer"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 83
    .local v0, "TAG":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0902dc

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 84
    .local v2, "uri":Landroid/net/Uri;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Starting external YouTubeActivity intent with URI: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/buzzfeed/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v1, v3, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 86
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 87
    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .registers 1

    .prologue
    .line 77
    invoke-virtual {p0}, Lcom/buzzfeed/android/activity/YouTubeActivity;->finish()V

    .line 78
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 72
    invoke-super {p0, p1}, Lcom/buzzfeed/android/activity/BaseActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 73
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 31
    invoke-super {p0, p1}, Lcom/buzzfeed/android/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 32
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/buzzfeed/android/activity/YouTubeActivity;->TAG:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".onCreate"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 33
    .local v0, "TAG":Ljava/lang/String;
    const v2, 0x7f03002b

    invoke-virtual {p0, v2}, Lcom/buzzfeed/android/activity/YouTubeActivity;->setContentView(I)V

    .line 34
    const-string v2, "Called"

    invoke-static {v0, v2}, Lcom/buzzfeed/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    invoke-virtual {p0}, Lcom/buzzfeed/android/activity/YouTubeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v3, "video_id"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/buzzfeed/android/activity/YouTubeActivity;->videoId:Ljava/lang/String;

    .line 37
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "videoId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v2, p0, Lcom/buzzfeed/android/activity/YouTubeActivity;->videoId:Ljava/lang/String;

    if-nez v2, :cond_66

    const-string v2, "null"

    :goto_42
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/buzzfeed/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    invoke-virtual {p0}, Lcom/buzzfeed/android/activity/YouTubeActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    const v3, 0x7f1100ad

    invoke-virtual {v2, v3}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/google/android/youtube/player/YouTubePlayerSupportFragment;

    .line 40
    .local v1, "youTubePlayerFragment":Lcom/google/android/youtube/player/YouTubePlayerSupportFragment;
    invoke-static {}, Lcom/buzzfeed/toolkit/util/BFVault;->getInstance()Lcom/buzzfeed/toolkit/util/BFVault;

    move-result-object v2

    invoke-virtual {v2}, Lcom/buzzfeed/toolkit/util/BFVault;->getYouTubeDeveloperKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p0}, Lcom/google/android/youtube/player/YouTubePlayerSupportFragment;->initialize(Ljava/lang/String;Lcom/google/android/youtube/player/YouTubePlayer$OnInitializedListener;)V

    .line 41
    return-void

    .line 37
    .end local v1    # "youTubePlayerFragment":Lcom/google/android/youtube/player/YouTubePlayerSupportFragment;
    :cond_66
    iget-object v2, p0, Lcom/buzzfeed/android/activity/YouTubeActivity;->videoId:Ljava/lang/String;

    goto :goto_42
.end method

.method public onInitializationFailure(Lcom/google/android/youtube/player/YouTubePlayer$Provider;Lcom/google/android/youtube/player/YouTubeInitializationResult;)V
    .registers 7
    .param p1, "provider"    # Lcom/google/android/youtube/player/YouTubePlayer$Provider;
    .param p2, "errorReason"    # Lcom/google/android/youtube/player/YouTubeInitializationResult;

    .prologue
    .line 57
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/buzzfeed/android/activity/YouTubeActivity;->TAG:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".onInitializationFailure"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 58
    .local v0, "TAG":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error initializing YouTubePlayer: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Lcom/google/android/youtube/player/YouTubeInitializationResult;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/buzzfeed/toolkit/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    move-object v1, p0

    .line 61
    .local v1, "context":Landroid/content/Context;
    new-instance v2, Lcom/buzzfeed/android/activity/YouTubeActivity$1;

    invoke-direct {v2, p0, v1}, Lcom/buzzfeed/android/activity/YouTubeActivity$1;-><init>(Lcom/buzzfeed/android/activity/YouTubeActivity;Landroid/content/Context;)V

    invoke-virtual {p0, v2}, Lcom/buzzfeed/android/activity/YouTubeActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 67
    invoke-virtual {p0}, Lcom/buzzfeed/android/activity/YouTubeActivity;->finish()V

    .line 68
    return-void
.end method

.method public onInitializationSuccess(Lcom/google/android/youtube/player/YouTubePlayer$Provider;Lcom/google/android/youtube/player/YouTubePlayer;Z)V
    .registers 6
    .param p1, "provider"    # Lcom/google/android/youtube/player/YouTubePlayer$Provider;
    .param p2, "player"    # Lcom/google/android/youtube/player/YouTubePlayer;
    .param p3, "wasRestored"    # Z

    .prologue
    .line 45
    const/16 v1, 0x8

    invoke-interface {p2, v1}, Lcom/google/android/youtube/player/YouTubePlayer;->addFullscreenControlFlag(I)V

    .line 46
    invoke-interface {p2}, Lcom/google/android/youtube/player/YouTubePlayer;->getFullscreenControlFlags()I

    move-result v0

    .line 47
    .local v0, "controlFlags":I
    or-int/lit8 v0, v0, 0x4

    .line 48
    invoke-interface {p2, v0}, Lcom/google/android/youtube/player/YouTubePlayer;->setFullscreenControlFlags(I)V

    .line 50
    if-nez p3, :cond_15

    .line 51
    iget-object v1, p0, Lcom/buzzfeed/android/activity/YouTubeActivity;->videoId:Ljava/lang/String;

    invoke-interface {p2, v1}, Lcom/google/android/youtube/player/YouTubePlayer;->loadVideo(Ljava/lang/String;)V

    .line 53
    :cond_15
    return-void
.end method
