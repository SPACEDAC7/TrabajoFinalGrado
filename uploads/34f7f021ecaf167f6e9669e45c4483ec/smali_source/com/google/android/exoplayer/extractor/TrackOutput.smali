.class public interface abstract Lcom/google/android/exoplayer/extractor/TrackOutput;
.super Ljava/lang/Object;
.source "TrackOutput.java"


# virtual methods
.method public abstract format(Lcom/google/android/exoplayer/MediaFormat;)V
.end method

.method public abstract sampleData(Lcom/google/android/exoplayer/extractor/ExtractorInput;IZ)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation
.end method

.method public abstract sampleData(Lcom/google/android/exoplayer/util/ParsableByteArray;I)V
.end method

.method public abstract sampleMetadata(JIII[B)V
.end method
