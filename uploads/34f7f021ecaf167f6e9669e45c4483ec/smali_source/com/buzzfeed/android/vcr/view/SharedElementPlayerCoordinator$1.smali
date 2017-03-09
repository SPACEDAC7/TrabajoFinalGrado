.class Lcom/buzzfeed/android/vcr/view/SharedElementPlayerCoordinator$1;
.super Ljava/lang/Object;
.source "SharedElementPlayerCoordinator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/buzzfeed/android/vcr/view/SharedElementPlayerCoordinator;->onSecondActivityTransitionEnded()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/buzzfeed/android/vcr/view/SharedElementPlayerCoordinator;

.field final synthetic val$host2:Lcom/buzzfeed/android/vcr/view/TransitionCoordinator$SharedPlayerHost;


# direct methods
.method constructor <init>(Lcom/buzzfeed/android/vcr/view/SharedElementPlayerCoordinator;Lcom/buzzfeed/android/vcr/view/TransitionCoordinator$SharedPlayerHost;)V
    .registers 3
    .param p1, "this$0"    # Lcom/buzzfeed/android/vcr/view/SharedElementPlayerCoordinator;

    .prologue
    .line 168
    iput-object p1, p0, Lcom/buzzfeed/android/vcr/view/SharedElementPlayerCoordinator$1;->this$0:Lcom/buzzfeed/android/vcr/view/SharedElementPlayerCoordinator;

    iput-object p2, p0, Lcom/buzzfeed/android/vcr/view/SharedElementPlayerCoordinator$1;->val$host2:Lcom/buzzfeed/android/vcr/view/TransitionCoordinator$SharedPlayerHost;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 171
    iget-object v0, p0, Lcom/buzzfeed/android/vcr/view/SharedElementPlayerCoordinator$1;->this$0:Lcom/buzzfeed/android/vcr/view/SharedElementPlayerCoordinator;

    iget-object v1, p0, Lcom/buzzfeed/android/vcr/view/SharedElementPlayerCoordinator$1;->val$host2:Lcom/buzzfeed/android/vcr/view/TransitionCoordinator$SharedPlayerHost;

    invoke-virtual {v0, v1}, Lcom/buzzfeed/android/vcr/view/SharedElementPlayerCoordinator;->onSharedPlayerOwnershipLoss(Lcom/buzzfeed/android/vcr/view/TransitionCoordinator$SharedPlayerHost;)V

    .line 172
    return-void
.end method
