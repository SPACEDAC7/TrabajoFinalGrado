.class Lcom/buzzfeed/android/vcr/view/SharedElementPlayerCoordinator$FirstActivityTransitionListener;
.super Lcom/buzzfeed/android/vcr/view/TransitionListenerAdapter;
.source "SharedElementPlayerCoordinator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/buzzfeed/android/vcr/view/SharedElementPlayerCoordinator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FirstActivityTransitionListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/buzzfeed/android/vcr/view/SharedElementPlayerCoordinator;


# direct methods
.method private constructor <init>(Lcom/buzzfeed/android/vcr/view/SharedElementPlayerCoordinator;)V
    .registers 2

    .prologue
    .line 186
    iput-object p1, p0, Lcom/buzzfeed/android/vcr/view/SharedElementPlayerCoordinator$FirstActivityTransitionListener;->this$0:Lcom/buzzfeed/android/vcr/view/SharedElementPlayerCoordinator;

    invoke-direct {p0}, Lcom/buzzfeed/android/vcr/view/TransitionListenerAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/buzzfeed/android/vcr/view/SharedElementPlayerCoordinator;Lcom/buzzfeed/android/vcr/view/SharedElementPlayerCoordinator$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/buzzfeed/android/vcr/view/SharedElementPlayerCoordinator;
    .param p2, "x1"    # Lcom/buzzfeed/android/vcr/view/SharedElementPlayerCoordinator$1;

    .prologue
    .line 186
    invoke-direct {p0, p1}, Lcom/buzzfeed/android/vcr/view/SharedElementPlayerCoordinator$FirstActivityTransitionListener;-><init>(Lcom/buzzfeed/android/vcr/view/SharedElementPlayerCoordinator;)V

    return-void
.end method


# virtual methods
.method public onTransitionEnd(Landroid/transition/Transition;)V
    .registers 4
    .param p1, "transition"    # Landroid/transition/Transition;

    .prologue
    .line 200
    iget-object v0, p0, Lcom/buzzfeed/android/vcr/view/SharedElementPlayerCoordinator$FirstActivityTransitionListener;->this$0:Lcom/buzzfeed/android/vcr/view/SharedElementPlayerCoordinator;

    # getter for: Lcom/buzzfeed/android/vcr/view/SharedElementPlayerCoordinator;->mFirstActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/buzzfeed/android/vcr/view/SharedElementPlayerCoordinator;->access$300(Lcom/buzzfeed/android/vcr/view/SharedElementPlayerCoordinator;)Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_2c

    .line 201
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onTransitionEnd activity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/buzzfeed/android/vcr/view/SharedElementPlayerCoordinator$FirstActivityTransitionListener;->this$0:Lcom/buzzfeed/android/vcr/view/SharedElementPlayerCoordinator;

    # getter for: Lcom/buzzfeed/android/vcr/view/SharedElementPlayerCoordinator;->mFirstActivity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/buzzfeed/android/vcr/view/SharedElementPlayerCoordinator;->access$300(Lcom/buzzfeed/android/vcr/view/SharedElementPlayerCoordinator;)Landroid/app/Activity;

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

    .line 203
    :cond_2c
    return-void
.end method

.method public onTransitionStart(Landroid/transition/Transition;)V
    .registers 4
    .param p1, "transition"    # Landroid/transition/Transition;

    .prologue
    .line 190
    iget-object v0, p0, Lcom/buzzfeed/android/vcr/view/SharedElementPlayerCoordinator$FirstActivityTransitionListener;->this$0:Lcom/buzzfeed/android/vcr/view/SharedElementPlayerCoordinator;

    # getter for: Lcom/buzzfeed/android/vcr/view/SharedElementPlayerCoordinator;->mIsReturning:Z
    invoke-static {v0}, Lcom/buzzfeed/android/vcr/view/SharedElementPlayerCoordinator;->access$200(Lcom/buzzfeed/android/vcr/view/SharedElementPlayerCoordinator;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 191
    iget-object v0, p0, Lcom/buzzfeed/android/vcr/view/SharedElementPlayerCoordinator$FirstActivityTransitionListener;->this$0:Lcom/buzzfeed/android/vcr/view/SharedElementPlayerCoordinator;

    invoke-virtual {v0}, Lcom/buzzfeed/android/vcr/view/SharedElementPlayerCoordinator;->onFirstActivityReturnTransitionStarted()V

    .line 193
    :cond_d
    iget-object v0, p0, Lcom/buzzfeed/android/vcr/view/SharedElementPlayerCoordinator$FirstActivityTransitionListener;->this$0:Lcom/buzzfeed/android/vcr/view/SharedElementPlayerCoordinator;

    # getter for: Lcom/buzzfeed/android/vcr/view/SharedElementPlayerCoordinator;->mFirstActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/buzzfeed/android/vcr/view/SharedElementPlayerCoordinator;->access$300(Lcom/buzzfeed/android/vcr/view/SharedElementPlayerCoordinator;)Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_39

    .line 194
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onTransitionStart activity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/buzzfeed/android/vcr/view/SharedElementPlayerCoordinator$FirstActivityTransitionListener;->this$0:Lcom/buzzfeed/android/vcr/view/SharedElementPlayerCoordinator;

    # getter for: Lcom/buzzfeed/android/vcr/view/SharedElementPlayerCoordinator;->mFirstActivity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/buzzfeed/android/vcr/view/SharedElementPlayerCoordinator;->access$300(Lcom/buzzfeed/android/vcr/view/SharedElementPlayerCoordinator;)Landroid/app/Activity;

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

    .line 196
    :cond_39
    return-void
.end method
