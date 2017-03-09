.class final Lcom/buzzfeed/android/data/ActivityLifecycleListener$1;
.super Ljava/lang/Object;
.source "ActivityLifecycleListener.java"

# interfaces
.implements Lcom/buzzfeed/androidabframework/controller/ExperimentManager$CallbackInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/buzzfeed/android/data/ActivityLifecycleListener;->initializeExperimentManager(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$TAG:Ljava/lang/String;

.field final synthetic val$codeTimer:Lcom/buzzfeed/androidabframework/util/CodeTimer;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/buzzfeed/androidabframework/util/CodeTimer;)V
    .registers 3

    .prologue
    .line 86
    iput-object p1, p0, Lcom/buzzfeed/android/data/ActivityLifecycleListener$1;->val$TAG:Ljava/lang/String;

    iput-object p2, p0, Lcom/buzzfeed/android/data/ActivityLifecycleListener$1;->val$codeTimer:Lcom/buzzfeed/androidabframework/util/CodeTimer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Lcom/buzzfeed/androidabframework/util/ReturnCode;J)V
    .registers 8
    .param p1, "returnCode"    # Lcom/buzzfeed/androidabframework/util/ReturnCode;
    .param p2, "responseTime"    # J

    .prologue
    .line 89
    iget-object v0, p0, Lcom/buzzfeed/android/data/ActivityLifecycleListener$1;->val$TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Finished asynchronous A/B Experiments initialization (in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/buzzfeed/android/data/ActivityLifecycleListener$1;->val$codeTimer:Lcom/buzzfeed/androidabframework/util/CodeTimer;

    invoke-virtual {v2}, Lcom/buzzfeed/androidabframework/util/CodeTimer;->getElapsedSeconds()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " secs)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/buzzfeed/toolkit/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-lez v0, :cond_31

    .line 92
    invoke-static {}, Lcom/buzzfeed/analytics/client/DustbusterClient;->getInstance()Lcom/buzzfeed/analytics/client/DustbusterClient;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lcom/buzzfeed/analytics/client/DustbusterClient;->trackABeagleExperimentRequest(J)V

    .line 94
    :cond_31
    return-void
.end method
