.class public abstract Lcom/google/android/exoplayer/dash/mpd/SegmentBase$MultiSegmentBase;
.super Lcom/google/android/exoplayer/dash/mpd/SegmentBase;
.source "SegmentBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer/dash/mpd/SegmentBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "MultiSegmentBase"
.end annotation


# instance fields
.field final duration:J

.field final segmentTimeline:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/exoplayer/dash/mpd/SegmentBase$SegmentTimelineElement;",
            ">;"
        }
    .end annotation
.end field

.field final startNumber:I


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer/dash/mpd/RangedUri;JJIJLjava/util/List;)V
    .registers 10
    .param p1, "initialization"    # Lcom/google/android/exoplayer/dash/mpd/RangedUri;
    .param p2, "timescale"    # J
    .param p4, "presentationTimeOffset"    # J
    .param p6, "startNumber"    # I
    .param p7, "duration"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer/dash/mpd/RangedUri;",
            "JJIJ",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/exoplayer/dash/mpd/SegmentBase$SegmentTimelineElement;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 134
    .local p9, "segmentTimeline":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer/dash/mpd/SegmentBase$SegmentTimelineElement;>;"
    invoke-direct/range {p0 .. p5}, Lcom/google/android/exoplayer/dash/mpd/SegmentBase;-><init>(Lcom/google/android/exoplayer/dash/mpd/RangedUri;JJ)V

    .line 135
    iput p6, p0, Lcom/google/android/exoplayer/dash/mpd/SegmentBase$MultiSegmentBase;->startNumber:I

    .line 136
    iput-wide p7, p0, Lcom/google/android/exoplayer/dash/mpd/SegmentBase$MultiSegmentBase;->duration:J

    .line 137
    iput-object p9, p0, Lcom/google/android/exoplayer/dash/mpd/SegmentBase$MultiSegmentBase;->segmentTimeline:Ljava/util/List;

    .line 138
    return-void
.end method


# virtual methods
.method public getFirstSegmentNum()I
    .registers 2

    .prologue
    .line 212
    iget v0, p0, Lcom/google/android/exoplayer/dash/mpd/SegmentBase$MultiSegmentBase;->startNumber:I

    return v0
.end method

.method public abstract getLastSegmentNum(J)I
.end method

.method public final getSegmentDurationUs(IJ)J
    .registers 10
    .param p1, "sequenceNumber"    # I
    .param p2, "periodDurationUs"    # J

    .prologue
    const-wide/32 v4, 0xf4240

    .line 176
    iget-object v2, p0, Lcom/google/android/exoplayer/dash/mpd/SegmentBase$MultiSegmentBase;->segmentTimeline:Ljava/util/List;

    if-eqz v2, :cond_1b

    .line 177
    iget-object v2, p0, Lcom/google/android/exoplayer/dash/mpd/SegmentBase$MultiSegmentBase;->segmentTimeline:Ljava/util/List;

    iget v3, p0, Lcom/google/android/exoplayer/dash/mpd/SegmentBase$MultiSegmentBase;->startNumber:I

    sub-int v3, p1, v3

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer/dash/mpd/SegmentBase$SegmentTimelineElement;

    iget-wide v0, v2, Lcom/google/android/exoplayer/dash/mpd/SegmentBase$SegmentTimelineElement;->duration:J

    .line 178
    .local v0, "duration":J
    mul-long v2, v0, v4

    iget-wide v4, p0, Lcom/google/android/exoplayer/dash/mpd/SegmentBase$MultiSegmentBase;->timescale:J

    div-long/2addr v2, v4

    .line 180
    .end local v0    # "duration":J
    :goto_1a
    return-wide v2

    :cond_1b
    invoke-virtual {p0, p2, p3}, Lcom/google/android/exoplayer/dash/mpd/SegmentBase$MultiSegmentBase;->getLastSegmentNum(J)I

    move-result v2

    if-ne p1, v2, :cond_28

    .line 181
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer/dash/mpd/SegmentBase$MultiSegmentBase;->getSegmentTimeUs(I)J

    move-result-wide v2

    sub-long v2, p2, v2

    goto :goto_1a

    :cond_28
    iget-wide v2, p0, Lcom/google/android/exoplayer/dash/mpd/SegmentBase$MultiSegmentBase;->duration:J

    mul-long/2addr v2, v4

    iget-wide v4, p0, Lcom/google/android/exoplayer/dash/mpd/SegmentBase$MultiSegmentBase;->timescale:J

    div-long/2addr v2, v4

    goto :goto_1a
.end method

