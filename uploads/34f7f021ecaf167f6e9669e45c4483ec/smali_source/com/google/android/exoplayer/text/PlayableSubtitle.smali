.class final Lcom/google/android/exoplayer/text/PlayableSubtitle;
.super Ljava/lang/Object;
.source "PlayableSubtitle.java"

# interfaces
.implements Lcom/google/android/exoplayer/text/Subtitle;


# instance fields
.field private final offsetUs:J

.field public final startTimeUs:J

.field private final subtitle:Lcom/google/android/exoplayer/text/Subtitle;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer/text/Subtitle;ZJJ)V
    .registers 10
    .param p1, "subtitle"    # Lcom/google/android/exoplayer/text/Subtitle;
    .param p2, "isRelative"    # Z
    .param p3, "startTimeUs"    # J
    .param p5, "offsetUs"    # J

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/google/android/exoplayer/text/PlayableSubtitle;->subtitle:Lcom/google/android/exoplayer/text/Subtitle;

    .line 46
    iput-wide p3, p0, Lcom/google/android/exoplayer/text/PlayableSubtitle;->startTimeUs:J

    .line 47
    if-eqz p2, :cond_e

    .end local p3    # "startTimeUs":J
    :goto_9
    add-long v0, p3, p5

    iput-wide v0, p0, Lcom/google/android/exoplayer/text/PlayableSubtitle;->offsetUs:J

    .line 48
    return-void

    .line 47
    .restart local p3    # "startTimeUs":J
    :cond_e
    const-wide/16 p3, 0x0

    goto :goto_9
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
    .line 72
    iget-object v0, p0, Lcom/google/android/exoplayer/text/PlayableSubtitle;->subtitle:Lcom/google/android/exoplayer/text/Subtitle;

    iget-wide v2, p0, Lcom/google/android/exoplayer/text/PlayableSubtitle;->offsetUs:J

    sub-long v2, p1, v2

    invoke-interface {v0, v2, v3}, Lcom/google/android/exoplayer/text/Subtitle;->getCues(J)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getEventTime(I)J
    .registers 6
    .param p1, "index"    # I

    .prologue
    .line 57
    iget-object v0, p0, Lcom/google/android/exoplayer/text/PlayableSubtitle;->subtitle:Lcom/google/android/exoplayer/text/Subtitle;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer/text/Subtitle;->getEventTime(I)J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/exoplayer/text/PlayableSubtitle;->offsetUs:J

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public getEventTimeCount()I
    .registers 2

    .prologue
    .line 52
    iget-object v0, p0, Lcom/google/android/exoplayer/text/PlayableSubtitle;->subtitle:Lcom/google/android/exoplayer/text/Subtitle;

    invoke-interface {v0}, Lcom/google/android/exoplayer/text/Subtitle;->getEventTimeCount()I

    move-result v0

    return v0
.end method

.method public getLastEventTime()J
    .registers 5

    .prologue
    .line 62
    iget-object v0, p0, Lcom/google/android/exoplayer/text/PlayableSubtitle;->subtitle:Lcom/google/android/exoplayer/text/Subtitle;

    invoke-interface {v0}, Lcom/google/android/exoplayer/text/Subtitle;->getLastEventTime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/exoplayer/text/PlayableSubtitle;->offsetUs:J

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public getNextEventTimeIndex(J)I
    .registers 8
    .param p1, "timeUs"    # J

    .prologue
    .line 67
    iget-object v0, p0, Lcom/google/android/exoplayer/text/PlayableSubtitle;->subtitle:Lcom/google/android/exoplayer/text/Subtitle;

    iget-wide v2, p0, Lcom/google/android/exoplayer/text/PlayableSubtitle;->offsetUs:J

    sub-long v2, p1, v2

    invoke-interface {v0, v2, v3}, Lcom/google/android/exoplayer/text/Subtitle;->getNextEventTimeIndex(J)I

    move-result v0

    return v0
.end method
