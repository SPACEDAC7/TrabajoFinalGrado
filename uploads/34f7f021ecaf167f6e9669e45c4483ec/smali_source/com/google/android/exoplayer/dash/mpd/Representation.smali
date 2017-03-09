.class public abstract Lcom/google/android/exoplayer/dash/mpd/Representation;
.super Ljava/lang/Object;
.source "Representation.java"

# interfaces
.implements Lcom/google/android/exoplayer/chunk/FormatWrapper;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer/dash/mpd/Representation$MultiSegmentRepresentation;,
        Lcom/google/android/exoplayer/dash/mpd/Representation$SingleSegmentRepresentation;
    }
.end annotation


# instance fields
.field private final cacheKey:Ljava/lang/String;

.field public final contentId:Ljava/lang/String;

.field public final format:Lcom/google/android/exoplayer/chunk/Format;

.field private final initializationUri:Lcom/google/android/exoplayer/dash/mpd/RangedUri;

.field public final presentationTimeOffsetUs:J

.field public final revisionId:J


# direct methods
.method private constructor <init>(Ljava/lang/String;JLcom/google/android/exoplayer/chunk/Format;Lcom/google/android/exoplayer/dash/mpd/SegmentBase;Ljava/lang/String;)V
    .registers 9
    .param p1, "contentId"    # Ljava/lang/String;
    .param p2, "revisionId"    # J
    .param p4, "format"    # Lcom/google/android/exoplayer/chunk/Format;
    .param p5, "segmentBase"    # Lcom/google/android/exoplayer/dash/mpd/SegmentBase;
    .param p6, "customCacheKey"    # Ljava/lang/String;

    .prologue
    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    iput-object p1, p0, Lcom/google/android/exoplayer/dash/mpd/Representation;->contentId:Ljava/lang/String;

    .line 99
    iput-wide p2, p0, Lcom/google/android/exoplayer/dash/mpd/Representation;->revisionId:J

    .line 100
    iput-object p4, p0, Lcom/google/android/exoplayer/dash/mpd/Representation;->format:Lcom/google/android/exoplayer/chunk/Format;

    .line 101
    if-eqz p6, :cond_1a

    .end local p6    # "customCacheKey":Ljava/lang/String;
    :goto_b
    iput-object p6, p0, Lcom/google/android/exoplayer/dash/mpd/Representation;->cacheKey:Ljava/lang/String;

    .line 103
    invoke-virtual {p5, p0}, Lcom/google/android/exoplayer/dash/mpd/SegmentBase;->getInitialization(Lcom/google/android/exoplayer/dash/mpd/Representation;)Lcom/google/android/exoplayer/dash/mpd/RangedUri;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer/dash/mpd/Representation;->initializationUri:Lcom/google/android/exoplayer/dash/mpd/RangedUri;

    .line 104
    invoke-virtual {p5}, Lcom/google/android/exoplayer/dash/mpd/SegmentBase;->getPresentationTimeOffsetUs()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/exoplayer/dash/mpd/Representation;->presentationTimeOffsetUs:J

    .line 105
    return-void

    .line 101
    .restart local p6    # "customCacheKey":Ljava/lang/String;
    :cond_1a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p4, Lcom/google/android/exoplayer/chunk/Format;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p6

    goto :goto_b
.end method

.method synthetic constructor <init>(Ljava/lang/String;JLcom/google/android/exoplayer/chunk/Format;Lcom/google/android/exoplayer/dash/mpd/SegmentBase;Ljava/lang/String;Lcom/google/android/exoplayer/dash/mpd/Representation$1;)V
    .registers 8
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # J
    .param p4, "x2"    # Lcom/google/android/exoplayer/chunk/Format;
    .param p5, "x3"    # Lcom/google/android/exoplayer/dash/mpd/SegmentBase;
    .param p6, "x4"    # Ljava/lang/String;
    .param p7, "x5"    # Lcom/google/android/exoplayer/dash/mpd/Representation$1;

    .prologue
    .line 28
    invoke-direct/range {p0 .. p6}, Lcom/google/android/exoplayer/dash/mpd/Representation;-><init>(Ljava/lang/String;JLcom/google/android/exoplayer/chunk/Format;Lcom/google/android/exoplayer/dash/mpd/SegmentBase;Ljava/lang/String;)V

    return-void
.end method

