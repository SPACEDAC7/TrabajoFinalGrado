.class final Lcom/google/android/exoplayer/extractor/webm/DefaultEbmlReader;
.super Ljava/lang/Object;
.source "DefaultEbmlReader.java"

# interfaces
.implements Lcom/google/android/exoplayer/extractor/webm/EbmlReader;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer/extractor/webm/DefaultEbmlReader$MasterElement;
    }
.end annotation


# static fields
.field private static final ELEMENT_STATE_READ_CONTENT:I = 0x2

.field private static final ELEMENT_STATE_READ_CONTENT_SIZE:I = 0x1

.field private static final ELEMENT_STATE_READ_ID:I = 0x0

.field private static final MAX_ID_BYTES:I = 0x4

.field private static final MAX_INTEGER_ELEMENT_SIZE_BYTES:I = 0x8

.field private static final MAX_LENGTH_BYTES:I = 0x8

.field private static final VALID_FLOAT32_ELEMENT_SIZE_BYTES:I = 0x4

.field private static final VALID_FLOAT64_ELEMENT_SIZE_BYTES:I = 0x8


# instance fields
.field private elementContentSize:J

.field private elementId:I

.field private elementState:I

.field private final masterElementsStack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Lcom/google/android/exoplayer/extractor/webm/DefaultEbmlReader$MasterElement;",
            ">;"
        }
    .end annotation
.end field

.field private output:Lcom/google/android/exoplayer/extractor/webm/EbmlReaderOutput;

