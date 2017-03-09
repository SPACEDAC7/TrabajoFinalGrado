.class public Lcom/google/android/exoplayer/dash/mpd/Representation$SingleSegmentRepresentation;
.super Lcom/google/android/exoplayer/dash/mpd/Representation;
.source "Representation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer/dash/mpd/Representation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SingleSegmentRepresentation"
.end annotation


# instance fields
.field public final contentLength:J

.field private final indexUri:Lcom/google/android/exoplayer/dash/mpd/RangedUri;

.field private final segmentIndex:Lcom/google/android/exoplayer/dash/mpd/DashSingleSegmentIndex;

.field public final uri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Ljava/lang/String;JLcom/google/android/exoplayer/chunk/Format;Lcom/google/android/exoplayer/dash/mpd/SegmentBase$SingleSegmentBase;Ljava/lang/String;J)V
    .registers 20
    .param p1, "contentId"    # Ljava/lang/String;
    .param p2, "revisionId"    # J
    .param p4, "format"    # Lcom/google/android/exoplayer/chunk/Format;
    .param p5, "segmentBase"    # Lcom/google/android/exoplayer/dash/mpd/SegmentBase$SingleSegmentBase;
    .param p6, "customCacheKey"    # Ljava/lang/String;
    .param p7, "contentLength"    # J

    .prologue
    .line 199
    const/4 v9, 0x0

    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    move-object v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    invoke-direct/range {v2 .. v9}, Lcom/google/android/exoplayer/dash/mpd/Representation;-><init>(Ljava/lang/String;JLcom/google/android/exoplayer/chunk/Format;Lcom/google/android/exoplayer/dash/mpd/SegmentBase;Ljava/lang/String;Lcom/google/android/exoplayer/dash/mpd/Representation$1;)V

    .line 200
    move-object/from16 v0, p5

    iget-object v2, v0, Lcom/google/android/exoplayer/dash/mpd/SegmentBase$SingleSegmentBase;->uri:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/exoplayer/dash/mpd/Representation$SingleSegmentRepresentation;->uri:Landroid/net/Uri;

    .line 201
    invoke-virtual/range {p5 .. p5}, Lcom/google/android/exoplayer/dash/mpd/SegmentBase$SingleSegmentBase;->getIndex()Lcom/google/android/exoplayer/dash/mpd/RangedUri;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/exoplayer/dash/mpd/Representation$SingleSegmentRepresentation;->indexUri:Lcom/google/android/exoplayer/dash/mpd/RangedUri;

    .line 202
    move-wide/from16 v0, p7

    iput-wide v0, p0, Lcom/google/android/exoplayer/dash/mpd/Representation$SingleSegmentRepresentation;->contentLength:J

    .line 205
    iget-object v2, p0, Lcom/google/android/exoplayer/dash/mpd/Representation$SingleSegmentRepresentation;->indexUri:Lcom/google/android/exoplayer/dash/mpd/RangedUri;

    if-eqz v2, :cond_28

    const/4 v2, 0x0

    :goto_25
    iput-object v2, p0, Lcom/google/android/exoplayer/dash/mpd/Representation$SingleSegmentRepresentation;->segmentIndex:Lcom/google/android/exoplayer/dash/mpd/DashSingleSegmentIndex;

    .line 207
    return-void

    .line 205
    :cond_28
    new-instance v2, Lcom/google/android/exoplayer/dash/mpd/DashSingleSegmentIndex;

    new-instance v3, Lcom/google/android/exoplayer/dash/mpd/RangedUri;

    move-object/from16 v0, p5

    iget-object v4, v0, Lcom/google/android/exoplayer/dash/mpd/SegmentBase$SingleSegmentBase;->uri:Ljava/lang/String;

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    move-wide/from16 v8, p7

    invoke-direct/range {v3 .. v9}, Lcom/google/android/exoplayer/dash/mpd/RangedUri;-><init>(Ljava/lang/String;Ljava/lang/String;JJ)V

    invoke-direct {v2, v3}, Lcom/google/android/exoplayer/dash/mpd/DashSingleSegmentIndex;-><init>(Lcom/google/android/exoplayer/dash/mpd/RangedUri;)V

    goto :goto_25
