.class final Lcom/google/android/exoplayer/extractor/mp4/AtomParsers$StszSampleSizeBox;
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
    name = "StszSampleSizeBox"
.end annotation


# instance fields
.field private final data:Lcom/google/android/exoplayer/util/ParsableByteArray;

.field private final fixedSampleSize:I

.field private final sampleCount:I


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer/extractor/mp4/Atom$LeafAtom;)V
    .registers 4
    .param p1, "stszAtom"    # Lcom/google/android/exoplayer/extractor/mp4/Atom$LeafAtom;

    .prologue
    .line 1248
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1249
    iget-object v0, p1, Lcom/google/android/exoplayer/extractor/mp4/Atom$LeafAtom;->data:Lcom/google/android/exoplayer/util/ParsableByteArray;

    iput-object v0, p0, Lcom/google/android/exoplayer/extractor/mp4/AtomParsers$StszSampleSizeBox;->data:Lcom/google/android/exoplayer/util/ParsableByteArray;

    .line 1250
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/mp4/AtomParsers$StszSampleSizeBox;->data:Lcom/google/android/exoplayer/util/ParsableByteArray;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer/util/ParsableByteArray;->setPosition(I)V

    .line 1251
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/mp4/AtomParsers$StszSampleSizeBox;->data:Lcom/google/android/exoplayer/util/ParsableByteArray;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer/extractor/mp4/AtomParsers$StszSampleSizeBox;->fixedSampleSize:I

    .line 1252
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/mp4/AtomParsers$StszSampleSizeBox;->data:Lcom/google/android/exoplayer/util/ParsableByteArray;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer/extractor/mp4/AtomParsers$StszSampleSizeBox;->sampleCount:I

    .line 1253
    return-void
.end method


# virtual methods
.method public getSampleCount()I
    .registers 2

    .prologue
    .line 1257
    iget v0, p0, Lcom/google/android/exoplayer/extractor/mp4/AtomParsers$StszSampleSizeBox;->sampleCount:I

    return v0
.end method

.method public isFixedSampleSize()Z
    .registers 2

    .prologue
    .line 1267
    iget v0, p0, Lcom/google/android/exoplayer/extractor/mp4/AtomParsers$StszSampleSizeBox;->fixedSampleSize:I

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public readNextSampleSize()I
    .registers 2

    .prologue
    .line 1262
    iget v0, p0, Lcom/google/android/exoplayer/extractor/mp4/AtomParsers$StszSampleSizeBox;->fixedSampleSize:I

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/mp4/AtomParsers$StszSampleSizeBox;->data:Lcom/google/android/exoplayer/util/ParsableByteArray;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v0

    :goto_a
    return v0

    :cond_b
    iget v0, p0, Lcom/google/android/exoplayer/extractor/mp4/AtomParsers$StszSampleSizeBox;->fixedSampleSize:I

    goto :goto_a
.end method
