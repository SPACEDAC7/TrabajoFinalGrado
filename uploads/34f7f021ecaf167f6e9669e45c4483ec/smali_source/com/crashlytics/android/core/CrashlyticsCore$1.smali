.class Lcom/crashlytics/android/core/CrashlyticsCore$1;
.super Lio/fabric/sdk/android/services/concurrency/PriorityCallable;
.source "CrashlyticsCore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/crashlytics/android/core/CrashlyticsCore;->finishInitSynchronously()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/fabric/sdk/android/services/concurrency/PriorityCallable",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/crashlytics/android/core/CrashlyticsCore;


# direct methods
.method constructor <init>(Lcom/crashlytics/android/core/CrashlyticsCore;)V
    .registers 2

    .prologue
    .line 770
    iput-object p1, p0, Lcom/crashlytics/android/core/CrashlyticsCore$1;->this$0:Lcom/crashlytics/android/core/CrashlyticsCore;

    invoke-direct {p0}, Lio/fabric/sdk/android/services/concurrency/PriorityCallable;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 770
    invoke-virtual {p0}, Lcom/crashlytics/android/core/CrashlyticsCore$1;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 773
    iget-object v0, p0, Lcom/crashlytics/android/core/CrashlyticsCore$1;->this$0:Lcom/crashlytics/android/core/CrashlyticsCore;

    invoke-virtual {v0}, Lcom/crashlytics/android/core/CrashlyticsCore;->doInBackground()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public getPriority()Lio/fabric/sdk/android/services/concurrency/Priority;
    .registers 2

    .prologue
    .line 778
    sget-object v0, Lio/fabric/sdk/android/services/concurrency/Priority;->IMMEDIATE:Lio/fabric/sdk/android/services/concurrency/Priority;

    return-object v0
.end method