.method public static newInstance(Ljava/lang/String;JLcom/google/android/exoplayer/chunk/Format;Lcom/google/android/exoplayer/dash/mpd/SegmentBase;)Lcom/google/android/exoplayer/dash/mpd/Representation;
    .registers 12
    .param p0, "contentId"    # Ljava/lang/String;
    .param p1, "revisionId"    # J
    .param p3, "format"    # Lcom/google/android/exoplayer/chunk/Format;
    .param p4, "segmentBase"    # Lcom/google/android/exoplayer/dash/mpd/SegmentBase;

    .prologue
    .line 69
    const/4 v6, 0x0

    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    move-object v5, p4

    invoke-static/range {v1 .. v6}, Lcom/google/android/exoplayer/dash/mpd/Representation;->newInstance(Ljava/lang/String;JLcom/google/android/exoplayer/chunk/Format;Lcom/google/android/exoplayer/dash/mpd/SegmentBase;Ljava/lang/String;)Lcom/google/android/exoplayer/dash/mpd/Representation;

    move-result-object v0

    return-object v0
.end method

.method public static newInstance(Ljava/lang/String;JLcom/google/android/exoplayer/chunk/Format;Lcom/google/android/exoplayer/dash/mpd/SegmentBase;Ljava/lang/String;)Lcom/google/android/exoplayer/dash/mpd/Representation;
    .registers 15
    .param p0, "contentId"    # Ljava/lang/String;
    .param p1, "revisionId"    # J
    .param p3, "format"    # Lcom/google/android/exoplayer/chunk/Format;
    .param p4, "segmentBase"    # Lcom/google/android/exoplayer/dash/mpd/SegmentBase;
    .param p5, "customCacheKey"    # Ljava/lang/String;

    .prologue
    .line 84
    instance-of v0, p4, Lcom/google/android/exoplayer/dash/mpd/SegmentBase$SingleSegmentBase;

    if-eqz v0, :cond_13

    .line 85
    new-instance v0, Lcom/google/android/exoplayer/dash/mpd/Representation$SingleSegmentRepresentation;

    move-object v5, p4

    check-cast v5, Lcom/google/android/exoplayer/dash/mpd/SegmentBase$SingleSegmentBase;

    const-wide/16 v7, -0x1

    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    move-object v6, p5

    invoke-direct/range {v0 .. v8}, Lcom/google/android/exoplayer/dash/mpd/Representation$SingleSegmentRepresentation;-><init>(Ljava/lang/String;JLcom/google/android/exoplayer/chunk/Format;Lcom/google/android/exoplayer/dash/mpd/SegmentBase$SingleSegmentBase;Ljava/lang/String;J)V

    .line 88
    :goto_12
    return-object v0

    .line 87
    :cond_13
    instance-of v0, p4, Lcom/google/android/exoplayer/dash/mpd/SegmentBase$MultiSegmentBase;

    if-eqz v0, :cond_24

    .line 88
    new-instance v0, Lcom/google/android/exoplayer/dash/mpd/Representation$MultiSegmentRepresentation;

    move-object v5, p4

    check-cast v5, Lcom/google/android/exoplayer/dash/mpd/SegmentBase$MultiSegmentBase;

    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/google/android/exoplayer/dash/mpd/Representation$MultiSegmentRepresentation;-><init>(Ljava/lang/String;JLcom/google/android/exoplayer/chunk/Format;Lcom/google/android/exoplayer/dash/mpd/SegmentBase$MultiSegmentBase;Ljava/lang/String;)V

    goto :goto_12

    .line 91
    :cond_24
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "segmentBase must be of type SingleSegmentBase or MultiSegmentBase"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getCacheKey()Ljava/lang/String;
    .registers 2

    .prologue
    .line 145
    iget-object v0, p0, Lcom/google/android/exoplayer/dash/mpd/Representation;->cacheKey:Ljava/lang/String;

    return-object v0
.end method

.method public getFormat()Lcom/google/android/exoplayer/chunk/Format;
    .registers 2

    .prologue
    .line 109
    iget-object v0, p0, Lcom/google/android/exoplayer/dash/mpd/Representation;->format:Lcom/google/android/exoplayer/chunk/Format;

    return-object v0
.end method

.method public abstract getIndex()Lcom/google/android/exoplayer/dash/DashSegmentIndex;
.end method

.method public abstract getIndexUri()Lcom/google/android/exoplayer/dash/mpd/RangedUri;
.end method

.method public getInitializationUri()Lcom/google/android/exoplayer/dash/mpd/RangedUri;
    .registers 2

    .prologue
    .line 119
    iget-object v0, p0, Lcom/google/android/exoplayer/dash/mpd/Representation;->initializationUri:Lcom/google/android/exoplayer/dash/mpd/RangedUri;

    return-object v0
.end method
