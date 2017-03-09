.class final Lcom/google/android/exoplayer/text/subrip/SubripSubtitle;
.super Ljava/lang/Object;
.source "SubripSubtitle.java"

# interfaces
.implements Lcom/google/android/exoplayer/text/Subtitle;


# instance fields
.field private final cueTimesUs:[J

.field private final cues:[Lcom/google/android/exoplayer/text/Cue;


# direct methods
.method public constructor <init>([Lcom/google/android/exoplayer/text/Cue;[J)V
    .registers 3
    .param p1, "cues"    # [Lcom/google/android/exoplayer/text/Cue;
    .param p2, "cueTimesUs"    # [J

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/google/android/exoplayer/text/subrip/SubripSubtitle;->cues:[Lcom/google/android/exoplayer/text/Cue;

    .line 39
    iput-object p2, p0, Lcom/google/android/exoplayer/text/subrip/SubripSubtitle;->cueTimesUs:[J

    .line 40
    return-void
.end method


# virtual methods
.method public getCues(J)Ljava/util/List;
    .registers 8
    .param p1, "timeUs"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/exoplayer/text/Cue;",
            ">;"
        }
    .end annotation

    .prologue
    .line 70
    iget-object v1, p0, Lcom/google/android/exoplayer/text/subrip/SubripSubtitle;->cueTimesUs:[J

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v1, p1, p2, v2, v3}, Lcom/google/android/exoplayer/util/Util;->binarySearchFloor([JJZZ)I

    move-result v0

    .line 71
    .local v0, "index":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_11

    iget-object v1, p0, Lcom/google/android/exoplayer/text/subrip/SubripSubtitle;->cues:[Lcom/google/android/exoplayer/text/Cue;

    aget-object v1, v1, v0

    if-nez v1, :cond_16

    .line 73
    :cond_11
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    .line 75
    :goto_15
    return-object v1

    :cond_16
    iget-object v1, p0, Lcom/google/android/exoplayer/text/subrip/SubripSubtitle;->cues:[Lcom/google/android/exoplayer/text/Cue;

    aget-object v1, v1, v0

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    goto :goto_15
.end method

.method public getEventTime(I)J
    .registers 5
    .param p1, "index"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 55
    if-ltz p1, :cond_15

    move v0, v1

    :goto_5
    invoke-static {v0}, Lcom/google/android/exoplayer/util/Assertions;->checkArgument(Z)V

    .line 56
    iget-object v0, p0, Lcom/google/android/exoplayer/text/subrip/SubripSubtitle;->cueTimesUs:[J

    array-length v0, v0

    if-ge p1, v0, :cond_17

    :goto_d
    invoke-static {v1}, Lcom/google/android/exoplayer/util/Assertions;->checkArgument(Z)V

    .line 57
    iget-object v0, p0, Lcom/google/android/exoplayer/text/subrip/SubripSubtitle;->cueTimesUs:[J

    aget-wide v0, v0, p1

    return-wide v0

    :cond_15
    move v0, v2

    .line 55
    goto :goto_5

    :cond_17
    move v1, v2

    .line 56
    goto :goto_d
.end method

.method public getEventTimeCount()I
    .registers 2

    .prologue
    .line 50
    iget-object v0, p0, Lcom/google/android/exoplayer/text/subrip/SubripSubtitle;->cueTimesUs:[J

    array-length v0, v0

    return v0
.end method

.method public getLastEventTime()J
    .registers 3

    .prologue
    .line 62
    invoke-virtual {p0}, Lcom/google/android/exoplayer/text/subrip/SubripSubtitle;->getEventTimeCount()I

    move-result v0

    if-nez v0, :cond_9

    .line 63
    const-wide/16 v0, -0x1

    .line 65
    :goto_8
    return-wide v0

    :cond_9
    iget-object v0, p0, Lcom/google/android/exoplayer/text/subrip/SubripSubtitle;->cueTimesUs:[J

    iget-object v1, p0, Lcom/google/android/exoplayer/text/subrip/SubripSubtitle;->cueTimesUs:[J

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    aget-wide v0, v0, v1

    goto :goto_8
.end method

.method public getNextEventTimeIndex(J)I
    .registers 6
    .param p1, "timeUs"    # J

    .prologue
    const/4 v2, 0x0

    .line 44
    iget-object v1, p0, Lcom/google/android/exoplayer/text/subrip/SubripSubtitle;->cueTimesUs:[J

    invoke-static {v1, p1, p2, v2, v2}, Lcom/google/android/exoplayer/util/Util;->binarySearchCeil([JJZZ)I

    move-result v0

    .line 45
    .local v0, "index":I
    iget-object v1, p0, Lcom/google/android/exoplayer/text/subrip/SubripSubtitle;->cueTimesUs:[J

    array-length v1, v1

    if-ge v0, v1, :cond_d

    .end local v0    # "index":I
    :goto_c
    return v0

    .restart local v0    # "index":I
    :cond_d
    const/4 v0, -0x1

    goto :goto_c
.end method
