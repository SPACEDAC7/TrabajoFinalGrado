.class public Lcom/google/android/exoplayer/dash/mpd/Representation$MultiSegmentRepresentation;
.super Lcom/google/android/exoplayer/dash/mpd/Representation;
.source "Representation.java"

# interfaces
.implements Lcom/google/android/exoplayer/dash/DashSegmentIndex;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer/dash/mpd/Representation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MultiSegmentRepresentation"
.end annotation


# instance fields
.field private final segmentBase:Lcom/google/android/exoplayer/dash/mpd/SegmentBase$MultiSegmentBase;


# direct methods
.method public constructor <init>(Ljava/lang/String;JLcom/google/android/exoplayer/chunk/Format;Lcom/google/android/exoplayer/dash/mpd/SegmentBase$MultiSegmentBase;Ljava/lang/String;)V
    .registers 15
    .param p1, "contentId"    # Ljava/lang/String;
    .param p2, "revisionId"    # J
    .param p4, "format"    # Lcom/google/android/exoplayer/chunk/Format;
    .param p5, "segmentBase"    # Lcom/google/android/exoplayer/dash/mpd/SegmentBase$MultiSegmentBase;
    .param p6, "customCacheKey"    # Ljava/lang/String;

    .prologue
    .line 238
    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v7}, Lcom/google/android/exoplayer/dash/mpd/Representation;-><init>(Ljava/lang/String;JLcom/google/android/exoplayer/chunk/Format;Lcom/google/android/exoplayer/dash/mpd/SegmentBase;Ljava/lang/String;Lcom/google/android/exoplayer/dash/mpd/Representation$1;)V

    .line 239
    iput-object p5, p0, Lcom/google/android/exoplayer/dash/mpd/Representation$MultiSegmentRepresentation;->segmentBase:Lcom/google/android/exoplayer/dash/mpd/SegmentBase$MultiSegmentBase;

    .line 240
    return-void
.end method


# virtual methods
.method public getDurationUs(IJ)J
    .registers 6
    .param p1, "segmentIndex"    # I
    .param p2, "periodDurationUs"    # J

    .prologue
    .line 271
    iget-object v0, p0, Lcom/google/android/exoplayer/dash/mpd/Representation$MultiSegmentRepresentation;->segmentBase:Lcom/google/android/exoplayer/dash/mpd/SegmentBase$MultiSegmentBase;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/exoplayer/dash/mpd/SegmentBase$MultiSegmentBase;->getSegmentDurationUs(IJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public getFirstSegmentNum()I
    .registers 2

    .prologue
    .line 276
    iget-object v0, p0, Lcom/google/android/exoplayer/dash/mpd/Representation$MultiSegmentRepresentation;->segmentBase:Lcom/google/android/exoplayer/dash/mpd/SegmentBase$MultiSegmentBase;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/dash/mpd/SegmentBase$MultiSegmentBase;->getFirstSegmentNum()I

    move-result v0

    return v0
.end method

.method public getIndex()Lcom/google/android/exoplayer/dash/DashSegmentIndex;
    .registers 1

    .prologue
    .line 249
    return-object p0
.end method

.method public getIndexUri()Lcom/google/android/exoplayer/dash/mpd/RangedUri;
    .registers 2

    .prologue
    .line 244
    const/4 v0, 0x0

    return-object v0
.end method

.method public getLastSegmentNum(J)I
    .registers 4
    .param p1, "periodDurationUs"    # J

    .prologue
    .line 281
    iget-object v0, p0, Lcom/google/android/exoplayer/dash/mpd/Representation$MultiSegmentRepresentation;->segmentBase:Lcom/google/android/exoplayer/dash/mpd/SegmentBase$MultiSegmentBase;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplayer/dash/mpd/SegmentBase$MultiSegmentBase;->getLastSegmentNum(J)I

    move-result v0

    return v0
.end method

.method public getSegmentNum(JJ)I
    .registers 6
    .param p1, "timeUs"    # J
    .param p3, "periodDurationUs"    # J

    .prologue
    .line 261
    iget-object v0, p0, Lcom/google/android/exoplayer/dash/mpd/Representation$MultiSegmentRepresentation;->segmentBase:Lcom/google/android/exoplayer/dash/mpd/SegmentBase$MultiSegmentBase;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/google/android/exoplayer/dash/mpd/SegmentBase$MultiSegmentBase;->getSegmentNum(JJ)I

    move-result v0

    return v0
.end method

.method public getSegmentUrl(I)Lcom/google/android/exoplayer/dash/mpd/RangedUri;
    .registers 3
    .param p1, "segmentIndex"    # I

    .prologue
    .line 256
    iget-object v0, p0, Lcom/google/android/exoplayer/dash/mpd/Representation$MultiSegmentRepresentation;->segmentBase:Lcom/google/android/exoplayer/dash/mpd/SegmentBase$MultiSegmentBase;

    invoke-virtual {v0, p0, p1}, Lcom/google/android/exoplayer/dash/mpd/SegmentBase$MultiSegmentBase;->getSegmentUrl(Lcom/google/android/exoplayer/dash/mpd/Representation;I)Lcom/google/android/exoplayer/dash/mpd/RangedUri;

    move-result-object v0

    return-object v0
.end method

.method public getTimeUs(I)J
    .registers 4
    .param p1, "segmentIndex"    # I

    .prologue
    .line 266
    iget-object v0, p0, Lcom/google/android/exoplayer/dash/mpd/Representation$MultiSegmentRepresentation;->segmentBase:Lcom/google/android/exoplayer/dash/mpd/SegmentBase$MultiSegmentBase;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer/dash/mpd/SegmentBase$MultiSegmentBase;->getSegmentTimeUs(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public isExplicit()Z
    .registers 2

    .prologue
    .line 286
    iget-object v0, p0, Lcom/google/android/exoplayer/dash/mpd/Representation$MultiSegmentRepresentation;->segmentBase:Lcom/google/android/exoplayer/dash/mpd/SegmentBase$MultiSegmentBase;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/dash/mpd/SegmentBase$MultiSegmentBase;->isExplicit()Z

    move-result v0

    return v0
.end method
