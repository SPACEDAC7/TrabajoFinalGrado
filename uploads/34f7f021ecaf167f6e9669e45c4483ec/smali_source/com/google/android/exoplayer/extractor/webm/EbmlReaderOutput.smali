.class interface abstract Lcom/google/android/exoplayer/extractor/webm/EbmlReaderOutput;
.super Ljava/lang/Object;
.source "EbmlReaderOutput.java"


# virtual methods
.method public abstract binaryElement(IILcom/google/android/exoplayer/extractor/ExtractorInput;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer/ParserException;,
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation
.end method

.method public abstract endMasterElement(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer/ParserException;
        }
    .end annotation
.end method

.method public abstract floatElement(ID)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer/ParserException;
        }
    .end annotation
.end method

.method public abstract getElementType(I)I
.end method

.method public abstract integerElement(IJ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer/ParserException;
        }
    .end annotation
.end method

.method public abstract isLevel1Element(I)Z
.end method

.method public abstract startMasterElement(IJJ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer/ParserException;
        }
    .end annotation
.end method

.method public abstract stringElement(ILjava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer/ParserException;
        }
    .end annotation
.end method
