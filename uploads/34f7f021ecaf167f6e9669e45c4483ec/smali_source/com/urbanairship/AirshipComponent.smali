.class public abstract Lcom/urbanairship/AirshipComponent;
.super Ljava/lang/Object;
.source "AirshipComponent.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected init()V
    .registers 1

    .prologue
    .line 21
    return-void
.end method

.method protected onPerformJob(Lcom/urbanairship/UAirship;Lcom/urbanairship/job/Job;)I
    .registers 4
    .param p1, "airship"    # Lcom/urbanairship/UAirship;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "job"    # Lcom/urbanairship/job/Job;
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .prologue
    .line 40
    const/4 v0, 0x0

    return v0
.end method

.method protected tearDown()V
    .registers 1

    .prologue
    .line 29
    return-void
.end method
