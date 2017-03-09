.class Lcom/buzzfeed/android/data/BuzzFeedApplication$ApplicationLifecycleCallbacks;
.super Lcom/buzzfeed/toolkit/util/AbstractActivityLifecycleCallbacks;
.source "BuzzFeedApplication.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/buzzfeed/android/data/BuzzFeedApplication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ApplicationLifecycleCallbacks"
.end annotation


# instance fields
.field protected mWeakActivityRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/buzzfeed/android/data/BuzzFeedApplication;


# direct methods
.method private constructor <init>(Lcom/buzzfeed/android/data/BuzzFeedApplication;)V
    .registers 2

    .prologue
    .line 442
    iput-object p1, p0, Lcom/buzzfeed/android/data/BuzzFeedApplication$ApplicationLifecycleCallbacks;->this$0:Lcom/buzzfeed/android/data/BuzzFeedApplication;

    invoke-direct {p0}, Lcom/buzzfeed/toolkit/util/AbstractActivityLifecycleCallbacks;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/buzzfeed/android/data/BuzzFeedApplication;Lcom/buzzfeed/android/data/BuzzFeedApplication$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/buzzfeed/android/data/BuzzFeedApplication;
    .param p2, "x1"    # Lcom/buzzfeed/android/data/BuzzFeedApplication$1;

    .prologue
    .line 442
    invoke-direct {p0, p1}, Lcom/buzzfeed/android/data/BuzzFeedApplication$ApplicationLifecycleCallbacks;-><init>(Lcom/buzzfeed/android/data/BuzzFeedApplication;)V

    return-void
.end method


# virtual methods
.method public onActivityResumed(Landroid/app/Activity;)V
    .registers 3
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 456
    iget-object v0, p0, Lcom/buzzfeed/android/data/BuzzFeedApplication$ApplicationLifecycleCallbacks;->mWeakActivityRef:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/buzzfeed/android/data/BuzzFeedApplication$ApplicationLifecycleCallbacks;->mWeakActivityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eq v0, p1, :cond_13

    .line 457
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/buzzfeed/android/data/BuzzFeedApplication$ApplicationLifecycleCallbacks;->mWeakActivityRef:Ljava/lang/ref/WeakReference;

    .line 459
    :cond_13
    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .registers 3
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 448
    iget-object v0, p0, Lcom/buzzfeed/android/data/BuzzFeedApplication$ApplicationLifecycleCallbacks;->mWeakActivityRef:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_9

    .line 449
    iget-object v0, p0, Lcom/buzzfeed/android/data/BuzzFeedApplication$ApplicationLifecycleCallbacks;->this$0:Lcom/buzzfeed/android/data/BuzzFeedApplication;

    # invokes: Lcom/buzzfeed/android/data/BuzzFeedApplication;->notifyApplicationEnterForeground()V
    invoke-static {v0}, Lcom/buzzfeed/android/data/BuzzFeedApplication;->access$200(Lcom/buzzfeed/android/data/BuzzFeedApplication;)V

    .line 451
    :cond_9
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/buzzfeed/android/data/BuzzFeedApplication$ApplicationLifecycleCallbacks;->mWeakActivityRef:Ljava/lang/ref/WeakReference;

    .line 452
    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .registers 3
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 463
    iget-object v0, p0, Lcom/buzzfeed/android/data/BuzzFeedApplication$ApplicationLifecycleCallbacks;->mWeakActivityRef:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/buzzfeed/android/data/BuzzFeedApplication$ApplicationLifecycleCallbacks;->mWeakActivityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p1, :cond_1a

    .line 464
    invoke-virtual {p1}, Landroid/app/Activity;->isChangingConfigurations()Z

    move-result v0

    if-nez v0, :cond_1a

    .line 465
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/buzzfeed/android/data/BuzzFeedApplication$ApplicationLifecycleCallbacks;->mWeakActivityRef:Ljava/lang/ref/WeakReference;

    .line 466
    iget-object v0, p0, Lcom/buzzfeed/android/data/BuzzFeedApplication$ApplicationLifecycleCallbacks;->this$0:Lcom/buzzfeed/android/data/BuzzFeedApplication;

    # invokes: Lcom/buzzfeed/android/data/BuzzFeedApplication;->notifyApplicationEnterBackground()V
    invoke-static {v0}, Lcom/buzzfeed/android/data/BuzzFeedApplication;->access$300(Lcom/buzzfeed/android/data/BuzzFeedApplication;)V

    .line 468
    :cond_1a
    return-void
.end method
