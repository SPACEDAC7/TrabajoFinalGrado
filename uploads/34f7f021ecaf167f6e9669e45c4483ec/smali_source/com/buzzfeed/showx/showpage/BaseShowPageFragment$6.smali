.class Lcom/buzzfeed/showx/showpage/BaseShowPageFragment$6;
.super Ljava/lang/Object;
.source "BaseShowPageFragment.java"

# interfaces
.implements Lcom/buzzfeed/showx/showpage/BaseShowPageFragment$PushNotificationPromptCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/buzzfeed/showx/showpage/BaseShowPageFragment;->onSubscribeButtonClicked()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/buzzfeed/showx/showpage/BaseShowPageFragment;


# direct methods
.method constructor <init>(Lcom/buzzfeed/showx/showpage/BaseShowPageFragment;)V
    .registers 2
    .param p1, "this$0"    # Lcom/buzzfeed/showx/showpage/BaseShowPageFragment;

    .prologue
    .line 693
    iput-object p1, p0, Lcom/buzzfeed/showx/showpage/BaseShowPageFragment$6;->this$0:Lcom/buzzfeed/showx/showpage/BaseShowPageFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public canceled()V
    .registers 3

    .prologue
    .line 702
    iget-object v0, p0, Lcom/buzzfeed/showx/showpage/BaseShowPageFragment$6;->this$0:Lcom/buzzfeed/showx/showpage/BaseShowPageFragment;

    iget-object v0, v0, Lcom/buzzfeed/showx/showpage/BaseShowPageFragment;->mShowPageTracker:Lcom/buzzfeed/showx/showpage/data/tracker/ShowPageTracker;

    iget-object v1, p0, Lcom/buzzfeed/showx/showpage/BaseShowPageFragment$6;->this$0:Lcom/buzzfeed/showx/showpage/BaseShowPageFragment;

    iget-object v1, v1, Lcom/buzzfeed/showx/showpage/BaseShowPageFragment;->mShowId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/buzzfeed/showx/showpage/data/tracker/ShowPageTracker;->trackUnsubscribeNotificationCanceled(Ljava/lang/String;)V

    .line 703
    return-void
.end method

.method public onChangePushNotificationSetting()V
    .registers 2

    .prologue
    .line 696
    iget-object v0, p0, Lcom/buzzfeed/showx/showpage/BaseShowPageFragment$6;->this$0:Lcom/buzzfeed/showx/showpage/BaseShowPageFragment;

    # invokes: Lcom/buzzfeed/showx/showpage/BaseShowPageFragment;->toggleSubscriptionStatus()V
    invoke-static {v0}, Lcom/buzzfeed/showx/showpage/BaseShowPageFragment;->access$600(Lcom/buzzfeed/showx/showpage/BaseShowPageFragment;)V

    .line 697
    iget-object v0, p0, Lcom/buzzfeed/showx/showpage/BaseShowPageFragment$6;->this$0:Lcom/buzzfeed/showx/showpage/BaseShowPageFragment;

    iget-object v0, v0, Lcom/buzzfeed/showx/showpage/BaseShowPageFragment;->mShowPagePresenter:Lcom/buzzfeed/showx/showpage/ShowPagePresenter;

    invoke-virtual {v0}, Lcom/buzzfeed/showx/showpage/ShowPagePresenter;->refreshSubscribeCard()V

    .line 698
    return-void
.end method
