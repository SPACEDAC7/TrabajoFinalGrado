.class final Lcom/google/android/exoplayer/extractor/ts/PsExtractor$PesReader;
.super Ljava/lang/Object;
.source "PsExtractor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer/extractor/ts/PsExtractor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PesReader"
.end annotation


# static fields
.field private static final PES_SCRATCH_SIZE:I = 0x40


# instance fields
.field private dtsFlag:Z

.field private extendedHeaderLength:I

.field private final pesPayloadReader:Lcom/google/android/exoplayer/extractor/ts/ElementaryStreamReader;

.field private final pesScratch:Lcom/google/android/exoplayer/util/ParsableBitArray;

.field private ptsFlag:Z

.field private final ptsTimestampAdjuster:Lcom/google/android/exoplayer/extractor/ts/PtsTimestampAdjuster;

.field private seenFirstDts:Z

.field private timeUs:J


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer/extractor/ts/ElementaryStreamReader;Lcom/google/android/exoplayer/extractor/ts/PtsTimestampAdjuster;)V
    .registers 5
    .param p1, "pesPayloadReader"    # Lcom/google/android/exoplayer/extractor/ts/ElementaryStreamReader;
    .param p2, "ptsTimestampAdjuster"    # Lcom/google/android/exoplayer/extractor/ts/PtsTimestampAdjuster;

    .prologue
    .line 243
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 244
    iput-object p1, p0, Lcom/google/android/exoplayer/extractor/ts/PsExtractor$PesReader;->pesPayloadReader:Lcom/google/android/exoplayer/extractor/ts/ElementaryStreamReader;

    .line 245
    iput-object p2, p0, Lcom/google/android/exoplayer/extractor/ts/PsExtractor$PesReader;->ptsTimestampAdjuster:Lcom/google/android/exoplayer/extractor/ts/PtsTimestampAdjuster;

    .line 246
    new-instance v0, Lcom/google/android/exoplayer/util/ParsableBitArray;

    const/16 v1, 0x40

    new-array v1, v1, [B

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer/util/ParsableBitArray;-><init>([B)V

    iput-object v0, p0, Lcom/google/android/exoplayer/extractor/ts/PsExtractor$PesReader;->pesScratch:Lcom/google/android/exoplayer/util/ParsableBitArray;

    .line 247
    return-void
.end method

.method private parseHeader()V
    .registers 4

    .prologue
    const/16 v2, 0x8

    .line 285
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/ts/PsExtractor$PesReader;->pesScratch:Lcom/google/android/exoplayer/util/ParsableBitArray;

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer/util/ParsableBitArray;->skipBits(I)V

    .line 286
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/ts/PsExtractor$PesReader;->pesScratch:Lcom/google/android/exoplayer/util/ParsableBitArray;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/util/ParsableBitArray;->readBit()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/exoplayer/extractor/ts/PsExtractor$PesReader;->ptsFlag:Z

    .line 287
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/ts/PsExtractor$PesReader;->pesScratch:Lcom/google/android/exoplayer/util/ParsableBitArray;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/util/ParsableBitArray;->readBit()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/exoplayer/extractor/ts/PsExtractor$PesReader;->dtsFlag:Z

    .line 290
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/ts/PsExtractor$PesReader;->pesScratch:Lcom/google/android/exoplayer/util/ParsableBitArray;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer/util/ParsableBitArray;->skipBits(I)V

    .line 291
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/ts/PsExtractor$PesReader;->pesScratch:Lcom/google/android/exoplayer/util/ParsableBitArray;

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer/util/ParsableBitArray;->readBits(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer/extractor/ts/PsExtractor$PesReader;->extendedHeaderLength:I

    .line 292
    return-void
.end method

.method private parseHeaderExtension()V
    .registers 12

    .prologue
    const/16 v10, 0x1e

    const/4 v9, 0x4

    const/4 v8, 0x3

    const/16 v7, 0xf

    const/4 v6, 0x1

    .line 295
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/google/android/exoplayer/extractor/ts/PsExtractor$PesReader;->timeUs:J

    .line 296
    iget-boolean v4, p0, Lcom/google/android/exoplayer/extractor/ts/PsExtractor$PesReader;->ptsFlag:Z

    if-eqz v4, :cond_84

    .line 297
    iget-object v4, p0, Lcom/google/android/exoplayer/extractor/ts/PsExtractor$PesReader;->pesScratch:Lcom/google/android/exoplayer/util/ParsableBitArray;

    invoke-virtual {v4, v9}, Lcom/google/android/exoplayer/util/ParsableBitArray;->skipBits(I)V

    .line 298
    iget-object v4, p0, Lcom/google/android/exoplayer/extractor/ts/PsExtractor$PesReader;->pesScratch:Lcom/google/android/exoplayer/util/ParsableBitArray;

    invoke-virtual {v4, v8}, Lcom/google/android/exoplayer/util/ParsableBitArray;->readBits(I)I

    move-result v4

    int-to-long v4, v4

    shl-long v2, v4, v10

    .line 299
    .local v2, "pts":J
    iget-object v4, p0, Lcom/google/android/exoplayer/extractor/ts/PsExtractor$PesReader;->pesScratch:Lcom/google/android/exoplayer/util/ParsableBitArray;

    invoke-virtual {v4, v6}, Lcom/google/android/exoplayer/util/ParsableBitArray;->skipBits(I)V

    .line 300
    iget-object v4, p0, Lcom/google/android/exoplayer/extractor/ts/PsExtractor$PesReader;->pesScratch:Lcom/google/android/exoplayer/util/ParsableBitArray;

    invoke-virtual {v4, v7}, Lcom/google/android/exoplayer/util/ParsableBitArray;->readBits(I)I

    move-result v4

    shl-int/lit8 v4, v4, 0xf

    int-to-long v4, v4

    or-long/2addr v2, v4

    .line 301
    iget-object v4, p0, Lcom/google/android/exoplayer/extractor/ts/PsExtractor$PesReader;->pesScratch:Lcom/google/android/exoplayer/util/ParsableBitArray;

    invoke-virtual {v4, v6}, Lcom/google/android/exoplayer/util/ParsableBitArray;->skipBits(I)V

    .line 302
    iget-object v4, p0, Lcom/google/android/exoplayer/extractor/ts/PsExtractor$PesReader;->pesScratch:Lcom/google/android/exoplayer/util/ParsableBitArray;

    invoke-virtual {v4, v7}, Lcom/google/android/exoplayer/util/ParsableBitArray;->readBits(I)I

    move-result v4

    int-to-long v4, v4

    or-long/2addr v2, v4

    .line 303
    iget-object v4, p0, Lcom/google/android/exoplayer/extractor/ts/PsExtractor$PesReader;->pesScratch:Lcom/google/android/exoplayer/util/ParsableBitArray;

    invoke-virtual {v4, v6}, Lcom/google/android/exoplayer/util/ParsableBitArray;->skipBits(I)V

    .line 304
    iget-boolean v4, p0, Lcom/google/android/exoplayer/extractor/ts/PsExtractor$PesReader;->seenFirstDts:Z

    if-nez v4, :cond_7c

    iget-boolean v4, p0, Lcom/google/android/exoplayer/extractor/ts/PsExtractor$PesReader;->dtsFlag:Z

    if-eqz v4, :cond_7c

    .line 305
    iget-object v4, p0, Lcom/google/android/exoplayer/extractor/ts/PsExtractor$PesReader;->pesScratch:Lcom/google/android/exoplayer/util/ParsableBitArray;

    invoke-virtual {v4, v9}, Lcom/google/android/exoplayer/util/ParsableBitArray;->skipBits(I)V

    .line 306
    iget-object v4, p0, Lcom/google/android/exoplayer/extractor/ts/PsExtractor$PesReader;->pesScratch:Lcom/google/android/exoplayer/util/ParsableBitArray;

    invoke-virtual {v4, v8}, Lcom/google/android/exoplayer/util/ParsableBitArray;->readBits(I)I

    move-result v4

    int-to-long v4, v4

    shl-long v0, v4, v10

    .line 307
    .local v0, "dts":J
    iget-object v4, p0, Lcom/google/android/exoplayer/extractor/ts/PsExtractor$PesReader;->pesScratch:Lcom/google/android/exoplayer/util/ParsableBitArray;

    invoke-virtual {v4, v6}, Lcom/google/android/exoplayer/util/ParsableBitArray;->skipBits(I)V

    .line 308
    iget-object v4, p0, Lcom/google/android/exoplayer/extractor/ts/PsExtractor$PesReader;->pesScratch:Lcom/google/android/exoplayer/util/ParsableBitArray;

    invoke-virtual {v4, v7}, Lcom/google/android/exoplayer/util/ParsableBitArray;->readBits(I)I

    move-result v4

    shl-int/lit8 v4, v4, 0xf

    int-to-long v4, v4

    or-long/2addr v0, v4

    .line 309
    iget-object v4, p0, Lcom/google/android/exoplayer/extractor/ts/PsExtractor$PesReader;->pesScratch:Lcom/google/android/exoplayer/util/ParsableBitArray;

    invoke-virtual {v4, v6}, Lcom/google/android/exoplayer/util/ParsableBitArray;->skipBits(I)V

    .line 310
    iget-object v4, p0, Lcom/google/android/exoplayer/extractor/ts/PsExtractor$PesReader;->pesScratch:Lcom/google/android/exoplayer/util/ParsableBitArray;

    invoke-virtual {v4, v7}, Lcom/google/android/exoplayer/util/ParsableBitArray;->readBits(I)I

    move-result v4

    int-to-long v4, v4

    or-long/2addr v0, v4

    .line 311
    iget-object v4, p0, Lcom/google/android/exoplayer/extractor/ts/PsExtractor$PesReader;->pesScratch:Lcom/google/android/exoplayer/util/ParsableBitArray;

    invoke-virtual {v4, v6}, Lcom/google/android/exoplayer/util/ParsableBitArray;->skipBits(I)V

    .line 317
    iget-object v4, p0, Lcom/google/android/exoplayer/extractor/ts/PsExtractor$PesReader;->ptsTimestampAdjuster:Lcom/google/android/exoplayer/extractor/ts/PtsTimestampAdjuster;

    invoke-virtual {v4, v0, v1}, Lcom/google/android/exoplayer/extractor/ts/PtsTimestampAdjuster;->adjustTimestamp(J)J

    .line 318
    iput-boolean v6, p0, Lcom/google/android/exoplayer/extractor/ts/PsExtractor$PesReader;->seenFirstDts:Z

    .line 320
    .end local v0    # "dts":J
    :cond_7c
    iget-object v4, p0, Lcom/google/android/exoplayer/extractor/ts/PsExtractor$PesReader;->ptsTimestampAdjuster:Lcom/google/android/exoplayer/extractor/ts/PtsTimestampAdjuster;

    invoke-virtual {v4, v2, v3}, Lcom/google/android/exoplayer/extractor/ts/PtsTimestampAdjuster;->adjustTimestamp(J)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/google/android/exoplayer/extractor/ts/PsExtractor$PesReader;->timeUs:J

    .line 322
    .end local v2    # "pts":J
    :cond_84
    return-void
.end method


# virtual methods
.method public consume(Lcom/google/android/exoplayer/util/ParsableByteArray;Lcom/google/android/exoplayer/extractor/ExtractorOutput;)V
    .registers 7
    .param p1, "data"    # Lcom/google/android/exoplayer/util/ParsableByteArray;
    .param p2, "output"    # Lcom/google/android/exoplayer/extractor/ExtractorOutput;

    .prologue
    const/4 v2, 0x0

    .line 268
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/ts/PsExtractor$PesReader;->pesScratch:Lcom/google/android/exoplayer/util/ParsableBitArray;

    iget-object v0, v0, Lcom/google/android/exoplayer/util/ParsableBitArray;->data:[B

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v2, v1}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readBytes([BII)V

    .line 269
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/ts/PsExtractor$PesReader;->pesScratch:Lcom/google/android/exoplayer/util/ParsableBitArray;

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer/util/ParsableBitArray;->setPosition(I)V

    .line 270
    invoke-direct {p0}, Lcom/google/android/exoplayer/extractor/ts/PsExtractor$PesReader;->parseHeader()V

    .line 271
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/ts/PsExtractor$PesReader;->pesScratch:Lcom/google/android/exoplayer/util/ParsableBitArray;

    iget-object v0, v0, Lcom/google/android/exoplayer/util/ParsableBitArray;->data:[B

    iget v1, p0, Lcom/google/android/exoplayer/extractor/ts/PsExtractor$PesReader;->extendedHeaderLength:I

    invoke-virtual {p1, v0, v2, v1}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readBytes([BII)V

    .line 272
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/ts/PsExtractor$PesReader;->pesScratch:Lcom/google/android/exoplayer/util/ParsableBitArray;

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer/util/ParsableBitArray;->setPosition(I)V

    .line 273
    invoke-direct {p0}, Lcom/google/android/exoplayer/extractor/ts/PsExtractor$PesReader;->parseHeaderExtension()V

    .line 274
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/ts/PsExtractor$PesReader;->pesPayloadReader:Lcom/google/android/exoplayer/extractor/ts/ElementaryStreamReader;

    iget-wide v2, p0, Lcom/google/android/exoplayer/extractor/ts/PsExtractor$PesReader;->timeUs:J

    const/4 v1, 0x1

    invoke-virtual {v0, v2, v3, v1}, Lcom/google/android/exoplayer/extractor/ts/ElementaryStreamReader;->packetStarted(JZ)V

    .line 275
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/ts/PsExtractor$PesReader;->pesPayloadReader:Lcom/google/android/exoplayer/extractor/ts/ElementaryStreamReader;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer/extractor/ts/ElementaryStreamReader;->consume(Lcom/google/android/exoplayer/util/ParsableByteArray;)V

    .line 277
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/ts/PsExtractor$PesReader;->pesPayloadReader:Lcom/google/android/exoplayer/extractor/ts/ElementaryStreamReader;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/extractor/ts/ElementaryStreamReader;->packetFinished()V

    .line 278
    return-void
.end method

.method public seek()V
    .registers 2

    .prologue
    .line 257
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/exoplayer/extractor/ts/PsExtractor$PesReader;->seenFirstDts:Z

    .line 258
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/ts/PsExtractor$PesReader;->pesPayloadReader:Lcom/google/android/exoplayer/extractor/ts/ElementaryStreamReader;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/extractor/ts/ElementaryStreamReader;->seek()V

    .line 259
    return-void
.end method
