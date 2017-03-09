.class public abstract Lcom/google/android/exoplayer/dash/mpd/SegmentBase;
.super Ljava/lang/Object;
.source "SegmentBase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer/dash/mpd/SegmentBase$SegmentTimelineElement;,
        Lcom/google/android/exoplayer/dash/mpd/SegmentBase$SegmentTemplate;,
        Lcom/google/android/exoplayer/dash/mpd/SegmentBase$SegmentList;,
        Lcom/google/android/exoplayer/dash/mpd/SegmentBase$MultiSegmentBase;,
        Lcom/google/android/exoplayer/dash/mpd/SegmentBase$SingleSegmentBase;
    }
.end annotation


# instance fields
.field final initialization:Lcom/google/android/exoplayer/dash/mpd/RangedUri;

.field final presentationTimeOffset:J

.field final timescale:J


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer/dash/mpd/RangedUri;JJ)V
    .registers 6
    .param p1, "initialization"    # Lcom/google/android/exoplayer/dash/mpd/RangedUri;
    .param p2, "timescale"    # J
    .param p4, "presentationTimeOffset"    # J

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/google/android/exoplayer/dash/mpd/SegmentBase;->initialization:Lcom/google/android/exoplayer/dash/mpd/RangedUri;

    .line 41
    iput-wide p2, p0, Lcom/google/android/exoplayer/dash/mpd/SegmentBase;->timescale:J

    .line 42
    iput-wide p4, p0, Lcom/google/android/exoplayer/dash/mpd/SegmentBase;->presentationTimeOffset:J

    .line 43
    return-void
.end method


# virtual methods
.method public getInitialization(Lcom/google/android/exoplayer/dash/mpd/Representation;)Lcom/google/android/exoplayer/dash/mpd/RangedUri;
    .registers 3
    .param p1, "representation"    # Lcom/google/android/exoplayer/dash/mpd/Representation;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/google/android/exoplayer/dash/mpd/SegmentBase;->initialization:Lcom/google/android/exoplayer/dash/mpd/RangedUri;

    return-object v0
.end method

.method public getPresentationTimeOffsetUs()J
    .registers 7

    .prologue
    .line 62
    iget-wide v0, p0, Lcom/google/android/exoplayer/dash/mpd/SegmentBase;->presentationTimeOffset:J

    const-wide/32 v2, 0xf4240

    iget-wide v4, p0, Lcom/google/android/exoplayer/dash/mpd/SegmentBase;->timescale:J

    invoke-static/range {v0 .. v5}, Lcom/google/android/exoplayer/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v0

    return-wide v0
.end method
