.class Lcom/buzzfeed/android/vcr/view/SharedElementPlayerCoordinator$SecondActivityTransitionListener;
.super Lcom/buzzfeed/android/vcr/view/TransitionListenerAdapter;
.source "SharedElementPlayerCoordinator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/buzzfeed/android/vcr/view/SharedElementPlayerCoordinator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SecondActivityTransitionListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/buzzfeed/android/vcr/view/SharedElementPlayerCoordinator;


# direct methods
.method private constructor <init>(Lcom/buzzfeed/android/vcr/view/SharedElementPlayerCoordinator;)V
    .registers 2

    .prologue
    .line 206
    iput-object p1, p0, Lcom/buzzfeed/android/vcr/view/SharedElementPlayerCoordinator$SecondActivityTransitionListener;->this$0:Lcom/buzzfeed/android/vcr/view/SharedElementPlayerCoordinator;

    invoke-direct {p0}, Lcom/buzzfeed/android/vcr/view/TransitionListenerAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/buzzfeed/android/vcr/view/SharedElementPlayerCoordinator;Lcom/buzzfeed/android/vcr/view/SharedElementPlayerCoordinator$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/buzzfeed/android/vcr/view/SharedElementPlayerCoordinator;
    .param p2, "x1"    # Lcom/buzzfeed/android/vcr/view/SharedElementPlayerCoordinator$1;

    .prologue
    .line 206
    invoke-direct {p0, p1}, Lcom/buzzfeed/android/vcr/view/SharedElementPlayerCoordinator$SecondActivityTransitionListener;-><init>(Lcom/buzzfeed/android/vcr/view/SharedElementPlayerCoordinator;)V

    return-void
.end method


