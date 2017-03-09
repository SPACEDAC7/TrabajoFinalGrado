.class public interface abstract Lcom/google/android/exoplayer/SampleSource$SampleSourceReader;
.super Ljava/lang/Object;
.source "SampleSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer/SampleSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "SampleSourceReader"
.end annotation


# virtual methods
.method public abstract continueBuffering(IJ)Z
.end method

.method public abstract disable(I)V
.end method

.method public abstract enable(IJ)V
.end method

.method public abstract getBufferedPositionUs()J
.end method

.method public abstract getFormat(I)Lcom/google/android/exoplayer/MediaFormat;
.end method

.method public abstract getTrackCount()I
.end method

.method public abstract maybeThrowError()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract prepare(J)Z
.end method

.method public abstract readData(IJLcom/google/android/exoplayer/MediaFormatHolder;Lcom/google/android/exoplayer/SampleHolder;)I
.end method

.method public abstract readDiscontinuity(I)J
.end method

.method public abstract release()V
.end method

.method public abstract seekToUs(J)V
.end method
