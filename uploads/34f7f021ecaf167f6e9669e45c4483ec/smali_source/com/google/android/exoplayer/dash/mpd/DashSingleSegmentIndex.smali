.class final Lcom/google/android/exoplayer/dash/mpd/DashSingleSegmentIndex;
.super Ljava/lang/Object;
.source "DashSingleSegmentIndex.java"

# interfaces
.implements Lcom/google/android/exoplayer/dash/DashSegmentIndex;


# instance fields
.field private final uri:Lcom/google/android/exoplayer/dash/mpd/RangedUri;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer/dash/mpd/RangedUri;)V
    .registers 2
    .param p1, "uri"    # Lcom/google/android/exoplayer/dash/mpd/RangedUri;

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/google/android/exoplayer/dash/mpd/DashSingleSegmentIndex;->uri:Lcom/google/android/exoplayer/dash/mpd/RangedUri;

    .line 32
    return-void
.end method


# virtual methods
.method public getDurationUs(IJ)J
    .registers 4
    .param p1, "segmentNum"    # I
    .param p2, "periodDurationUs"    # J

    .prologue
    .line 46
    return-wide p2
.end method

.method public getFirstSegmentNum()I
    .registers 2

    .prologue
    .line 56
    const/4 v0, 0x0

    return v0
.end method

.method public getLastSegmentNum(J)I
    .registers 4
    .param p1, "periodDurationUs"    # J

    .prologue
    .line 61
    const/4 v0, 0x0

    return v0
.end method

.method public getSegmentNum(JJ)I
    .registers 6
    .param p1, "timeUs"    # J
    .param p3, "periodDurationUs"    # J

    .prologue
    .line 36
    const/4 v0, 0x0

    return v0
.end method

.method public getSegmentUrl(I)Lcom/google/android/exoplayer/dash/mpd/RangedUri;
    .registers 3
    .param p1, "segmentNum"    # I

    .prologue
    .line 51
    iget-object v0, p0, Lcom/google/android/exoplayer/dash/mpd/DashSingleSegmentIndex;->uri:Lcom/google/android/exoplayer/dash/mpd/RangedUri;

    return-object v0
.end method

.method public getTimeUs(I)J
    .registers 4
    .param p1, "segmentNum"    # I

    .prologue
    .line 41
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public isExplicit()Z
    .registers 2

    .prologue
    .line 66
    const/4 v0, 0x1

    return v0
.end method
