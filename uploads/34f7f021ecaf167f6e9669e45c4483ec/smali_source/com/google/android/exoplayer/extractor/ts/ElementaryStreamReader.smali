.class abstract Lcom/google/android/exoplayer/extractor/ts/ElementaryStreamReader;
.super Ljava/lang/Object;
.source "ElementaryStreamReader.java"


# instance fields
.field protected final output:Lcom/google/android/exoplayer/extractor/TrackOutput;


# direct methods
.method protected constructor <init>(Lcom/google/android/exoplayer/extractor/TrackOutput;)V
    .registers 2
    .param p1, "output"    # Lcom/google/android/exoplayer/extractor/TrackOutput;

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/google/android/exoplayer/extractor/ts/ElementaryStreamReader;->output:Lcom/google/android/exoplayer/extractor/TrackOutput;

    .line 33
    return-void
.end method


# virtual methods
.method public abstract consume(Lcom/google/android/exoplayer/util/ParsableByteArray;)V
.end method

.method public abstract packetFinished()V
.end method

.method public abstract packetStarted(JZ)V
.end method

.method public abstract seek()V
.end method
