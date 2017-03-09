.class public Lcom/google/android/exoplayer/dash/mpd/SegmentBase$SegmentTemplate;
.super Lcom/google/android/exoplayer/dash/mpd/SegmentBase$MultiSegmentBase;
.source "SegmentBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer/dash/mpd/SegmentBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SegmentTemplate"
.end annotation


# instance fields
.field private final baseUrl:Ljava/lang/String;

.field final initializationTemplate:Lcom/google/android/exoplayer/dash/mpd/UrlTemplate;

.field final mediaTemplate:Lcom/google/android/exoplayer/dash/mpd/UrlTemplate;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer/dash/mpd/RangedUri;JJIJLjava/util/List;Lcom/google/android/exoplayer/dash/mpd/UrlTemplate;Lcom/google/android/exoplayer/dash/mpd/UrlTemplate;Ljava/lang/String;)V
    .registers 13
    .param p1, "initialization"    # Lcom/google/android/exoplayer/dash/mpd/RangedUri;
    .param p2, "timescale"    # J
    .param p4, "presentationTimeOffset"    # J
    .param p6, "startNumber"    # I
    .param p7, "duration"    # J
    .param p10, "initializationTemplate"    # Lcom/google/android/exoplayer/dash/mpd/UrlTemplate;
    .param p11, "mediaTemplate"    # Lcom/google/android/exoplayer/dash/mpd/UrlTemplate;
    .param p12, "baseUrl"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer/dash/mpd/RangedUri;",
            "JJIJ",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/exoplayer/dash/mpd/SegmentBase$SegmentTimelineElement;",
            ">;",
            "Lcom/google/android/exoplayer/dash/mpd/UrlTemplate;",
            "Lcom/google/android/exoplayer/dash/mpd/UrlTemplate;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 309
    .local p9, "segmentTimeline":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer/dash/mpd/SegmentBase$SegmentTimelineElement;>;"
    invoke-direct/range {p0 .. p9}, Lcom/google/android/exoplayer/dash/mpd/SegmentBase$MultiSegmentBase;-><init>(Lcom/google/android/exoplayer/dash/mpd/RangedUri;JJIJLjava/util/List;)V

    .line 311
    iput-object p10, p0, Lcom/google/android/exoplayer/dash/mpd/SegmentBase$SegmentTemplate;->initializationTemplate:Lcom/google/android/exoplayer/dash/mpd/UrlTemplate;

    .line 312
    iput-object p11, p0, Lcom/google/android/exoplayer/dash/mpd/SegmentBase$SegmentTemplate;->mediaTemplate:Lcom/google/android/exoplayer/dash/mpd/UrlTemplate;

    .line 313
    iput-object p12, p0, Lcom/google/android/exoplayer/dash/mpd/SegmentBase$SegmentTemplate;->baseUrl:Ljava/lang/String;

    .line 314
    return-void
.end method


# virtual methods
.method public getInitialization(Lcom/google/android/exoplayer/dash/mpd/Representation;)Lcom/google/android/exoplayer/dash/mpd/RangedUri;
    .registers 10
    .param p1, "representation"    # Lcom/google/android/exoplayer/dash/mpd/Representation;

    .prologue
    const-wide/16 v4, 0x0

    .line 318
    iget-object v0, p0, Lcom/google/android/exoplayer/dash/mpd/SegmentBase$SegmentTemplate;->initializationTemplate:Lcom/google/android/exoplayer/dash/mpd/UrlTemplate;

    if-eqz v0, :cond_1f

    .line 319
    iget-object v0, p0, Lcom/google/android/exoplayer/dash/mpd/SegmentBase$SegmentTemplate;->initializationTemplate:Lcom/google/android/exoplayer/dash/mpd/UrlTemplate;

    iget-object v1, p1, Lcom/google/android/exoplayer/dash/mpd/Representation;->format:Lcom/google/android/exoplayer/chunk/Format;

    iget-object v1, v1, Lcom/google/android/exoplayer/chunk/Format;->id:Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v6, p1, Lcom/google/android/exoplayer/dash/mpd/Representation;->format:Lcom/google/android/exoplayer/chunk/Format;

    iget v3, v6, Lcom/google/android/exoplayer/chunk/Format;->bitrate:I

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/exoplayer/dash/mpd/UrlTemplate;->buildUri(Ljava/lang/String;IIJ)Ljava/lang/String;

    move-result-object v3

    .line 321
    .local v3, "urlString":Ljava/lang/String;
    new-instance v1, Lcom/google/android/exoplayer/dash/mpd/RangedUri;

    iget-object v2, p0, Lcom/google/android/exoplayer/dash/mpd/SegmentBase$SegmentTemplate;->baseUrl:Ljava/lang/String;

    const-wide/16 v6, -0x1

    invoke-direct/range {v1 .. v7}, Lcom/google/android/exoplayer/dash/mpd/RangedUri;-><init>(Ljava/lang/String;Ljava/lang/String;JJ)V

    .line 323
    .end local v3    # "urlString":Ljava/lang/String;
    :goto_1e
    return-object v1

    :cond_1f
    invoke-super {p0, p1}, Lcom/google/android/exoplayer/dash/mpd/SegmentBase$MultiSegmentBase;->getInitialization(Lcom/google/android/exoplayer/dash/mpd/Representation;)Lcom/google/android/exoplayer/dash/mpd/RangedUri;

    move-result-object v1

    goto :goto_1e