.field private final scratch:[B

.field private final varintReader:Lcom/google/android/exoplayer/extractor/webm/VarintReader;


# direct methods
.method constructor <init>()V
    .registers 2

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const/16 v0, 0x8

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/google/android/exoplayer/extractor/webm/DefaultEbmlReader;->scratch:[B

    .line 43
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer/extractor/webm/DefaultEbmlReader;->masterElementsStack:Ljava/util/Stack;

    .line 44
    new-instance v0, Lcom/google/android/exoplayer/extractor/webm/VarintReader;

    invoke-direct {v0}, Lcom/google/android/exoplayer/extractor/webm/VarintReader;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer/extractor/webm/DefaultEbmlReader;->varintReader:Lcom/google/android/exoplayer/extractor/webm/VarintReader;

    return-void
.end method

.method private maybeResyncToNextLevel1Element(Lcom/google/android/exoplayer/extractor/ExtractorInput;)J
    .registers 8
    .param p1, "input"    # Lcom/google/android/exoplayer/extractor/ExtractorInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;,
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x0

    .line 149
    invoke-interface {p1}, Lcom/google/android/exoplayer/extractor/ExtractorInput;->resetPeekPosition()V

    .line 151
    :goto_5
    iget-object v2, p0, Lcom/google/android/exoplayer/extractor/webm/DefaultEbmlReader;->scratch:[B

    invoke-interface {p1, v2, v4, v5}, Lcom/google/android/exoplayer/extractor/ExtractorInput;->peekFully([BII)V

    .line 152
    iget-object v2, p0, Lcom/google/android/exoplayer/extractor/webm/DefaultEbmlReader;->scratch:[B

    aget-byte v2, v2, v4

    invoke-static {v2}, Lcom/google/android/exoplayer/extractor/webm/VarintReader;->parseUnsignedVarintLength(I)I

    move-result v1

    .line 153
    .local v1, "varintLength":I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_2b

    if-gt v1, v5, :cond_2b

    .line 154
    iget-object v2, p0, Lcom/google/android/exoplayer/extractor/webm/DefaultEbmlReader;->scratch:[B

    invoke-static {v2, v1, v4}, Lcom/google/android/exoplayer/extractor/webm/VarintReader;->assembleVarint([BIZ)J

    move-result-wide v2

    long-to-int v0, v2

    .line 155
    .local v0, "potentialId":I
    iget-object v2, p0, Lcom/google/android/exoplayer/extractor/webm/DefaultEbmlReader;->output:Lcom/google/android/exoplayer/extractor/webm/EbmlReaderOutput;

    invoke-interface {v2, v0}, Lcom/google/android/exoplayer/extractor/webm/EbmlReaderOutput;->isLevel1Element(I)Z

    move-result v2

    if-eqz v2, :cond_2b

    .line 156
    invoke-interface {p1, v1}, Lcom/google/android/exoplayer/extractor/ExtractorInput;->skipFully(I)V

    .line 157
    int-to-long v2, v0

    return-wide v2

    .line 160
    .end local v0    # "potentialId":I
    :cond_2b
    const/4 v2, 0x1

    invoke-interface {p1, v2}, Lcom/google/android/exoplayer/extractor/ExtractorInput;->skipFully(I)V

    goto :goto_5
.end method

.method private readFloat(Lcom/google/android/exoplayer/extractor/ExtractorInput;I)D
    .registers 8
    .param p1, "input"    # Lcom/google/android/exoplayer/extractor/ExtractorInput;
    .param p2, "byteLength"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 194
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer/extractor/webm/DefaultEbmlReader;->readInteger(Lcom/google/android/exoplayer/extractor/ExtractorInput;I)J

    move-result-wide v2

    .line 196
    .local v2, "integerValue":J
    const/4 v4, 0x4

    if-ne p2, v4, :cond_e

    .line 197
    long-to-int v4, v2

    invoke-static {v4}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v4

    float-to-double v0, v4

    .line 201
    .local v0, "floatValue":D
    :goto_d
    return-wide v0

    .line 199
    .end local v0    # "floatValue":D
    :cond_e
    invoke-static {v2, v3}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    .restart local v0    # "floatValue":D
    goto :goto_d
.end method

.method private readInteger(Lcom/google/android/exoplayer/extractor/ExtractorInput;I)J
    .registers 11
    .param p1, "input"    # Lcom/google/android/exoplayer/extractor/ExtractorInput;
    .param p2, "byteLength"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 175
    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/webm/DefaultEbmlReader;->scratch:[B

    const/4 v4, 0x0

    invoke-interface {p1, v1, v4, p2}, Lcom/google/android/exoplayer/extractor/ExtractorInput;->readFully([BII)V

    .line 176
    const-wide/16 v2, 0x0

    .line 177
    .local v2, "value":J
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_9
    if-ge v0, p2, :cond_1b

    .line 178
    const/16 v1, 0x8

    shl-long v4, v2, v1

    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/webm/DefaultEbmlReader;->scratch:[B

    aget-byte v1, v1, v0

    and-int/lit16 v1, v1, 0xff

    int-to-long v6, v1

    or-long v2, v4, v6

    .line 177
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 180
    :cond_1b
    return-wide v2
.end method

.method private readString(Lcom/google/android/exoplayer/extractor/ExtractorInput;I)Ljava/lang/String;
    .registers 5
    .param p1, "input"    # Lcom/google/android/exoplayer/extractor/ExtractorInput;
    .param p2, "byteLength"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 215
    if-nez p2, :cond_5

    .line 216
    const-string v1, ""

    .line 220
    :goto_4
    return-object v1

    .line 218
    :cond_5
    new-array v0, p2, [B

    .line 219
    .local v0, "stringBytes":[B
    const/4 v1, 0x0

    invoke-interface {p1, v0, v1, p2}, Lcom/google/android/exoplayer/extractor/ExtractorInput;->readFully([BII)V

    .line 220
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    goto :goto_4
.end method


# virtual methods
.method public init(Lcom/google/android/exoplayer/extractor/webm/EbmlReaderOutput;)V
    .registers 2
    .param p1, "eventHandler"    # Lcom/google/android/exoplayer/extractor/webm/EbmlReaderOutput;

    .prologue
    .line 53
    iput-object p1, p0, Lcom/google/android/exoplayer/extractor/webm/DefaultEbmlReader;->output:Lcom/google/android/exoplayer/extractor/webm/EbmlReaderOutput;

    .line 54
    return-void
.end method

.method public read(Lcom/google/android/exoplayer/extractor/ExtractorInput;)Z
    .registers 13
    .param p1, "input"    # Lcom/google/android/exoplayer/extractor/ExtractorInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 65
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/webm/DefaultEbmlReader;->output:Lcom/google/android/exoplayer/extractor/webm/EbmlReaderOutput;

    if-eqz v0, :cond_37

    const/4 v0, 0x1

    :goto_5
    invoke-static {v0}, Lcom/google/android/exoplayer/util/Assertions;->checkState(Z)V

    .line 67
    :goto_8
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/webm/DefaultEbmlReader;->masterElementsStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_39

    .line 68
    invoke-interface {p1}, Lcom/google/android/exoplayer/extractor/ExtractorInput;->getPosition()J

    move-result-wide v4

    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/webm/DefaultEbmlReader;->masterElementsStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer/extractor/webm/DefaultEbmlReader$MasterElement;

    # getter for: Lcom/google/android/exoplayer/extractor/webm/DefaultEbmlReader$MasterElement;->elementEndPosition:J
    invoke-static {v0}, Lcom/google/android/exoplayer/extractor/webm/DefaultEbmlReader$MasterElement;->access$000(Lcom/google/android/exoplayer/extractor/webm/DefaultEbmlReader$MasterElement;)J

    move-result-wide v0

    cmp-long v0, v4, v0

    if-ltz v0, :cond_39

    .line 69
    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/webm/DefaultEbmlReader;->output:Lcom/google/android/exoplayer/extractor/webm/EbmlReaderOutput;

    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/webm/DefaultEbmlReader;->masterElementsStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer/extractor/webm/DefaultEbmlReader$MasterElement;

    # getter for: Lcom/google/android/exoplayer/extractor/webm/DefaultEbmlReader$MasterElement;->elementId:I
    invoke-static {v0}, Lcom/google/android/exoplayer/extractor/webm/DefaultEbmlReader$MasterElement;->access$100(Lcom/google/android/exoplayer/extractor/webm/DefaultEbmlReader$MasterElement;)I

    move-result v0

    invoke-interface {v1, v0}, Lcom/google/android/exoplayer/extractor/webm/EbmlReaderOutput;->endMasterElement(I)V

    .line 70
    const/4 v0, 0x1

    .line 125
    :goto_36
    return v0

    .line 65
    :cond_37
    const/4 v0, 0x0

    goto :goto_5

    .line 73
    :cond_39
    iget v0, p0, Lcom/google/android/exoplayer/extractor/webm/DefaultEbmlReader;->elementState:I

    if-nez v0, :cond_5e

    .line 74
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/webm/DefaultEbmlReader;->varintReader:Lcom/google/android/exoplayer/extractor/webm/VarintReader;

    const/4 v1, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x4

    invoke-virtual {v0, p1, v1, v4, v5}, Lcom/google/android/exoplayer/extractor/webm/VarintReader;->readUnsignedVarint(Lcom/google/android/exoplayer/extractor/ExtractorInput;ZZI)J

    move-result-wide v8

    .line 75
    .local v8, "result":J
    const-wide/16 v0, -0x2

    cmp-long v0, v8, v0

    if-nez v0, :cond_50

    .line 76
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer/extractor/webm/DefaultEbmlReader;->maybeResyncToNextLevel1Element(Lcom/google/android/exoplayer/extractor/ExtractorInput;)J

    move-result-wide v8

    .line 78
    :cond_50
    const-wide/16 v0, -0x1

    cmp-long v0, v8, v0

    if-nez v0, :cond_58

    .line 79
    const/4 v0, 0x0

    goto :goto_36

    .line 82
    :cond_58
    long-to-int v0, v8

    iput v0, p0, Lcom/google/android/exoplayer/extractor/webm/DefaultEbmlReader;->elementId:I

    .line 83
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/exoplayer/extractor/webm/DefaultEbmlReader;->elementState:I

    .line 86
    .end local v8    # "result":J
    :cond_5e
    iget v0, p0, Lcom/google/android/exoplayer/extractor/webm/DefaultEbmlReader;->elementState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_72

    .line 87
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/webm/DefaultEbmlReader;->varintReader:Lcom/google/android/exoplayer/extractor/webm/VarintReader;

    const/4 v1, 0x0

    const/4 v4, 0x1

    const/16 v5, 0x8

    invoke-virtual {v0, p1, v1, v4, v5}, Lcom/google/android/exoplayer/extractor/webm/VarintReader;->readUnsignedVarint(Lcom/google/android/exoplayer/extractor/ExtractorInput;ZZI)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/exoplayer/extractor/webm/DefaultEbmlReader;->elementContentSize:J

    .line 88
    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/exoplayer/extractor/webm/DefaultEbmlReader;->elementState:I

    .line 91
    :cond_72
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/webm/DefaultEbmlReader;->output:Lcom/google/android/exoplayer/extractor/webm/EbmlReaderOutput;

    iget v1, p0, Lcom/google/android/exoplayer/extractor/webm/DefaultEbmlReader;->elementId:I

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer/extractor/webm/EbmlReaderOutput;->getElementType(I)I

    move-result v10

    .line 92
    .local v10, "type":I
    packed-switch v10, :pswitch_data_184

    .line 131
    new-instance v0, Lcom/google/android/exoplayer/ParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid element type "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer/ParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 94
    :pswitch_96
    invoke-interface {p1}, Lcom/google/android/exoplayer/extractor/ExtractorInput;->getPosition()J

    move-result-wide v2

    .line 95
    .local v2, "elementContentPosition":J
    iget-wide v0, p0, Lcom/google/android/exoplayer/extractor/webm/DefaultEbmlReader;->elementContentSize:J

    add-long v6, v2, v0

    .line 96
    .local v6, "elementEndPosition":J
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/webm/DefaultEbmlReader;->masterElementsStack:Ljava/util/Stack;

    new-instance v1, Lcom/google/android/exoplayer/extractor/webm/DefaultEbmlReader$MasterElement;

    iget v4, p0, Lcom/google/android/exoplayer/extractor/webm/DefaultEbmlReader;->elementId:I

    const/4 v5, 0x0

    invoke-direct {v1, v4, v6, v7, v5}, Lcom/google/android/exoplayer/extractor/webm/DefaultEbmlReader$MasterElement;-><init>(IJLcom/google/android/exoplayer/extractor/webm/DefaultEbmlReader$1;)V

    invoke-virtual {v0, v1}, Ljava/util/Stack;->add(Ljava/lang/Object;)Z

    .line 97
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/webm/DefaultEbmlReader;->output:Lcom/google/android/exoplayer/extractor/webm/EbmlReaderOutput;

    iget v1, p0, Lcom/google/android/exoplayer/extractor/webm/DefaultEbmlReader;->elementId:I

    iget-wide v4, p0, Lcom/google/android/exoplayer/extractor/webm/DefaultEbmlReader;->elementContentSize:J

    invoke-interface/range {v0 .. v5}, Lcom/google/android/exoplayer/extractor/webm/EbmlReaderOutput;->startMasterElement(IJJ)V

    .line 98
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/exoplayer/extractor/webm/DefaultEbmlReader;->elementState:I

    .line 99
    const/4 v0, 0x1

    goto/16 :goto_36

    .line 101
    .end local v2    # "elementContentPosition":J
    .end local v6    # "elementEndPosition":J
    :pswitch_ba
    iget-wide v0, p0, Lcom/google/android/exoplayer/extractor/webm/DefaultEbmlReader;->elementContentSize:J

    const-wide/16 v4, 0x8

    cmp-long v0, v0, v4

    if-lez v0, :cond_dd

    .line 102
    new-instance v0, Lcom/google/android/exoplayer/ParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid integer size: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v4, p0, Lcom/google/android/exoplayer/extractor/webm/DefaultEbmlReader;->elementContentSize:J

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer/ParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 104
    :cond_dd
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/webm/DefaultEbmlReader;->output:Lcom/google/android/exoplayer/extractor/webm/EbmlReaderOutput;

    iget v1, p0, Lcom/google/android/exoplayer/extractor/webm/DefaultEbmlReader;->elementId:I

    iget-wide v4, p0, Lcom/google/android/exoplayer/extractor/webm/DefaultEbmlReader;->elementContentSize:J

    long-to-int v4, v4

    invoke-direct {p0, p1, v4}, Lcom/google/android/exoplayer/extractor/webm/DefaultEbmlReader;->readInteger(Lcom/google/android/exoplayer/extractor/ExtractorInput;I)J

    move-result-wide v4

    invoke-interface {v0, v1, v4, v5}, Lcom/google/android/exoplayer/extractor/webm/EbmlReaderOutput;->integerElement(IJ)V

    .line 105
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/exoplayer/extractor/webm/DefaultEbmlReader;->elementState:I

    .line 106
    const/4 v0, 0x1

    goto/16 :goto_36

    .line 108
    :pswitch_f1
    iget-wide v0, p0, Lcom/google/android/exoplayer/extractor/webm/DefaultEbmlReader;->elementContentSize:J

    const-wide/16 v4, 0x4

    cmp-long v0, v0, v4

    if-eqz v0, :cond_11c

    iget-wide v0, p0, Lcom/google/android/exoplayer/extractor/webm/DefaultEbmlReader;->elementContentSize:J

    const-wide/16 v4, 0x8

    cmp-long v0, v0, v4

    if-eqz v0, :cond_11c

    .line 110
    new-instance v0, Lcom/google/android/exoplayer/ParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid float size: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v4, p0, Lcom/google/android/exoplayer/extractor/webm/DefaultEbmlReader;->elementContentSize:J

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer/ParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 112
    :cond_11c
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/webm/DefaultEbmlReader;->output:Lcom/google/android/exoplayer/extractor/webm/EbmlReaderOutput;

    iget v1, p0, Lcom/google/android/exoplayer/extractor/webm/DefaultEbmlReader;->elementId:I

    iget-wide v4, p0, Lcom/google/android/exoplayer/extractor/webm/DefaultEbmlReader;->elementContentSize:J

    long-to-int v4, v4

    invoke-direct {p0, p1, v4}, Lcom/google/android/exoplayer/extractor/webm/DefaultEbmlReader;->readFloat(Lcom/google/android/exoplayer/extractor/ExtractorInput;I)D

    move-result-wide v4

    invoke-interface {v0, v1, v4, v5}, Lcom/google/android/exoplayer/extractor/webm/EbmlReaderOutput;->floatElement(ID)V

    .line 113
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/exoplayer/extractor/webm/DefaultEbmlReader;->elementState:I

    .line 114
    const/4 v0, 0x1

    goto/16 :goto_36

    .line 116
    :pswitch_130
    iget-wide v0, p0, Lcom/google/android/exoplayer/extractor/webm/DefaultEbmlReader;->elementContentSize:J

    const-wide/32 v4, 0x7fffffff

    cmp-long v0, v0, v4

    if-lez v0, :cond_154

    .line 117
    new-instance v0, Lcom/google/android/exoplayer/ParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "String element size: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v4, p0, Lcom/google/android/exoplayer/extractor/webm/DefaultEbmlReader;->elementContentSize:J

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer/ParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 119
    :cond_154
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/webm/DefaultEbmlReader;->output:Lcom/google/android/exoplayer/extractor/webm/EbmlReaderOutput;

    iget v1, p0, Lcom/google/android/exoplayer/extractor/webm/DefaultEbmlReader;->elementId:I

    iget-wide v4, p0, Lcom/google/android/exoplayer/extractor/webm/DefaultEbmlReader;->elementContentSize:J

    long-to-int v4, v4

    invoke-direct {p0, p1, v4}, Lcom/google/android/exoplayer/extractor/webm/DefaultEbmlReader;->readString(Lcom/google/android/exoplayer/extractor/ExtractorInput;I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v1, v4}, Lcom/google/android/exoplayer/extractor/webm/EbmlReaderOutput;->stringElement(ILjava/lang/String;)V

    .line 120
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/exoplayer/extractor/webm/DefaultEbmlReader;->elementState:I

    .line 121
    const/4 v0, 0x1

    goto/16 :goto_36

    .line 123
    :pswitch_168
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/webm/DefaultEbmlReader;->output:Lcom/google/android/exoplayer/extractor/webm/EbmlReaderOutput;

    iget v1, p0, Lcom/google/android/exoplayer/extractor/webm/DefaultEbmlReader;->elementId:I

    iget-wide v4, p0, Lcom/google/android/exoplayer/extractor/webm/DefaultEbmlReader;->elementContentSize:J

    long-to-int v4, v4

    invoke-interface {v0, v1, v4, p1}, Lcom/google/android/exoplayer/extractor/webm/EbmlReaderOutput;->binaryElement(IILcom/google/android/exoplayer/extractor/ExtractorInput;)V

    .line 124
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/exoplayer/extractor/webm/DefaultEbmlReader;->elementState:I

    .line 125
    const/4 v0, 0x1

    goto/16 :goto_36

    .line 127
    :pswitch_178
    iget-wide v0, p0, Lcom/google/android/exoplayer/extractor/webm/DefaultEbmlReader;->elementContentSize:J

    long-to-int v0, v0

    invoke-interface {p1, v0}, Lcom/google/android/exoplayer/extractor/ExtractorInput;->skipFully(I)V

    .line 128
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/exoplayer/extractor/webm/DefaultEbmlReader;->elementState:I

    goto/16 :goto_8

    .line 92
    nop

    :pswitch_data_184
    .packed-switch 0x0
        :pswitch_178
        :pswitch_96
        :pswitch_ba
        :pswitch_130
        :pswitch_168
        :pswitch_f1
    .end packed-switch
.end method

.method public reset()V
    .registers 2

    .prologue
    .line 58
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/exoplayer/extractor/webm/DefaultEbmlReader;->elementState:I

    .line 59
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/webm/DefaultEbmlReader;->masterElementsStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->clear()V

    .line 60
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/webm/DefaultEbmlReader;->varintReader:Lcom/google/android/exoplayer/extractor/webm/VarintReader;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/extractor/webm/VarintReader;->reset()V

    .line 61
    return-void
.end method
