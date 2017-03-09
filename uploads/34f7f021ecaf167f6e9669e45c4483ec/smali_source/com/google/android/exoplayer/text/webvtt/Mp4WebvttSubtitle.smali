.class final Lcom/google/android/exoplayer/text/webvtt/Mp4WebvttSubtitle;
.super Ljava/lang/Object;
.source "Mp4WebvttSubtitle.java"

# interfaces
.implements Lcom/google/android/exoplayer/text/Subtitle;


# instance fields
.field private final cues:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/exoplayer/text/Cue;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/exoplayer/text/Cue;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 31
    .local p1, "cueList":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer/text/Cue;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer/text/webvtt/Mp4WebvttSubtitle;->cues:Ljava/util/List;

    .line 33
    return-void
.end method


# virtual methods
.method public getCues(J)Ljava/util/List;
    .registers 6
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
    .line 58
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_9

    iget-object v0, p0, Lcom/google/android/exoplayer/text/webvtt/Mp4WebvttSubtitle;->cues:Ljava/util/List;

    :goto_8
    return-object v0

    :cond_9
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_8
.end method

.method public getEventTime(I)J
    .registers 4
    .param p1, "index"    # I

    .prologue
    .line 47
    if-nez p1, :cond_9

    const/4 v0, 0x1

    :goto_3
    invoke-static {v0}, Lcom/google/android/exoplayer/util/Assertions;->checkArgument(Z)V

    .line 48
    const-wide/16 v0, 0x0

    return-wide v0

    .line 47
    :cond_9
    const/4 v0, 0x0

    goto :goto_3
.end method

.method public getEventTimeCount()I
    .registers 2

    .prologue
    .line 42
    const/4 v0, 0x1

    return v0
.end method

.method public getLastEventTime()J
    .registers 3

    .prologue
    .line 53
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getNextEventTimeIndex(J)I
    .registers 6
    .param p1, "timeUs"    # J

    .prologue
    .line 37
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_8

    const/4 v0, 0x0

    :goto_7
    return v0

    :cond_8
    const/4 v0, -0x1

    goto :goto_7
.end method
