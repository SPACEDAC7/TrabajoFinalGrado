.class Lcom/buzzfeed/android/ui/explore/ExploreFragment$InternalExploreUserActionListener;
.super Ljava/lang/Object;
.source "ExploreFragment.java"

# interfaces
.implements Lcom/buzzfeed/android/ui/explore/listener/ExploreUserActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/buzzfeed/android/ui/explore/ExploreFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InternalExploreUserActionListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/buzzfeed/android/ui/explore/ExploreFragment;


# direct methods
.method private constructor <init>(Lcom/buzzfeed/android/ui/explore/ExploreFragment;)V
    .registers 2

    .prologue
    .line 119
    iput-object p1, p0, Lcom/buzzfeed/android/ui/explore/ExploreFragment$InternalExploreUserActionListener;->this$0:Lcom/buzzfeed/android/ui/explore/ExploreFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/buzzfeed/android/ui/explore/ExploreFragment;Lcom/buzzfeed/android/ui/explore/ExploreFragment$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/buzzfeed/android/ui/explore/ExploreFragment;
    .param p2, "x1"    # Lcom/buzzfeed/android/ui/explore/ExploreFragment$1;

    .prologue
    .line 119
    invoke-direct {p0, p1}, Lcom/buzzfeed/android/ui/explore/ExploreFragment$InternalExploreUserActionListener;-><init>(Lcom/buzzfeed/android/ui/explore/ExploreFragment;)V

    return-void
.end method


# virtual methods
.method public onExploreItemClicked(Lcom/buzzfeed/android/data/Feed;I)V
    .registers 6
    .param p1, "feed"    # Lcom/buzzfeed/android/data/Feed;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "position"    # I

    .prologue
    .line 123
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    # getter for: Lcom/buzzfeed/android/ui/explore/ExploreFragment;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/buzzfeed/android/ui/explore/ExploreFragment;->access$200()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".onExploreItemClicked"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 124
    .local v0, "TAG":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "feed="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/buzzfeed/android/data/Feed;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", position="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/buzzfeed/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    iget-object v1, p0, Lcom/buzzfeed/android/ui/explore/ExploreFragment$InternalExploreUserActionListener;->this$0:Lcom/buzzfeed/android/ui/explore/ExploreFragment;

    # getter for: Lcom/buzzfeed/android/ui/explore/ExploreFragment;->mTracker:Lcom/buzzfeed/android/data/tracking/ExploreTracker;
    invoke-static {v1}, Lcom/buzzfeed/android/ui/explore/ExploreFragment;->access$300(Lcom/buzzfeed/android/ui/explore/ExploreFragment;)Lcom/buzzfeed/android/data/tracking/ExploreTracker;

    move-result-object v1

    invoke-static {p1}, Lcom/buzzfeed/android/util/AnalyticsUtils;->formatFeedDisplayNameForTracking(Lcom/buzzfeed/android/data/Feed;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/buzzfeed/android/data/tracking/ExploreTracker;->trackFeedSelection(Ljava/lang/String;)V

    .line 126
    iget-object v1, p0, Lcom/buzzfeed/android/ui/explore/ExploreFragment$InternalExploreUserActionListener;->this$0:Lcom/buzzfeed/android/ui/explore/ExploreFragment;

    invoke-virtual {v1}, Lcom/buzzfeed/android/ui/explore/ExploreFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/buzzfeed/android/activity/BuffetActivity;->startIntentWithFeedNewTask(Landroid/app/Activity;Lcom/buzzfeed/android/data/Feed;)V

    .line 127
    return-void
.end method