.end method

.method public static newInstance(Ljava/lang/String;JLcom/google/android/exoplayer/chunk/Format;Ljava/lang/String;JJJJLjava/lang/String;J)Lcom/google/android/exoplayer/dash/mpd/Representation$SingleSegmentRepresentation;
    .registers 27
    .param p0, "contentId"    # Ljava/lang/String;
    .param p1, "revisionId"    # J
    .param p3, "format"    # Lcom/google/android/exoplayer/chunk/Format;
    .param p4, "uri"    # Ljava/lang/String;
    .param p5, "initializationStart"    # J
    .param p7, "initializationEnd"    # J
    .param p9, "indexStart"    # J
    .param p11, "indexEnd"    # J
    .param p13, "customCacheKey"    # Ljava/lang/String;
    .param p14, "contentLength"    # J

    .prologue
    .line 181
    new-instance v1, Lcom/google/android/exoplayer/dash/mpd/RangedUri;

    const/4 v3, 0x0

    sub-long v4, p7, p5

    const-wide/16 v6, 0x1

    add-long/2addr v6, v4

    move-object v2, p4

    move-wide/from16 v4, p5

    invoke-direct/range {v1 .. v7}, Lcom/google/android/exoplayer/dash/mpd/RangedUri;-><init>(Ljava/lang/String;Ljava/lang/String;JJ)V

    .line 183
    .local v1, "rangedUri":Lcom/google/android/exoplayer/dash/mpd/RangedUri;
    new-instance v0, Lcom/google/android/exoplayer/dash/mpd/SegmentBase$SingleSegmentBase;

    const-wide/16 v2, 0x1

    const-wide/16 v4, 0x0

    sub-long v6, p11, p9

    const-wide/16 v8, 0x1

    add-long v9, v6, v8

    move-object v6, p4

    move-wide/from16 v7, p9

    invoke-direct/range {v0 .. v10}, Lcom/google/android/exoplayer/dash/mpd/SegmentBase$SingleSegmentBase;-><init>(Lcom/google/android/exoplayer/dash/mpd/RangedUri;JJLjava/lang/String;JJ)V

    .line 185
    .local v0, "segmentBase":Lcom/google/android/exoplayer/dash/mpd/SegmentBase$SingleSegmentBase;
    new-instance v2, Lcom/google/android/exoplayer/dash/mpd/Representation$SingleSegmentRepresentation;

    move-object v3, p0

    move-wide v4, p1

    move-object v6, p3

    move-object v7, v0

    move-object/from16 v8, p13

    move-wide/from16 v9, p14

    invoke-direct/range {v2 .. v10}, Lcom/google/android/exoplayer/dash/mpd/Representation$SingleSegmentRepresentation;-><init>(Ljava/lang/String;JLcom/google/android/exoplayer/chunk/Format;Lcom/google/android/exoplayer/dash/mpd/SegmentBase$SingleSegmentBase;Ljava/lang/String;J)V

    return-object v2
.end method


# virtual methods
.method public getIndex()Lcom/google/android/exoplayer/dash/DashSegmentIndex;
    .registers 2

    .prologue
    .line 216
    iget-object v0, p0, Lcom/google/android/exoplayer/dash/mpd/Representation$SingleSegmentRepresentation;->segmentIndex:Lcom/google/android/exoplayer/dash/mpd/DashSingleSegmentIndex;

    return-object v0
.end method

.method public getIndexUri()Lcom/google/android/exoplayer/dash/mpd/RangedUri;
    .registers 2

    .prologue
    .line 211
    iget-object v0, p0, Lcom/google/android/exoplayer/dash/mpd/Representation$SingleSegmentRepresentation;->indexUri:Lcom/google/android/exoplayer/dash/mpd/RangedUri;

    return-object v0
.end method
