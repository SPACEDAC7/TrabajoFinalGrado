.class public final Lcom/google/android/exoplayer/TimeRange$DynamicTimeRange;
.super Ljava/lang/Object;
.source "TimeRange.java"

# interfaces
.implements Lcom/google/android/exoplayer/TimeRange;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer/TimeRange;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DynamicTimeRange"
.end annotation


# instance fields
.field private final bufferDepthUs:J

.field private final elapsedRealtimeAtStartUs:J

.field private final maxEndTimeUs:J

.field private final minStartTimeUs:J

.field private final systemClock:Lcom/google/android/exoplayer/util/Clock;


# direct methods
.method public constructor <init>(JJJJLcom/google/android/exoplayer/util/Clock;)V
    .registers 11
    .param p1, "minStartTimeUs"    # J
    .param p3, "maxEndTimeUs"    # J
    .param p5, "elapsedRealtimeAtStartUs"    # J
    .param p7, "bufferDepthUs"    # J
    .param p9, "systemClock"    # Lcom/google/android/exoplayer/util/Clock;

    .prologue
    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 136
    iput-wide p1, p0, Lcom/google/android/exoplayer/TimeRange$DynamicTimeRange;->minStartTimeUs:J

    .line 137
    iput-wide p3, p0, Lcom/google/android/exoplayer/TimeRange$DynamicTimeRange;->maxEndTimeUs:J

    .line 138
    iput-wide p5, p0, Lcom/google/android/exoplayer/TimeRange$DynamicTimeRange;->elapsedRealtimeAtStartUs:J

    .line 139
    iput-wide p7, p0, Lcom/google/android/exoplayer/TimeRange$DynamicTimeRange;->bufferDepthUs:J

    .line 140
    iput-object p9, p0, Lcom/google/android/exoplayer/TimeRange$DynamicTimeRange;->systemClock:Lcom/google/android/exoplayer/util/Clock;

    .line 141
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 10
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 187
    if-ne p1, p0, :cond_5

    .line 194
    :cond_4
    :goto_4
    return v1

    .line 190
    :cond_5
    if-eqz p1, :cond_11

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_13

    :cond_11
    move v1, v2

    .line 191
    goto :goto_4

    :cond_13
    move-object v0, p1

    .line 193
    check-cast v0, Lcom/google/android/exoplayer/TimeRange$DynamicTimeRange;

    .line 194
    .local v0, "other":Lcom/google/android/exoplayer/TimeRange$DynamicTimeRange;
    iget-wide v4, v0, Lcom/google/android/exoplayer/TimeRange$DynamicTimeRange;->minStartTimeUs:J

    iget-wide v6, p0, Lcom/google/android/exoplayer/TimeRange$DynamicTimeRange;->minStartTimeUs:J

    cmp-long v3, v4, v6

    if-nez v3, :cond_36

    iget-wide v4, v0, Lcom/google/android/exoplayer/TimeRange$DynamicTimeRange;->maxEndTimeUs:J

    iget-wide v6, p0, Lcom/google/android/exoplayer/TimeRange$DynamicTimeRange;->maxEndTimeUs:J

    cmp-long v3, v4, v6

    if-nez v3, :cond_36

    iget-wide v4, v0, Lcom/google/android/exoplayer/TimeRange$DynamicTimeRange;->elapsedRealtimeAtStartUs:J

    iget-wide v6, p0, Lcom/google/android/exoplayer/TimeRange$DynamicTimeRange;->elapsedRealtimeAtStartUs:J

    cmp-long v3, v4, v6

    if-nez v3, :cond_36

    iget-wide v4, v0, Lcom/google/android/exoplayer/TimeRange$DynamicTimeRange;->bufferDepthUs:J

    iget-wide v6, p0, Lcom/google/android/exoplayer/TimeRange$DynamicTimeRange;->bufferDepthUs:J

    cmp-long v3, v4, v6

    if-eqz v3, :cond_4

    :cond_36
    move v1, v2

    goto :goto_4
.end method

