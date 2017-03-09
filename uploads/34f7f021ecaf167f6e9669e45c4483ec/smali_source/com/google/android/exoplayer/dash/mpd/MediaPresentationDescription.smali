.class public Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;
.super Ljava/lang/Object;
.source "MediaPresentationDescription.java"

# interfaces
.implements Lcom/google/android/exoplayer/util/ManifestFetcher$RedirectingManifest;


# instance fields
.field public final availabilityStartTime:J

.field public final duration:J

.field public final dynamic:Z

.field public final location:Ljava/lang/String;

.field public final minBufferTime:J

.field public final minUpdatePeriod:J

.field private final periods:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/exoplayer/dash/mpd/Period;",
            ">;"
        }
    .end annotation
.end field

.field public final timeShiftBufferDepth:J

.field public final utcTiming:Lcom/google/android/exoplayer/dash/mpd/UtcTimingElement;


# direct methods
.method public constructor <init>(JJJZJJLcom/google/android/exoplayer/dash/mpd/UtcTimingElement;Ljava/lang/String;Ljava/util/List;)V
    .registers 16
    .param p1, "availabilityStartTime"    # J
    .param p3, "duration"    # J
    .param p5, "minBufferTime"    # J
    .param p7, "dynamic"    # Z
    .param p8, "minUpdatePeriod"    # J
    .param p10, "timeShiftBufferDepth"    # J
    .param p12, "utcTiming"    # Lcom/google/android/exoplayer/dash/mpd/UtcTimingElement;
    .param p13, "location"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJJZJJ",
            "Lcom/google/android/exoplayer/dash/mpd/UtcTimingElement;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/exoplayer/dash/mpd/Period;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 47
    .local p14, "periods":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer/dash/mpd/Period;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-wide p1, p0, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;->availabilityStartTime:J

    .line 49
    iput-wide p3, p0, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;->duration:J

    .line 50
    iput-wide p5, p0, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;->minBufferTime:J

    .line 51
    iput-boolean p7, p0, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;->dynamic:Z

    .line 52
    iput-wide p8, p0, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;->minUpdatePeriod:J

    .line 53
    iput-wide p10, p0, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;->timeShiftBufferDepth:J

    .line 54
    iput-object p12, p0, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;->utcTiming:Lcom/google/android/exoplayer/dash/mpd/UtcTimingElement;

    .line 55
    iput-object p13, p0, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;->location:Ljava/lang/String;

    .line 56
    if-nez p14, :cond_19

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p14

    .end local p14    # "periods":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer/dash/mpd/Period;>;"
    :cond_19
    iput-object p14, p0, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;->periods:Ljava/util/List;

    .line 57
    return-void
.end method


# virtual methods
.method public final getNextManifestUri()Ljava/lang/String;
    .registers 2

    .prologue
    .line 61
    iget-object v0, p0, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;->location:Ljava/lang/String;

    return-object v0
.end method

.method public final getPeriod(I)Lcom/google/android/exoplayer/dash/mpd/Period;
    .registers 3
    .param p1, "index"    # I

    .prologue
    .line 69
    iget-object v0, p0, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;->periods:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer/dash/mpd/Period;

    return-object v0
.end method

.method public final getPeriodCount()I
    .registers 2

    .prologue
    .line 65
    iget-object v0, p0, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;->periods:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final getPeriodDuration(I)J
    .registers 6
    .param p1, "index"    # I

    .prologue
    const-wide/16 v0, -0x1

    .line 73
    iget-object v2, p0, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;->periods:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ne p1, v2, :cond_22

    iget-wide v2, p0, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;->duration:J

    cmp-long v2, v2, v0

    if-nez v2, :cond_13

    :goto_12
    return-wide v0

    :cond_13
    iget-wide v2, p0, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;->duration:J

    iget-object v0, p0, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;->periods:Ljava/util/List;

    .line 74
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer/dash/mpd/Period;

    iget-wide v0, v0, Lcom/google/android/exoplayer/dash/mpd/Period;->startMs:J

    sub-long v0, v2, v0

    goto :goto_12

    :cond_22
    iget-object v0, p0, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;->periods:Ljava/util/List;

    add-int/lit8 v1, p1, 0x1

    .line 75
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer/dash/mpd/Period;

    iget-wide v2, v0, Lcom/google/android/exoplayer/dash/mpd/Period;->startMs:J

    iget-object v0, p0, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;->periods:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer/dash/mpd/Period;

    iget-wide v0, v0, Lcom/google/android/exoplayer/dash/mpd/Period;->startMs:J

    sub-long v0, v2, v0

    goto :goto_12
.end method
