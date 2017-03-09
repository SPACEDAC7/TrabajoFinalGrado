.class public final Lcom/google/android/exoplayer/TimeRange$StaticTimeRange;
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
    name = "StaticTimeRange"
.end annotation


# instance fields
.field private final endTimeUs:J

.field private final startTimeUs:J


# direct methods
.method public constructor <init>(JJ)V
    .registers 6
    .param p1, "startTimeUs"    # J
    .param p3, "endTimeUs"    # J

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-wide p1, p0, Lcom/google/android/exoplayer/TimeRange$StaticTimeRange;->startTimeUs:J

    .line 66
    iput-wide p3, p0, Lcom/google/android/exoplayer/TimeRange$StaticTimeRange;->endTimeUs:J

    .line 67
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 10
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 102
    if-ne p1, p0, :cond_5

    .line 109
    :cond_4
    :goto_4
    return v1

    .line 105
    :cond_5
    if-eqz p1, :cond_11

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_13

    :cond_11
    move v1, v2

    .line 106
    goto :goto_4

    :cond_13
    move-object v0, p1

    .line 108
    check-cast v0, Lcom/google/android/exoplayer/TimeRange$StaticTimeRange;

    .line 109
    .local v0, "other":Lcom/google/android/exoplayer/TimeRange$StaticTimeRange;
    iget-wide v4, v0, Lcom/google/android/exoplayer/TimeRange$StaticTimeRange;->startTimeUs:J

    iget-wide v6, p0, Lcom/google/android/exoplayer/TimeRange$StaticTimeRange;->startTimeUs:J

    cmp-long v3, v4, v6

    if-nez v3, :cond_26

    iget-wide v4, v0, Lcom/google/android/exoplayer/TimeRange$StaticTimeRange;->endTimeUs:J

    iget-wide v6, p0, Lcom/google/android/exoplayer/TimeRange$StaticTimeRange;->endTimeUs:J

    cmp-long v3, v4, v6

    if-eqz v3, :cond_4

    :cond_26
    move v1, v2

    goto :goto_4
.end method

.method public getCurrentBoundsMs([J)[J
    .registers 8
    .param p1, "out"    # [J

    .prologue
    const-wide/16 v4, 0x3e8

    .line 76
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer/TimeRange$StaticTimeRange;->getCurrentBoundsUs([J)[J

    move-result-object p1

    .line 77
    const/4 v0, 0x0

    aget-wide v2, p1, v0

    div-long/2addr v2, v4

    aput-wide v2, p1, v0

    .line 78
    const/4 v0, 0x1

    aget-wide v2, p1, v0

    div-long/2addr v2, v4

    aput-wide v2, p1, v0

    .line 79
    return-object p1
.end method

.method public getCurrentBoundsUs([J)[J
    .registers 6
    .param p1, "out"    # [J

    .prologue
    const/4 v1, 0x2

    .line 84
    if-eqz p1, :cond_6

    array-length v0, p1

    if-ge v0, v1, :cond_8

    .line 85
    :cond_6
    new-array p1, v1, [J

    .line 87
    :cond_8
    const/4 v0, 0x0

    iget-wide v2, p0, Lcom/google/android/exoplayer/TimeRange$StaticTimeRange;->startTimeUs:J

    aput-wide v2, p1, v0

    .line 88
    const/4 v0, 0x1

    iget-wide v2, p0, Lcom/google/android/exoplayer/TimeRange$StaticTimeRange;->endTimeUs:J

    aput-wide v2, p1, v0

    .line 89
    return-object p1
.end method

.method public hashCode()I
    .registers 5

    .prologue
    .line 94
    const/16 v0, 0x11

    .line 95
    .local v0, "result":I
    iget-wide v2, p0, Lcom/google/android/exoplayer/TimeRange$StaticTimeRange;->startTimeUs:J

    long-to-int v1, v2

    add-int/lit16 v0, v1, 0x20f

    .line 96
    mul-int/lit8 v1, v0, 0x1f

    iget-wide v2, p0, Lcom/google/android/exoplayer/TimeRange$StaticTimeRange;->endTimeUs:J

    long-to-int v2, v2

    add-int v0, v1, v2

    .line 97
    return v0
.end method

.method public isStatic()Z
    .registers 2

    .prologue
    .line 71
    const/4 v0, 0x1

    return v0
.end method