.method public getCurrentBoundsMs([J)[J
    .registers 8
    .param p1, "out"    # [J

    .prologue
    const-wide/16 v4, 0x3e8

    .line 150
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer/TimeRange$DynamicTimeRange;->getCurrentBoundsUs([J)[J

    move-result-object p1

    .line 151
    const/4 v0, 0x0

    aget-wide v2, p1, v0

    div-long/2addr v2, v4

    aput-wide v2, p1, v0

    .line 152
    const/4 v0, 0x1

    aget-wide v2, p1, v0

    div-long/2addr v2, v4

    aput-wide v2, p1, v0

    .line 153
    return-object p1
.end method

.method public getCurrentBoundsUs([J)[J
    .registers 12
    .param p1, "out"    # [J

    .prologue
    const/4 v5, 0x2

    .line 158
    if-eqz p1, :cond_6

    array-length v4, p1

    if-ge v4, v5, :cond_8

    .line 159
    :cond_6
    new-array p1, v5, [J

    .line 162
    :cond_8
    iget-wide v4, p0, Lcom/google/android/exoplayer/TimeRange$DynamicTimeRange;->maxEndTimeUs:J

    iget-object v6, p0, Lcom/google/android/exoplayer/TimeRange$DynamicTimeRange;->systemClock:Lcom/google/android/exoplayer/util/Clock;

    .line 163
    invoke-interface {v6}, Lcom/google/android/exoplayer/util/Clock;->elapsedRealtime()J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    mul-long/2addr v6, v8

    iget-wide v8, p0, Lcom/google/android/exoplayer/TimeRange$DynamicTimeRange;->elapsedRealtimeAtStartUs:J

    sub-long/2addr v6, v8

    .line 162
    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    .line 164
    .local v0, "currentEndTimeUs":J
    iget-wide v2, p0, Lcom/google/android/exoplayer/TimeRange$DynamicTimeRange;->minStartTimeUs:J

    .line 165
    .local v2, "currentStartTimeUs":J
    iget-wide v4, p0, Lcom/google/android/exoplayer/TimeRange$DynamicTimeRange;->bufferDepthUs:J

    const-wide/16 v6, -0x1

    cmp-long v4, v4, v6

    if-eqz v4, :cond_2c

    .line 167
    iget-wide v4, p0, Lcom/google/android/exoplayer/TimeRange$DynamicTimeRange;->bufferDepthUs:J

    sub-long v4, v0, v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    .line 170
    :cond_2c
    const/4 v4, 0x0

    aput-wide v2, p1, v4

    .line 171
    const/4 v4, 0x1

    aput-wide v0, p1, v4

    .line 172
    return-object p1
.end method

.method public hashCode()I
    .registers 5

    .prologue
    .line 177
    const/16 v0, 0x11

    .line 178
    .local v0, "result":I
    iget-wide v2, p0, Lcom/google/android/exoplayer/TimeRange$DynamicTimeRange;->minStartTimeUs:J

    long-to-int v1, v2

    add-int/lit16 v0, v1, 0x20f

    .line 179
    mul-int/lit8 v1, v0, 0x1f

    iget-wide v2, p0, Lcom/google/android/exoplayer/TimeRange$DynamicTimeRange;->maxEndTimeUs:J

    long-to-int v2, v2

    add-int v0, v1, v2

    .line 180
    mul-int/lit8 v1, v0, 0x1f

    iget-wide v2, p0, Lcom/google/android/exoplayer/TimeRange$DynamicTimeRange;->elapsedRealtimeAtStartUs:J

    long-to-int v2, v2

    add-int v0, v1, v2

    .line 181
    mul-int/lit8 v1, v0, 0x1f

    iget-wide v2, p0, Lcom/google/android/exoplayer/TimeRange$DynamicTimeRange;->bufferDepthUs:J

    long-to-int v2, v2

    add-int v0, v1, v2

    .line 182
    return v0
.end method

.method public isStatic()Z
    .registers 2

    .prologue
    .line 145
    const/4 v0, 0x0

    return v0
.end method