.method public getSegmentNum(JJ)I
    .registers 24
    .param p1, "timeUs"    # J
    .param p3, "periodDurationUs"    # J

    .prologue
    .line 144
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer/dash/mpd/SegmentBase$MultiSegmentBase;->getFirstSegmentNum()I

    move-result v6

    .line 145
    .local v6, "firstSegmentNum":I
    move v8, v6

    .line 146
    .local v8, "lowIndex":I
    move-object/from16 v0, p0

    move-wide/from16 v1, p3

    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplayer/dash/mpd/SegmentBase$MultiSegmentBase;->getLastSegmentNum(J)I

    move-result v7

    .line 147
    .local v7, "highIndex":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/exoplayer/dash/mpd/SegmentBase$MultiSegmentBase;->segmentTimeline:Ljava/util/List;

    if-nez v13, :cond_38

    .line 149
    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/google/android/exoplayer/dash/mpd/SegmentBase$MultiSegmentBase;->duration:J

    const-wide/32 v16, 0xf4240

    mul-long v14, v14, v16

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/google/android/exoplayer/dash/mpd/SegmentBase$MultiSegmentBase;->timescale:J

    move-wide/from16 v16, v0

    div-long v4, v14, v16

    .line 150
    .local v4, "durationUs":J
    move-object/from16 v0, p0

    iget v13, v0, Lcom/google/android/exoplayer/dash/mpd/SegmentBase$MultiSegmentBase;->startNumber:I

    div-long v14, p1, v4

    long-to-int v14, v14

    add-int v12, v13, v14

    .line 152
    .local v12, "segmentNum":I
    if-ge v12, v8, :cond_31

    move v12, v8

    .line 168
    .end local v4    # "durationUs":J
    .end local v12    # "segmentNum":I
    :cond_30
    :goto_30
    return v12

    .line 152
    .restart local v4    # "durationUs":J
    .restart local v12    # "segmentNum":I
    :cond_31
    const/4 v13, -0x1

    if-eq v7, v13, :cond_30

    if-le v12, v7, :cond_30

    move v12, v7

    goto :goto_30

    .line 157
    .end local v4    # "durationUs":J
    .end local v12    # "segmentNum":I
    :cond_38
    :goto_38
    if-gt v8, v7, :cond_54

    .line 158
    add-int v13, v8, v7

    div-int/lit8 v9, v13, 0x2

    .line 159
    .local v9, "midIndex":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/google/android/exoplayer/dash/mpd/SegmentBase$MultiSegmentBase;->getSegmentTimeUs(I)J

    move-result-wide v10

    .line 160
    .local v10, "midTimeUs":J
    cmp-long v13, v10, p1

    if-gez v13, :cond_4b

    .line 161
    add-int/lit8 v8, v9, 0x1

    goto :goto_38

    .line 162
    :cond_4b
    cmp-long v13, v10, p1

    if-lez v13, :cond_52

    .line 163
    add-int/lit8 v7, v9, -0x1

    goto :goto_38

    :cond_52
    move v12, v9

    .line 165
    goto :goto_30

    .line 168
    .end local v9    # "midIndex":I
    .end local v10    # "midTimeUs":J
    :cond_54
    if-ne v8, v6, :cond_59

    move v13, v8

    :goto_57
    move v12, v13

    goto :goto_30

    :cond_59
    move v13, v7

    goto :goto_57
.end method

.method public final getSegmentTimeUs(I)J
    .registers 8
    .param p1, "sequenceNumber"    # I

    .prologue
    .line 191
    iget-object v2, p0, Lcom/google/android/exoplayer/dash/mpd/SegmentBase$MultiSegmentBase;->segmentTimeline:Ljava/util/List;

    if-eqz v2, :cond_20

    .line 192
    iget-object v2, p0, Lcom/google/android/exoplayer/dash/mpd/SegmentBase$MultiSegmentBase;->segmentTimeline:Ljava/util/List;

    iget v3, p0, Lcom/google/android/exoplayer/dash/mpd/SegmentBase$MultiSegmentBase;->startNumber:I

    sub-int v3, p1, v3

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer/dash/mpd/SegmentBase$SegmentTimelineElement;

    iget-wide v2, v2, Lcom/google/android/exoplayer/dash/mpd/SegmentBase$SegmentTimelineElement;->startTime:J

    iget-wide v4, p0, Lcom/google/android/exoplayer/dash/mpd/SegmentBase$MultiSegmentBase;->presentationTimeOffset:J

    sub-long v0, v2, v4

    .line 197
    .local v0, "unscaledSegmentTime":J
    :goto_16
    const-wide/32 v2, 0xf4240

    iget-wide v4, p0, Lcom/google/android/exoplayer/dash/mpd/SegmentBase$MultiSegmentBase;->timescale:J

    invoke-static/range {v0 .. v5}, Lcom/google/android/exoplayer/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v2

    return-wide v2

    .line 195
    .end local v0    # "unscaledSegmentTime":J
    :cond_20
    iget v2, p0, Lcom/google/android/exoplayer/dash/mpd/SegmentBase$MultiSegmentBase;->startNumber:I

    sub-int v2, p1, v2

    int-to-long v2, v2

    iget-wide v4, p0, Lcom/google/android/exoplayer/dash/mpd/SegmentBase$MultiSegmentBase;->duration:J

    mul-long v0, v2, v4

    .restart local v0    # "unscaledSegmentTime":J
    goto :goto_16
.end method

.method public abstract getSegmentUrl(Lcom/google/android/exoplayer/dash/mpd/Representation;I)Lcom/google/android/exoplayer/dash/mpd/RangedUri;
.end method

.method public isExplicit()Z
    .registers 2

    .prologue
    .line 224
    iget-object v0, p0, Lcom/google/android/exoplayer/dash/mpd/SegmentBase$MultiSegmentBase;->segmentTimeline:Ljava/util/List;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method
