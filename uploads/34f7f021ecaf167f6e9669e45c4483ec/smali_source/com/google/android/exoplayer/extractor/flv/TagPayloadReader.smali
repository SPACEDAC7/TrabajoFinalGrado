.class abstract Lcom/google/android/exoplayer/extractor/flv/TagPayloadReader;
.super Ljava/lang/Object;
.source "TagPayloadReader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer/extractor/flv/TagPayloadReader$UnsupportedFormatException;
    }
.end annotation


# instance fields
.field private durationUs:J

.field protected final output:Lcom/google/android/exoplayer/extractor/TrackOutput;


# direct methods
.method protected constructor <init>(Lcom/google/android/exoplayer/extractor/TrackOutput;)V
    .registers 4
    .param p1, "output"    # Lcom/google/android/exoplayer/extractor/TrackOutput;

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/google/android/exoplayer/extractor/flv/TagPayloadReader;->output:Lcom/google/android/exoplayer/extractor/TrackOutput;

    .line 48
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/exoplayer/extractor/flv/TagPayloadReader;->durationUs:J

    .line 49
    return-void
.end method


# virtual methods
.method public final consume(Lcom/google/android/exoplayer/util/ParsableByteArray;J)V
    .registers 6
    .param p1, "data"    # Lcom/google/android/exoplayer/util/ParsableByteArray;
    .param p2, "timeUs"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer/ParserException;
        }
    .end annotation

    .prologue
    .line 86
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer/extractor/flv/TagPayloadReader;->parseHeader(Lcom/google/android/exoplayer/util/ParsableByteArray;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 87
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/exoplayer/extractor/flv/TagPayloadReader;->parsePayload(Lcom/google/android/exoplayer/util/ParsableByteArray;J)V

    .line 89
    :cond_9
    return-void
.end method

.method public final getDurationUs()J
    .registers 3

    .prologue
    .line 66
    iget-wide v0, p0, Lcom/google/android/exoplayer/extractor/flv/TagPayloadReader;->durationUs:J

    return-wide v0
.end method

.method protected abstract parseHeader(Lcom/google/android/exoplayer/util/ParsableByteArray;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer/ParserException;
        }
    .end annotation
.end method

.method protected abstract parsePayload(Lcom/google/android/exoplayer/util/ParsableByteArray;J)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer/ParserException;
        }
    .end annotation
.end method

.method public abstract seek()V
.end method

.method public final setDurationUs(J)V
    .registers 4
    .param p1, "durationUs"    # J

    .prologue
    .line 57
    iput-wide p1, p0, Lcom/google/android/exoplayer/extractor/flv/TagPayloadReader;->durationUs:J

    .line 58
    return-void
.end method
