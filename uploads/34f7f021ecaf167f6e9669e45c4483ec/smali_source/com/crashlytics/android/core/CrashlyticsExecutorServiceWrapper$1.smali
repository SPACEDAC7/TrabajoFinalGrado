.class Lcom/crashlytics/android/core/CrashlyticsExecutorServiceWrapper$1;
.super Ljava/lang/Object;
.source "CrashlyticsExecutorServiceWrapper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/crashlytics/android/core/CrashlyticsExecutorServiceWrapper;->executeAsync(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/crashlytics/android/core/CrashlyticsExecutorServiceWrapper;

.field final synthetic val$runnable:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/crashlytics/android/core/CrashlyticsExecutorServiceWrapper;Ljava/lang/Runnable;)V
    .registers 3

    .prologue
    .line 71
    iput-object p1, p0, Lcom/crashlytics/android/core/CrashlyticsExecutorServiceWrapper$1;->this$0:Lcom/crashlytics/android/core/CrashlyticsExecutorServiceWrapper;

    iput-object p2, p0, Lcom/crashlytics/android/core/CrashlyticsExecutorServiceWrapper$1;->val$runnable:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 75
    :try_start_0
    iget-object v1, p0, Lcom/crashlytics/android/core/CrashlyticsExecutorServiceWrapper$1;->val$runnable:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_6

    .line 79
    :goto_5
    return-void

    .line 76
    :catch_6
    move-exception v0

    .line 77
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/Logger;

    move-result-object v1

    const-string v2, "CrashlyticsCore"

    const-string v3, "Failed to execute task."

    invoke-interface {v1, v2, v3, v0}, Lio/fabric/sdk/android/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_5
.end method
