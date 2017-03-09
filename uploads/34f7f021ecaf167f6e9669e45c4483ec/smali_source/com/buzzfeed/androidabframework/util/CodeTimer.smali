.class public Lcom/buzzfeed/androidabframework/util/CodeTimer;
.super Ljava/lang/Object;
.source "CodeTimer.java"


# instance fields
.field startTime:J

.field stopTime:J


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getElapsedMilliseconds()J
    .registers 5

    .prologue
    const-wide/16 v2, 0x0

    .line 32
    iget-wide v0, p0, Lcom/buzzfeed/androidabframework/util/CodeTimer;->startTime:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_b

    .line 33
    const-wide/16 v0, -0x1

    .line 37
    :goto_a
    return-wide v0

    .line 34
    :cond_b
    iget-wide v0, p0, Lcom/buzzfeed/androidabframework/util/CodeTimer;->stopTime:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_19

    .line 35
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/buzzfeed/androidabframework/util/CodeTimer;->startTime:J

    sub-long/2addr v0, v2

    goto :goto_a

    .line 37
    :cond_19
    iget-wide v0, p0, Lcom/buzzfeed/androidabframework/util/CodeTimer;->stopTime:J

    iget-wide v2, p0, Lcom/buzzfeed/androidabframework/util/CodeTimer;->startTime:J

    sub-long/2addr v0, v2

    goto :goto_a
.end method

.method public getElapsedSeconds()D
    .registers 5

    .prologue
    .line 42
    invoke-virtual {p0}, Lcom/buzzfeed/androidabframework/util/CodeTimer;->getElapsedMilliseconds()J

    move-result-wide v0

    long-to-double v0, v0

    const-wide v2, 0x408f400000000000L

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public getStartTime()J
    .registers 3

    .prologue
    .line 13
    iget-wide v0, p0, Lcom/buzzfeed/androidabframework/util/CodeTimer;->startTime:J

    return-wide v0
.end method

.method public getStopTime()J
    .registers 3

    .prologue
    .line 17
    iget-wide v0, p0, Lcom/buzzfeed/androidabframework/util/CodeTimer;->stopTime:J

    return-wide v0
.end method

.method public start()Lcom/buzzfeed/androidabframework/util/CodeTimer;
    .registers 3

    .prologue
    .line 21
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/buzzfeed/androidabframework/util/CodeTimer;->startTime:J

    .line 22
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/buzzfeed/androidabframework/util/CodeTimer;->stopTime:J

    .line 23
    return-object p0
.end method

.method public stop()Lcom/buzzfeed/androidabframework/util/CodeTimer;
    .registers 3

    .prologue
    .line 27
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/buzzfeed/androidabframework/util/CodeTimer;->stopTime:J

    .line 28
    return-object p0
.end method