.end method

.method public getLastSegmentNum(J)I
    .registers 10
    .param p1, "periodDurationUs"    # J

    .prologue
    .line 342
    iget-object v2, p0, Lcom/google/android/exoplayer/dash/mpd/SegmentBase$SegmentTemplate;->segmentTimeline:Ljava/util/List;

    if-eqz v2, :cond_10

    .line 343
    iget-object v2, p0, Lcom/google/android/exoplayer/dash/mpd/SegmentBase$SegmentTemplate;->segmentTimeline:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    iget v3, p0, Lcom/google/android/exoplayer/dash/mpd/SegmentBase$SegmentTemplate;->startNumber:I

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, -0x1

    .line 348
    :goto_f
    return v2

    .line 344
    :cond_10
    const-wide/16 v2, -0x1

    cmp-long v2, p1, v2

    if-nez v2, :cond_18

    .line 345
    const/4 v2, -0x1

    goto :goto_f

    .line 347
    :cond_18
    iget-wide v2, p0, Lcom/google/android/exoplayer/dash/mpd/SegmentBase$SegmentTemplate;->duration:J

    const-wide/32 v4, 0xf4240

    mul-long/2addr v2, v4

    iget-wide v4, p0, Lcom/google/android/exoplayer/dash/mpd/SegmentBase$SegmentTemplate;->timescale:J

    div-long v0, v2, v4

    .line 348
    .local v0, "durationUs":J
    iget v2, p0, Lcom/google/android/exoplayer/dash/mpd/SegmentBase$SegmentTemplate;->startNumber:I

    invoke-static {p1, p2, v0, v1}, Lcom/google/android/exoplayer/util/Util;->ceilDivide(JJ)J

    move-result-wide v4

    long-to-int v3, v4

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, -0x1

    goto :goto_f
.end method

.method public getSegmentUrl(Lcom/google/android/exoplayer/dash/mpd/Representation;I)Lcom/google/android/exoplayer/dash/mpd/RangedUri;
    .registers 17
    .param p1, "representation"    # Lcom/google/android/exoplayer/dash/mpd/Representation;
    .param p2, "sequenceNumber"    # I

    .prologue
    .line 329
    const-wide/16 v4, 0x0

    .line 330
    .local v4, "time":J
    iget-object v0, p0, Lcom/google/android/exoplayer/dash/mpd/SegmentBase$SegmentTemplate;->segmentTimeline:Ljava/util/List;

    if-eqz v0, :cond_30

    .line 331
    iget-object v0, p0, Lcom/google/android/exoplayer/dash/mpd/SegmentBase$SegmentTemplate;->segmentTimeline:Ljava/util/List;

    iget v1, p0, Lcom/google/android/exoplayer/dash/mpd/SegmentBase$SegmentTemplate;->startNumber:I

    sub-int v1, p2, v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer/dash/mpd/SegmentBase$SegmentTimelineElement;

    iget-wide v4, v0, Lcom/google/android/exoplayer/dash/mpd/SegmentBase$SegmentTimelineElement;->startTime:J

    .line 335
    :goto_14
    iget-object v0, p0, Lcom/google/android/exoplayer/dash/mpd/SegmentBase$SegmentTemplate;->mediaTemplate:Lcom/google/android/exoplayer/dash/mpd/UrlTemplate;

    iget-object v1, p1, Lcom/google/android/exoplayer/dash/mpd/Representation;->format:Lcom/google/android/exoplayer/chunk/Format;

    iget-object v1, v1, Lcom/google/android/exoplayer/chunk/Format;->id:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/exoplayer/dash/mpd/Representation;->format:Lcom/google/android/exoplayer/chunk/Format;

    iget v3, v2, Lcom/google/android/exoplayer/chunk/Format;->bitrate:I

    move/from16 v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/exoplayer/dash/mpd/UrlTemplate;->buildUri(Ljava/lang/String;IIJ)Ljava/lang/String;

    move-result-object v9

    .line 337
    .local v9, "uriString":Ljava/lang/String;
    new-instance v7, Lcom/google/android/exoplayer/dash/mpd/RangedUri;

    iget-object v8, p0, Lcom/google/android/exoplayer/dash/mpd/SegmentBase$SegmentTemplate;->baseUrl:Ljava/lang/String;

    const-wide/16 v10, 0x0

    const-wide/16 v12, -0x1

    invoke-direct/range {v7 .. v13}, Lcom/google/android/exoplayer/dash/mpd/RangedUri;-><init>(Ljava/lang/String;Ljava/lang/String;JJ)V

    return-object v7

    .line 333
    .end local v9    # "uriString":Ljava/lang/String;
    :cond_30
    iget v0, p0, Lcom/google/android/exoplayer/dash/mpd/SegmentBase$SegmentTemplate;->startNumber:I

    sub-int v0, p2, v0

    int-to-long v0, v0

    iget-wide v2, p0, Lcom/google/android/exoplayer/dash/mpd/SegmentBase$SegmentTemplate;->duration:J

    mul-long v4, v0, v2

    goto :goto_14
.end method
