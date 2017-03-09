.class final Lcom/google/android/exoplayer/extractor/mp4/AtomParsers$Stz2SampleSizeBox;
.super Ljava/lang/Object;
.source "AtomParsers.java"

# interfaces
.implements Lcom/google/android/exoplayer/extractor/mp4/AtomParsers$SampleSizeBox;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer/extractor/mp4/AtomParsers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Stz2SampleSizeBox"
.end annotation


# instance fields
.field private currentByte:I

.field private final data:Lcom/google/android/exoplayer/util/ParsableByteArray;

.field private final fieldSize:I

.field private final sampleCount:I

.field private sampleIndex:I


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer/extractor/mp4/Atom$LeafAtom;)V
    .registers 4
    .param p1, "stz2Atom"    # Lcom/google/android/exoplayer/extractor/mp4/Atom$LeafAtom;

    .prologue
    .line 1285
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1286
    iget-object v0, p1, Lcom/google/android/exoplayer/extractor/mp4/Atom$LeafAtom;->data:Lcom/google/android/exoplayer/util/ParsableByteArray;

    iput-object v0, p0, Lcom/google/android/exoplayer/extractor/mp4/AtomParsers$Stz2SampleSizeBox;->data:Lcom/google/android/exoplayer/util/ParsableByteArray;

    .line 1287
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/mp4/AtomParsers$Stz2SampleSizeBox;->data:Lcom/google/android/exoplayer/util/ParsableByteArray;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer/util/ParsableByteArray;->setPosition(I)V

    .line 1288
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/mp4/AtomParsers$Stz2SampleSizeBox;->data:Lcom/google/android/exoplayer/util/ParsableByteArray;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    iput v0, p0, Lcom/google/android/exoplayer/extractor/mp4/AtomParsers$Stz2SampleSizeBox;->fieldSize:I

    .line 1289
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/mp4/AtomParsers$Stz2SampleSizeBox;->data:Lcom/google/android/exoplayer/util/ParsableByteArray;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer/extractor/mp4/AtomParsers$Stz2SampleSizeBox;->sampleCount:I

    .line 1290
    return-void
.end method


# virtual methods
.method public getSampleCount()I
    .registers 2

    .prologue
    .line 1294
    iget v0, p0, Lcom/google/android/exoplayer/extractor/mp4/AtomParsers$Stz2SampleSizeBox;->sampleCount:I

    return v0
.end method

.method public isFixedSampleSize()Z
    .registers 2

    .prologue
    .line 1319
    const/4 v0, 0x0

    return v0
.end method

.method public readNextSampleSize()I
    .registers 3

    .prologue
    .line 1299
    iget v0, p0, Lcom/google/android/exoplayer/extractor/mp4/AtomParsers$Stz2SampleSizeBox;->fieldSize:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_d

    .line 1300
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/mp4/AtomParsers$Stz2SampleSizeBox;->data:Lcom/google/android/exoplayer/util/ParsableByteArray;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    .line 1312
    :goto_c
    return v0

    .line 1301
    :cond_d
    iget v0, p0, Lcom/google/android/exoplayer/extractor/mp4/AtomParsers$Stz2SampleSizeBox;->fieldSize:I

    const/16 v1, 0x10

    if-ne v0, v1, :cond_1a

    .line 1302
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/mp4/AtomParsers$Stz2SampleSizeBox;->data:Lcom/google/android/exoplayer/util/ParsableByteArray;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedShort()I

    move-result v0

    goto :goto_c

    .line 1305
    :cond_1a
    iget v0, p0, Lcom/google/android/exoplayer/extractor/mp4/AtomParsers$Stz2SampleSizeBox;->sampleIndex:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/google/android/exoplayer/extractor/mp4/AtomParsers$Stz2SampleSizeBox;->sampleIndex:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_33

    .line 1307
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/mp4/AtomParsers$Stz2SampleSizeBox;->data:Lcom/google/android/exoplayer/util/ParsableByteArray;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer/extractor/mp4/AtomParsers$Stz2SampleSizeBox;->currentByte:I

    .line 1309
    iget v0, p0, Lcom/google/android/exoplayer/extractor/mp4/AtomParsers$Stz2SampleSizeBox;->currentByte:I

    and-int/lit16 v0, v0, 0xf0

    shr-int/lit8 v0, v0, 0x4

    goto :goto_c

    .line 1312
    :cond_33
    iget v0, p0, Lcom/google/android/exoplayer/extractor/mp4/AtomParsers$Stz2SampleSizeBox;->currentByte:I

    and-int/lit8 v0, v0, 0xf

    goto :goto_c
.end method
