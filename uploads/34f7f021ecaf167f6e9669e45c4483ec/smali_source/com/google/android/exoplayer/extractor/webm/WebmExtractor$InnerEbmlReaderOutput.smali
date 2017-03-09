.class final Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$InnerEbmlReaderOutput;
.super Ljava/lang/Object;
.source "WebmExtractor.java"

# interfaces
.implements Lcom/google/android/exoplayer/extractor/webm/EbmlReaderOutput;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "InnerEbmlReaderOutput"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;


# direct methods
.method private constructor <init>(Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;)V
    .registers 2

    .prologue
    .line 1213
    iput-object p1, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$InnerEbmlReaderOutput;->this$0:Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;
    .param p2, "x1"    # Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$1;

    .prologue
    .line 1213
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$InnerEbmlReaderOutput;-><init>(Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;)V

    return-void
.end method


# virtual methods
.method public binaryElement(IILcom/google/android/exoplayer/extractor/ExtractorInput;)V
    .registers 5
    .param p1, "id"    # I
    .param p2, "contentsSize"    # I
    .param p3, "input"    # Lcom/google/android/exoplayer/extractor/ExtractorInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 1254
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$InnerEbmlReaderOutput;->this$0:Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->binaryElement(IILcom/google/android/exoplayer/extractor/ExtractorInput;)V

    .line 1255
    return-void
.end method

.method public endMasterElement(I)V
    .registers 3
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer/ParserException;
        }
    .end annotation

    .prologue
    .line 1233
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$InnerEbmlReaderOutput;->this$0:Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->endMasterElement(I)V

    .line 1234
    return-void
.end method

.method public floatElement(ID)V
    .registers 6
    .param p1, "id"    # I
    .param p2, "value"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer/ParserException;
        }
    .end annotation

    .prologue
    .line 1243
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$InnerEbmlReaderOutput;->this$0:Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->floatElement(ID)V

    .line 1244
    return-void
.end method

.method public getElementType(I)I
    .registers 3
    .param p1, "id"    # I

    .prologue
    .line 1217
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$InnerEbmlReaderOutput;->this$0:Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->getElementType(I)I

    move-result v0

    return v0
.end method

.method public integerElement(IJ)V
    .registers 6
    .param p1, "id"    # I
    .param p2, "value"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer/ParserException;
        }
    .end annotation

    .prologue
    .line 1238
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$InnerEbmlReaderOutput;->this$0:Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->integerElement(IJ)V

    .line 1239
    return-void
.end method

.method public isLevel1Element(I)Z
    .registers 3
    .param p1, "id"    # I

    .prologue
    .line 1222
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$InnerEbmlReaderOutput;->this$0:Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->isLevel1Element(I)Z

    move-result v0

    return v0
.end method

.method public startMasterElement(IJJ)V
    .registers 12
    .param p1, "id"    # I
    .param p2, "contentPosition"    # J
    .param p4, "contentSize"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer/ParserException;
        }
    .end annotation

    .prologue
    .line 1228
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$InnerEbmlReaderOutput;->this$0:Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;

    move v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->startMasterElement(IJJ)V

    .line 1229
    return-void
.end method

.method public stringElement(ILjava/lang/String;)V
    .registers 4
    .param p1, "id"    # I
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer/ParserException;
        }
    .end annotation

    .prologue
    .line 1248
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$InnerEbmlReaderOutput;->this$0:Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->stringElement(ILjava/lang/String;)V

    .line 1249
    return-void
.end method
