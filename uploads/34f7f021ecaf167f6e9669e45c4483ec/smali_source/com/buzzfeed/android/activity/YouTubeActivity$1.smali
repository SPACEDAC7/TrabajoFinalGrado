.class Lcom/buzzfeed/android/activity/YouTubeActivity$1;
.super Ljava/lang/Object;
.source "YouTubeActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/buzzfeed/android/activity/YouTubeActivity;->onInitializationFailure(Lcom/google/android/youtube/player/YouTubePlayer$Provider;Lcom/google/android/youtube/player/YouTubeInitializationResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/buzzfeed/android/activity/YouTubeActivity;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/buzzfeed/android/activity/YouTubeActivity;Landroid/content/Context;)V
    .registers 3
    .param p1, "this$0"    # Lcom/buzzfeed/android/activity/YouTubeActivity;

    .prologue
    .line 61
    iput-object p1, p0, Lcom/buzzfeed/android/activity/YouTubeActivity$1;->this$0:Lcom/buzzfeed/android/activity/YouTubeActivity;

    iput-object p2, p0, Lcom/buzzfeed/android/activity/YouTubeActivity$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 64
    iget-object v0, p0, Lcom/buzzfeed/android/activity/YouTubeActivity$1;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lcom/buzzfeed/android/activity/YouTubeActivity$1;->this$0:Lcom/buzzfeed/android/activity/YouTubeActivity;

    # getter for: Lcom/buzzfeed/android/activity/YouTubeActivity;->videoId:Ljava/lang/String;
    invoke-static {v1}, Lcom/buzzfeed/android/activity/YouTubeActivity;->access$000(Lcom/buzzfeed/android/activity/YouTubeActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/buzzfeed/android/activity/YouTubeActivity;->playYoutubeOnExternalPlayer(Landroid/content/Context;Ljava/lang/String;)V

    .line 65
    return-void
.end method