# virtual methods
.method public onTransitionEnd(Landroid/transition/Transition;)V
    .registers 6
    .param p1, "transition"    # Landroid/transition/Transition;

    .prologue
    .line 221
    iget-object v0, p0, Lcom/buzzfeed/android/vcr/view/SharedElementPlayerCoordinator$SecondActivityTransitionListener;->this$0:Lcom/buzzfeed/android/vcr/view/SharedElementPlayerCoordinator;

    # getter for: Lcom/buzzfeed/android/vcr/view/SharedElementPlayerCoordinator;->mIsReturning:Z
    invoke-static {v0}, Lcom/buzzfeed/android/vcr/view/SharedElementPlayerCoordinator;->access$200(Lcom/buzzfeed/android/vcr/view/SharedElementPlayerCoordinator;)Z

    move-result v0

    if-eqz v0, :cond_51

    .line 223
    iget-object v0, p0, Lcom/buzzfeed/android/vcr/view/SharedElementPlayerCoordinator$SecondActivityTransitionListener;->this$0:Lcom/buzzfeed/android/vcr/view/SharedElementPlayerCoordinator;

    # getter for: Lcom/buzzfeed/android/vcr/view/SharedElementPlayerCoordinator;->mSecondActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/buzzfeed/android/vcr/view/SharedElementPlayerCoordinator;->access$500(Lcom/buzzfeed/android/vcr/view/SharedElementPlayerCoordinator;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getSharedElementEnterTransition()Landroid/transition/Transition;

    move-result-object v0

    iget-object v1, p0, Lcom/buzzfeed/android/vcr/view/SharedElementPlayerCoordinator$SecondActivityTransitionListener;->this$0:Lcom/buzzfeed/android/vcr/view/SharedElementPlayerCoordinator;

    # getter for: Lcom/buzzfeed/android/vcr/view/SharedElementPlayerCoordinator;->mSecondTransitionListener:Landroid/transition/Transition$TransitionListener;
    invoke-static {v1}, Lcom/buzzfeed/android/vcr/view/SharedElementPlayerCoordinator;->access$600(Lcom/buzzfeed/android/vcr/view/SharedElementPlayerCoordinator;)Landroid/transition/Transition$TransitionListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/transition/Transition;->removeListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/Transition;

    .line 224
    iget-object v0, p0, Lcom/buzzfeed/android/vcr/view/SharedElementPlayerCoordinator$SecondActivityTransitionListener;->this$0:Lcom/buzzfeed/android/vcr/view/SharedElementPlayerCoordinator;

    invoke-virtual {v0}, Lcom/buzzfeed/android/vcr/view/SharedElementPlayerCoordinator;->onSecondActivityTransitionEnded()V

    .line 230
    :cond_24
    :goto_24
    iget-object v0, p0, Lcom/buzzfeed/android/vcr/view/SharedElementPlayerCoordinator$SecondActivityTransitionListener;->this$0:Lcom/buzzfeed/android/vcr/view/SharedElementPlayerCoordinator;

    # getter for: Lcom/buzzfeed/android/vcr/view/SharedElementPlayerCoordinator;->mSecondActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/buzzfeed/android/vcr/view/SharedElementPlayerCoordinator;->access$500(Lcom/buzzfeed/android/vcr/view/SharedElementPlayerCoordinator;)Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_50

    .line 231
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onTransitionEnd activity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/buzzfeed/android/vcr/view/SharedElementPlayerCoordinator$SecondActivityTransitionListener;->this$0:Lcom/buzzfeed/android/vcr/view/SharedElementPlayerCoordinator;

    # getter for: Lcom/buzzfeed/android/vcr/view/SharedElementPlayerCoordinator;->mSecondActivity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/buzzfeed/android/vcr/view/SharedElementPlayerCoordinator;->access$500(Lcom/buzzfeed/android/vcr/view/SharedElementPlayerCoordinator;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    # invokes: Lcom/buzzfeed/android/vcr/view/SharedElementPlayerCoordinator;->log(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/buzzfeed/android/vcr/view/SharedElementPlayerCoordinator;->access$400(Ljava/lang/String;)V

    .line 233
    :cond_50
    return-void

    .line 225
    :cond_51
    iget-object v0, p0, Lcom/buzzfeed/android/vcr/view/SharedElementPlayerCoordinator$SecondActivityTransitionListener;->this$0:Lcom/buzzfeed/android/vcr/view/SharedElementPlayerCoordinator;

    # getter for: Lcom/buzzfeed/android/vcr/view/SharedElementPlayerCoordinator;->mFirstTransitionListener:Landroid/transition/Transition$TransitionListener;
    invoke-static {v0}, Lcom/buzzfeed/android/vcr/view/SharedElementPlayerCoordinator;->access$700(Lcom/buzzfeed/android/vcr/view/SharedElementPlayerCoordinator;)Landroid/transition/Transition$TransitionListener;

    move-result-object v0

    if-nez v0, :cond_24

    .line 226
    iget-object v0, p0, Lcom/buzzfeed/android/vcr/view/SharedElementPlayerCoordinator$SecondActivityTransitionListener;->this$0:Lcom/buzzfeed/android/vcr/view/SharedElementPlayerCoordinator;

    new-instance v1, Lcom/buzzfeed/android/vcr/view/SharedElementPlayerCoordinator$FirstActivityTransitionListener;

    iget-object v2, p0, Lcom/buzzfeed/android/vcr/view/SharedElementPlayerCoordinator$SecondActivityTransitionListener;->this$0:Lcom/buzzfeed/android/vcr/view/SharedElementPlayerCoordinator;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/buzzfeed/android/vcr/view/SharedElementPlayerCoordinator$FirstActivityTransitionListener;-><init>(Lcom/buzzfeed/android/vcr/view/SharedElementPlayerCoordinator;Lcom/buzzfeed/android/vcr/view/SharedElementPlayerCoordinator$1;)V

    # setter for: Lcom/buzzfeed/android/vcr/view/SharedElementPlayerCoordinator;->mFirstTransitionListener:Landroid/transition/Transition$TransitionListener;
    invoke-static {v0, v1}, Lcom/buzzfeed/android/vcr/view/SharedElementPlayerCoordinator;->access$702(Lcom/buzzfeed/android/vcr/view/SharedElementPlayerCoordinator;Landroid/transition/Transition$TransitionListener;)Landroid/transition/Transition$TransitionListener;

    .line 227
    iget-object v0, p0, Lcom/buzzfeed/android/vcr/view/SharedElementPlayerCoordinator$SecondActivityTransitionListener;->this$0:Lcom/buzzfeed/android/vcr/view/SharedElementPlayerCoordinator;

    # getter for: Lcom/buzzfeed/android/vcr/view/SharedElementPlayerCoordinator;->mFirstActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/buzzfeed/android/vcr/view/SharedElementPlayerCoordinator;->access$300(Lcom/buzzfeed/android/vcr/view/SharedElementPlayerCoordinator;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getSharedElementExitTransition()Landroid/transition/Transition;

    move-result-object v0

    iget-object v1, p0, Lcom/buzzfeed/android/vcr/view/SharedElementPlayerCoordinator$SecondActivityTransitionListener;->this$0:Lcom/buzzfeed/android/vcr/view/SharedElementPlayerCoordinator;

    # getter for: Lcom/buzzfeed/android/vcr/view/SharedElementPlayerCoordinator;->mFirstTransitionListener:Landroid/transition/Transition$TransitionListener;
    invoke-static {v1}, Lcom/buzzfeed/android/vcr/view/SharedElementPlayerCoordinator;->access$700(Lcom/buzzfeed/android/vcr/view/SharedElementPlayerCoordinator;)Landroid/transition/Transition$TransitionListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/transition/Transition;->addListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/Transition;

    goto :goto_24
