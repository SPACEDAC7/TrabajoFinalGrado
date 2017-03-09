.class Lcom/google/android/exoplayer/extractor/ts/TsExtractor$PatReader;
.super Lcom/google/android/exoplayer/extractor/ts/TsExtractor$TsPayloadReader;
.source "TsExtractor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer/extractor/ts/TsExtractor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PatReader"
.end annotation


# instance fields
.field private crc:I

.field private final patScratch:Lcom/google/android/exoplayer/util/ParsableBitArray;

.field private sectionBytesRead:I

.field private final sectionData:Lcom/google/android/exoplayer/util/ParsableByteArray;

.field private sectionLength:I

.field final synthetic this$0:Lcom/google/android/exoplayer/extractor/ts/TsExtractor;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer/extractor/ts/TsExtractor;)V
    .registers 4

    .prologue
    .line 271
    iput-object p1, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor$PatReader;->this$0:Lcom/google/android/exoplayer/extractor/ts/TsExtractor;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer/extractor/ts/TsExtractor$TsPayloadReader;-><init>(Lcom/google/android/exoplayer/extractor/ts/TsExtractor$1;)V

    .line 272
    new-instance v0, Lcom/google/android/exoplayer/util/ParsableByteArray;

    invoke-direct {v0}, Lcom/google/android/exoplayer/util/ParsableByteArray;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor$PatReader;->sectionData:Lcom/google/android/exoplayer/util/ParsableByteArray;

    .line 273
    new-instance v0, Lcom/google/android/exoplayer/util/ParsableBitArray;

    const/4 v1, 0x4

    new-array v1, v1, [B

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer/util/ParsableBitArray;-><init>([B)V

    iput-object v0, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor$PatReader;->patScratch:Lcom/google/android/exoplayer/util/ParsableBitArray;

    .line 274
    return-void
.end method


# virtual methods
.method public consume(Lcom/google/android/exoplayer/util/ParsableByteArray;ZLcom/google/android/exoplayer/extractor/ExtractorOutput;)V
    .registers 16
    .param p1, "data"    # Lcom/google/android/exoplayer/util/ParsableByteArray;
    .param p2, "payloadUnitStartIndicator"    # Z
    .param p3, "output"    # Lcom/google/android/exoplayer/extractor/ExtractorOutput;

    .prologue
    const/16 v11, 0xd

    const/16 v7, 0xc

    const/4 v10, 0x3

    const/4 v9, 0x0

    .line 285
    if-eqz p2, :cond_35

    .line 286
    invoke-virtual {p1}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedByte()I

    move-result v3

    .line 287
    .local v3, "pointerField":I
    invoke-virtual {p1, v3}, Lcom/google/android/exoplayer/util/ParsableByteArray;->skipBytes(I)V

    .line 291
    iget-object v6, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor$PatReader;->patScratch:Lcom/google/android/exoplayer/util/ParsableBitArray;

    invoke-virtual {p1, v6, v10}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readBytes(Lcom/google/android/exoplayer/util/ParsableBitArray;I)V

    .line 292
    iget-object v6, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor$PatReader;->patScratch:Lcom/google/android/exoplayer/util/ParsableBitArray;

    invoke-virtual {v6, v7}, Lcom/google/android/exoplayer/util/ParsableBitArray;->skipBits(I)V

    .line 293
    iget-object v6, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor$PatReader;->patScratch:Lcom/google/android/exoplayer/util/ParsableBitArray;

    invoke-virtual {v6, v7}, Lcom/google/android/exoplayer/util/ParsableBitArray;->readBits(I)I

    move-result v6

    iput v6, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor$PatReader;->sectionLength:I

    .line 294
    iput v9, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor$PatReader;->sectionBytesRead:I

    .line 295
    iget-object v6, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor$PatReader;->patScratch:Lcom/google/android/exoplayer/util/ParsableBitArray;

    iget-object v6, v6, Lcom/google/android/exoplayer/util/ParsableBitArray;->data:[B

    const/4 v7, -0x1

    invoke-static {v6, v9, v10, v7}, Lcom/google/android/exoplayer/util/Util;->crc([BIII)I

    move-result v6

    iput v6, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor$PatReader;->crc:I

    .line 297
    iget-object v6, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor$PatReader;->sectionData:Lcom/google/android/exoplayer/util/ParsableByteArray;

    iget v7, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor$PatReader;->sectionLength:I

    invoke-virtual {v6, v7}, Lcom/google/android/exoplayer/util/ParsableByteArray;->reset(I)V

    .line 300
    .end local v3    # "pointerField":I
    :cond_35
    invoke-virtual {p1}, Lcom/google/android/exoplayer/util/ParsableByteArray;->bytesLeft()I

    move-result v6

    iget v7, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor$PatReader;->sectionLength:I

    iget v8, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor$PatReader;->sectionBytesRead:I

    sub-int/2addr v7, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 301
    .local v0, "bytesToRead":I
    iget-object v6, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor$PatReader;->sectionData:Lcom/google/android/exoplayer/util/ParsableByteArray;

    iget-object v6, v6, Lcom/google/android/exoplayer/util/ParsableByteArray;->data:[B

    iget v7, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor$PatReader;->sectionBytesRead:I

    invoke-virtual {p1, v6, v7, v0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readBytes([BII)V

    .line 302
    iget v6, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor$PatReader;->sectionBytesRead:I

    add-int/2addr v6, v0

    iput v6, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor$PatReader;->sectionBytesRead:I

    .line 303
    iget v6, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor$PatReader;->sectionBytesRead:I

    iget v7, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor$PatReader;->sectionLength:I

    if-ge v6, v7, :cond_57

    .line 331
    :cond_56
    return-void

    .line 308
    :cond_57
    iget-object v6, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor$PatReader;->sectionData:Lcom/google/android/exoplayer/util/ParsableByteArray;

    iget-object v6, v6, Lcom/google/android/exoplayer/util/ParsableByteArray;->data:[B

    iget v7, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor$PatReader;->sectionLength:I

    iget v8, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor$PatReader;->crc:I

    invoke-static {v6, v9, v7, v8}, Lcom/google/android/exoplayer/util/Util;->crc([BIII)I

    move-result v6

    if-nez v6, :cond_56

    .line 315
    iget-object v6, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor$PatReader;->sectionData:Lcom/google/android/exoplayer/util/ParsableByteArray;

    const/4 v7, 0x5

    invoke-virtual {v6, v7}, Lcom/google/android/exoplayer/util/ParsableByteArray;->skipBytes(I)V

    .line 317
    iget v6, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor$PatReader;->sectionLength:I

    add-int/lit8 v6, v6, -0x9

    div-int/lit8 v4, v6, 0x4

    .line 318
    .local v4, "programCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_72
    if-ge v1, v4, :cond_56

    .line 319
    iget-object v6, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor$PatReader;->sectionData:Lcom/google/android/exoplayer/util/ParsableByteArray;

    iget-object v7, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor$PatReader;->patScratch:Lcom/google/android/exoplayer/util/ParsableBitArray;

    const/4 v8, 0x4

    invoke-virtual {v6, v7, v8}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readBytes(Lcom/google/android/exoplayer/util/ParsableBitArray;I)V

    .line 320
    iget-object v6, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor$PatReader;->patScratch:Lcom/google/android/exoplayer/util/ParsableBitArray;

    const/16 v7, 0x10

    invoke-virtual {v6, v7}, Lcom/google/android/exoplayer/util/ParsableBitArray;->readBits(I)I

    move-result v5

    .line 321
    .local v5, "programNumber":I
    iget-object v6, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor$PatReader;->patScratch:Lcom/google/android/exoplayer/util/ParsableBitArray;

    invoke-virtual {v6, v10}, Lcom/google/android/exoplayer/util/ParsableBitArray;->skipBits(I)V

    .line 322
    if-nez v5, :cond_93

    .line 323
    iget-object v6, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor$PatReader;->patScratch:Lcom/google/android/exoplayer/util/ParsableBitArray;

    invoke-virtual {v6, v11}, Lcom/google/android/exoplayer/util/ParsableBitArray;->skipBits(I)V

    .line 318
    :goto_90
    add-int/lit8 v1, v1, 0x1

    goto :goto_72

    .line 325
    :cond_93
    iget-object v6, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor$PatReader;->patScratch:Lcom/google/android/exoplayer/util/ParsableBitArray;

    invoke-virtual {v6, v11}, Lcom/google/android/exoplayer/util/ParsableBitArray;->readBits(I)I

    move-result v2

    .line 326
    .local v2, "pid":I
    iget-object v6, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor$PatReader;->this$0:Lcom/google/android/exoplayer/extractor/ts/TsExtractor;

    iget-object v6, v6, Lcom/google/android/exoplayer/extractor/ts/TsExtractor;->tsPayloadReaders:Landroid/util/SparseArray;

    new-instance v7, Lcom/google/android/exoplayer/extractor/ts/TsExtractor$PmtReader;

    iget-object v8, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor$PatReader;->this$0:Lcom/google/android/exoplayer/extractor/ts/TsExtractor;

    invoke-direct {v7, v8}, Lcom/google/android/exoplayer/extractor/ts/TsExtractor$PmtReader;-><init>(Lcom/google/android/exoplayer/extractor/ts/TsExtractor;)V

    invoke-virtual {v6, v2, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_90
.end method

.method public seek()V
    .registers 1

    .prologue
    .line 279
    return-void
.end method