.end method

.method public onTransitionStart(Landroid/transition/Transition;)V
    .registers 4
    .param p1, "transition"    # Landroid/transition/Transition;

    .prologue
    .line 210
    iget-object v0, p0, Lcom/buzzfeed/android/vcr/view/SharedElementPlayerCoordinator$SecondActivityTransitionListener;->this$0:Lcom/buzzfeed/android/vcr/view/SharedElementPlayerCoordinator;

    # getter for: Lcom/buzzfeed/android/vcr/view/SharedElementPlayerCoordinator;->mIsReturning:Z
    invoke-static {v0}, Lcom/buzzfeed/android/vcr/view/SharedElementPlayerCoordinator;->access$200(Lcom/buzzfeed/android/vcr/view/SharedElementPlayerCoordinator;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 211
    iget-object v0, p0, Lcom/buzzfeed/android/vcr/view/SharedElementPlayerCoordinator$SecondActivityTransitionListener;->this$0:Lcom/buzzfeed/android/vcr/view/SharedElementPlayerCoordinator;

    invoke-virtual {v0}, Lcom/buzzfeed/android/vcr/view/SharedElementPlayerCoordinator;->onSecondActivityTransitionStarted()V

    .line 214
    :cond_d
    iget-object v0, p0, Lcom/buzzfeed/android/vcr/view/SharedElementPlayerCoordinator$SecondActivityTransitionListener;->this$0:Lcom/buzzfeed/android/vcr/view/SharedElementPlayerCoordinator;

    # getter for: Lcom/buzzfeed/android/vcr/view/SharedElementPlayerCoordinator;->mSecondActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/buzzfeed/android/vcr/view/SharedElementPlayerCoordinator;->access$500(Lcom/buzzfeed/android/vcr/view/SharedElementPlayerCoordinator;)Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_39

    .line 215
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onTransitionStart activity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/buzzfeed/android/vcr/view/SharedElementPlayerCoordinator$SecondActivityTransitionListener;->this$0:Lcom/buzzfeed/android/vcr/view/SharedElementPlayerCoordinator;

    # getter for: Lcom/buzzfeed/android/vcr/view/SharedElementPlayerCoordinator;->mSecondActivity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/buzzfeed/android/vcr/view/SharedElementPlayerCoordinator;->access$500(Lcom/buzzfeed/android/vcr/view/SharedElementPlayerCoordinator;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    # invokes: Lcom/buzzfeed/android/vcr/view/SharedElementPlayerCoordinator;->log(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/buzzfeed/android/vcr/view/SharedElementPlayerCoordinator;->access$400(Ljava/lang/String;)V

    .line 217
    :cond_39
    return-void
.end method
